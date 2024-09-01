-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Asx Securities Ntp Itch 1.05 Protocol
local asx_securities_ntp_itch_v1_05 = Proto("Asx.Securities.Ntp.Itch.v1.05.Lua", "Asx Securities Ntp Itch 1.05")

-- Component Tables
local show = {}
local format = {}
local asx_securities_ntp_itch_v1_05_display = {}
local asx_securities_ntp_itch_v1_05_dissect = {}
local asx_securities_ntp_itch_v1_05_size_of = {}
local verify = {}
local asx_securities_ntp_itch_v1_05_store = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Asx Securities Ntp Itch 1.05 Fields
asx_securities_ntp_itch_v1_05.fields.add_order_message = ProtoField.new("Add Order Message", "asx.securities.ntp.itch.v1.05.addordermessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.anomalous_order_threshold_publish_message = ProtoField.new("Anomalous Order Threshold Publish Message", "asx.securities.ntp.itch.v1.05.anomalousorderthresholdpublishmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.aot_lower_price = ProtoField.new("Aot Lower Price", "asx.securities.ntp.itch.v1.05.aotlowerprice", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.aot_price = ProtoField.new("Aot Price", "asx.securities.ntp.itch.v1.05.aotprice", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.aot_upper_price = ProtoField.new("Aot Upper Price", "asx.securities.ntp.itch.v1.05.aotupperprice", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.ask_quantity = ProtoField.new("Ask Quantity", "asx.securities.ntp.itch.v1.05.askquantity", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.auction_order_executed_message = ProtoField.new("Auction Order Executed Message", "asx.securities.ntp.itch.v1.05.auctionorderexecutedmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.basis_of_quotation = ProtoField.new("Basis Of Quotation", "asx.securities.ntp.itch.v1.05.basisofquotation", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.bid_quantity = ProtoField.new("Bid Quantity", "asx.securities.ntp.itch.v1.05.bidquantity", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.block_lot_size = ProtoField.new("Block Lot Size", "asx.securities.ntp.itch.v1.05.blocklotsize", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.bundle_leg = ProtoField.new("Bundle Leg", "asx.securities.ntp.itch.v1.05.bundleleg", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.bundles_symbol_directory = ProtoField.new("Bundles Symbol Directory", "asx.securities.ntp.itch.v1.05.bundlessymboldirectory", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.buyer_combination_trade_id = ProtoField.new("Buyer Combination Trade Id", "asx.securities.ntp.itch.v1.05.buyercombinationtradeid", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.buyer_order_id = ProtoField.new("Buyer Order Id", "asx.securities.ntp.itch.v1.05.buyerorderid", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.buyer_participant_id = ProtoField.new("Buyer Participant Id", "asx.securities.ntp.itch.v1.05.buyerparticipantid", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.buyer_side = ProtoField.new("Buyer Side", "asx.securities.ntp.itch.v1.05.buyerside", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.buyer_tradeable_instrument_id = ProtoField.new("Buyer Tradeable Instrument Id", "asx.securities.ntp.itch.v1.05.buyertradeableinstrumentid", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.cfi_code = ProtoField.new("Cfi Code", "asx.securities.ntp.itch.v1.05.cficode", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.combination_leg = ProtoField.new("Combination Leg", "asx.securities.ntp.itch.v1.05.combinationleg", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.combination_order_executed_message = ProtoField.new("Combination Order Executed Message", "asx.securities.ntp.itch.v1.05.combinationorderexecutedmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.combination_symbol_directory_message = ProtoField.new("Combination Symbol Directory Message", "asx.securities.ntp.itch.v1.05.combinationsymboldirectorymessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.combination_trade_executed_message = ProtoField.new("Combination Trade Executed Message", "asx.securities.ntp.itch.v1.05.combinationtradeexecutedmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.combination_trade_id = ProtoField.new("Combination Trade Id", "asx.securities.ntp.itch.v1.05.combinationtradeid", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.count = ProtoField.new("Count", "asx.securities.ntp.itch.v1.05.count", ftypes.UINT16)
asx_securities_ntp_itch_v1_05.fields.counter_party_id = ProtoField.new("Counter Party Id", "asx.securities.ntp.itch.v1.05.counterpartyid", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.coupon_rate = ProtoField.new("Coupon Rate", "asx.securities.ntp.itch.v1.05.couponrate", ftypes.UINT16)
asx_securities_ntp_itch_v1_05.fields.cumulative_volume = ProtoField.new("Cumulative Volume", "asx.securities.ntp.itch.v1.05.cumulativevolume", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.currency = ProtoField.new("Currency", "asx.securities.ntp.itch.v1.05.currency", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.end_of_business_trade_date_message = ProtoField.new("End Of Business Trade Date Message", "asx.securities.ntp.itch.v1.05.endofbusinesstradedatemessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "asx.securities.ntp.itch.v1.05.equilibriumprice", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.equilibrium_price_message = ProtoField.new("Equilibrium Price Message", "asx.securities.ntp.itch.v1.05.equilibriumpricemessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.etr_lower_price = ProtoField.new("Etr Lower Price", "asx.securities.ntp.itch.v1.05.etrlowerprice", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.etr_price = ProtoField.new("Etr Price", "asx.securities.ntp.itch.v1.05.etrprice", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.etr_upper_price = ProtoField.new("Etr Upper Price", "asx.securities.ntp.itch.v1.05.etrupperprice", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.event_code = ProtoField.new("Event Code", "asx.securities.ntp.itch.v1.05.eventcode", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.exchange = ProtoField.new("Exchange", "asx.securities.ntp.itch.v1.05.exchange", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.executed_quantity = ProtoField.new("Executed Quantity", "asx.securities.ntp.itch.v1.05.executedquantity", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.expiry_date = ProtoField.new("Expiry Date", "asx.securities.ntp.itch.v1.05.expirydate", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.expiry_month = ProtoField.new("Expiry Month", "asx.securities.ntp.itch.v1.05.expirymonth", ftypes.UINT8)
asx_securities_ntp_itch_v1_05.fields.expiry_year = ProtoField.new("Expiry Year", "asx.securities.ntp.itch.v1.05.expiryyear", ftypes.UINT16)
asx_securities_ntp_itch_v1_05.fields.future_symbol_directory_message = ProtoField.new("Future Symbol Directory Message", "asx.securities.ntp.itch.v1.05.futuresymboldirectorymessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.highest_trade = ProtoField.new("Highest Trade", "asx.securities.ntp.itch.v1.05.highesttrade", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.implied_order_added_message = ProtoField.new("Implied Order Added Message", "asx.securities.ntp.itch.v1.05.impliedorderaddedmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.implied_order_deleted_message = ProtoField.new("Implied Order Deleted Message", "asx.securities.ntp.itch.v1.05.impliedorderdeletedmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.implied_order_replaced_message = ProtoField.new("Implied Order Replaced Message", "asx.securities.ntp.itch.v1.05.impliedorderreplacedmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.instrument = ProtoField.new("Instrument", "asx.securities.ntp.itch.v1.05.instrument", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.isin = ProtoField.new("Isin", "asx.securities.ntp.itch.v1.05.isin", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.last_trade = ProtoField.new("Last Trade", "asx.securities.ntp.itch.v1.05.lasttrade", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.last_trading_date = ProtoField.new("Last Trading Date", "asx.securities.ntp.itch.v1.05.lasttradingdate", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.last_volume = ProtoField.new("Last Volume", "asx.securities.ntp.itch.v1.05.lastvolume", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.legs = ProtoField.new("Legs", "asx.securities.ntp.itch.v1.05.legs", ftypes.UINT8)
asx_securities_ntp_itch_v1_05.fields.length = ProtoField.new("Length", "asx.securities.ntp.itch.v1.05.length", ftypes.UINT16)
asx_securities_ntp_itch_v1_05.fields.long_name = ProtoField.new("Long Name", "asx.securities.ntp.itch.v1.05.longname", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.lot_size_or_face_value = ProtoField.new("Lot Size Or Face Value", "asx.securities.ntp.itch.v1.05.lotsizeorfacevalue", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.lowest_trade = ProtoField.new("Lowest Trade", "asx.securities.ntp.itch.v1.05.lowesttrade", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.market_settlement_message = ProtoField.new("Market Settlement Message", "asx.securities.ntp.itch.v1.05.marketsettlementmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.matched_quantity = ProtoField.new("Matched Quantity", "asx.securities.ntp.itch.v1.05.matchedquantity", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.maturity_value = ProtoField.new("Maturity Value", "asx.securities.ntp.itch.v1.05.maturityvalue", ftypes.UINT8)
asx_securities_ntp_itch_v1_05.fields.message = ProtoField.new("Message", "asx.securities.ntp.itch.v1.05.message", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.message_header = ProtoField.new("Message Header", "asx.securities.ntp.itch.v1.05.messageheader", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.message_type = ProtoField.new("Message Type", "asx.securities.ntp.itch.v1.05.messagetype", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.open_high_low_last_trade_adjustment_message = ProtoField.new("Open High Low Last Trade Adjustment Message", "asx.securities.ntp.itch.v1.05.openhighlowlasttradeadjustmentmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.open_interest = ProtoField.new("Open Interest", "asx.securities.ntp.itch.v1.05.openinterest", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.opening_trade = ProtoField.new("Opening Trade", "asx.securities.ntp.itch.v1.05.openingtrade", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.opposite_order_id = ProtoField.new("Opposite Order Id", "asx.securities.ntp.itch.v1.05.oppositeorderid", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.opposite_side = ProtoField.new("Opposite Side", "asx.securities.ntp.itch.v1.05.oppositeside", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.opposite_tradeable_instrument_id = ProtoField.new("Opposite Tradeable Instrument Id", "asx.securities.ntp.itch.v1.05.oppositetradeableinstrumentid", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.option_type = ProtoField.new("Option Type", "asx.securities.ntp.itch.v1.05.optiontype", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.options_symbol_directory_message = ProtoField.new("Options Symbol Directory Message", "asx.securities.ntp.itch.v1.05.optionssymboldirectorymessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.order_book_priority = ProtoField.new("Order Book Priority", "asx.securities.ntp.itch.v1.05.orderbookpriority", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.order_book_state_message = ProtoField.new("Order Book State Message", "asx.securities.ntp.itch.v1.05.orderbookstatemessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "asx.securities.ntp.itch.v1.05.orderdeletedmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.order_executed_message = ProtoField.new("Order Executed Message", "asx.securities.ntp.itch.v1.05.orderexecutedmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.order_id = ProtoField.new("Order Id", "asx.securities.ntp.itch.v1.05.orderid", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.order_volume_cancelled_message = ProtoField.new("Order Volume Cancelled Message", "asx.securities.ntp.itch.v1.05.ordervolumecancelledmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.packet = ProtoField.new("Packet", "asx.securities.ntp.itch.v1.05.packet", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.packet_header = ProtoField.new("Packet Header", "asx.securities.ntp.itch.v1.05.packetheader", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.participant_id_buyer = ProtoField.new("Participant Id Buyer", "asx.securities.ntp.itch.v1.05.participantidbuyer", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.participant_id_seller = ProtoField.new("Participant Id Seller", "asx.securities.ntp.itch.v1.05.participantidseller", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.payload = ProtoField.new("Payload", "asx.securities.ntp.itch.v1.05.payload", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.payments_per_year = ProtoField.new("Payments Per Year", "asx.securities.ntp.itch.v1.05.paymentsperyear", ftypes.UINT8)
asx_securities_ntp_itch_v1_05.fields.price = ProtoField.new("Price", "asx.securities.ntp.itch.v1.05.price", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.price_display_decimals = ProtoField.new("Price Display Decimals", "asx.securities.ntp.itch.v1.05.pricedisplaydecimals", ftypes.UINT8)
asx_securities_ntp_itch_v1_05.fields.price_fractional_denominator = ProtoField.new("Price Fractional Denominator", "asx.securities.ntp.itch.v1.05.pricefractionaldenominator", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.price_leg = ProtoField.new("Price Leg", "asx.securities.ntp.itch.v1.05.priceleg", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.price_method = ProtoField.new("Price Method", "asx.securities.ntp.itch.v1.05.pricemethod", ftypes.UINT8)
asx_securities_ntp_itch_v1_05.fields.price_minimum_tick = ProtoField.new("Price Minimum Tick", "asx.securities.ntp.itch.v1.05.priceminimumtick", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.prior_day_settlement = ProtoField.new("Prior Day Settlement", "asx.securities.ntp.itch.v1.05.priordaysettlement", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.quantity = ProtoField.new("Quantity", "asx.securities.ntp.itch.v1.05.quantity", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.quantity_remaining = ProtoField.new("Quantity Remaining", "asx.securities.ntp.itch.v1.05.quantityremaining", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.ratio_leg = ProtoField.new("Ratio Leg", "asx.securities.ntp.itch.v1.05.ratioleg", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.request_for_quote_message = ProtoField.new("Request For Quote Message", "asx.securities.ntp.itch.v1.05.requestforquotemessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.rfq_side = ProtoField.new("Rfq Side", "asx.securities.ntp.itch.v1.05.rfqside", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.seconds = ProtoField.new("Seconds", "asx.securities.ntp.itch.v1.05.seconds", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.seconds_message = ProtoField.new("Seconds Message", "asx.securities.ntp.itch.v1.05.secondsmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.seller_combination_trade_id = ProtoField.new("Seller Combination Trade Id", "asx.securities.ntp.itch.v1.05.sellercombinationtradeid", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.seller_order_id = ProtoField.new("Seller Order Id", "asx.securities.ntp.itch.v1.05.sellerorderid", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.seller_participant_id = ProtoField.new("Seller Participant Id", "asx.securities.ntp.itch.v1.05.sellerparticipantid", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.seller_side = ProtoField.new("Seller Side", "asx.securities.ntp.itch.v1.05.sellerside", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.seller_tradeable_instrument_id = ProtoField.new("Seller Tradeable Instrument Id", "asx.securities.ntp.itch.v1.05.sellertradeableinstrumentid", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.sequence = ProtoField.new("Sequence", "asx.securities.ntp.itch.v1.05.sequence", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.session = ProtoField.new("Session", "asx.securities.ntp.itch.v1.05.session", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.session_state = ProtoField.new("Session State", "asx.securities.ntp.itch.v1.05.sessionstate", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.side = ProtoField.new("Side", "asx.securities.ntp.itch.v1.05.side", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.side_leg = ProtoField.new("Side Leg", "asx.securities.ntp.itch.v1.05.sideleg", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.source_id = ProtoField.new("Source Id", "asx.securities.ntp.itch.v1.05.sourceid", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.strike = ProtoField.new("Strike", "asx.securities.ntp.itch.v1.05.strike", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.strike_price_decimal_position = ProtoField.new("Strike Price Decimal Position", "asx.securities.ntp.itch.v1.05.strikepricedecimalposition", ftypes.UINT8)
asx_securities_ntp_itch_v1_05.fields.strike_price_fractional_denominator = ProtoField.new("Strike Price Fractional Denominator", "asx.securities.ntp.itch.v1.05.strikepricefractionaldenominator", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.strike_price_minimum_tick = ProtoField.new("Strike Price Minimum Tick", "asx.securities.ntp.itch.v1.05.strikepriceminimumtick", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.symbol_name = ProtoField.new("Symbol Name", "asx.securities.ntp.itch.v1.05.symbolname", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.text = ProtoField.new("Text", "asx.securities.ntp.itch.v1.05.text", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.text_message = ProtoField.new("Text Message", "asx.securities.ntp.itch.v1.05.textmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.timestamp = ProtoField.new("Timestamp", "asx.securities.ntp.itch.v1.05.timestamp", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.total_traded_volume = ProtoField.new("Total Traded Volume", "asx.securities.ntp.itch.v1.05.totaltradedvolume", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.trade_cancellation_message = ProtoField.new("Trade Cancellation Message", "asx.securities.ntp.itch.v1.05.tradecancellationmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.trade_date = ProtoField.new("Trade Date", "asx.securities.ntp.itch.v1.05.tradedate", ftypes.UINT16)
asx_securities_ntp_itch_v1_05.fields.trade_executed_message = ProtoField.new("Trade Executed Message", "asx.securities.ntp.itch.v1.05.tradeexecutedmessage", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.trade_id = ProtoField.new("Trade Id", "asx.securities.ntp.itch.v1.05.tradeid", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.trade_price = ProtoField.new("Trade Price", "asx.securities.ntp.itch.v1.05.tradeprice", ftypes.INT64)
asx_securities_ntp_itch_v1_05.fields.trade_type = ProtoField.new("Trade Type", "asx.securities.ntp.itch.v1.05.tradetype", ftypes.STRING)
asx_securities_ntp_itch_v1_05.fields.tradeable_instrument_id = ProtoField.new("Tradeable Instrument Id", "asx.securities.ntp.itch.v1.05.tradeableinstrumentid", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.tradeable_instrument_id_leg = ProtoField.new("Tradeable Instrument Id Leg", "asx.securities.ntp.itch.v1.05.tradeableinstrumentidleg", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.underlying_tradeable_instrument_id = ProtoField.new("Underlying Tradeable Instrument Id", "asx.securities.ntp.itch.v1.05.underlyingtradeableinstrumentid", ftypes.UINT32)
asx_securities_ntp_itch_v1_05.fields.voi_trade_date = ProtoField.new("Voi Trade Date", "asx.securities.ntp.itch.v1.05.voitradedate", ftypes.UINT16)
asx_securities_ntp_itch_v1_05.fields.volatility = ProtoField.new("Volatility", "asx.securities.ntp.itch.v1.05.volatility", ftypes.UINT64)
asx_securities_ntp_itch_v1_05.fields.volume_and_open_interest_message = ProtoField.new("Volume And Open Interest Message", "asx.securities.ntp.itch.v1.05.volumeandopeninterestmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Asx Securities Ntp Itch 1.05 Element Dissection Options
show.add_order_message = true
show.anomalous_order_threshold_publish_message = true
show.auction_order_executed_message = true
show.bundle_leg = true
show.bundles_symbol_directory = true
show.combination_leg = true
show.combination_order_executed_message = true
show.combination_symbol_directory_message = true
show.combination_trade_executed_message = true
show.end_of_business_trade_date_message = true
show.equilibrium_price_message = true
show.future_symbol_directory_message = true
show.implied_order_added_message = true
show.implied_order_deleted_message = true
show.implied_order_replaced_message = true
show.market_settlement_message = true
show.message = true
show.message_header = true
show.open_high_low_last_trade_adjustment_message = true
show.options_symbol_directory_message = true
show.order_book_state_message = true
show.order_deleted_message = true
show.order_executed_message = true
show.order_volume_cancelled_message = true
show.packet = true
show.packet_header = true
show.request_for_quote_message = true
show.seconds_message = true
show.text_message = true
show.trade_cancellation_message = true
show.trade_executed_message = true
show.volume_and_open_interest_message = true
show.payload = false

-- Register Asx Securities Ntp Itch 1.05 Show Options
asx_securities_ntp_itch_v1_05.prefs.show_add_order_message = Pref.bool("Show Add Order Message", show.add_order_message, "Parse and add Add Order Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_anomalous_order_threshold_publish_message = Pref.bool("Show Anomalous Order Threshold Publish Message", show.anomalous_order_threshold_publish_message, "Parse and add Anomalous Order Threshold Publish Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_auction_order_executed_message = Pref.bool("Show Auction Order Executed Message", show.auction_order_executed_message, "Parse and add Auction Order Executed Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_bundle_leg = Pref.bool("Show Bundle Leg", show.bundle_leg, "Parse and add Bundle Leg to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_bundles_symbol_directory = Pref.bool("Show Bundles Symbol Directory", show.bundles_symbol_directory, "Parse and add Bundles Symbol Directory to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_combination_leg = Pref.bool("Show Combination Leg", show.combination_leg, "Parse and add Combination Leg to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_combination_order_executed_message = Pref.bool("Show Combination Order Executed Message", show.combination_order_executed_message, "Parse and add Combination Order Executed Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_combination_symbol_directory_message = Pref.bool("Show Combination Symbol Directory Message", show.combination_symbol_directory_message, "Parse and add Combination Symbol Directory Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_combination_trade_executed_message = Pref.bool("Show Combination Trade Executed Message", show.combination_trade_executed_message, "Parse and add Combination Trade Executed Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_end_of_business_trade_date_message = Pref.bool("Show End Of Business Trade Date Message", show.end_of_business_trade_date_message, "Parse and add End Of Business Trade Date Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_equilibrium_price_message = Pref.bool("Show Equilibrium Price Message", show.equilibrium_price_message, "Parse and add Equilibrium Price Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_future_symbol_directory_message = Pref.bool("Show Future Symbol Directory Message", show.future_symbol_directory_message, "Parse and add Future Symbol Directory Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_implied_order_added_message = Pref.bool("Show Implied Order Added Message", show.implied_order_added_message, "Parse and add Implied Order Added Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_implied_order_deleted_message = Pref.bool("Show Implied Order Deleted Message", show.implied_order_deleted_message, "Parse and add Implied Order Deleted Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_implied_order_replaced_message = Pref.bool("Show Implied Order Replaced Message", show.implied_order_replaced_message, "Parse and add Implied Order Replaced Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_market_settlement_message = Pref.bool("Show Market Settlement Message", show.market_settlement_message, "Parse and add Market Settlement Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_open_high_low_last_trade_adjustment_message = Pref.bool("Show Open High Low Last Trade Adjustment Message", show.open_high_low_last_trade_adjustment_message, "Parse and add Open High Low Last Trade Adjustment Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_options_symbol_directory_message = Pref.bool("Show Options Symbol Directory Message", show.options_symbol_directory_message, "Parse and add Options Symbol Directory Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_order_book_state_message = Pref.bool("Show Order Book State Message", show.order_book_state_message, "Parse and add Order Book State Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_order_deleted_message = Pref.bool("Show Order Deleted Message", show.order_deleted_message, "Parse and add Order Deleted Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_order_volume_cancelled_message = Pref.bool("Show Order Volume Cancelled Message", show.order_volume_cancelled_message, "Parse and add Order Volume Cancelled Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_request_for_quote_message = Pref.bool("Show Request For Quote Message", show.request_for_quote_message, "Parse and add Request For Quote Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_seconds_message = Pref.bool("Show Seconds Message", show.seconds_message, "Parse and add Seconds Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_text_message = Pref.bool("Show Text Message", show.text_message, "Parse and add Text Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_trade_cancellation_message = Pref.bool("Show Trade Cancellation Message", show.trade_cancellation_message, "Parse and add Trade Cancellation Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_trade_executed_message = Pref.bool("Show Trade Executed Message", show.trade_executed_message, "Parse and add Trade Executed Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_volume_and_open_interest_message = Pref.bool("Show Volume And Open Interest Message", show.volume_and_open_interest_message, "Parse and add Volume And Open Interest Message to protocol tree")
asx_securities_ntp_itch_v1_05.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function asx_securities_ntp_itch_v1_05.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message ~= asx_securities_ntp_itch_v1_05.prefs.show_add_order_message then
    show.add_order_message = asx_securities_ntp_itch_v1_05.prefs.show_add_order_message
    changed = true
  end
  if show.anomalous_order_threshold_publish_message ~= asx_securities_ntp_itch_v1_05.prefs.show_anomalous_order_threshold_publish_message then
    show.anomalous_order_threshold_publish_message = asx_securities_ntp_itch_v1_05.prefs.show_anomalous_order_threshold_publish_message
    changed = true
  end
  if show.auction_order_executed_message ~= asx_securities_ntp_itch_v1_05.prefs.show_auction_order_executed_message then
    show.auction_order_executed_message = asx_securities_ntp_itch_v1_05.prefs.show_auction_order_executed_message
    changed = true
  end
  if show.bundle_leg ~= asx_securities_ntp_itch_v1_05.prefs.show_bundle_leg then
    show.bundle_leg = asx_securities_ntp_itch_v1_05.prefs.show_bundle_leg
    changed = true
  end
  if show.bundles_symbol_directory ~= asx_securities_ntp_itch_v1_05.prefs.show_bundles_symbol_directory then
    show.bundles_symbol_directory = asx_securities_ntp_itch_v1_05.prefs.show_bundles_symbol_directory
    changed = true
  end
  if show.combination_leg ~= asx_securities_ntp_itch_v1_05.prefs.show_combination_leg then
    show.combination_leg = asx_securities_ntp_itch_v1_05.prefs.show_combination_leg
    changed = true
  end
  if show.combination_order_executed_message ~= asx_securities_ntp_itch_v1_05.prefs.show_combination_order_executed_message then
    show.combination_order_executed_message = asx_securities_ntp_itch_v1_05.prefs.show_combination_order_executed_message
    changed = true
  end
  if show.combination_symbol_directory_message ~= asx_securities_ntp_itch_v1_05.prefs.show_combination_symbol_directory_message then
    show.combination_symbol_directory_message = asx_securities_ntp_itch_v1_05.prefs.show_combination_symbol_directory_message
    changed = true
  end
  if show.combination_trade_executed_message ~= asx_securities_ntp_itch_v1_05.prefs.show_combination_trade_executed_message then
    show.combination_trade_executed_message = asx_securities_ntp_itch_v1_05.prefs.show_combination_trade_executed_message
    changed = true
  end
  if show.end_of_business_trade_date_message ~= asx_securities_ntp_itch_v1_05.prefs.show_end_of_business_trade_date_message then
    show.end_of_business_trade_date_message = asx_securities_ntp_itch_v1_05.prefs.show_end_of_business_trade_date_message
    changed = true
  end
  if show.equilibrium_price_message ~= asx_securities_ntp_itch_v1_05.prefs.show_equilibrium_price_message then
    show.equilibrium_price_message = asx_securities_ntp_itch_v1_05.prefs.show_equilibrium_price_message
    changed = true
  end
  if show.future_symbol_directory_message ~= asx_securities_ntp_itch_v1_05.prefs.show_future_symbol_directory_message then
    show.future_symbol_directory_message = asx_securities_ntp_itch_v1_05.prefs.show_future_symbol_directory_message
    changed = true
  end
  if show.implied_order_added_message ~= asx_securities_ntp_itch_v1_05.prefs.show_implied_order_added_message then
    show.implied_order_added_message = asx_securities_ntp_itch_v1_05.prefs.show_implied_order_added_message
    changed = true
  end
  if show.implied_order_deleted_message ~= asx_securities_ntp_itch_v1_05.prefs.show_implied_order_deleted_message then
    show.implied_order_deleted_message = asx_securities_ntp_itch_v1_05.prefs.show_implied_order_deleted_message
    changed = true
  end
  if show.implied_order_replaced_message ~= asx_securities_ntp_itch_v1_05.prefs.show_implied_order_replaced_message then
    show.implied_order_replaced_message = asx_securities_ntp_itch_v1_05.prefs.show_implied_order_replaced_message
    changed = true
  end
  if show.market_settlement_message ~= asx_securities_ntp_itch_v1_05.prefs.show_market_settlement_message then
    show.market_settlement_message = asx_securities_ntp_itch_v1_05.prefs.show_market_settlement_message
    changed = true
  end
  if show.message ~= asx_securities_ntp_itch_v1_05.prefs.show_message then
    show.message = asx_securities_ntp_itch_v1_05.prefs.show_message
    changed = true
  end
  if show.message_header ~= asx_securities_ntp_itch_v1_05.prefs.show_message_header then
    show.message_header = asx_securities_ntp_itch_v1_05.prefs.show_message_header
    changed = true
  end
  if show.open_high_low_last_trade_adjustment_message ~= asx_securities_ntp_itch_v1_05.prefs.show_open_high_low_last_trade_adjustment_message then
    show.open_high_low_last_trade_adjustment_message = asx_securities_ntp_itch_v1_05.prefs.show_open_high_low_last_trade_adjustment_message
    changed = true
  end
  if show.options_symbol_directory_message ~= asx_securities_ntp_itch_v1_05.prefs.show_options_symbol_directory_message then
    show.options_symbol_directory_message = asx_securities_ntp_itch_v1_05.prefs.show_options_symbol_directory_message
    changed = true
  end
  if show.order_book_state_message ~= asx_securities_ntp_itch_v1_05.prefs.show_order_book_state_message then
    show.order_book_state_message = asx_securities_ntp_itch_v1_05.prefs.show_order_book_state_message
    changed = true
  end
  if show.order_deleted_message ~= asx_securities_ntp_itch_v1_05.prefs.show_order_deleted_message then
    show.order_deleted_message = asx_securities_ntp_itch_v1_05.prefs.show_order_deleted_message
    changed = true
  end
  if show.order_executed_message ~= asx_securities_ntp_itch_v1_05.prefs.show_order_executed_message then
    show.order_executed_message = asx_securities_ntp_itch_v1_05.prefs.show_order_executed_message
    changed = true
  end
  if show.order_volume_cancelled_message ~= asx_securities_ntp_itch_v1_05.prefs.show_order_volume_cancelled_message then
    show.order_volume_cancelled_message = asx_securities_ntp_itch_v1_05.prefs.show_order_volume_cancelled_message
    changed = true
  end
  if show.packet ~= asx_securities_ntp_itch_v1_05.prefs.show_packet then
    show.packet = asx_securities_ntp_itch_v1_05.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= asx_securities_ntp_itch_v1_05.prefs.show_packet_header then
    show.packet_header = asx_securities_ntp_itch_v1_05.prefs.show_packet_header
    changed = true
  end
  if show.request_for_quote_message ~= asx_securities_ntp_itch_v1_05.prefs.show_request_for_quote_message then
    show.request_for_quote_message = asx_securities_ntp_itch_v1_05.prefs.show_request_for_quote_message
    changed = true
  end
  if show.seconds_message ~= asx_securities_ntp_itch_v1_05.prefs.show_seconds_message then
    show.seconds_message = asx_securities_ntp_itch_v1_05.prefs.show_seconds_message
    changed = true
  end
  if show.text_message ~= asx_securities_ntp_itch_v1_05.prefs.show_text_message then
    show.text_message = asx_securities_ntp_itch_v1_05.prefs.show_text_message
    changed = true
  end
  if show.trade_cancellation_message ~= asx_securities_ntp_itch_v1_05.prefs.show_trade_cancellation_message then
    show.trade_cancellation_message = asx_securities_ntp_itch_v1_05.prefs.show_trade_cancellation_message
    changed = true
  end
  if show.trade_executed_message ~= asx_securities_ntp_itch_v1_05.prefs.show_trade_executed_message then
    show.trade_executed_message = asx_securities_ntp_itch_v1_05.prefs.show_trade_executed_message
    changed = true
  end
  if show.volume_and_open_interest_message ~= asx_securities_ntp_itch_v1_05.prefs.show_volume_and_open_interest_message then
    show.volume_and_open_interest_message = asx_securities_ntp_itch_v1_05.prefs.show_volume_and_open_interest_message
    changed = true
  end
  if show.payload ~= asx_securities_ntp_itch_v1_05.prefs.show_payload then
    show.payload = asx_securities_ntp_itch_v1_05.prefs.show_payload
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
-- Dissect Asx Securities Ntp Itch 1.05
-----------------------------------------------------------------------

-- Size: Voi Trade Date
asx_securities_ntp_itch_v1_05_size_of.voi_trade_date = 2

-- Display: Voi Trade Date
asx_securities_ntp_itch_v1_05_display.voi_trade_date = function(value)
  return "Voi Trade Date: "..value
end

-- Dissect: Voi Trade Date
asx_securities_ntp_itch_v1_05_dissect.voi_trade_date = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.voi_trade_date
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.voi_trade_date(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.voi_trade_date, range, value, display)

  return offset + length, value
end

-- Size: Open Interest
asx_securities_ntp_itch_v1_05_size_of.open_interest = 8

-- Display: Open Interest
asx_securities_ntp_itch_v1_05_display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
asx_securities_ntp_itch_v1_05_dissect.open_interest = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.open_interest
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.open_interest(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Size: Cumulative Volume
asx_securities_ntp_itch_v1_05_size_of.cumulative_volume = 8

-- Display: Cumulative Volume
asx_securities_ntp_itch_v1_05_display.cumulative_volume = function(value)
  return "Cumulative Volume: "..value
end

-- Dissect: Cumulative Volume
asx_securities_ntp_itch_v1_05_dissect.cumulative_volume = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.cumulative_volume
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.cumulative_volume(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.cumulative_volume, range, value, display)

  return offset + length, value
end

-- Size: Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id = 4

-- Display: Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_display.tradeable_instrument_id = function(value)
  return "Tradeable Instrument Id: "..value
end

-- Dissect: Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.tradeable_instrument_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Date
asx_securities_ntp_itch_v1_05_size_of.trade_date = 2

-- Display: Trade Date
asx_securities_ntp_itch_v1_05_display.trade_date = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
asx_securities_ntp_itch_v1_05_dissect.trade_date = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.trade_date
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.trade_date(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
asx_securities_ntp_itch_v1_05_size_of.timestamp = 4

-- Display: Timestamp
asx_securities_ntp_itch_v1_05_display.timestamp = function(nanoseconds, info, parent)
  -- Lookup seconds
  local seconds = asx_securities_ntp_itch_v1_05_store.seconds
  if show.full_timestamp and seconds > 0 then
    return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
  end

  return "Timestamp: "..value
end

-- Dissect: Timestamp
asx_securities_ntp_itch_v1_05_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: Volume And Open Interest Message
asx_securities_ntp_itch_v1_05_size_of.volume_and_open_interest_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.cumulative_volume

  index = index + asx_securities_ntp_itch_v1_05_size_of.open_interest

  index = index + asx_securities_ntp_itch_v1_05_size_of.voi_trade_date

  return index
end

-- Display: Volume And Open Interest Message
asx_securities_ntp_itch_v1_05_display.volume_and_open_interest_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Volume And Open Interest Message
asx_securities_ntp_itch_v1_05_dissect.volume_and_open_interest_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Cumulative Volume: 8 Byte Unsigned Fixed Width Integer
  index, cumulative_volume = asx_securities_ntp_itch_v1_05_dissect.cumulative_volume(buffer, index, packet, parent)

  -- Open Interest: 8 Byte Unsigned Fixed Width Integer
  index, open_interest = asx_securities_ntp_itch_v1_05_dissect.open_interest(buffer, index, packet, parent)

  -- Voi Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, voi_trade_date = asx_securities_ntp_itch_v1_05_dissect.voi_trade_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Volume And Open Interest Message
asx_securities_ntp_itch_v1_05_dissect.volume_and_open_interest_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.volume_and_open_interest_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.volume_and_open_interest_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.volume_and_open_interest_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.volume_and_open_interest_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.volume_and_open_interest_message_fields(buffer, offset, packet, parent)
end

-- Size: Etr Lower Price
asx_securities_ntp_itch_v1_05_size_of.etr_lower_price = 8

-- Display: Etr Lower Price
asx_securities_ntp_itch_v1_05_display.etr_lower_price = function(value)
  return "Etr Lower Price: "..value
end

-- Dissect: Etr Lower Price
asx_securities_ntp_itch_v1_05_dissect.etr_lower_price = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.etr_lower_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.etr_lower_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.etr_lower_price, range, value, display)

  return offset + length, value
end

-- Size: Etr Upper Price
asx_securities_ntp_itch_v1_05_size_of.etr_upper_price = 8

-- Display: Etr Upper Price
asx_securities_ntp_itch_v1_05_display.etr_upper_price = function(value)
  return "Etr Upper Price: "..value
end

-- Dissect: Etr Upper Price
asx_securities_ntp_itch_v1_05_dissect.etr_upper_price = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.etr_upper_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.etr_upper_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.etr_upper_price, range, value, display)

  return offset + length, value
end

-- Size: Etr Price
asx_securities_ntp_itch_v1_05_size_of.etr_price = 8

-- Display: Etr Price
asx_securities_ntp_itch_v1_05_display.etr_price = function(value)
  return "Etr Price: "..value
end

-- Dissect: Etr Price
asx_securities_ntp_itch_v1_05_dissect.etr_price = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.etr_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.etr_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.etr_price, range, value, display)

  return offset + length, value
end

-- Size: Aot Lower Price
asx_securities_ntp_itch_v1_05_size_of.aot_lower_price = 8

-- Display: Aot Lower Price
asx_securities_ntp_itch_v1_05_display.aot_lower_price = function(value)
  return "Aot Lower Price: "..value
end

-- Dissect: Aot Lower Price
asx_securities_ntp_itch_v1_05_dissect.aot_lower_price = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.aot_lower_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.aot_lower_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.aot_lower_price, range, value, display)

  return offset + length, value
end

-- Size: Aot Upper Price
asx_securities_ntp_itch_v1_05_size_of.aot_upper_price = 8

-- Display: Aot Upper Price
asx_securities_ntp_itch_v1_05_display.aot_upper_price = function(value)
  return "Aot Upper Price: "..value
end

-- Dissect: Aot Upper Price
asx_securities_ntp_itch_v1_05_dissect.aot_upper_price = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.aot_upper_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.aot_upper_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.aot_upper_price, range, value, display)

  return offset + length, value
end

-- Size: Aot Price
asx_securities_ntp_itch_v1_05_size_of.aot_price = 8

-- Display: Aot Price
asx_securities_ntp_itch_v1_05_display.aot_price = function(value)
  return "Aot Price: "..value
end

-- Dissect: Aot Price
asx_securities_ntp_itch_v1_05_dissect.aot_price = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.aot_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.aot_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.aot_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Anomalous Order Threshold Publish Message
asx_securities_ntp_itch_v1_05_size_of.anomalous_order_threshold_publish_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.aot_price

  index = index + asx_securities_ntp_itch_v1_05_size_of.aot_upper_price

  index = index + asx_securities_ntp_itch_v1_05_size_of.aot_lower_price

  index = index + asx_securities_ntp_itch_v1_05_size_of.etr_price

  index = index + asx_securities_ntp_itch_v1_05_size_of.etr_upper_price

  index = index + asx_securities_ntp_itch_v1_05_size_of.etr_lower_price

  return index
end

-- Display: Anomalous Order Threshold Publish Message
asx_securities_ntp_itch_v1_05_display.anomalous_order_threshold_publish_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Anomalous Order Threshold Publish Message
asx_securities_ntp_itch_v1_05_dissect.anomalous_order_threshold_publish_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Aot Price: 8 Byte Signed Fixed Width Integer
  index, aot_price = asx_securities_ntp_itch_v1_05_dissect.aot_price(buffer, index, packet, parent)

  -- Aot Upper Price: 8 Byte Signed Fixed Width Integer
  index, aot_upper_price = asx_securities_ntp_itch_v1_05_dissect.aot_upper_price(buffer, index, packet, parent)

  -- Aot Lower Price: 8 Byte Signed Fixed Width Integer
  index, aot_lower_price = asx_securities_ntp_itch_v1_05_dissect.aot_lower_price(buffer, index, packet, parent)

  -- Etr Price: 8 Byte Signed Fixed Width Integer
  index, etr_price = asx_securities_ntp_itch_v1_05_dissect.etr_price(buffer, index, packet, parent)

  -- Etr Upper Price: 8 Byte Signed Fixed Width Integer
  index, etr_upper_price = asx_securities_ntp_itch_v1_05_dissect.etr_upper_price(buffer, index, packet, parent)

  -- Etr Lower Price: 8 Byte Signed Fixed Width Integer
  index, etr_lower_price = asx_securities_ntp_itch_v1_05_dissect.etr_lower_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Anomalous Order Threshold Publish Message
asx_securities_ntp_itch_v1_05_dissect.anomalous_order_threshold_publish_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.anomalous_order_threshold_publish_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.anomalous_order_threshold_publish_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.anomalous_order_threshold_publish_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.anomalous_order_threshold_publish_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.anomalous_order_threshold_publish_message_fields(buffer, offset, packet, parent)
end

-- Size: Quantity
asx_securities_ntp_itch_v1_05_size_of.quantity = 4

-- Display: Quantity
asx_securities_ntp_itch_v1_05_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
asx_securities_ntp_itch_v1_05_dissect.quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.quantity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Rfq Side
asx_securities_ntp_itch_v1_05_size_of.rfq_side = 1

-- Display: Rfq Side
asx_securities_ntp_itch_v1_05_display.rfq_side = function(value)
  if value == "T" then
    return "Rfq Side: Two Sided Quote (T)"
  end
  if value == "B" then
    return "Rfq Side: Bid Quote (B)"
  end
  if value == "S" then
    return "Rfq Side: Ask Quote (S)"
  end
  if value == "X" then
    return "Rfq Side: Crossing (X)"
  end

  return "Rfq Side: Unknown("..value..")"
end

-- Dissect: Rfq Side
asx_securities_ntp_itch_v1_05_dissect.rfq_side = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.rfq_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05_display.rfq_side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.rfq_side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Request For Quote Message
asx_securities_ntp_itch_v1_05_size_of.request_for_quote_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.rfq_side

  index = index + asx_securities_ntp_itch_v1_05_size_of.quantity

  return index
end

-- Display: Request For Quote Message
asx_securities_ntp_itch_v1_05_display.request_for_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request For Quote Message
asx_securities_ntp_itch_v1_05_dissect.request_for_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Rfq Side: 1 Byte Ascii String Enum with 4 values
  index, rfq_side = asx_securities_ntp_itch_v1_05_dissect.rfq_side(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_ntp_itch_v1_05_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote Message
asx_securities_ntp_itch_v1_05_dissect.request_for_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_for_quote_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.request_for_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.request_for_quote_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.request_for_quote_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.request_for_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Text
asx_securities_ntp_itch_v1_05_size_of.text = 100

-- Display: Text
asx_securities_ntp_itch_v1_05_display.text = function(value)
  return "Text: "..value
end

-- Dissect: Text
asx_securities_ntp_itch_v1_05_dissect.text = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.text
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.text(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.text, range, value, display)

  return offset + length, value
end

-- Size: Source Id
asx_securities_ntp_itch_v1_05_size_of.source_id = 6

-- Display: Source Id
asx_securities_ntp_itch_v1_05_display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
asx_securities_ntp_itch_v1_05_dissect.source_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.source_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.source_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.source_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Text Message
asx_securities_ntp_itch_v1_05_size_of.text_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.source_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.text

  return index
end

-- Display: Text Message
asx_securities_ntp_itch_v1_05_display.text_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Text Message
asx_securities_ntp_itch_v1_05_dissect.text_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Source Id: 6 Byte Ascii String
  index, source_id = asx_securities_ntp_itch_v1_05_dissect.source_id(buffer, index, packet, parent)

  -- Text: 100 Byte Ascii String
  index, text = asx_securities_ntp_itch_v1_05_dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Text Message
asx_securities_ntp_itch_v1_05_dissect.text_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.text_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.text_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.text_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.text_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.text_message_fields(buffer, offset, packet, parent)
end

-- Size: Total Traded Volume
asx_securities_ntp_itch_v1_05_size_of.total_traded_volume = 8

-- Display: Total Traded Volume
asx_securities_ntp_itch_v1_05_display.total_traded_volume = function(value)
  return "Total Traded Volume: "..value
end

-- Dissect: Total Traded Volume
asx_securities_ntp_itch_v1_05_dissect.total_traded_volume = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.total_traded_volume
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.total_traded_volume(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.total_traded_volume, range, value, display)

  return offset + length, value
end

-- Size: Last Volume
asx_securities_ntp_itch_v1_05_size_of.last_volume = 4

-- Display: Last Volume
asx_securities_ntp_itch_v1_05_display.last_volume = function(value)
  return "Last Volume: "..value
end

-- Dissect: Last Volume
asx_securities_ntp_itch_v1_05_dissect.last_volume = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.last_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.last_volume(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.last_volume, range, value, display)

  return offset + length, value
end

-- Size: Last Trade
asx_securities_ntp_itch_v1_05_size_of.last_trade = 8

-- Display: Last Trade
asx_securities_ntp_itch_v1_05_display.last_trade = function(value)
  return "Last Trade: "..value
end

-- Dissect: Last Trade
asx_securities_ntp_itch_v1_05_dissect.last_trade = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.last_trade
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.last_trade(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.last_trade, range, value, display)

  return offset + length, value
end

-- Size: Lowest Trade
asx_securities_ntp_itch_v1_05_size_of.lowest_trade = 8

-- Display: Lowest Trade
asx_securities_ntp_itch_v1_05_display.lowest_trade = function(value)
  return "Lowest Trade: "..value
end

-- Dissect: Lowest Trade
asx_securities_ntp_itch_v1_05_dissect.lowest_trade = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.lowest_trade
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.lowest_trade(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.lowest_trade, range, value, display)

  return offset + length, value
end

-- Size: Highest Trade
asx_securities_ntp_itch_v1_05_size_of.highest_trade = 8

-- Display: Highest Trade
asx_securities_ntp_itch_v1_05_display.highest_trade = function(value)
  return "Highest Trade: "..value
end

-- Dissect: Highest Trade
asx_securities_ntp_itch_v1_05_dissect.highest_trade = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.highest_trade
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.highest_trade(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.highest_trade, range, value, display)

  return offset + length, value
end

-- Size: Opening Trade
asx_securities_ntp_itch_v1_05_size_of.opening_trade = 8

-- Display: Opening Trade
asx_securities_ntp_itch_v1_05_display.opening_trade = function(value)
  return "Opening Trade: "..value
end

-- Dissect: Opening Trade
asx_securities_ntp_itch_v1_05_dissect.opening_trade = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.opening_trade
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.opening_trade(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Settlement Message
asx_securities_ntp_itch_v1_05_size_of.market_settlement_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.opening_trade

  index = index + asx_securities_ntp_itch_v1_05_size_of.highest_trade

  index = index + asx_securities_ntp_itch_v1_05_size_of.lowest_trade

  index = index + asx_securities_ntp_itch_v1_05_size_of.last_trade

  index = index + asx_securities_ntp_itch_v1_05_size_of.last_volume

  index = index + asx_securities_ntp_itch_v1_05_size_of.total_traded_volume

  return index
end

-- Display: Market Settlement Message
asx_securities_ntp_itch_v1_05_display.market_settlement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Settlement Message
asx_securities_ntp_itch_v1_05_dissect.market_settlement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Opening Trade: 8 Byte Signed Fixed Width Integer
  index, opening_trade = asx_securities_ntp_itch_v1_05_dissect.opening_trade(buffer, index, packet, parent)

  -- Highest Trade: 8 Byte Signed Fixed Width Integer
  index, highest_trade = asx_securities_ntp_itch_v1_05_dissect.highest_trade(buffer, index, packet, parent)

  -- Lowest Trade: 8 Byte Signed Fixed Width Integer
  index, lowest_trade = asx_securities_ntp_itch_v1_05_dissect.lowest_trade(buffer, index, packet, parent)

  -- Last Trade: 8 Byte Signed Fixed Width Integer
  index, last_trade = asx_securities_ntp_itch_v1_05_dissect.last_trade(buffer, index, packet, parent)

  -- Last Volume: 4 Byte Unsigned Fixed Width Integer
  index, last_volume = asx_securities_ntp_itch_v1_05_dissect.last_volume(buffer, index, packet, parent)

  -- Total Traded Volume: 8 Byte Unsigned Fixed Width Integer
  index, total_traded_volume = asx_securities_ntp_itch_v1_05_dissect.total_traded_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Settlement Message
asx_securities_ntp_itch_v1_05_dissect.market_settlement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_settlement_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.market_settlement_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.market_settlement_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.market_settlement_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.market_settlement_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Open High Low Last Trade Adjustment Message
asx_securities_ntp_itch_v1_05_size_of.open_high_low_last_trade_adjustment_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.opening_trade

  index = index + asx_securities_ntp_itch_v1_05_size_of.highest_trade

  index = index + asx_securities_ntp_itch_v1_05_size_of.lowest_trade

  index = index + asx_securities_ntp_itch_v1_05_size_of.last_trade

  index = index + asx_securities_ntp_itch_v1_05_size_of.last_volume

  index = index + asx_securities_ntp_itch_v1_05_size_of.total_traded_volume

  return index
end

-- Display: Open High Low Last Trade Adjustment Message
asx_securities_ntp_itch_v1_05_display.open_high_low_last_trade_adjustment_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open High Low Last Trade Adjustment Message
asx_securities_ntp_itch_v1_05_dissect.open_high_low_last_trade_adjustment_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Opening Trade: 8 Byte Signed Fixed Width Integer
  index, opening_trade = asx_securities_ntp_itch_v1_05_dissect.opening_trade(buffer, index, packet, parent)

  -- Highest Trade: 8 Byte Signed Fixed Width Integer
  index, highest_trade = asx_securities_ntp_itch_v1_05_dissect.highest_trade(buffer, index, packet, parent)

  -- Lowest Trade: 8 Byte Signed Fixed Width Integer
  index, lowest_trade = asx_securities_ntp_itch_v1_05_dissect.lowest_trade(buffer, index, packet, parent)

  -- Last Trade: 8 Byte Signed Fixed Width Integer
  index, last_trade = asx_securities_ntp_itch_v1_05_dissect.last_trade(buffer, index, packet, parent)

  -- Last Volume: 4 Byte Unsigned Fixed Width Integer
  index, last_volume = asx_securities_ntp_itch_v1_05_dissect.last_volume(buffer, index, packet, parent)

  -- Total Traded Volume: 8 Byte Unsigned Fixed Width Integer
  index, total_traded_volume = asx_securities_ntp_itch_v1_05_dissect.total_traded_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Open High Low Last Trade Adjustment Message
asx_securities_ntp_itch_v1_05_dissect.open_high_low_last_trade_adjustment_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.open_high_low_last_trade_adjustment_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.open_high_low_last_trade_adjustment_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.open_high_low_last_trade_adjustment_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.open_high_low_last_trade_adjustment_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.open_high_low_last_trade_adjustment_message_fields(buffer, offset, packet, parent)
end

-- Size: Ask Quantity
asx_securities_ntp_itch_v1_05_size_of.ask_quantity = 8

-- Display: Ask Quantity
asx_securities_ntp_itch_v1_05_display.ask_quantity = function(value)
  return "Ask Quantity: "..value
end

-- Dissect: Ask Quantity
asx_securities_ntp_itch_v1_05_dissect.ask_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.ask_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.ask_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.ask_quantity, range, value, display)

  return offset + length, value
end

-- Size: Bid Quantity
asx_securities_ntp_itch_v1_05_size_of.bid_quantity = 8

-- Display: Bid Quantity
asx_securities_ntp_itch_v1_05_display.bid_quantity = function(value)
  return "Bid Quantity: "..value
end

-- Dissect: Bid Quantity
asx_securities_ntp_itch_v1_05_dissect.bid_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.bid_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.bid_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.bid_quantity, range, value, display)

  return offset + length, value
end

-- Size: Matched Quantity
asx_securities_ntp_itch_v1_05_size_of.matched_quantity = 8

-- Display: Matched Quantity
asx_securities_ntp_itch_v1_05_display.matched_quantity = function(value)
  return "Matched Quantity: "..value
end

-- Dissect: Matched Quantity
asx_securities_ntp_itch_v1_05_dissect.matched_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.matched_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.matched_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.matched_quantity, range, value, display)

  return offset + length, value
end

-- Size: Equilibrium Price
asx_securities_ntp_itch_v1_05_size_of.equilibrium_price = 8

-- Display: Equilibrium Price
asx_securities_ntp_itch_v1_05_display.equilibrium_price = function(value)
  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
asx_securities_ntp_itch_v1_05_dissect.equilibrium_price = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.equilibrium_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.equilibrium_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Equilibrium Price Message
asx_securities_ntp_itch_v1_05_size_of.equilibrium_price_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.equilibrium_price

  index = index + asx_securities_ntp_itch_v1_05_size_of.matched_quantity

  index = index + asx_securities_ntp_itch_v1_05_size_of.bid_quantity

  index = index + asx_securities_ntp_itch_v1_05_size_of.ask_quantity

  return index
end

-- Display: Equilibrium Price Message
asx_securities_ntp_itch_v1_05_display.equilibrium_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equilibrium Price Message
asx_securities_ntp_itch_v1_05_dissect.equilibrium_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Equilibrium Price: 8 Byte Signed Fixed Width Integer
  index, equilibrium_price = asx_securities_ntp_itch_v1_05_dissect.equilibrium_price(buffer, index, packet, parent)

  -- Matched Quantity: 8 Byte Unsigned Fixed Width Integer
  index, matched_quantity = asx_securities_ntp_itch_v1_05_dissect.matched_quantity(buffer, index, packet, parent)

  -- Bid Quantity: 8 Byte Unsigned Fixed Width Integer
  index, bid_quantity = asx_securities_ntp_itch_v1_05_dissect.bid_quantity(buffer, index, packet, parent)

  -- Ask Quantity: 8 Byte Unsigned Fixed Width Integer
  index, ask_quantity = asx_securities_ntp_itch_v1_05_dissect.ask_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Message
asx_securities_ntp_itch_v1_05_dissect.equilibrium_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.equilibrium_price_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.equilibrium_price_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.equilibrium_price_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.equilibrium_price_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.equilibrium_price_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Id
asx_securities_ntp_itch_v1_05_size_of.trade_id = 8

-- Display: Trade Id
asx_securities_ntp_itch_v1_05_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
asx_securities_ntp_itch_v1_05_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Cancellation Message
asx_securities_ntp_itch_v1_05_size_of.trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_id

  return index
end

-- Display: Trade Cancellation Message
asx_securities_ntp_itch_v1_05_display.trade_cancellation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancellation Message
asx_securities_ntp_itch_v1_05_dissect.trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = asx_securities_ntp_itch_v1_05_dissect.trade_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Message
asx_securities_ntp_itch_v1_05_dissect.trade_cancellation_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancellation_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.trade_cancellation_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.trade_cancellation_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.trade_cancellation_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.trade_cancellation_message_fields(buffer, offset, packet, parent)
end

-- Size: Seller Participant Id
asx_securities_ntp_itch_v1_05_size_of.seller_participant_id = 3

-- Display: Seller Participant Id
asx_securities_ntp_itch_v1_05_display.seller_participant_id = function(value)
  return "Seller Participant Id: "..value
end

-- Dissect: Seller Participant Id
asx_securities_ntp_itch_v1_05_dissect.seller_participant_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.seller_participant_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.seller_participant_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.seller_participant_id, range, value, display)

  return offset + length, value
end

-- Size: Seller Combination Trade Id
asx_securities_ntp_itch_v1_05_size_of.seller_combination_trade_id = 8

-- Display: Seller Combination Trade Id
asx_securities_ntp_itch_v1_05_display.seller_combination_trade_id = function(value)
  return "Seller Combination Trade Id: "..value
end

-- Dissect: Seller Combination Trade Id
asx_securities_ntp_itch_v1_05_dissect.seller_combination_trade_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.seller_combination_trade_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.seller_combination_trade_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.seller_combination_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Seller Order Id
asx_securities_ntp_itch_v1_05_size_of.seller_order_id = 8

-- Display: Seller Order Id
asx_securities_ntp_itch_v1_05_display.seller_order_id = function(value)
  return "Seller Order Id: "..value
end

-- Dissect: Seller Order Id
asx_securities_ntp_itch_v1_05_dissect.seller_order_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.seller_order_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.seller_order_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.seller_order_id, range, value, display)

  return offset + length, value
end

-- Size: Seller Side
asx_securities_ntp_itch_v1_05_size_of.seller_side = 1

-- Display: Seller Side
asx_securities_ntp_itch_v1_05_display.seller_side = function(value)
  if value == "S" then
    return "Seller Side: Sell (S)"
  end
  if value == "B" then
    return "Seller Side: Buy (B)"
  end

  return "Seller Side: Unknown("..value..")"
end

-- Dissect: Seller Side
asx_securities_ntp_itch_v1_05_dissect.seller_side = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.seller_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05_display.seller_side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.seller_side, range, value, display)

  return offset + length, value
end

-- Size: Seller Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_size_of.seller_tradeable_instrument_id = 4

-- Display: Seller Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_display.seller_tradeable_instrument_id = function(value)
  return "Seller Tradeable Instrument Id: "..value
end

-- Dissect: Seller Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_dissect.seller_tradeable_instrument_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.seller_tradeable_instrument_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.seller_tradeable_instrument_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.seller_tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Buyer Participant Id
asx_securities_ntp_itch_v1_05_size_of.buyer_participant_id = 3

-- Display: Buyer Participant Id
asx_securities_ntp_itch_v1_05_display.buyer_participant_id = function(value)
  return "Buyer Participant Id: "..value
end

-- Dissect: Buyer Participant Id
asx_securities_ntp_itch_v1_05_dissect.buyer_participant_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.buyer_participant_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.buyer_participant_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.buyer_participant_id, range, value, display)

  return offset + length, value
end

-- Size: Buyer Combination Trade Id
asx_securities_ntp_itch_v1_05_size_of.buyer_combination_trade_id = 8

-- Display: Buyer Combination Trade Id
asx_securities_ntp_itch_v1_05_display.buyer_combination_trade_id = function(value)
  return "Buyer Combination Trade Id: "..value
end

-- Dissect: Buyer Combination Trade Id
asx_securities_ntp_itch_v1_05_dissect.buyer_combination_trade_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.buyer_combination_trade_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.buyer_combination_trade_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.buyer_combination_trade_id, range, value, display)

  return offset + length, value
end

-- Size: Buyer Order Id
asx_securities_ntp_itch_v1_05_size_of.buyer_order_id = 8

-- Display: Buyer Order Id
asx_securities_ntp_itch_v1_05_display.buyer_order_id = function(value)
  return "Buyer Order Id: "..value
end

-- Dissect: Buyer Order Id
asx_securities_ntp_itch_v1_05_dissect.buyer_order_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.buyer_order_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.buyer_order_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.buyer_order_id, range, value, display)

  return offset + length, value
end

-- Size: Buyer Side
asx_securities_ntp_itch_v1_05_size_of.buyer_side = 1

-- Display: Buyer Side
asx_securities_ntp_itch_v1_05_display.buyer_side = function(value)
  if value == "S" then
    return "Buyer Side: Sell (S)"
  end
  if value == "B" then
    return "Buyer Side: Buy (B)"
  end

  return "Buyer Side: Unknown("..value..")"
end

-- Dissect: Buyer Side
asx_securities_ntp_itch_v1_05_dissect.buyer_side = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.buyer_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05_display.buyer_side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.buyer_side, range, value, display)

  return offset + length, value
end

-- Size: Buyer Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_size_of.buyer_tradeable_instrument_id = 4

-- Display: Buyer Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_display.buyer_tradeable_instrument_id = function(value)
  return "Buyer Tradeable Instrument Id: "..value
end

-- Dissect: Buyer Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_dissect.buyer_tradeable_instrument_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.buyer_tradeable_instrument_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.buyer_tradeable_instrument_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.buyer_tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
asx_securities_ntp_itch_v1_05_size_of.trade_price = 8

-- Display: Trade Price
asx_securities_ntp_itch_v1_05_display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
asx_securities_ntp_itch_v1_05_dissect.trade_price = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.trade_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.trade_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Executed Quantity
asx_securities_ntp_itch_v1_05_size_of.executed_quantity = 4

-- Display: Executed Quantity
asx_securities_ntp_itch_v1_05_display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
asx_securities_ntp_itch_v1_05_dissect.executed_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.executed_quantity
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Size: Trade Type
asx_securities_ntp_itch_v1_05_size_of.trade_type = 1

-- Display: Trade Type
asx_securities_ntp_itch_v1_05_display.trade_type = function(value)
  if value == "T" then
    return "Trade Type: Normal Trade (T)"
  end
  if value == "t" then
    return "Trade Type: Normal Cross (t)"
  end
  if value == "L" then
    return "Trade Type: Auction Trade (L)"
  end
  if value == "l" then
    return "Trade Type: Auction Cross (l)"
  end
  if value == "S" then
    return "Trade Type: Combination To Underlying Trade (S)"
  end
  if value == "s" then
    return "Trade Type: Combination To Underlying Cross (s)"
  end
  if value == "R" then
    return "Trade Type: Combination To Combination Trade (R)"
  end
  if value == "r" then
    return "Trade Type: Combination To Combination Cross (r)"
  end
  if value == "A" then
    return "Trade Type: Strip To Strip Trade (A)"
  end
  if value == "a" then
    return "Trade Type: Strip To Strip Cross (a)"
  end
  if value == "B" then
    return "Trade Type: Strip To Outright Trade (B)"
  end
  if value == "b" then
    return "Trade Type: Strip To Outright Cross (b)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
asx_securities_ntp_itch_v1_05_dissect.trade_type = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.trade_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05_display.trade_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Combination Trade Executed Message
asx_securities_ntp_itch_v1_05_size_of.combination_trade_executed_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_type

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.executed_quantity

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_price

  index = index + asx_securities_ntp_itch_v1_05_size_of.buyer_tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.buyer_side

  index = index + asx_securities_ntp_itch_v1_05_size_of.buyer_order_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.buyer_combination_trade_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.buyer_participant_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.seller_tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.seller_side

  index = index + asx_securities_ntp_itch_v1_05_size_of.seller_order_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.seller_combination_trade_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.seller_participant_id

  return index
end

-- Display: Combination Trade Executed Message
asx_securities_ntp_itch_v1_05_display.combination_trade_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Combination Trade Executed Message
asx_securities_ntp_itch_v1_05_dissect.combination_trade_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 12 values
  index, trade_type = asx_securities_ntp_itch_v1_05_dissect.trade_type(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = asx_securities_ntp_itch_v1_05_dissect.trade_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_ntp_itch_v1_05_dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_ntp_itch_v1_05_dissect.trade_price(buffer, index, packet, parent)

  -- Buyer Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, buyer_tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.buyer_tradeable_instrument_id(buffer, index, packet, parent)

  -- Buyer Side: 1 Byte Ascii String Enum with 2 values
  index, buyer_side = asx_securities_ntp_itch_v1_05_dissect.buyer_side(buffer, index, packet, parent)

  -- Buyer Order Id: 8 Byte Unsigned Fixed Width Integer
  index, buyer_order_id = asx_securities_ntp_itch_v1_05_dissect.buyer_order_id(buffer, index, packet, parent)

  -- Buyer Combination Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, buyer_combination_trade_id = asx_securities_ntp_itch_v1_05_dissect.buyer_combination_trade_id(buffer, index, packet, parent)

  -- Buyer Participant Id: 3 Byte Ascii String
  index, buyer_participant_id = asx_securities_ntp_itch_v1_05_dissect.buyer_participant_id(buffer, index, packet, parent)

  -- Seller Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, seller_tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.seller_tradeable_instrument_id(buffer, index, packet, parent)

  -- Seller Side: 1 Byte Ascii String Enum with 2 values
  index, seller_side = asx_securities_ntp_itch_v1_05_dissect.seller_side(buffer, index, packet, parent)

  -- Seller Order Id: 8 Byte Unsigned Fixed Width Integer
  index, seller_order_id = asx_securities_ntp_itch_v1_05_dissect.seller_order_id(buffer, index, packet, parent)

  -- Seller Combination Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, seller_combination_trade_id = asx_securities_ntp_itch_v1_05_dissect.seller_combination_trade_id(buffer, index, packet, parent)

  -- Seller Participant Id: 3 Byte Ascii String
  index, seller_participant_id = asx_securities_ntp_itch_v1_05_dissect.seller_participant_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Trade Executed Message
asx_securities_ntp_itch_v1_05_dissect.combination_trade_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.combination_trade_executed_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.combination_trade_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.combination_trade_executed_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.combination_trade_executed_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.combination_trade_executed_message_fields(buffer, offset, packet, parent)
end

-- Size: Participant Id Seller
asx_securities_ntp_itch_v1_05_size_of.participant_id_seller = 3

-- Display: Participant Id Seller
asx_securities_ntp_itch_v1_05_display.participant_id_seller = function(value)
  return "Participant Id Seller: "..value
end

-- Dissect: Participant Id Seller
asx_securities_ntp_itch_v1_05_dissect.participant_id_seller = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.participant_id_seller
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.participant_id_seller(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.participant_id_seller, range, value, display)

  return offset + length, value
end

-- Size: Participant Id Buyer
asx_securities_ntp_itch_v1_05_size_of.participant_id_buyer = 3

-- Display: Participant Id Buyer
asx_securities_ntp_itch_v1_05_display.participant_id_buyer = function(value)
  return "Participant Id Buyer: "..value
end

-- Dissect: Participant Id Buyer
asx_securities_ntp_itch_v1_05_dissect.participant_id_buyer = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.participant_id_buyer
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.participant_id_buyer(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.participant_id_buyer, range, value, display)

  return offset + length, value
end

-- Size: Combination Trade Id
asx_securities_ntp_itch_v1_05_size_of.combination_trade_id = 8

-- Display: Combination Trade Id
asx_securities_ntp_itch_v1_05_display.combination_trade_id = function(value)
  return "Combination Trade Id: "..value
end

-- Dissect: Combination Trade Id
asx_securities_ntp_itch_v1_05_dissect.combination_trade_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.combination_trade_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.combination_trade_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.combination_trade_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Executed Message
asx_securities_ntp_itch_v1_05_size_of.trade_executed_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_type

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.executed_quantity

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_price

  index = index + asx_securities_ntp_itch_v1_05_size_of.combination_trade_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.participant_id_buyer

  index = index + asx_securities_ntp_itch_v1_05_size_of.participant_id_seller

  return index
end

-- Display: Trade Executed Message
asx_securities_ntp_itch_v1_05_display.trade_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Executed Message
asx_securities_ntp_itch_v1_05_dissect.trade_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 12 values
  index, trade_type = asx_securities_ntp_itch_v1_05_dissect.trade_type(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = asx_securities_ntp_itch_v1_05_dissect.trade_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_ntp_itch_v1_05_dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_ntp_itch_v1_05_dissect.trade_price(buffer, index, packet, parent)

  -- Combination Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, combination_trade_id = asx_securities_ntp_itch_v1_05_dissect.combination_trade_id(buffer, index, packet, parent)

  -- Participant Id Buyer: 3 Byte Ascii String
  index, participant_id_buyer = asx_securities_ntp_itch_v1_05_dissect.participant_id_buyer(buffer, index, packet, parent)

  -- Participant Id Seller: 3 Byte Ascii String
  index, participant_id_seller = asx_securities_ntp_itch_v1_05_dissect.participant_id_seller(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Executed Message
asx_securities_ntp_itch_v1_05_dissect.trade_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_executed_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.trade_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.trade_executed_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.trade_executed_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.trade_executed_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Id
asx_securities_ntp_itch_v1_05_size_of.order_id = 8

-- Display: Order Id
asx_securities_ntp_itch_v1_05_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
asx_securities_ntp_itch_v1_05_dissect.order_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.order_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.order_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Side
asx_securities_ntp_itch_v1_05_size_of.side = 1

-- Display: Side
asx_securities_ntp_itch_v1_05_display.side = function(value)
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "B" then
    return "Side: Buy (B)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
asx_securities_ntp_itch_v1_05_dissect.side = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05_display.side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Implied Order Deleted Message
asx_securities_ntp_itch_v1_05_size_of.implied_order_deleted_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.side

  index = index + asx_securities_ntp_itch_v1_05_size_of.order_id

  return index
end

-- Display: Implied Order Deleted Message
asx_securities_ntp_itch_v1_05_display.implied_order_deleted_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Implied Order Deleted Message
asx_securities_ntp_itch_v1_05_dissect.implied_order_deleted_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05_dissect.side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Deleted Message
asx_securities_ntp_itch_v1_05_dissect.implied_order_deleted_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.implied_order_deleted_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.implied_order_deleted_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.implied_order_deleted_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.implied_order_deleted_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.implied_order_deleted_message_fields(buffer, offset, packet, parent)
end

-- Size: Price
asx_securities_ntp_itch_v1_05_size_of.price = 8

-- Display: Price
asx_securities_ntp_itch_v1_05_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
asx_securities_ntp_itch_v1_05_dissect.price = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Order Book Priority
asx_securities_ntp_itch_v1_05_size_of.order_book_priority = 8

-- Display: Order Book Priority
asx_securities_ntp_itch_v1_05_display.order_book_priority = function(value)
  return "Order Book Priority: "..value
end

-- Dissect: Order Book Priority
asx_securities_ntp_itch_v1_05_dissect.order_book_priority = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.order_book_priority
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.order_book_priority(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.order_book_priority, range, value, display)

  return offset + length, value
end

-- Calculate size of: Implied Order Replaced Message
asx_securities_ntp_itch_v1_05_size_of.implied_order_replaced_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.side

  index = index + asx_securities_ntp_itch_v1_05_size_of.order_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.order_book_priority

  index = index + asx_securities_ntp_itch_v1_05_size_of.quantity

  index = index + asx_securities_ntp_itch_v1_05_size_of.price

  return index
end

-- Display: Implied Order Replaced Message
asx_securities_ntp_itch_v1_05_display.implied_order_replaced_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Implied Order Replaced Message
asx_securities_ntp_itch_v1_05_dissect.implied_order_replaced_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05_dissect.side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05_dissect.order_id(buffer, index, packet, parent)

  -- Order Book Priority: 8 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_ntp_itch_v1_05_dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_ntp_itch_v1_05_dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = asx_securities_ntp_itch_v1_05_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Replaced Message
asx_securities_ntp_itch_v1_05_dissect.implied_order_replaced_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.implied_order_replaced_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.implied_order_replaced_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.implied_order_replaced_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.implied_order_replaced_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.implied_order_replaced_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Implied Order Added Message
asx_securities_ntp_itch_v1_05_size_of.implied_order_added_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.side

  index = index + asx_securities_ntp_itch_v1_05_size_of.order_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.order_book_priority

  index = index + asx_securities_ntp_itch_v1_05_size_of.quantity

  index = index + asx_securities_ntp_itch_v1_05_size_of.price

  return index
end

-- Display: Implied Order Added Message
asx_securities_ntp_itch_v1_05_display.implied_order_added_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Implied Order Added Message
asx_securities_ntp_itch_v1_05_dissect.implied_order_added_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05_dissect.side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05_dissect.order_id(buffer, index, packet, parent)

  -- Order Book Priority: 8 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_ntp_itch_v1_05_dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_ntp_itch_v1_05_dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = asx_securities_ntp_itch_v1_05_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Added Message
asx_securities_ntp_itch_v1_05_dissect.implied_order_added_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.implied_order_added_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.implied_order_added_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.implied_order_added_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.implied_order_added_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.implied_order_added_message_fields(buffer, offset, packet, parent)
end

-- Size: Opposite Order Id
asx_securities_ntp_itch_v1_05_size_of.opposite_order_id = 8

-- Display: Opposite Order Id
asx_securities_ntp_itch_v1_05_display.opposite_order_id = function(value)
  return "Opposite Order Id: "..value
end

-- Dissect: Opposite Order Id
asx_securities_ntp_itch_v1_05_dissect.opposite_order_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.opposite_order_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.opposite_order_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.opposite_order_id, range, value, display)

  return offset + length, value
end

-- Size: Opposite Side
asx_securities_ntp_itch_v1_05_size_of.opposite_side = 1

-- Display: Opposite Side
asx_securities_ntp_itch_v1_05_display.opposite_side = function(value)
  if value == "S" then
    return "Opposite Side: Sell (S)"
  end
  if value == "B" then
    return "Opposite Side: Buy (B)"
  end

  return "Opposite Side: Unknown("..value..")"
end

-- Dissect: Opposite Side
asx_securities_ntp_itch_v1_05_dissect.opposite_side = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.opposite_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05_display.opposite_side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.opposite_side, range, value, display)

  return offset + length, value
end

-- Size: Opposite Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_size_of.opposite_tradeable_instrument_id = 4

-- Display: Opposite Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_display.opposite_tradeable_instrument_id = function(value)
  return "Opposite Tradeable Instrument Id: "..value
end

-- Dissect: Opposite Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_dissect.opposite_tradeable_instrument_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.opposite_tradeable_instrument_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.opposite_tradeable_instrument_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.opposite_tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Quantity Remaining
asx_securities_ntp_itch_v1_05_size_of.quantity_remaining = 4

-- Display: Quantity Remaining
asx_securities_ntp_itch_v1_05_display.quantity_remaining = function(value)
  return "Quantity Remaining: "..value
end

-- Dissect: Quantity Remaining
asx_securities_ntp_itch_v1_05_dissect.quantity_remaining = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.quantity_remaining
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.quantity_remaining(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.quantity_remaining, range, value, display)

  return offset + length, value
end

-- Calculate size of: Combination Order Executed Message
asx_securities_ntp_itch_v1_05_size_of.combination_order_executed_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.side

  index = index + asx_securities_ntp_itch_v1_05_size_of.order_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.quantity_remaining

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_type

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.executed_quantity

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_price

  index = index + asx_securities_ntp_itch_v1_05_size_of.opposite_tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.opposite_side

  index = index + asx_securities_ntp_itch_v1_05_size_of.opposite_order_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.combination_trade_id

  return index
end

-- Display: Combination Order Executed Message
asx_securities_ntp_itch_v1_05_display.combination_order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Combination Order Executed Message
asx_securities_ntp_itch_v1_05_dissect.combination_order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05_dissect.side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05_dissect.order_id(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_ntp_itch_v1_05_dissect.quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 12 values
  index, trade_type = asx_securities_ntp_itch_v1_05_dissect.trade_type(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = asx_securities_ntp_itch_v1_05_dissect.trade_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_ntp_itch_v1_05_dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_ntp_itch_v1_05_dissect.trade_price(buffer, index, packet, parent)

  -- Opposite Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, opposite_tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.opposite_tradeable_instrument_id(buffer, index, packet, parent)

  -- Opposite Side: 1 Byte Ascii String Enum with 2 values
  index, opposite_side = asx_securities_ntp_itch_v1_05_dissect.opposite_side(buffer, index, packet, parent)

  -- Opposite Order Id: 8 Byte Unsigned Fixed Width Integer
  index, opposite_order_id = asx_securities_ntp_itch_v1_05_dissect.opposite_order_id(buffer, index, packet, parent)

  -- Combination Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, combination_trade_id = asx_securities_ntp_itch_v1_05_dissect.combination_trade_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Executed Message
asx_securities_ntp_itch_v1_05_dissect.combination_order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.combination_order_executed_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.combination_order_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.combination_order_executed_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.combination_order_executed_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.combination_order_executed_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Auction Order Executed Message
asx_securities_ntp_itch_v1_05_size_of.auction_order_executed_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.side

  index = index + asx_securities_ntp_itch_v1_05_size_of.order_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.quantity_remaining

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_type

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.executed_quantity

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_price

  index = index + asx_securities_ntp_itch_v1_05_size_of.opposite_order_id

  return index
end

-- Display: Auction Order Executed Message
asx_securities_ntp_itch_v1_05_display.auction_order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Order Executed Message
asx_securities_ntp_itch_v1_05_dissect.auction_order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05_dissect.side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05_dissect.order_id(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_ntp_itch_v1_05_dissect.quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 12 values
  index, trade_type = asx_securities_ntp_itch_v1_05_dissect.trade_type(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = asx_securities_ntp_itch_v1_05_dissect.trade_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_ntp_itch_v1_05_dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_ntp_itch_v1_05_dissect.trade_price(buffer, index, packet, parent)

  -- Opposite Order Id: 8 Byte Unsigned Fixed Width Integer
  index, opposite_order_id = asx_securities_ntp_itch_v1_05_dissect.opposite_order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Order Executed Message
asx_securities_ntp_itch_v1_05_dissect.auction_order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_order_executed_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.auction_order_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.auction_order_executed_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.auction_order_executed_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.auction_order_executed_message_fields(buffer, offset, packet, parent)
end

-- Size: Counter Party Id
asx_securities_ntp_itch_v1_05_size_of.counter_party_id = 3

-- Display: Counter Party Id
asx_securities_ntp_itch_v1_05_display.counter_party_id = function(value)
  return "Counter Party Id: "..value
end

-- Dissect: Counter Party Id
asx_securities_ntp_itch_v1_05_dissect.counter_party_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.counter_party_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.counter_party_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.counter_party_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed Message
asx_securities_ntp_itch_v1_05_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.side

  index = index + asx_securities_ntp_itch_v1_05_size_of.order_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.quantity_remaining

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_type

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.executed_quantity

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_price

  index = index + asx_securities_ntp_itch_v1_05_size_of.combination_trade_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.counter_party_id

  return index
end

-- Display: Order Executed Message
asx_securities_ntp_itch_v1_05_display.order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Message
asx_securities_ntp_itch_v1_05_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05_dissect.side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05_dissect.order_id(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_ntp_itch_v1_05_dissect.quantity_remaining(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 12 values
  index, trade_type = asx_securities_ntp_itch_v1_05_dissect.trade_type(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = asx_securities_ntp_itch_v1_05_dissect.trade_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_ntp_itch_v1_05_dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_ntp_itch_v1_05_dissect.trade_price(buffer, index, packet, parent)

  -- Combination Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, combination_trade_id = asx_securities_ntp_itch_v1_05_dissect.combination_trade_id(buffer, index, packet, parent)

  -- Counter Party Id: 3 Byte Ascii String
  index, counter_party_id = asx_securities_ntp_itch_v1_05_dissect.counter_party_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
asx_securities_ntp_itch_v1_05_dissect.order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.order_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.order_executed_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.order_executed_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.order_executed_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Deleted Message
asx_securities_ntp_itch_v1_05_size_of.order_deleted_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.side

  index = index + asx_securities_ntp_itch_v1_05_size_of.order_id

  return index
end

-- Display: Order Deleted Message
asx_securities_ntp_itch_v1_05_display.order_deleted_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Deleted Message
asx_securities_ntp_itch_v1_05_dissect.order_deleted_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05_dissect.side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05_dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
asx_securities_ntp_itch_v1_05_dissect.order_deleted_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_deleted_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.order_deleted_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.order_deleted_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.order_deleted_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.order_deleted_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Volume Cancelled Message
asx_securities_ntp_itch_v1_05_size_of.order_volume_cancelled_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.side

  index = index + asx_securities_ntp_itch_v1_05_size_of.order_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.quantity

  return index
end

-- Display: Order Volume Cancelled Message
asx_securities_ntp_itch_v1_05_display.order_volume_cancelled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Volume Cancelled Message
asx_securities_ntp_itch_v1_05_dissect.order_volume_cancelled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05_dissect.side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05_dissect.order_id(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_ntp_itch_v1_05_dissect.quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Volume Cancelled Message
asx_securities_ntp_itch_v1_05_dissect.order_volume_cancelled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_volume_cancelled_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.order_volume_cancelled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.order_volume_cancelled_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.order_volume_cancelled_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.order_volume_cancelled_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order Message
asx_securities_ntp_itch_v1_05_size_of.add_order_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.side

  index = index + asx_securities_ntp_itch_v1_05_size_of.order_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.order_book_priority

  index = index + asx_securities_ntp_itch_v1_05_size_of.quantity

  index = index + asx_securities_ntp_itch_v1_05_size_of.price

  return index
end

-- Display: Add Order Message
asx_securities_ntp_itch_v1_05_display.add_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message
asx_securities_ntp_itch_v1_05_dissect.add_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05_dissect.side(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05_dissect.order_id(buffer, index, packet, parent)

  -- Order Book Priority: 8 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_ntp_itch_v1_05_dissect.order_book_priority(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_ntp_itch_v1_05_dissect.quantity(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = asx_securities_ntp_itch_v1_05_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
asx_securities_ntp_itch_v1_05_dissect.add_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.add_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.add_order_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.add_order_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.add_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Session State
asx_securities_ntp_itch_v1_05_size_of.session_state = 1

-- Display: Session State
asx_securities_ntp_itch_v1_05_display.session_state = function(value)
  if value == "P" then
    return "Session State: Pre Open (P)"
  end
  if value == "O" then
    return "Session State: Opened (O)"
  end
  if value == "R" then
    return "Session State: Regulatory Halt (R)"
  end
  if value == "H" then
    return "Session State: Halted (H)"
  end
  if value == "C" then
    return "Session State: Closed (C)"
  end
  if value == "M" then
    return "Session State: Maintenance (M)"
  end

  return "Session State: Unknown("..value..")"
end

-- Dissect: Session State
asx_securities_ntp_itch_v1_05_dissect.session_state = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.session_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05_display.session_state(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.session_state, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Book State Message
asx_securities_ntp_itch_v1_05_size_of.order_book_state_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.session_state

  return index
end

-- Display: Order Book State Message
asx_securities_ntp_itch_v1_05_display.order_book_state_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book State Message
asx_securities_ntp_itch_v1_05_dissect.order_book_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String Enum with 6 values
  index, session_state = asx_securities_ntp_itch_v1_05_dissect.session_state(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
asx_securities_ntp_itch_v1_05_dissect.order_book_state_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_state_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.order_book_state_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.order_book_state_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.order_book_state_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.order_book_state_message_fields(buffer, offset, packet, parent)
end

-- Size: Price Leg
asx_securities_ntp_itch_v1_05_size_of.price_leg = 8

-- Display: Price Leg
asx_securities_ntp_itch_v1_05_display.price_leg = function(value)
  return "Price Leg: "..value
end

-- Dissect: Price Leg
asx_securities_ntp_itch_v1_05_dissect.price_leg = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.price_leg
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.price_leg(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.price_leg, range, value, display)

  return offset + length, value
end

-- Size: Ratio Leg
asx_securities_ntp_itch_v1_05_size_of.ratio_leg = 4

-- Display: Ratio Leg
asx_securities_ntp_itch_v1_05_display.ratio_leg = function(value)
  return "Ratio Leg: "..value
end

-- Dissect: Ratio Leg
asx_securities_ntp_itch_v1_05_dissect.ratio_leg = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.ratio_leg
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.ratio_leg(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.ratio_leg, range, value, display)

  return offset + length, value
end

-- Size: Side Leg
asx_securities_ntp_itch_v1_05_size_of.side_leg = 1

-- Display: Side Leg
asx_securities_ntp_itch_v1_05_display.side_leg = function(value)
  if value == " " then
    return "Side Leg: Not Defined (<whitespace>)"
  end
  if value == "B" then
    return "Side Leg: Buy (B)"
  end
  if value == "S" then
    return "Side Leg: Sell (S)"
  end

  return "Side Leg: Unknown("..value..")"
end

-- Dissect: Side Leg
asx_securities_ntp_itch_v1_05_dissect.side_leg = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.side_leg
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05_display.side_leg(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.side_leg, range, value, display)

  return offset + length, value
end

-- Size: Tradeable Instrument Id Leg
asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id_leg = 4

-- Display: Tradeable Instrument Id Leg
asx_securities_ntp_itch_v1_05_display.tradeable_instrument_id_leg = function(value)
  return "Tradeable Instrument Id Leg: "..value
end

-- Dissect: Tradeable Instrument Id Leg
asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id_leg = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id_leg
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.tradeable_instrument_id_leg(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.tradeable_instrument_id_leg, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bundle Leg
asx_securities_ntp_itch_v1_05_size_of.bundle_leg = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id_leg

  index = index + asx_securities_ntp_itch_v1_05_size_of.side_leg

  index = index + asx_securities_ntp_itch_v1_05_size_of.ratio_leg

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_leg

  return index
end

-- Display: Bundle Leg
asx_securities_ntp_itch_v1_05_display.bundle_leg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Bundle Leg
asx_securities_ntp_itch_v1_05_dissect.bundle_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tradeable Instrument Id Leg: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id_leg = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id_leg(buffer, index, packet, parent)

  -- Side Leg: 1 Byte Ascii String Enum with 3 values
  index, side_leg = asx_securities_ntp_itch_v1_05_dissect.side_leg(buffer, index, packet, parent)

  -- Ratio Leg: 4 Byte Unsigned Fixed Width Integer
  index, ratio_leg = asx_securities_ntp_itch_v1_05_dissect.ratio_leg(buffer, index, packet, parent)

  -- Price Leg: 8 Byte Signed Fixed Width Integer
  index, price_leg = asx_securities_ntp_itch_v1_05_dissect.price_leg(buffer, index, packet, parent)

  return index
end

-- Dissect: Bundle Leg
asx_securities_ntp_itch_v1_05_dissect.bundle_leg = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.bundle_leg then
    local length = asx_securities_ntp_itch_v1_05_size_of.bundle_leg(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.bundle_leg(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.bundle_leg, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.bundle_leg_fields(buffer, offset, packet, parent)
end

-- Size: Legs
asx_securities_ntp_itch_v1_05_size_of.legs = 1

-- Display: Legs
asx_securities_ntp_itch_v1_05_display.legs = function(value)
  return "Legs: "..value
end

-- Dissect: Legs
asx_securities_ntp_itch_v1_05_dissect.legs = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.legs
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.legs(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.legs, range, value, display)

  return offset + length, value
end

-- Size: Price Minimum Tick
asx_securities_ntp_itch_v1_05_size_of.price_minimum_tick = 4

-- Display: Price Minimum Tick
asx_securities_ntp_itch_v1_05_display.price_minimum_tick = function(value)
  return "Price Minimum Tick: "..value
end

-- Dissect: Price Minimum Tick
asx_securities_ntp_itch_v1_05_dissect.price_minimum_tick = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.price_minimum_tick
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.price_minimum_tick(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.price_minimum_tick, range, value, display)

  return offset + length, value
end

-- Size: Price Fractional Denominator
asx_securities_ntp_itch_v1_05_size_of.price_fractional_denominator = 4

-- Display: Price Fractional Denominator
asx_securities_ntp_itch_v1_05_display.price_fractional_denominator = function(value)
  return "Price Fractional Denominator: "..value
end

-- Dissect: Price Fractional Denominator
asx_securities_ntp_itch_v1_05_dissect.price_fractional_denominator = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.price_fractional_denominator
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.price_fractional_denominator(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.price_fractional_denominator, range, value, display)

  return offset + length, value
end

-- Size: Price Display Decimals
asx_securities_ntp_itch_v1_05_size_of.price_display_decimals = 1

-- Display: Price Display Decimals
asx_securities_ntp_itch_v1_05_display.price_display_decimals = function(value)
  return "Price Display Decimals: "..value
end

-- Dissect: Price Display Decimals
asx_securities_ntp_itch_v1_05_dissect.price_display_decimals = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.price_display_decimals
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.price_display_decimals(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.price_display_decimals, range, value, display)

  return offset + length, value
end

-- Size: Price Method
asx_securities_ntp_itch_v1_05_size_of.price_method = 1

-- Display: Price Method
asx_securities_ntp_itch_v1_05_display.price_method = function(value)
  if value == 0 then
    return "Price Method: Net Price (0)"
  end
  if value == 2 then
    return "Price Method: Yield Difference (2)"
  end
  if value == 3 then
    return "Price Method: Individual (3)"
  end
  if value == 4 then
    return "Price Method: Average Price (4)"
  end

  return "Price Method: Unknown("..value..")"
end

-- Dissect: Price Method
asx_securities_ntp_itch_v1_05_dissect.price_method = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.price_method
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.price_method(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.price_method, range, value, display)

  return offset + length, value
end

-- Size: Cfi Code
asx_securities_ntp_itch_v1_05_size_of.cfi_code = 6

-- Display: Cfi Code
asx_securities_ntp_itch_v1_05_display.cfi_code = function(value)
  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
asx_securities_ntp_itch_v1_05_dissect.cfi_code = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.cfi_code
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.cfi_code(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Size: Long Name
asx_securities_ntp_itch_v1_05_size_of.long_name = 60

-- Display: Long Name
asx_securities_ntp_itch_v1_05_display.long_name = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
asx_securities_ntp_itch_v1_05_dissect.long_name = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.long_name
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.long_name(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.long_name, range, value, display)

  return offset + length, value
end

-- Size: Symbol Name
asx_securities_ntp_itch_v1_05_size_of.symbol_name = 32

-- Display: Symbol Name
asx_securities_ntp_itch_v1_05_display.symbol_name = function(value)
  return "Symbol Name: "..value
end

-- Dissect: Symbol Name
asx_securities_ntp_itch_v1_05_dissect.symbol_name = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.symbol_name
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.symbol_name(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.symbol_name, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bundles Symbol Directory
asx_securities_ntp_itch_v1_05_size_of.bundles_symbol_directory = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.symbol_name

  index = index + asx_securities_ntp_itch_v1_05_size_of.long_name

  index = index + asx_securities_ntp_itch_v1_05_size_of.cfi_code

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_method

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_display_decimals

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_fractional_denominator

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_minimum_tick

  index = index + asx_securities_ntp_itch_v1_05_size_of.legs

  index = index + 20 * asx_securities_ntp_itch_v1_05_size_of.bundle_leg(buffer, offset + index)

  return index
end

-- Display: Bundles Symbol Directory
asx_securities_ntp_itch_v1_05_display.bundles_symbol_directory = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Bundles Symbol Directory
asx_securities_ntp_itch_v1_05_dissect.bundles_symbol_directory_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Symbol Name: 32 Byte Ascii String
  index, symbol_name = asx_securities_ntp_itch_v1_05_dissect.symbol_name(buffer, index, packet, parent)

  -- Long Name: 60 Byte Ascii String
  index, long_name = asx_securities_ntp_itch_v1_05_dissect.long_name(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = asx_securities_ntp_itch_v1_05_dissect.cfi_code(buffer, index, packet, parent)

  -- Price Method: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_method = asx_securities_ntp_itch_v1_05_dissect.price_method(buffer, index, packet, parent)

  -- Price Display Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_display_decimals = asx_securities_ntp_itch_v1_05_dissect.price_display_decimals(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_ntp_itch_v1_05_dissect.price_fractional_denominator(buffer, index, packet, parent)

  -- Price Minimum Tick: 4 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_ntp_itch_v1_05_dissect.price_minimum_tick(buffer, index, packet, parent)

  -- Legs: 1 Byte Unsigned Fixed Width Integer
  index, legs = asx_securities_ntp_itch_v1_05_dissect.legs(buffer, index, packet, parent)

  -- Array Count Of: Bundle Leg
  for i = 1, 20 do
    index = asx_securities_ntp_itch_v1_05_dissect.bundle_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Bundles Symbol Directory
asx_securities_ntp_itch_v1_05_dissect.bundles_symbol_directory = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.bundles_symbol_directory then
    local length = asx_securities_ntp_itch_v1_05_size_of.bundles_symbol_directory(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.bundles_symbol_directory(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.bundles_symbol_directory, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.bundles_symbol_directory_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Combination Leg
asx_securities_ntp_itch_v1_05_size_of.combination_leg = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id_leg

  index = index + asx_securities_ntp_itch_v1_05_size_of.side_leg

  index = index + asx_securities_ntp_itch_v1_05_size_of.ratio_leg

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_leg

  return index
end

-- Display: Combination Leg
asx_securities_ntp_itch_v1_05_display.combination_leg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Combination Leg
asx_securities_ntp_itch_v1_05_dissect.combination_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tradeable Instrument Id Leg: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id_leg = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id_leg(buffer, index, packet, parent)

  -- Side Leg: 1 Byte Ascii String Enum with 3 values
  index, side_leg = asx_securities_ntp_itch_v1_05_dissect.side_leg(buffer, index, packet, parent)

  -- Ratio Leg: 4 Byte Unsigned Fixed Width Integer
  index, ratio_leg = asx_securities_ntp_itch_v1_05_dissect.ratio_leg(buffer, index, packet, parent)

  -- Price Leg: 8 Byte Signed Fixed Width Integer
  index, price_leg = asx_securities_ntp_itch_v1_05_dissect.price_leg(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Leg
asx_securities_ntp_itch_v1_05_dissect.combination_leg = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.combination_leg then
    local length = asx_securities_ntp_itch_v1_05_size_of.combination_leg(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.combination_leg(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.combination_leg, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.combination_leg_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Combination Symbol Directory Message
asx_securities_ntp_itch_v1_05_size_of.combination_symbol_directory_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.symbol_name

  index = index + asx_securities_ntp_itch_v1_05_size_of.long_name

  index = index + asx_securities_ntp_itch_v1_05_size_of.cfi_code

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_method

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_display_decimals

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_fractional_denominator

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_minimum_tick

  index = index + asx_securities_ntp_itch_v1_05_size_of.legs

  index = index + 6 * asx_securities_ntp_itch_v1_05_size_of.combination_leg(buffer, offset + index)

  return index
end

-- Display: Combination Symbol Directory Message
asx_securities_ntp_itch_v1_05_display.combination_symbol_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Combination Symbol Directory Message
asx_securities_ntp_itch_v1_05_dissect.combination_symbol_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Symbol Name: 32 Byte Ascii String
  index, symbol_name = asx_securities_ntp_itch_v1_05_dissect.symbol_name(buffer, index, packet, parent)

  -- Long Name: 60 Byte Ascii String
  index, long_name = asx_securities_ntp_itch_v1_05_dissect.long_name(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = asx_securities_ntp_itch_v1_05_dissect.cfi_code(buffer, index, packet, parent)

  -- Price Method: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_method = asx_securities_ntp_itch_v1_05_dissect.price_method(buffer, index, packet, parent)

  -- Price Display Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_display_decimals = asx_securities_ntp_itch_v1_05_dissect.price_display_decimals(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_ntp_itch_v1_05_dissect.price_fractional_denominator(buffer, index, packet, parent)

  -- Price Minimum Tick: 4 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_ntp_itch_v1_05_dissect.price_minimum_tick(buffer, index, packet, parent)

  -- Legs: 1 Byte Unsigned Fixed Width Integer
  index, legs = asx_securities_ntp_itch_v1_05_dissect.legs(buffer, index, packet, parent)

  -- Array Count Of: Combination Leg
  for i = 1, 6 do
    index = asx_securities_ntp_itch_v1_05_dissect.combination_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Combination Symbol Directory Message
asx_securities_ntp_itch_v1_05_dissect.combination_symbol_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.combination_symbol_directory_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.combination_symbol_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.combination_symbol_directory_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.combination_symbol_directory_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.combination_symbol_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Basis Of Quotation
asx_securities_ntp_itch_v1_05_size_of.basis_of_quotation = 10

-- Display: Basis Of Quotation
asx_securities_ntp_itch_v1_05_display.basis_of_quotation = function(value)
  return "Basis Of Quotation: "..value
end

-- Dissect: Basis Of Quotation
asx_securities_ntp_itch_v1_05_dissect.basis_of_quotation = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.basis_of_quotation
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.basis_of_quotation(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.basis_of_quotation, range, value, display)

  return offset + length, value
end

-- Size: Expiry Date
asx_securities_ntp_itch_v1_05_size_of.expiry_date = 4

-- Display: Expiry Date
asx_securities_ntp_itch_v1_05_display.expiry_date = function(value)
  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
asx_securities_ntp_itch_v1_05_dissect.expiry_date = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.expiry_date
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.expiry_date(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Size: Block Lot Size
asx_securities_ntp_itch_v1_05_size_of.block_lot_size = 4

-- Display: Block Lot Size
asx_securities_ntp_itch_v1_05_display.block_lot_size = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
asx_securities_ntp_itch_v1_05_dissect.block_lot_size = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.block_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.block_lot_size(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Payments Per Year
asx_securities_ntp_itch_v1_05_size_of.payments_per_year = 1

-- Display: Payments Per Year
asx_securities_ntp_itch_v1_05_display.payments_per_year = function(value)
  return "Payments Per Year: "..value
end

-- Dissect: Payments Per Year
asx_securities_ntp_itch_v1_05_dissect.payments_per_year = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.payments_per_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.payments_per_year(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.payments_per_year, range, value, display)

  return offset + length, value
end

-- Size: Coupon Rate
asx_securities_ntp_itch_v1_05_size_of.coupon_rate = 2

-- Display: Coupon Rate
asx_securities_ntp_itch_v1_05_display.coupon_rate = function(value)
  return "Coupon Rate: "..value
end

-- Dissect: Coupon Rate
asx_securities_ntp_itch_v1_05_dissect.coupon_rate = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.coupon_rate
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.coupon_rate(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Size: Maturity Value
asx_securities_ntp_itch_v1_05_size_of.maturity_value = 1

-- Display: Maturity Value
asx_securities_ntp_itch_v1_05_display.maturity_value = function(value)
  return "Maturity Value: "..value
end

-- Dissect: Maturity Value
asx_securities_ntp_itch_v1_05_dissect.maturity_value = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.maturity_value
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.maturity_value(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.maturity_value, range, value, display)

  return offset + length, value
end

-- Size: Lot Size Or Face Value
asx_securities_ntp_itch_v1_05_size_of.lot_size_or_face_value = 8

-- Display: Lot Size Or Face Value
asx_securities_ntp_itch_v1_05_display.lot_size_or_face_value = function(value)
  return "Lot Size Or Face Value: "..value
end

-- Dissect: Lot Size Or Face Value
asx_securities_ntp_itch_v1_05_dissect.lot_size_or_face_value = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.lot_size_or_face_value
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.lot_size_or_face_value(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.lot_size_or_face_value, range, value, display)

  return offset + length, value
end

-- Size: Currency
asx_securities_ntp_itch_v1_05_size_of.currency = 3

-- Display: Currency
asx_securities_ntp_itch_v1_05_display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
asx_securities_ntp_itch_v1_05_dissect.currency = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.currency(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Volatility
asx_securities_ntp_itch_v1_05_size_of.volatility = 8

-- Display: Volatility
asx_securities_ntp_itch_v1_05_display.volatility = function(value)
  return "Volatility: "..value
end

-- Dissect: Volatility
asx_securities_ntp_itch_v1_05_dissect.volatility = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.volatility
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.volatility(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.volatility, range, value, display)

  return offset + length, value
end

-- Size: Prior Day Settlement
asx_securities_ntp_itch_v1_05_size_of.prior_day_settlement = 8

-- Display: Prior Day Settlement
asx_securities_ntp_itch_v1_05_display.prior_day_settlement = function(value)
  return "Prior Day Settlement: "..value
end

-- Dissect: Prior Day Settlement
asx_securities_ntp_itch_v1_05_dissect.prior_day_settlement = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.prior_day_settlement
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.prior_day_settlement(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.prior_day_settlement, range, value, display)

  return offset + length, value
end

-- Size: Last Trading Date
asx_securities_ntp_itch_v1_05_size_of.last_trading_date = 4

-- Display: Last Trading Date
asx_securities_ntp_itch_v1_05_display.last_trading_date = function(value)
  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
asx_securities_ntp_itch_v1_05_dissect.last_trading_date = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.last_trading_date
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.last_trading_date(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Minimum Tick
asx_securities_ntp_itch_v1_05_size_of.strike_price_minimum_tick = 4

-- Display: Strike Price Minimum Tick
asx_securities_ntp_itch_v1_05_display.strike_price_minimum_tick = function(value)
  return "Strike Price Minimum Tick: "..value
end

-- Dissect: Strike Price Minimum Tick
asx_securities_ntp_itch_v1_05_dissect.strike_price_minimum_tick = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.strike_price_minimum_tick
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.strike_price_minimum_tick(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.strike_price_minimum_tick, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Fractional Denominator
asx_securities_ntp_itch_v1_05_size_of.strike_price_fractional_denominator = 4

-- Display: Strike Price Fractional Denominator
asx_securities_ntp_itch_v1_05_display.strike_price_fractional_denominator = function(value)
  return "Strike Price Fractional Denominator: "..value
end

-- Dissect: Strike Price Fractional Denominator
asx_securities_ntp_itch_v1_05_dissect.strike_price_fractional_denominator = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.strike_price_fractional_denominator
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.strike_price_fractional_denominator(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.strike_price_fractional_denominator, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Decimal Position
asx_securities_ntp_itch_v1_05_size_of.strike_price_decimal_position = 1

-- Display: Strike Price Decimal Position
asx_securities_ntp_itch_v1_05_display.strike_price_decimal_position = function(value)
  return "Strike Price Decimal Position: "..value
end

-- Dissect: Strike Price Decimal Position
asx_securities_ntp_itch_v1_05_dissect.strike_price_decimal_position = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.strike_price_decimal_position
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.strike_price_decimal_position(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.strike_price_decimal_position, range, value, display)

  return offset + length, value
end

-- Size: Underlying Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_size_of.underlying_tradeable_instrument_id = 4

-- Display: Underlying Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_display.underlying_tradeable_instrument_id = function(value)
  return "Underlying Tradeable Instrument Id: "..value
end

-- Dissect: Underlying Tradeable Instrument Id
asx_securities_ntp_itch_v1_05_dissect.underlying_tradeable_instrument_id = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.underlying_tradeable_instrument_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.underlying_tradeable_instrument_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.underlying_tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Strike
asx_securities_ntp_itch_v1_05_size_of.strike = 8

-- Display: Strike
asx_securities_ntp_itch_v1_05_display.strike = function(value)
  return "Strike: "..value
end

-- Dissect: Strike
asx_securities_ntp_itch_v1_05_dissect.strike = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.strike
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05_display.strike(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.strike, range, value, display)

  return offset + length, value
end

-- Size: Option Type
asx_securities_ntp_itch_v1_05_size_of.option_type = 1

-- Display: Option Type
asx_securities_ntp_itch_v1_05_display.option_type = function(value)
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == "C" then
    return "Option Type: Call (C)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
asx_securities_ntp_itch_v1_05_dissect.option_type = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05_display.option_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Expiry Month
asx_securities_ntp_itch_v1_05_size_of.expiry_month = 1

-- Display: Expiry Month
asx_securities_ntp_itch_v1_05_display.expiry_month = function(value)
  if value == 1 then
    return "Expiry Month: Jan (1)"
  end
  if value == 2 then
    return "Expiry Month: Feb (2)"
  end
  if value == 3 then
    return "Expiry Month: Mar (3)"
  end
  if value == 4 then
    return "Expiry Month: Apr (4)"
  end
  if value == 5 then
    return "Expiry Month: May (5)"
  end
  if value == 6 then
    return "Expiry Month: Jun (6)"
  end
  if value == 7 then
    return "Expiry Month: Jul (7)"
  end
  if value == 8 then
    return "Expiry Month: Aug (8)"
  end
  if value == 9 then
    return "Expiry Month: Sep (9)"
  end
  if value == 10 then
    return "Expiry Month: Oct (10)"
  end
  if value == 11 then
    return "Expiry Month: Nov (11)"
  end
  if value == 12 then
    return "Expiry Month: Dec (12)"
  end

  return "Expiry Month: Unknown("..value..")"
end

-- Dissect: Expiry Month
asx_securities_ntp_itch_v1_05_dissect.expiry_month = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.expiry_month
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.expiry_month(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.expiry_month, range, value, display)

  return offset + length, value
end

-- Size: Expiry Year
asx_securities_ntp_itch_v1_05_size_of.expiry_year = 2

-- Display: Expiry Year
asx_securities_ntp_itch_v1_05_display.expiry_year = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
asx_securities_ntp_itch_v1_05_dissect.expiry_year = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.expiry_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.expiry_year(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- Size: Instrument
asx_securities_ntp_itch_v1_05_size_of.instrument = 6

-- Display: Instrument
asx_securities_ntp_itch_v1_05_display.instrument = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
asx_securities_ntp_itch_v1_05_dissect.instrument = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.instrument
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.instrument(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.instrument, range, value, display)

  return offset + length, value
end

-- Size: Exchange
asx_securities_ntp_itch_v1_05_size_of.exchange = 6

-- Display: Exchange
asx_securities_ntp_itch_v1_05_display.exchange = function(value)
  return "Exchange: "..value
end

-- Dissect: Exchange
asx_securities_ntp_itch_v1_05_dissect.exchange = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.exchange
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.exchange(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.exchange, range, value, display)

  return offset + length, value
end

-- Size: Isin
asx_securities_ntp_itch_v1_05_size_of.isin = 12

-- Display: Isin
asx_securities_ntp_itch_v1_05_display.isin = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
asx_securities_ntp_itch_v1_05_dissect.isin = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.isin
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05_display.isin(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.isin, range, value, display)

  return offset + length, value
end

-- Calculate size of: Options Symbol Directory Message
asx_securities_ntp_itch_v1_05_size_of.options_symbol_directory_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.symbol_name

  index = index + asx_securities_ntp_itch_v1_05_size_of.long_name

  index = index + asx_securities_ntp_itch_v1_05_size_of.isin

  index = index + asx_securities_ntp_itch_v1_05_size_of.exchange

  index = index + asx_securities_ntp_itch_v1_05_size_of.instrument

  index = index + asx_securities_ntp_itch_v1_05_size_of.cfi_code

  index = index + asx_securities_ntp_itch_v1_05_size_of.expiry_year

  index = index + asx_securities_ntp_itch_v1_05_size_of.expiry_month

  index = index + asx_securities_ntp_itch_v1_05_size_of.option_type

  index = index + asx_securities_ntp_itch_v1_05_size_of.strike

  index = index + asx_securities_ntp_itch_v1_05_size_of.underlying_tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_display_decimals

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_fractional_denominator

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_minimum_tick

  index = index + asx_securities_ntp_itch_v1_05_size_of.strike_price_decimal_position

  index = index + asx_securities_ntp_itch_v1_05_size_of.strike_price_fractional_denominator

  index = index + asx_securities_ntp_itch_v1_05_size_of.strike_price_minimum_tick

  index = index + asx_securities_ntp_itch_v1_05_size_of.last_trading_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.prior_day_settlement

  index = index + asx_securities_ntp_itch_v1_05_size_of.volatility

  index = index + asx_securities_ntp_itch_v1_05_size_of.currency

  index = index + asx_securities_ntp_itch_v1_05_size_of.lot_size_or_face_value

  index = index + asx_securities_ntp_itch_v1_05_size_of.maturity_value

  index = index + asx_securities_ntp_itch_v1_05_size_of.coupon_rate

  index = index + asx_securities_ntp_itch_v1_05_size_of.payments_per_year

  index = index + asx_securities_ntp_itch_v1_05_size_of.block_lot_size

  index = index + asx_securities_ntp_itch_v1_05_size_of.expiry_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.basis_of_quotation

  return index
end

-- Display: Options Symbol Directory Message
asx_securities_ntp_itch_v1_05_display.options_symbol_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Options Symbol Directory Message
asx_securities_ntp_itch_v1_05_dissect.options_symbol_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Symbol Name: 32 Byte Ascii String
  index, symbol_name = asx_securities_ntp_itch_v1_05_dissect.symbol_name(buffer, index, packet, parent)

  -- Long Name: 60 Byte Ascii String
  index, long_name = asx_securities_ntp_itch_v1_05_dissect.long_name(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = asx_securities_ntp_itch_v1_05_dissect.isin(buffer, index, packet, parent)

  -- Exchange: 6 Byte Ascii String
  index, exchange = asx_securities_ntp_itch_v1_05_dissect.exchange(buffer, index, packet, parent)

  -- Instrument: 6 Byte Ascii String
  index, instrument = asx_securities_ntp_itch_v1_05_dissect.instrument(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = asx_securities_ntp_itch_v1_05_dissect.cfi_code(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Unsigned Fixed Width Integer
  index, expiry_year = asx_securities_ntp_itch_v1_05_dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, expiry_month = asx_securities_ntp_itch_v1_05_dissect.expiry_month(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = asx_securities_ntp_itch_v1_05_dissect.option_type(buffer, index, packet, parent)

  -- Strike: 8 Byte Signed Fixed Width Integer
  index, strike = asx_securities_ntp_itch_v1_05_dissect.strike(buffer, index, packet, parent)

  -- Underlying Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, underlying_tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.underlying_tradeable_instrument_id(buffer, index, packet, parent)

  -- Price Display Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_display_decimals = asx_securities_ntp_itch_v1_05_dissect.price_display_decimals(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_ntp_itch_v1_05_dissect.price_fractional_denominator(buffer, index, packet, parent)

  -- Price Minimum Tick: 4 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_ntp_itch_v1_05_dissect.price_minimum_tick(buffer, index, packet, parent)

  -- Strike Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index, strike_price_decimal_position = asx_securities_ntp_itch_v1_05_dissect.strike_price_decimal_position(buffer, index, packet, parent)

  -- Strike Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, strike_price_fractional_denominator = asx_securities_ntp_itch_v1_05_dissect.strike_price_fractional_denominator(buffer, index, packet, parent)

  -- Strike Price Minimum Tick: 4 Byte Unsigned Fixed Width Integer
  index, strike_price_minimum_tick = asx_securities_ntp_itch_v1_05_dissect.strike_price_minimum_tick(buffer, index, packet, parent)

  -- Last Trading Date: 4 Byte Unsigned Fixed Width Integer
  index, last_trading_date = asx_securities_ntp_itch_v1_05_dissect.last_trading_date(buffer, index, packet, parent)

  -- Prior Day Settlement: 8 Byte Signed Fixed Width Integer
  index, prior_day_settlement = asx_securities_ntp_itch_v1_05_dissect.prior_day_settlement(buffer, index, packet, parent)

  -- Volatility: 8 Byte Unsigned Fixed Width Integer
  index, volatility = asx_securities_ntp_itch_v1_05_dissect.volatility(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = asx_securities_ntp_itch_v1_05_dissect.currency(buffer, index, packet, parent)

  -- Lot Size Or Face Value: 8 Byte Unsigned Fixed Width Integer
  index, lot_size_or_face_value = asx_securities_ntp_itch_v1_05_dissect.lot_size_or_face_value(buffer, index, packet, parent)

  -- Maturity Value: 1 Byte Unsigned Fixed Width Integer
  index, maturity_value = asx_securities_ntp_itch_v1_05_dissect.maturity_value(buffer, index, packet, parent)

  -- Coupon Rate: 2 Byte Unsigned Fixed Width Integer
  index, coupon_rate = asx_securities_ntp_itch_v1_05_dissect.coupon_rate(buffer, index, packet, parent)

  -- Payments Per Year: 1 Byte Unsigned Fixed Width Integer
  index, payments_per_year = asx_securities_ntp_itch_v1_05_dissect.payments_per_year(buffer, index, packet, parent)

  -- Block Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, block_lot_size = asx_securities_ntp_itch_v1_05_dissect.block_lot_size(buffer, index, packet, parent)

  -- Expiry Date: 4 Byte Unsigned Fixed Width Integer
  index, expiry_date = asx_securities_ntp_itch_v1_05_dissect.expiry_date(buffer, index, packet, parent)

  -- Basis Of Quotation: 10 Byte Ascii String
  index, basis_of_quotation = asx_securities_ntp_itch_v1_05_dissect.basis_of_quotation(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Symbol Directory Message
asx_securities_ntp_itch_v1_05_dissect.options_symbol_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.options_symbol_directory_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.options_symbol_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.options_symbol_directory_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.options_symbol_directory_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.options_symbol_directory_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Future Symbol Directory Message
asx_securities_ntp_itch_v1_05_size_of.future_symbol_directory_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.tradeable_instrument_id

  index = index + asx_securities_ntp_itch_v1_05_size_of.symbol_name

  index = index + asx_securities_ntp_itch_v1_05_size_of.long_name

  index = index + asx_securities_ntp_itch_v1_05_size_of.isin

  index = index + asx_securities_ntp_itch_v1_05_size_of.exchange

  index = index + asx_securities_ntp_itch_v1_05_size_of.instrument

  index = index + asx_securities_ntp_itch_v1_05_size_of.cfi_code

  index = index + asx_securities_ntp_itch_v1_05_size_of.expiry_year

  index = index + asx_securities_ntp_itch_v1_05_size_of.expiry_month

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_display_decimals

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_fractional_denominator

  index = index + asx_securities_ntp_itch_v1_05_size_of.price_minimum_tick

  index = index + asx_securities_ntp_itch_v1_05_size_of.last_trading_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.prior_day_settlement

  index = index + asx_securities_ntp_itch_v1_05_size_of.currency

  index = index + asx_securities_ntp_itch_v1_05_size_of.lot_size_or_face_value

  index = index + asx_securities_ntp_itch_v1_05_size_of.maturity_value

  index = index + asx_securities_ntp_itch_v1_05_size_of.coupon_rate

  index = index + asx_securities_ntp_itch_v1_05_size_of.payments_per_year

  index = index + asx_securities_ntp_itch_v1_05_size_of.block_lot_size

  index = index + asx_securities_ntp_itch_v1_05_size_of.expiry_date

  return index
end

-- Display: Future Symbol Directory Message
asx_securities_ntp_itch_v1_05_display.future_symbol_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Future Symbol Directory Message
asx_securities_ntp_itch_v1_05_dissect.future_symbol_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05_dissect.tradeable_instrument_id(buffer, index, packet, parent)

  -- Symbol Name: 32 Byte Ascii String
  index, symbol_name = asx_securities_ntp_itch_v1_05_dissect.symbol_name(buffer, index, packet, parent)

  -- Long Name: 60 Byte Ascii String
  index, long_name = asx_securities_ntp_itch_v1_05_dissect.long_name(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = asx_securities_ntp_itch_v1_05_dissect.isin(buffer, index, packet, parent)

  -- Exchange: 6 Byte Ascii String
  index, exchange = asx_securities_ntp_itch_v1_05_dissect.exchange(buffer, index, packet, parent)

  -- Instrument: 6 Byte Ascii String
  index, instrument = asx_securities_ntp_itch_v1_05_dissect.instrument(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = asx_securities_ntp_itch_v1_05_dissect.cfi_code(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Unsigned Fixed Width Integer
  index, expiry_year = asx_securities_ntp_itch_v1_05_dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, expiry_month = asx_securities_ntp_itch_v1_05_dissect.expiry_month(buffer, index, packet, parent)

  -- Price Display Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_display_decimals = asx_securities_ntp_itch_v1_05_dissect.price_display_decimals(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_ntp_itch_v1_05_dissect.price_fractional_denominator(buffer, index, packet, parent)

  -- Price Minimum Tick: 4 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_ntp_itch_v1_05_dissect.price_minimum_tick(buffer, index, packet, parent)

  -- Last Trading Date: 4 Byte Unsigned Fixed Width Integer
  index, last_trading_date = asx_securities_ntp_itch_v1_05_dissect.last_trading_date(buffer, index, packet, parent)

  -- Prior Day Settlement: 8 Byte Signed Fixed Width Integer
  index, prior_day_settlement = asx_securities_ntp_itch_v1_05_dissect.prior_day_settlement(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = asx_securities_ntp_itch_v1_05_dissect.currency(buffer, index, packet, parent)

  -- Lot Size Or Face Value: 8 Byte Unsigned Fixed Width Integer
  index, lot_size_or_face_value = asx_securities_ntp_itch_v1_05_dissect.lot_size_or_face_value(buffer, index, packet, parent)

  -- Maturity Value: 1 Byte Unsigned Fixed Width Integer
  index, maturity_value = asx_securities_ntp_itch_v1_05_dissect.maturity_value(buffer, index, packet, parent)

  -- Coupon Rate: 2 Byte Unsigned Fixed Width Integer
  index, coupon_rate = asx_securities_ntp_itch_v1_05_dissect.coupon_rate(buffer, index, packet, parent)

  -- Payments Per Year: 1 Byte Unsigned Fixed Width Integer
  index, payments_per_year = asx_securities_ntp_itch_v1_05_dissect.payments_per_year(buffer, index, packet, parent)

  -- Block Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, block_lot_size = asx_securities_ntp_itch_v1_05_dissect.block_lot_size(buffer, index, packet, parent)

  -- Expiry Date: 4 Byte Unsigned Fixed Width Integer
  index, expiry_date = asx_securities_ntp_itch_v1_05_dissect.expiry_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Symbol Directory Message
asx_securities_ntp_itch_v1_05_dissect.future_symbol_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.future_symbol_directory_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.future_symbol_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.future_symbol_directory_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.future_symbol_directory_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.future_symbol_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
asx_securities_ntp_itch_v1_05_size_of.event_code = 1

-- Display: Event Code
asx_securities_ntp_itch_v1_05_display.event_code = function(value)
  if value == "C" then
    return "Event Code: Business Trade Date Has Ended (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
asx_securities_ntp_itch_v1_05_dissect.event_code = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05_display.event_code(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Business Trade Date Message
asx_securities_ntp_itch_v1_05_size_of.end_of_business_trade_date_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.timestamp

  index = index + asx_securities_ntp_itch_v1_05_size_of.trade_date

  index = index + asx_securities_ntp_itch_v1_05_size_of.event_code

  return index
end

-- Display: End Of Business Trade Date Message
asx_securities_ntp_itch_v1_05_display.end_of_business_trade_date_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Business Trade Date Message
asx_securities_ntp_itch_v1_05_dissect.end_of_business_trade_date_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05_dissect.timestamp(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05_dissect.trade_date(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 1 values
  index, event_code = asx_securities_ntp_itch_v1_05_dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Business Trade Date Message
asx_securities_ntp_itch_v1_05_dissect.end_of_business_trade_date_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_business_trade_date_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.end_of_business_trade_date_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.end_of_business_trade_date_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.end_of_business_trade_date_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.end_of_business_trade_date_message_fields(buffer, offset, packet, parent)
end

-- Size: Seconds
asx_securities_ntp_itch_v1_05_size_of.seconds = 4

-- Display: Seconds
asx_securities_ntp_itch_v1_05_display.seconds = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
asx_securities_ntp_itch_v1_05_dissect.seconds = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.seconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.seconds(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Seconds Message
asx_securities_ntp_itch_v1_05_size_of.seconds_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.seconds

  return index
end

-- Display: Seconds Message
asx_securities_ntp_itch_v1_05_display.seconds_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Seconds Message
asx_securities_ntp_itch_v1_05_dissect.seconds_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = asx_securities_ntp_itch_v1_05_dissect.seconds(buffer, index, packet, parent)

  -- Store: Seconds
  asx_securities_ntp_itch_v1_05_store.seconds(seconds, info, parent)

  return index
end

-- Dissect: Seconds Message
asx_securities_ntp_itch_v1_05_dissect.seconds_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.seconds_message then
    local length = asx_securities_ntp_itch_v1_05_size_of.seconds_message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.seconds_message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.seconds_message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.seconds_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
asx_securities_ntp_itch_v1_05_size_of.payload = function(buffer, offset, message_type)
  -- Size of Seconds Message
  if message_type == "T" then
    return asx_securities_ntp_itch_v1_05_size_of.seconds_message(buffer, offset)
  end
  -- Size of End Of Business Trade Date Message
  if message_type == "S" then
    return asx_securities_ntp_itch_v1_05_size_of.end_of_business_trade_date_message(buffer, offset)
  end
  -- Size of Future Symbol Directory Message
  if message_type == "f" then
    return asx_securities_ntp_itch_v1_05_size_of.future_symbol_directory_message(buffer, offset)
  end
  -- Size of Options Symbol Directory Message
  if message_type == "h" then
    return asx_securities_ntp_itch_v1_05_size_of.options_symbol_directory_message(buffer, offset)
  end
  -- Size of Combination Symbol Directory Message
  if message_type == "M" then
    return asx_securities_ntp_itch_v1_05_size_of.combination_symbol_directory_message(buffer, offset)
  end
  -- Size of Bundles Symbol Directory
  if message_type == "m" then
    return asx_securities_ntp_itch_v1_05_size_of.bundles_symbol_directory(buffer, offset)
  end
  -- Size of Order Book State Message
  if message_type == "O" then
    return asx_securities_ntp_itch_v1_05_size_of.order_book_state_message(buffer, offset)
  end
  -- Size of Add Order Message
  if message_type == "A" then
    return asx_securities_ntp_itch_v1_05_size_of.add_order_message(buffer, offset)
  end
  -- Size of Order Volume Cancelled Message
  if message_type == "X" then
    return asx_securities_ntp_itch_v1_05_size_of.order_volume_cancelled_message(buffer, offset)
  end
  -- Size of Order Deleted Message
  if message_type == "D" then
    return asx_securities_ntp_itch_v1_05_size_of.order_deleted_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return asx_securities_ntp_itch_v1_05_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Auction Order Executed Message
  if message_type == "C" then
    return asx_securities_ntp_itch_v1_05_size_of.auction_order_executed_message(buffer, offset)
  end
  -- Size of Combination Order Executed Message
  if message_type == "e" then
    return asx_securities_ntp_itch_v1_05_size_of.combination_order_executed_message(buffer, offset)
  end
  -- Size of Implied Order Added Message
  if message_type == "j" then
    return asx_securities_ntp_itch_v1_05_size_of.implied_order_added_message(buffer, offset)
  end
  -- Size of Implied Order Replaced Message
  if message_type == "l" then
    return asx_securities_ntp_itch_v1_05_size_of.implied_order_replaced_message(buffer, offset)
  end
  -- Size of Implied Order Deleted Message
  if message_type == "k" then
    return asx_securities_ntp_itch_v1_05_size_of.implied_order_deleted_message(buffer, offset)
  end
  -- Size of Trade Executed Message
  if message_type == "P" then
    return asx_securities_ntp_itch_v1_05_size_of.trade_executed_message(buffer, offset)
  end
  -- Size of Combination Trade Executed Message
  if message_type == "p" then
    return asx_securities_ntp_itch_v1_05_size_of.combination_trade_executed_message(buffer, offset)
  end
  -- Size of Trade Cancellation Message
  if message_type == "B" then
    return asx_securities_ntp_itch_v1_05_size_of.trade_cancellation_message(buffer, offset)
  end
  -- Size of Equilibrium Price Message
  if message_type == "Z" then
    return asx_securities_ntp_itch_v1_05_size_of.equilibrium_price_message(buffer, offset)
  end
  -- Size of Open High Low Last Trade Adjustment Message
  if message_type == "t" then
    return asx_securities_ntp_itch_v1_05_size_of.open_high_low_last_trade_adjustment_message(buffer, offset)
  end
  -- Size of Market Settlement Message
  if message_type == "Y" then
    return asx_securities_ntp_itch_v1_05_size_of.market_settlement_message(buffer, offset)
  end
  -- Size of Text Message
  if message_type == "x" then
    return asx_securities_ntp_itch_v1_05_size_of.text_message(buffer, offset)
  end
  -- Size of Request For Quote Message
  if message_type == "q" then
    return asx_securities_ntp_itch_v1_05_size_of.request_for_quote_message(buffer, offset)
  end
  -- Size of Anomalous Order Threshold Publish Message
  if message_type == "W" then
    return asx_securities_ntp_itch_v1_05_size_of.anomalous_order_threshold_publish_message(buffer, offset)
  end
  -- Size of Volume And Open Interest Message
  if message_type == "V" then
    return asx_securities_ntp_itch_v1_05_size_of.volume_and_open_interest_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
asx_securities_ntp_itch_v1_05_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
asx_securities_ntp_itch_v1_05_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return asx_securities_ntp_itch_v1_05_dissect.seconds_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Business Trade Date Message
  if message_type == "S" then
    return asx_securities_ntp_itch_v1_05_dissect.end_of_business_trade_date_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Symbol Directory Message
  if message_type == "f" then
    return asx_securities_ntp_itch_v1_05_dissect.future_symbol_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Options Symbol Directory Message
  if message_type == "h" then
    return asx_securities_ntp_itch_v1_05_dissect.options_symbol_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Combination Symbol Directory Message
  if message_type == "M" then
    return asx_securities_ntp_itch_v1_05_dissect.combination_symbol_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Bundles Symbol Directory
  if message_type == "m" then
    return asx_securities_ntp_itch_v1_05_dissect.bundles_symbol_directory(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if message_type == "O" then
    return asx_securities_ntp_itch_v1_05_dissect.order_book_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "A" then
    return asx_securities_ntp_itch_v1_05_dissect.add_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Volume Cancelled Message
  if message_type == "X" then
    return asx_securities_ntp_itch_v1_05_dissect.order_volume_cancelled_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if message_type == "D" then
    return asx_securities_ntp_itch_v1_05_dissect.order_deleted_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return asx_securities_ntp_itch_v1_05_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Order Executed Message
  if message_type == "C" then
    return asx_securities_ntp_itch_v1_05_dissect.auction_order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Combination Order Executed Message
  if message_type == "e" then
    return asx_securities_ntp_itch_v1_05_dissect.combination_order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Added Message
  if message_type == "j" then
    return asx_securities_ntp_itch_v1_05_dissect.implied_order_added_message(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Replaced Message
  if message_type == "l" then
    return asx_securities_ntp_itch_v1_05_dissect.implied_order_replaced_message(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Deleted Message
  if message_type == "k" then
    return asx_securities_ntp_itch_v1_05_dissect.implied_order_deleted_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Executed Message
  if message_type == "P" then
    return asx_securities_ntp_itch_v1_05_dissect.trade_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Combination Trade Executed Message
  if message_type == "p" then
    return asx_securities_ntp_itch_v1_05_dissect.combination_trade_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancellation Message
  if message_type == "B" then
    return asx_securities_ntp_itch_v1_05_dissect.trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Message
  if message_type == "Z" then
    return asx_securities_ntp_itch_v1_05_dissect.equilibrium_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Open High Low Last Trade Adjustment Message
  if message_type == "t" then
    return asx_securities_ntp_itch_v1_05_dissect.open_high_low_last_trade_adjustment_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Settlement Message
  if message_type == "Y" then
    return asx_securities_ntp_itch_v1_05_dissect.market_settlement_message(buffer, offset, packet, parent)
  end
  -- Dissect Text Message
  if message_type == "x" then
    return asx_securities_ntp_itch_v1_05_dissect.text_message(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote Message
  if message_type == "q" then
    return asx_securities_ntp_itch_v1_05_dissect.request_for_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Anomalous Order Threshold Publish Message
  if message_type == "W" then
    return asx_securities_ntp_itch_v1_05_dissect.anomalous_order_threshold_publish_message(buffer, offset, packet, parent)
  end
  -- Dissect Volume And Open Interest Message
  if message_type == "V" then
    return asx_securities_ntp_itch_v1_05_dissect.volume_and_open_interest_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
asx_securities_ntp_itch_v1_05_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return asx_securities_ntp_itch_v1_05_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = asx_securities_ntp_itch_v1_05_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = asx_securities_ntp_itch_v1_05_display.payload(buffer, packet, parent)
  local element = parent:add(asx_securities_ntp_itch_v1_05.fields.payload, range, display)

  return asx_securities_ntp_itch_v1_05_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
asx_securities_ntp_itch_v1_05_size_of.message_type = 1

-- Display: Message Type
asx_securities_ntp_itch_v1_05_display.message_type = function(value)
  if value == "T" then
    return "Message Type: Seconds Message (T)"
  end
  if value == "S" then
    return "Message Type: End Of Business Trade Date Message (S)"
  end
  if value == "f" then
    return "Message Type: Future Symbol Directory Message (f)"
  end
  if value == "h" then
    return "Message Type: Options Symbol Directory Message (h)"
  end
  if value == "M" then
    return "Message Type: Combination Symbol Directory Message (M)"
  end
  if value == "m" then
    return "Message Type: Bundles Symbol Directory (m)"
  end
  if value == "O" then
    return "Message Type: Order Book State Message (O)"
  end
  if value == "A" then
    return "Message Type: Add Order Message (A)"
  end
  if value == "X" then
    return "Message Type: Order Volume Cancelled Message (X)"
  end
  if value == "D" then
    return "Message Type: Order Deleted Message (D)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Auction Order Executed Message (C)"
  end
  if value == "e" then
    return "Message Type: Combination Order Executed Message (e)"
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
  if value == "P" then
    return "Message Type: Trade Executed Message (P)"
  end
  if value == "p" then
    return "Message Type: Combination Trade Executed Message (p)"
  end
  if value == "B" then
    return "Message Type: Trade Cancellation Message (B)"
  end
  if value == "Z" then
    return "Message Type: Equilibrium Price Message (Z)"
  end
  if value == "t" then
    return "Message Type: Open High Low Last Trade Adjustment Message (t)"
  end
  if value == "Y" then
    return "Message Type: Market Settlement Message (Y)"
  end
  if value == "x" then
    return "Message Type: Text Message (x)"
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
asx_securities_ntp_itch_v1_05_dissect.message_type = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05_display.message_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
asx_securities_ntp_itch_v1_05_size_of.length = 2

-- Display: Length
asx_securities_ntp_itch_v1_05_display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
asx_securities_ntp_itch_v1_05_dissect.length = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.length(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
asx_securities_ntp_itch_v1_05_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.length

  index = index + asx_securities_ntp_itch_v1_05_size_of.message_type

  return index
end

-- Display: Message Header
asx_securities_ntp_itch_v1_05_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
asx_securities_ntp_itch_v1_05_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = asx_securities_ntp_itch_v1_05_dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 26 values
  index, message_type = asx_securities_ntp_itch_v1_05_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
asx_securities_ntp_itch_v1_05_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = asx_securities_ntp_itch_v1_05_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.message_header(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.message_header, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
asx_securities_ntp_itch_v1_05_size_of.message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + asx_securities_ntp_itch_v1_05_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
asx_securities_ntp_itch_v1_05_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
asx_securities_ntp_itch_v1_05_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = asx_securities_ntp_itch_v1_05_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 26 branches
  index = asx_securities_ntp_itch_v1_05_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
asx_securities_ntp_itch_v1_05_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = asx_securities_ntp_itch_v1_05_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.message(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.message, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Count
asx_securities_ntp_itch_v1_05_size_of.count = 2

-- Display: Count
asx_securities_ntp_itch_v1_05_display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
asx_securities_ntp_itch_v1_05_dissect.count = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05_display.count(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
asx_securities_ntp_itch_v1_05_size_of.sequence = 8

-- Display: Sequence
asx_securities_ntp_itch_v1_05_display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
asx_securities_ntp_itch_v1_05_dissect.sequence = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05_display.sequence(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
asx_securities_ntp_itch_v1_05_size_of.session = 10

-- Display: Session
asx_securities_ntp_itch_v1_05_display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
asx_securities_ntp_itch_v1_05_dissect.session = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05_size_of.session
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = asx_securities_ntp_itch_v1_05_display.session(value, buffer, offset, packet, parent)

  parent:add(asx_securities_ntp_itch_v1_05.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
asx_securities_ntp_itch_v1_05_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05_size_of.session

  index = index + asx_securities_ntp_itch_v1_05_size_of.sequence

  index = index + asx_securities_ntp_itch_v1_05_size_of.count

  return index
end

-- Display: Packet Header
asx_securities_ntp_itch_v1_05_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
asx_securities_ntp_itch_v1_05_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = asx_securities_ntp_itch_v1_05_dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = asx_securities_ntp_itch_v1_05_dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = asx_securities_ntp_itch_v1_05_dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
asx_securities_ntp_itch_v1_05_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = asx_securities_ntp_itch_v1_05_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = asx_securities_ntp_itch_v1_05_display.packet_header(buffer, packet, parent)
    parent = parent:add(asx_securities_ntp_itch_v1_05.fields.packet_header, range, display)
  end

  return asx_securities_ntp_itch_v1_05_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
asx_securities_ntp_itch_v1_05_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = asx_securities_ntp_itch_v1_05_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = asx_securities_ntp_itch_v1_05_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function asx_securities_ntp_itch_v1_05.init()
end

-- Dissector for Asx Securities Ntp Itch 1.05
function asx_securities_ntp_itch_v1_05.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = asx_securities_ntp_itch_v1_05.name

  -- Dissect protocol
  local protocol = parent:add(asx_securities_ntp_itch_v1_05, buffer(), asx_securities_ntp_itch_v1_05.description, "("..buffer:len().." Bytes)")
  return asx_securities_ntp_itch_v1_05_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, asx_securities_ntp_itch_v1_05)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.asx_securities_ntp_itch_v1_05_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Asx Securities Ntp Itch 1.05
local function asx_securities_ntp_itch_v1_05_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.asx_securities_ntp_itch_v1_05_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = asx_securities_ntp_itch_v1_05
  asx_securities_ntp_itch_v1_05.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Asx Securities Ntp Itch 1.05
asx_securities_ntp_itch_v1_05:register_heuristic("udp", asx_securities_ntp_itch_v1_05_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Australian Securities Exchange
--   Version: 1.05
--   Date: Friday, December 1, 2017
--   Specification: asx-market-data-protocol-specification.pdf
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
