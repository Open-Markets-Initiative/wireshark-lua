-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Asx Securities Ntp Itch 1.05 Protocol
local omi_asx_securities_ntp_itch_v1_05 = Proto("Asx.Securities.Ntp.Itch.v1.05.Lua", "Asx Securities Ntp Itch 1.05")

-- Protocol table
local asx_securities_ntp_itch_v1_05 = {}

-- Component Tables
local show = {}
local format = {}
local verify = {}
local asx_securities_ntp_itch_v1_05_store = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Asx Securities Ntp Itch 1.05 Fields
omi_asx_securities_ntp_itch_v1_05.fields.aot_lower_price = ProtoField.new("Aot Lower Price", "asx.securities.ntp.itch.v1.05.aotlowerprice", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.aot_price = ProtoField.new("Aot Price", "asx.securities.ntp.itch.v1.05.aotprice", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.aot_upper_price = ProtoField.new("Aot Upper Price", "asx.securities.ntp.itch.v1.05.aotupperprice", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.ask_quantity = ProtoField.new("Ask Quantity", "asx.securities.ntp.itch.v1.05.askquantity", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.basis_of_quotation = ProtoField.new("Basis Of Quotation", "asx.securities.ntp.itch.v1.05.basisofquotation", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.bid_quantity = ProtoField.new("Bid Quantity", "asx.securities.ntp.itch.v1.05.bidquantity", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.block_lot_size = ProtoField.new("Block Lot Size", "asx.securities.ntp.itch.v1.05.blocklotsize", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.bundle_leg = ProtoField.new("Bundle Leg", "asx.securities.ntp.itch.v1.05.bundleleg", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.buyer_combination_trade_id = ProtoField.new("Buyer Combination Trade Id", "asx.securities.ntp.itch.v1.05.buyercombinationtradeid", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.buyer_order_id = ProtoField.new("Buyer Order Id", "asx.securities.ntp.itch.v1.05.buyerorderid", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.buyer_participant_id = ProtoField.new("Buyer Participant Id", "asx.securities.ntp.itch.v1.05.buyerparticipantid", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.buyer_side = ProtoField.new("Buyer Side", "asx.securities.ntp.itch.v1.05.buyerside", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.buyer_tradeable_instrument_id = ProtoField.new("Buyer Tradeable Instrument Id", "asx.securities.ntp.itch.v1.05.buyertradeableinstrumentid", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.cfi_code = ProtoField.new("Cfi Code", "asx.securities.ntp.itch.v1.05.cficode", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.combination_leg = ProtoField.new("Combination Leg", "asx.securities.ntp.itch.v1.05.combinationleg", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.combination_trade_id = ProtoField.new("Combination Trade Id", "asx.securities.ntp.itch.v1.05.combinationtradeid", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.counter_party_id = ProtoField.new("Counter Party Id", "asx.securities.ntp.itch.v1.05.counterpartyid", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.coupon_rate = ProtoField.new("Coupon Rate", "asx.securities.ntp.itch.v1.05.couponrate", ftypes.UINT16)
omi_asx_securities_ntp_itch_v1_05.fields.cumulative_volume = ProtoField.new("Cumulative Volume", "asx.securities.ntp.itch.v1.05.cumulativevolume", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.currency = ProtoField.new("Currency", "asx.securities.ntp.itch.v1.05.currency", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "asx.securities.ntp.itch.v1.05.equilibriumprice", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.etr_lower_price = ProtoField.new("Etr Lower Price", "asx.securities.ntp.itch.v1.05.etrlowerprice", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.etr_price = ProtoField.new("Etr Price", "asx.securities.ntp.itch.v1.05.etrprice", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.etr_upper_price = ProtoField.new("Etr Upper Price", "asx.securities.ntp.itch.v1.05.etrupperprice", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.event_code = ProtoField.new("Event Code", "asx.securities.ntp.itch.v1.05.eventcode", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.exchange = ProtoField.new("Exchange", "asx.securities.ntp.itch.v1.05.exchange", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.executed_quantity = ProtoField.new("Executed Quantity", "asx.securities.ntp.itch.v1.05.executedquantity", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.expiry_date = ProtoField.new("Expiry Date", "asx.securities.ntp.itch.v1.05.expirydate", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.expiry_month = ProtoField.new("Expiry Month", "asx.securities.ntp.itch.v1.05.expirymonth", ftypes.UINT8)
omi_asx_securities_ntp_itch_v1_05.fields.expiry_year = ProtoField.new("Expiry Year", "asx.securities.ntp.itch.v1.05.expiryyear", ftypes.UINT16)
omi_asx_securities_ntp_itch_v1_05.fields.highest_trade = ProtoField.new("Highest Trade", "asx.securities.ntp.itch.v1.05.highesttrade", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.instrument = ProtoField.new("Instrument", "asx.securities.ntp.itch.v1.05.instrument", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.isin = ProtoField.new("Isin", "asx.securities.ntp.itch.v1.05.isin", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.last_trade = ProtoField.new("Last Trade", "asx.securities.ntp.itch.v1.05.lasttrade", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.last_trading_date = ProtoField.new("Last Trading Date", "asx.securities.ntp.itch.v1.05.lasttradingdate", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.last_volume = ProtoField.new("Last Volume", "asx.securities.ntp.itch.v1.05.lastvolume", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.legs = ProtoField.new("Legs", "asx.securities.ntp.itch.v1.05.legs", ftypes.UINT8)
omi_asx_securities_ntp_itch_v1_05.fields.long_name = ProtoField.new("Long Name", "asx.securities.ntp.itch.v1.05.longname", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.lot_size_or_face_value = ProtoField.new("Lot Size Or Face Value", "asx.securities.ntp.itch.v1.05.lotsizeorfacevalue", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.lowest_trade = ProtoField.new("Lowest Trade", "asx.securities.ntp.itch.v1.05.lowesttrade", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.matched_quantity = ProtoField.new("Matched Quantity", "asx.securities.ntp.itch.v1.05.matchedquantity", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.maturity_value = ProtoField.new("Maturity Value", "asx.securities.ntp.itch.v1.05.maturityvalue", ftypes.UINT8)
omi_asx_securities_ntp_itch_v1_05.fields.message = ProtoField.new("Message", "asx.securities.ntp.itch.v1.05.message", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.message_count = ProtoField.new("Message Count", "asx.securities.ntp.itch.v1.05.messagecount", ftypes.UINT16)
omi_asx_securities_ntp_itch_v1_05.fields.message_header = ProtoField.new("Message Header", "asx.securities.ntp.itch.v1.05.messageheader", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.message_length = ProtoField.new("Message Length", "asx.securities.ntp.itch.v1.05.messagelength", ftypes.UINT16)
omi_asx_securities_ntp_itch_v1_05.fields.message_type = ProtoField.new("Message Type", "asx.securities.ntp.itch.v1.05.messagetype", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.open_interest = ProtoField.new("Open Interest", "asx.securities.ntp.itch.v1.05.openinterest", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.opening_trade = ProtoField.new("Opening Trade", "asx.securities.ntp.itch.v1.05.openingtrade", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.opposite_order_id = ProtoField.new("Opposite Order Id", "asx.securities.ntp.itch.v1.05.oppositeorderid", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.opposite_side = ProtoField.new("Opposite Side", "asx.securities.ntp.itch.v1.05.oppositeside", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.opposite_tradeable_instrument_id = ProtoField.new("Opposite Tradeable Instrument Id", "asx.securities.ntp.itch.v1.05.oppositetradeableinstrumentid", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.option_type = ProtoField.new("Option Type", "asx.securities.ntp.itch.v1.05.optiontype", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.order_book_priority = ProtoField.new("Order Book Priority", "asx.securities.ntp.itch.v1.05.orderbookpriority", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.order_id = ProtoField.new("Order Id", "asx.securities.ntp.itch.v1.05.orderid", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.packet = ProtoField.new("Packet", "asx.securities.ntp.itch.v1.05.packet", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.packet_header = ProtoField.new("Packet Header", "asx.securities.ntp.itch.v1.05.packetheader", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.participant_id_buyer = ProtoField.new("Participant Id Buyer", "asx.securities.ntp.itch.v1.05.participantidbuyer", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.participant_id_seller = ProtoField.new("Participant Id Seller", "asx.securities.ntp.itch.v1.05.participantidseller", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.payload = ProtoField.new("Payload", "asx.securities.ntp.itch.v1.05.payload", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.payments_per_year = ProtoField.new("Payments Per Year", "asx.securities.ntp.itch.v1.05.paymentsperyear", ftypes.UINT8)
omi_asx_securities_ntp_itch_v1_05.fields.price = ProtoField.new("Price", "asx.securities.ntp.itch.v1.05.price", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.price_display_decimals = ProtoField.new("Price Display Decimals", "asx.securities.ntp.itch.v1.05.pricedisplaydecimals", ftypes.UINT8)
omi_asx_securities_ntp_itch_v1_05.fields.price_fractional_denominator = ProtoField.new("Price Fractional Denominator", "asx.securities.ntp.itch.v1.05.pricefractionaldenominator", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.price_leg = ProtoField.new("Price Leg", "asx.securities.ntp.itch.v1.05.priceleg", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.price_method = ProtoField.new("Price Method", "asx.securities.ntp.itch.v1.05.pricemethod", ftypes.UINT8)
omi_asx_securities_ntp_itch_v1_05.fields.price_minimum_tick = ProtoField.new("Price Minimum Tick", "asx.securities.ntp.itch.v1.05.priceminimumtick", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.prior_day_settlement = ProtoField.new("Prior Day Settlement", "asx.securities.ntp.itch.v1.05.priordaysettlement", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.quantity = ProtoField.new("Quantity", "asx.securities.ntp.itch.v1.05.quantity", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.quantity_remaining = ProtoField.new("Quantity Remaining", "asx.securities.ntp.itch.v1.05.quantityremaining", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.ratio_leg = ProtoField.new("Ratio Leg", "asx.securities.ntp.itch.v1.05.ratioleg", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.rfq_side = ProtoField.new("Rfq Side", "asx.securities.ntp.itch.v1.05.rfqside", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.seconds = ProtoField.new("Seconds", "asx.securities.ntp.itch.v1.05.seconds", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.seller_combination_trade_id = ProtoField.new("Seller Combination Trade Id", "asx.securities.ntp.itch.v1.05.sellercombinationtradeid", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.seller_order_id = ProtoField.new("Seller Order Id", "asx.securities.ntp.itch.v1.05.sellerorderid", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.seller_participant_id = ProtoField.new("Seller Participant Id", "asx.securities.ntp.itch.v1.05.sellerparticipantid", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.seller_side = ProtoField.new("Seller Side", "asx.securities.ntp.itch.v1.05.sellerside", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.seller_tradeable_instrument_id = ProtoField.new("Seller Tradeable Instrument Id", "asx.securities.ntp.itch.v1.05.sellertradeableinstrumentid", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.sequence_number = ProtoField.new("Sequence Number", "asx.securities.ntp.itch.v1.05.sequencenumber", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.session = ProtoField.new("Session", "asx.securities.ntp.itch.v1.05.session", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.session_state = ProtoField.new("Session State", "asx.securities.ntp.itch.v1.05.sessionstate", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.side = ProtoField.new("Side", "asx.securities.ntp.itch.v1.05.side", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.side_leg = ProtoField.new("Side Leg", "asx.securities.ntp.itch.v1.05.sideleg", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.source_id = ProtoField.new("Source Id", "asx.securities.ntp.itch.v1.05.sourceid", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.strike = ProtoField.new("Strike", "asx.securities.ntp.itch.v1.05.strike", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.strike_price_decimal_position = ProtoField.new("Strike Price Decimal Position", "asx.securities.ntp.itch.v1.05.strikepricedecimalposition", ftypes.UINT8)
omi_asx_securities_ntp_itch_v1_05.fields.strike_price_fractional_denominator = ProtoField.new("Strike Price Fractional Denominator", "asx.securities.ntp.itch.v1.05.strikepricefractionaldenominator", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.strike_price_minimum_tick = ProtoField.new("Strike Price Minimum Tick", "asx.securities.ntp.itch.v1.05.strikepriceminimumtick", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.symbol_name = ProtoField.new("Symbol Name", "asx.securities.ntp.itch.v1.05.symbolname", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.text = ProtoField.new("Text", "asx.securities.ntp.itch.v1.05.text", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.timestamp = ProtoField.new("Timestamp", "asx.securities.ntp.itch.v1.05.timestamp", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.total_traded_volume = ProtoField.new("Total Traded Volume", "asx.securities.ntp.itch.v1.05.totaltradedvolume", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.trade_date = ProtoField.new("Trade Date", "asx.securities.ntp.itch.v1.05.tradedate", ftypes.UINT16)
omi_asx_securities_ntp_itch_v1_05.fields.trade_id = ProtoField.new("Trade Id", "asx.securities.ntp.itch.v1.05.tradeid", ftypes.UINT64)
omi_asx_securities_ntp_itch_v1_05.fields.trade_price = ProtoField.new("Trade Price", "asx.securities.ntp.itch.v1.05.tradeprice", ftypes.INT64)
omi_asx_securities_ntp_itch_v1_05.fields.trade_type = ProtoField.new("Trade Type", "asx.securities.ntp.itch.v1.05.tradetype", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.tradeable_instrument_id = ProtoField.new("Tradeable Instrument Id", "asx.securities.ntp.itch.v1.05.tradeableinstrumentid", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.tradeable_instrument_id_leg = ProtoField.new("Tradeable Instrument Id Leg", "asx.securities.ntp.itch.v1.05.tradeableinstrumentidleg", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.underlying_tradeable_instrument_id = ProtoField.new("Underlying Tradeable Instrument Id", "asx.securities.ntp.itch.v1.05.underlyingtradeableinstrumentid", ftypes.UINT32)
omi_asx_securities_ntp_itch_v1_05.fields.voi_trade_date = ProtoField.new("Voi Trade Date", "asx.securities.ntp.itch.v1.05.voitradedate", ftypes.UINT16)
omi_asx_securities_ntp_itch_v1_05.fields.volatility = ProtoField.new("Volatility", "asx.securities.ntp.itch.v1.05.volatility", ftypes.UINT64)

-- Asx Securities Ntp Itch 1.05 messages
omi_asx_securities_ntp_itch_v1_05.fields.add_order_message = ProtoField.new("Add Order Message", "asx.securities.ntp.itch.v1.05.addordermessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.anomalous_order_threshold_publish_message = ProtoField.new("Anomalous Order Threshold Publish Message", "asx.securities.ntp.itch.v1.05.anomalousorderthresholdpublishmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.auction_order_executed_message = ProtoField.new("Auction Order Executed Message", "asx.securities.ntp.itch.v1.05.auctionorderexecutedmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.bundles_symbol_directory = ProtoField.new("Bundles Symbol Directory", "asx.securities.ntp.itch.v1.05.bundlessymboldirectory", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.combination_order_executed_message = ProtoField.new("Combination Order Executed Message", "asx.securities.ntp.itch.v1.05.combinationorderexecutedmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.combination_symbol_directory_message = ProtoField.new("Combination Symbol Directory Message", "asx.securities.ntp.itch.v1.05.combinationsymboldirectorymessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.combination_trade_executed_message = ProtoField.new("Combination Trade Executed Message", "asx.securities.ntp.itch.v1.05.combinationtradeexecutedmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.end_of_business_trade_date_message = ProtoField.new("End Of Business Trade Date Message", "asx.securities.ntp.itch.v1.05.endofbusinesstradedatemessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.equilibrium_price_message = ProtoField.new("Equilibrium Price Message", "asx.securities.ntp.itch.v1.05.equilibriumpricemessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.future_symbol_directory_message = ProtoField.new("Future Symbol Directory Message", "asx.securities.ntp.itch.v1.05.futuresymboldirectorymessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.implied_order_added_message = ProtoField.new("Implied Order Added Message", "asx.securities.ntp.itch.v1.05.impliedorderaddedmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.implied_order_deleted_message = ProtoField.new("Implied Order Deleted Message", "asx.securities.ntp.itch.v1.05.impliedorderdeletedmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.implied_order_replaced_message = ProtoField.new("Implied Order Replaced Message", "asx.securities.ntp.itch.v1.05.impliedorderreplacedmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.market_settlement_message = ProtoField.new("Market Settlement Message", "asx.securities.ntp.itch.v1.05.marketsettlementmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.open_high_low_last_trade_adjustment_message = ProtoField.new("Open High Low Last Trade Adjustment Message", "asx.securities.ntp.itch.v1.05.openhighlowlasttradeadjustmentmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.options_symbol_directory_message = ProtoField.new("Options Symbol Directory Message", "asx.securities.ntp.itch.v1.05.optionssymboldirectorymessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.order_book_state_message = ProtoField.new("Order Book State Message", "asx.securities.ntp.itch.v1.05.orderbookstatemessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "asx.securities.ntp.itch.v1.05.orderdeletedmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.order_executed_message = ProtoField.new("Order Executed Message", "asx.securities.ntp.itch.v1.05.orderexecutedmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.order_volume_cancelled_message = ProtoField.new("Order Volume Cancelled Message", "asx.securities.ntp.itch.v1.05.ordervolumecancelledmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.request_for_quote_message = ProtoField.new("Request For Quote Message", "asx.securities.ntp.itch.v1.05.requestforquotemessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.seconds_message = ProtoField.new("Seconds Message", "asx.securities.ntp.itch.v1.05.secondsmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.text_message = ProtoField.new("Text Message", "asx.securities.ntp.itch.v1.05.textmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.trade_cancellation_message = ProtoField.new("Trade Cancellation Message", "asx.securities.ntp.itch.v1.05.tradecancellationmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.trade_executed_message = ProtoField.new("Trade Executed Message", "asx.securities.ntp.itch.v1.05.tradeexecutedmessage", ftypes.STRING)
omi_asx_securities_ntp_itch_v1_05.fields.volume_and_open_interest_message = ProtoField.new("Volume And Open Interest Message", "asx.securities.ntp.itch.v1.05.volumeandopeninterestmessage", ftypes.STRING)

-- Asx Securities Ntp Itch 1.05 generated fields
omi_asx_securities_ntp_itch_v1_05.fields.bundle_leg_index = ProtoField.new("Bundle Leg Index", "asx.securities.ntp.itch.v1.05.bundlelegindex", ftypes.UINT16)
omi_asx_securities_ntp_itch_v1_05.fields.combination_leg_index = ProtoField.new("Combination Leg Index", "asx.securities.ntp.itch.v1.05.combinationlegindex", ftypes.UINT16)
omi_asx_securities_ntp_itch_v1_05.fields.message_index = ProtoField.new("Message Index", "asx.securities.ntp.itch.v1.05.messageindex", ftypes.UINT16)

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
omi_asx_securities_ntp_itch_v1_05.prefs.show_add_order_message = Pref.bool("Show Add Order Message", show.add_order_message, "Parse and add Add Order Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_anomalous_order_threshold_publish_message = Pref.bool("Show Anomalous Order Threshold Publish Message", show.anomalous_order_threshold_publish_message, "Parse and add Anomalous Order Threshold Publish Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_auction_order_executed_message = Pref.bool("Show Auction Order Executed Message", show.auction_order_executed_message, "Parse and add Auction Order Executed Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_bundle_leg = Pref.bool("Show Bundle Leg", show.bundle_leg, "Parse and add Bundle Leg to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_bundles_symbol_directory = Pref.bool("Show Bundles Symbol Directory", show.bundles_symbol_directory, "Parse and add Bundles Symbol Directory to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_combination_leg = Pref.bool("Show Combination Leg", show.combination_leg, "Parse and add Combination Leg to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_combination_order_executed_message = Pref.bool("Show Combination Order Executed Message", show.combination_order_executed_message, "Parse and add Combination Order Executed Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_combination_symbol_directory_message = Pref.bool("Show Combination Symbol Directory Message", show.combination_symbol_directory_message, "Parse and add Combination Symbol Directory Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_combination_trade_executed_message = Pref.bool("Show Combination Trade Executed Message", show.combination_trade_executed_message, "Parse and add Combination Trade Executed Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_end_of_business_trade_date_message = Pref.bool("Show End Of Business Trade Date Message", show.end_of_business_trade_date_message, "Parse and add End Of Business Trade Date Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_equilibrium_price_message = Pref.bool("Show Equilibrium Price Message", show.equilibrium_price_message, "Parse and add Equilibrium Price Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_future_symbol_directory_message = Pref.bool("Show Future Symbol Directory Message", show.future_symbol_directory_message, "Parse and add Future Symbol Directory Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_implied_order_added_message = Pref.bool("Show Implied Order Added Message", show.implied_order_added_message, "Parse and add Implied Order Added Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_implied_order_deleted_message = Pref.bool("Show Implied Order Deleted Message", show.implied_order_deleted_message, "Parse and add Implied Order Deleted Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_implied_order_replaced_message = Pref.bool("Show Implied Order Replaced Message", show.implied_order_replaced_message, "Parse and add Implied Order Replaced Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_market_settlement_message = Pref.bool("Show Market Settlement Message", show.market_settlement_message, "Parse and add Market Settlement Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_open_high_low_last_trade_adjustment_message = Pref.bool("Show Open High Low Last Trade Adjustment Message", show.open_high_low_last_trade_adjustment_message, "Parse and add Open High Low Last Trade Adjustment Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_options_symbol_directory_message = Pref.bool("Show Options Symbol Directory Message", show.options_symbol_directory_message, "Parse and add Options Symbol Directory Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_order_book_state_message = Pref.bool("Show Order Book State Message", show.order_book_state_message, "Parse and add Order Book State Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_order_deleted_message = Pref.bool("Show Order Deleted Message", show.order_deleted_message, "Parse and add Order Deleted Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_order_volume_cancelled_message = Pref.bool("Show Order Volume Cancelled Message", show.order_volume_cancelled_message, "Parse and add Order Volume Cancelled Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_request_for_quote_message = Pref.bool("Show Request For Quote Message", show.request_for_quote_message, "Parse and add Request For Quote Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_seconds_message = Pref.bool("Show Seconds Message", show.seconds_message, "Parse and add Seconds Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_text_message = Pref.bool("Show Text Message", show.text_message, "Parse and add Text Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_trade_cancellation_message = Pref.bool("Show Trade Cancellation Message", show.trade_cancellation_message, "Parse and add Trade Cancellation Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_trade_executed_message = Pref.bool("Show Trade Executed Message", show.trade_executed_message, "Parse and add Trade Executed Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_volume_and_open_interest_message = Pref.bool("Show Volume And Open Interest Message", show.volume_and_open_interest_message, "Parse and add Volume And Open Interest Message to protocol tree")
omi_asx_securities_ntp_itch_v1_05.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_asx_securities_ntp_itch_v1_05.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_add_order_message then
    show.add_order_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_add_order_message
    changed = true
  end
  if show.anomalous_order_threshold_publish_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_anomalous_order_threshold_publish_message then
    show.anomalous_order_threshold_publish_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_anomalous_order_threshold_publish_message
    changed = true
  end
  if show.auction_order_executed_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_auction_order_executed_message then
    show.auction_order_executed_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_auction_order_executed_message
    changed = true
  end
  if show.bundle_leg ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_bundle_leg then
    show.bundle_leg = omi_asx_securities_ntp_itch_v1_05.prefs.show_bundle_leg
    changed = true
  end
  if show.bundles_symbol_directory ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_bundles_symbol_directory then
    show.bundles_symbol_directory = omi_asx_securities_ntp_itch_v1_05.prefs.show_bundles_symbol_directory
    changed = true
  end
  if show.combination_leg ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_combination_leg then
    show.combination_leg = omi_asx_securities_ntp_itch_v1_05.prefs.show_combination_leg
    changed = true
  end
  if show.combination_order_executed_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_combination_order_executed_message then
    show.combination_order_executed_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_combination_order_executed_message
    changed = true
  end
  if show.combination_symbol_directory_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_combination_symbol_directory_message then
    show.combination_symbol_directory_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_combination_symbol_directory_message
    changed = true
  end
  if show.combination_trade_executed_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_combination_trade_executed_message then
    show.combination_trade_executed_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_combination_trade_executed_message
    changed = true
  end
  if show.end_of_business_trade_date_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_end_of_business_trade_date_message then
    show.end_of_business_trade_date_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_end_of_business_trade_date_message
    changed = true
  end
  if show.equilibrium_price_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_equilibrium_price_message then
    show.equilibrium_price_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_equilibrium_price_message
    changed = true
  end
  if show.future_symbol_directory_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_future_symbol_directory_message then
    show.future_symbol_directory_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_future_symbol_directory_message
    changed = true
  end
  if show.implied_order_added_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_implied_order_added_message then
    show.implied_order_added_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_implied_order_added_message
    changed = true
  end
  if show.implied_order_deleted_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_implied_order_deleted_message then
    show.implied_order_deleted_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_implied_order_deleted_message
    changed = true
  end
  if show.implied_order_replaced_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_implied_order_replaced_message then
    show.implied_order_replaced_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_implied_order_replaced_message
    changed = true
  end
  if show.market_settlement_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_market_settlement_message then
    show.market_settlement_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_market_settlement_message
    changed = true
  end
  if show.message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_message then
    show.message = omi_asx_securities_ntp_itch_v1_05.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_message_header then
    show.message_header = omi_asx_securities_ntp_itch_v1_05.prefs.show_message_header
    changed = true
  end
  if show.open_high_low_last_trade_adjustment_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_open_high_low_last_trade_adjustment_message then
    show.open_high_low_last_trade_adjustment_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_open_high_low_last_trade_adjustment_message
    changed = true
  end
  if show.options_symbol_directory_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_options_symbol_directory_message then
    show.options_symbol_directory_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_options_symbol_directory_message
    changed = true
  end
  if show.order_book_state_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_order_book_state_message then
    show.order_book_state_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_order_book_state_message
    changed = true
  end
  if show.order_deleted_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_order_deleted_message then
    show.order_deleted_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_order_deleted_message
    changed = true
  end
  if show.order_executed_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_order_executed_message then
    show.order_executed_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_order_executed_message
    changed = true
  end
  if show.order_volume_cancelled_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_order_volume_cancelled_message then
    show.order_volume_cancelled_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_order_volume_cancelled_message
    changed = true
  end
  if show.packet ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_packet then
    show.packet = omi_asx_securities_ntp_itch_v1_05.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_packet_header then
    show.packet_header = omi_asx_securities_ntp_itch_v1_05.prefs.show_packet_header
    changed = true
  end
  if show.request_for_quote_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_request_for_quote_message then
    show.request_for_quote_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_request_for_quote_message
    changed = true
  end
  if show.seconds_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_seconds_message then
    show.seconds_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_seconds_message
    changed = true
  end
  if show.text_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_text_message then
    show.text_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_text_message
    changed = true
  end
  if show.trade_cancellation_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_trade_cancellation_message then
    show.trade_cancellation_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_trade_cancellation_message
    changed = true
  end
  if show.trade_executed_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_trade_executed_message then
    show.trade_executed_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_trade_executed_message
    changed = true
  end
  if show.volume_and_open_interest_message ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_volume_and_open_interest_message then
    show.volume_and_open_interest_message = omi_asx_securities_ntp_itch_v1_05.prefs.show_volume_and_open_interest_message
    changed = true
  end
  if show.payload ~= omi_asx_securities_ntp_itch_v1_05.prefs.show_payload then
    show.payload = omi_asx_securities_ntp_itch_v1_05.prefs.show_payload
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

-- Voi Trade Date
asx_securities_ntp_itch_v1_05.voi_trade_date = {}

-- Size: Voi Trade Date
asx_securities_ntp_itch_v1_05.voi_trade_date.size = 2

-- Display: Voi Trade Date
asx_securities_ntp_itch_v1_05.voi_trade_date.display = function(value)
  return "Voi Trade Date: "..value
end

-- Dissect: Voi Trade Date
asx_securities_ntp_itch_v1_05.voi_trade_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.voi_trade_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.voi_trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.voi_trade_date, range, value, display)

  return offset + length, value
end

-- Open Interest
asx_securities_ntp_itch_v1_05.open_interest = {}

-- Size: Open Interest
asx_securities_ntp_itch_v1_05.open_interest.size = 8

-- Display: Open Interest
asx_securities_ntp_itch_v1_05.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
asx_securities_ntp_itch_v1_05.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.open_interest.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Cumulative Volume
asx_securities_ntp_itch_v1_05.cumulative_volume = {}

-- Size: Cumulative Volume
asx_securities_ntp_itch_v1_05.cumulative_volume.size = 8

-- Display: Cumulative Volume
asx_securities_ntp_itch_v1_05.cumulative_volume.display = function(value)
  return "Cumulative Volume: "..value
end

-- Dissect: Cumulative Volume
asx_securities_ntp_itch_v1_05.cumulative_volume.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.cumulative_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.cumulative_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.cumulative_volume, range, value, display)

  return offset + length, value
end

-- Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.tradeable_instrument_id = {}

-- Size: Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size = 4

-- Display: Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.tradeable_instrument_id.display = function(value)
  return "Tradeable Instrument Id: "..value
end

-- Dissect: Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Trade Date
asx_securities_ntp_itch_v1_05.trade_date = {}

-- Size: Trade Date
asx_securities_ntp_itch_v1_05.trade_date.size = 2

-- Display: Trade Date
asx_securities_ntp_itch_v1_05.trade_date.display = function(value)
  return "Trade Date: "..value
end

-- Dissect: Trade Date
asx_securities_ntp_itch_v1_05.trade_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.trade_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.trade_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.trade_date, range, value, display)

  return offset + length, value
end

-- Timestamp
asx_securities_ntp_itch_v1_05.timestamp = {}

-- Size: Timestamp
asx_securities_ntp_itch_v1_05.timestamp.size = 4

-- Display: Timestamp
asx_securities_ntp_itch_v1_05.timestamp.display = function(nanoseconds, info, parent)
  -- Lookup seconds
  local seconds = asx_securities_ntp_itch_v1_05_store.seconds

  if seconds ~= nil then
    return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
  end

  return "Timestamp: "..nanoseconds
end

-- Dissect: Timestamp
asx_securities_ntp_itch_v1_05.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Volume And Open Interest Message
asx_securities_ntp_itch_v1_05.volume_and_open_interest_message = {}

-- Calculate size of: Volume And Open Interest Message
asx_securities_ntp_itch_v1_05.volume_and_open_interest_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.cumulative_volume.size

  index = index + asx_securities_ntp_itch_v1_05.open_interest.size

  index = index + asx_securities_ntp_itch_v1_05.voi_trade_date.size

  return index
end

-- Display: Volume And Open Interest Message
asx_securities_ntp_itch_v1_05.volume_and_open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Volume And Open Interest Message
asx_securities_ntp_itch_v1_05.volume_and_open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Cumulative Volume: 8 Byte Unsigned Fixed Width Integer
  index, cumulative_volume = asx_securities_ntp_itch_v1_05.cumulative_volume.dissect(buffer, index, packet, parent)

  -- Open Interest: 8 Byte Unsigned Fixed Width Integer
  index, open_interest = asx_securities_ntp_itch_v1_05.open_interest.dissect(buffer, index, packet, parent)

  -- Voi Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, voi_trade_date = asx_securities_ntp_itch_v1_05.voi_trade_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Volume And Open Interest Message
asx_securities_ntp_itch_v1_05.volume_and_open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.volume_and_open_interest_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.volume_and_open_interest_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.volume_and_open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.volume_and_open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.volume_and_open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Etr Lower Price
asx_securities_ntp_itch_v1_05.etr_lower_price = {}

-- Size: Etr Lower Price
asx_securities_ntp_itch_v1_05.etr_lower_price.size = 8

-- Display: Etr Lower Price
asx_securities_ntp_itch_v1_05.etr_lower_price.display = function(value)
  return "Etr Lower Price: "..value
end

-- Dissect: Etr Lower Price
asx_securities_ntp_itch_v1_05.etr_lower_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.etr_lower_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.etr_lower_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.etr_lower_price, range, value, display)

  return offset + length, value
end

-- Etr Upper Price
asx_securities_ntp_itch_v1_05.etr_upper_price = {}

-- Size: Etr Upper Price
asx_securities_ntp_itch_v1_05.etr_upper_price.size = 8

-- Display: Etr Upper Price
asx_securities_ntp_itch_v1_05.etr_upper_price.display = function(value)
  return "Etr Upper Price: "..value
end

-- Dissect: Etr Upper Price
asx_securities_ntp_itch_v1_05.etr_upper_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.etr_upper_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.etr_upper_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.etr_upper_price, range, value, display)

  return offset + length, value
end

-- Etr Price
asx_securities_ntp_itch_v1_05.etr_price = {}

-- Size: Etr Price
asx_securities_ntp_itch_v1_05.etr_price.size = 8

-- Display: Etr Price
asx_securities_ntp_itch_v1_05.etr_price.display = function(value)
  return "Etr Price: "..value
end

-- Dissect: Etr Price
asx_securities_ntp_itch_v1_05.etr_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.etr_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.etr_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.etr_price, range, value, display)

  return offset + length, value
end

-- Aot Lower Price
asx_securities_ntp_itch_v1_05.aot_lower_price = {}

-- Size: Aot Lower Price
asx_securities_ntp_itch_v1_05.aot_lower_price.size = 8

-- Display: Aot Lower Price
asx_securities_ntp_itch_v1_05.aot_lower_price.display = function(value)
  return "Aot Lower Price: "..value
end

-- Dissect: Aot Lower Price
asx_securities_ntp_itch_v1_05.aot_lower_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.aot_lower_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.aot_lower_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.aot_lower_price, range, value, display)

  return offset + length, value
end

-- Aot Upper Price
asx_securities_ntp_itch_v1_05.aot_upper_price = {}

-- Size: Aot Upper Price
asx_securities_ntp_itch_v1_05.aot_upper_price.size = 8

-- Display: Aot Upper Price
asx_securities_ntp_itch_v1_05.aot_upper_price.display = function(value)
  return "Aot Upper Price: "..value
end

-- Dissect: Aot Upper Price
asx_securities_ntp_itch_v1_05.aot_upper_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.aot_upper_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.aot_upper_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.aot_upper_price, range, value, display)

  return offset + length, value
end

-- Aot Price
asx_securities_ntp_itch_v1_05.aot_price = {}

-- Size: Aot Price
asx_securities_ntp_itch_v1_05.aot_price.size = 8

-- Display: Aot Price
asx_securities_ntp_itch_v1_05.aot_price.display = function(value)
  return "Aot Price: "..value
end

-- Dissect: Aot Price
asx_securities_ntp_itch_v1_05.aot_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.aot_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.aot_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.aot_price, range, value, display)

  return offset + length, value
end

-- Anomalous Order Threshold Publish Message
asx_securities_ntp_itch_v1_05.anomalous_order_threshold_publish_message = {}

-- Calculate size of: Anomalous Order Threshold Publish Message
asx_securities_ntp_itch_v1_05.anomalous_order_threshold_publish_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.aot_price.size

  index = index + asx_securities_ntp_itch_v1_05.aot_upper_price.size

  index = index + asx_securities_ntp_itch_v1_05.aot_lower_price.size

  index = index + asx_securities_ntp_itch_v1_05.etr_price.size

  index = index + asx_securities_ntp_itch_v1_05.etr_upper_price.size

  index = index + asx_securities_ntp_itch_v1_05.etr_lower_price.size

  return index
end

-- Display: Anomalous Order Threshold Publish Message
asx_securities_ntp_itch_v1_05.anomalous_order_threshold_publish_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Anomalous Order Threshold Publish Message
asx_securities_ntp_itch_v1_05.anomalous_order_threshold_publish_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Aot Price: 8 Byte Signed Fixed Width Integer
  index, aot_price = asx_securities_ntp_itch_v1_05.aot_price.dissect(buffer, index, packet, parent)

  -- Aot Upper Price: 8 Byte Signed Fixed Width Integer
  index, aot_upper_price = asx_securities_ntp_itch_v1_05.aot_upper_price.dissect(buffer, index, packet, parent)

  -- Aot Lower Price: 8 Byte Signed Fixed Width Integer
  index, aot_lower_price = asx_securities_ntp_itch_v1_05.aot_lower_price.dissect(buffer, index, packet, parent)

  -- Etr Price: 8 Byte Signed Fixed Width Integer
  index, etr_price = asx_securities_ntp_itch_v1_05.etr_price.dissect(buffer, index, packet, parent)

  -- Etr Upper Price: 8 Byte Signed Fixed Width Integer
  index, etr_upper_price = asx_securities_ntp_itch_v1_05.etr_upper_price.dissect(buffer, index, packet, parent)

  -- Etr Lower Price: 8 Byte Signed Fixed Width Integer
  index, etr_lower_price = asx_securities_ntp_itch_v1_05.etr_lower_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Anomalous Order Threshold Publish Message
asx_securities_ntp_itch_v1_05.anomalous_order_threshold_publish_message.dissect = function(buffer, offset, packet, parent)
  if show.anomalous_order_threshold_publish_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.anomalous_order_threshold_publish_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.anomalous_order_threshold_publish_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.anomalous_order_threshold_publish_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.anomalous_order_threshold_publish_message.fields(buffer, offset, packet, parent)
  end
end

-- Quantity
asx_securities_ntp_itch_v1_05.quantity = {}

-- Size: Quantity
asx_securities_ntp_itch_v1_05.quantity.size = 4

-- Display: Quantity
asx_securities_ntp_itch_v1_05.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
asx_securities_ntp_itch_v1_05.quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.quantity, range, value, display)

  return offset + length, value
end

-- Rfq Side
asx_securities_ntp_itch_v1_05.rfq_side = {}

-- Size: Rfq Side
asx_securities_ntp_itch_v1_05.rfq_side.size = 1

-- Display: Rfq Side
asx_securities_ntp_itch_v1_05.rfq_side.display = function(value)
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
asx_securities_ntp_itch_v1_05.rfq_side.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.rfq_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05.rfq_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.rfq_side, range, value, display)

  return offset + length, value
end

-- Request For Quote Message
asx_securities_ntp_itch_v1_05.request_for_quote_message = {}

-- Calculate size of: Request For Quote Message
asx_securities_ntp_itch_v1_05.request_for_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.rfq_side.size

  index = index + asx_securities_ntp_itch_v1_05.quantity.size

  return index
end

-- Display: Request For Quote Message
asx_securities_ntp_itch_v1_05.request_for_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request For Quote Message
asx_securities_ntp_itch_v1_05.request_for_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Rfq Side: 1 Byte Ascii String Enum with 4 values
  index, rfq_side = asx_securities_ntp_itch_v1_05.rfq_side.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_ntp_itch_v1_05.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request For Quote Message
asx_securities_ntp_itch_v1_05.request_for_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.request_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.request_for_quote_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.request_for_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.request_for_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.request_for_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Text
asx_securities_ntp_itch_v1_05.text = {}

-- Size: Text
asx_securities_ntp_itch_v1_05.text.size = 100

-- Display: Text
asx_securities_ntp_itch_v1_05.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
asx_securities_ntp_itch_v1_05.text.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.text.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.text, range, value, display)

  return offset + length, value
end

-- Source Id
asx_securities_ntp_itch_v1_05.source_id = {}

-- Size: Source Id
asx_securities_ntp_itch_v1_05.source_id.size = 6

-- Display: Source Id
asx_securities_ntp_itch_v1_05.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
asx_securities_ntp_itch_v1_05.source_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.source_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.source_id, range, value, display)

  return offset + length, value
end

-- Text Message
asx_securities_ntp_itch_v1_05.text_message = {}

-- Calculate size of: Text Message
asx_securities_ntp_itch_v1_05.text_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.source_id.size

  index = index + asx_securities_ntp_itch_v1_05.text.size

  return index
end

-- Display: Text Message
asx_securities_ntp_itch_v1_05.text_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Text Message
asx_securities_ntp_itch_v1_05.text_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Source Id: 6 Byte Ascii String
  index, source_id = asx_securities_ntp_itch_v1_05.source_id.dissect(buffer, index, packet, parent)

  -- Text: 100 Byte Ascii String
  index, text = asx_securities_ntp_itch_v1_05.text.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Text Message
asx_securities_ntp_itch_v1_05.text_message.dissect = function(buffer, offset, packet, parent)
  if show.text_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.text_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.text_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.text_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.text_message.fields(buffer, offset, packet, parent)
  end
end

-- Total Traded Volume
asx_securities_ntp_itch_v1_05.total_traded_volume = {}

-- Size: Total Traded Volume
asx_securities_ntp_itch_v1_05.total_traded_volume.size = 8

-- Display: Total Traded Volume
asx_securities_ntp_itch_v1_05.total_traded_volume.display = function(value)
  return "Total Traded Volume: "..value
end

-- Dissect: Total Traded Volume
asx_securities_ntp_itch_v1_05.total_traded_volume.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.total_traded_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.total_traded_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.total_traded_volume, range, value, display)

  return offset + length, value
end

-- Last Volume
asx_securities_ntp_itch_v1_05.last_volume = {}

-- Size: Last Volume
asx_securities_ntp_itch_v1_05.last_volume.size = 4

-- Display: Last Volume
asx_securities_ntp_itch_v1_05.last_volume.display = function(value)
  return "Last Volume: "..value
end

-- Dissect: Last Volume
asx_securities_ntp_itch_v1_05.last_volume.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.last_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.last_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.last_volume, range, value, display)

  return offset + length, value
end

-- Last Trade
asx_securities_ntp_itch_v1_05.last_trade = {}

-- Size: Last Trade
asx_securities_ntp_itch_v1_05.last_trade.size = 8

-- Display: Last Trade
asx_securities_ntp_itch_v1_05.last_trade.display = function(value)
  return "Last Trade: "..value
end

-- Dissect: Last Trade
asx_securities_ntp_itch_v1_05.last_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.last_trade.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.last_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.last_trade, range, value, display)

  return offset + length, value
end

-- Lowest Trade
asx_securities_ntp_itch_v1_05.lowest_trade = {}

-- Size: Lowest Trade
asx_securities_ntp_itch_v1_05.lowest_trade.size = 8

-- Display: Lowest Trade
asx_securities_ntp_itch_v1_05.lowest_trade.display = function(value)
  return "Lowest Trade: "..value
end

-- Dissect: Lowest Trade
asx_securities_ntp_itch_v1_05.lowest_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.lowest_trade.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.lowest_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.lowest_trade, range, value, display)

  return offset + length, value
end

-- Highest Trade
asx_securities_ntp_itch_v1_05.highest_trade = {}

-- Size: Highest Trade
asx_securities_ntp_itch_v1_05.highest_trade.size = 8

-- Display: Highest Trade
asx_securities_ntp_itch_v1_05.highest_trade.display = function(value)
  return "Highest Trade: "..value
end

-- Dissect: Highest Trade
asx_securities_ntp_itch_v1_05.highest_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.highest_trade.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.highest_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.highest_trade, range, value, display)

  return offset + length, value
end

-- Opening Trade
asx_securities_ntp_itch_v1_05.opening_trade = {}

-- Size: Opening Trade
asx_securities_ntp_itch_v1_05.opening_trade.size = 8

-- Display: Opening Trade
asx_securities_ntp_itch_v1_05.opening_trade.display = function(value)
  return "Opening Trade: "..value
end

-- Dissect: Opening Trade
asx_securities_ntp_itch_v1_05.opening_trade.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.opening_trade.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.opening_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Market Settlement Message
asx_securities_ntp_itch_v1_05.market_settlement_message = {}

-- Calculate size of: Market Settlement Message
asx_securities_ntp_itch_v1_05.market_settlement_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.opening_trade.size

  index = index + asx_securities_ntp_itch_v1_05.highest_trade.size

  index = index + asx_securities_ntp_itch_v1_05.lowest_trade.size

  index = index + asx_securities_ntp_itch_v1_05.last_trade.size

  index = index + asx_securities_ntp_itch_v1_05.last_volume.size

  index = index + asx_securities_ntp_itch_v1_05.total_traded_volume.size

  return index
end

-- Display: Market Settlement Message
asx_securities_ntp_itch_v1_05.market_settlement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Settlement Message
asx_securities_ntp_itch_v1_05.market_settlement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Opening Trade: 8 Byte Signed Fixed Width Integer
  index, opening_trade = asx_securities_ntp_itch_v1_05.opening_trade.dissect(buffer, index, packet, parent)

  -- Highest Trade: 8 Byte Signed Fixed Width Integer
  index, highest_trade = asx_securities_ntp_itch_v1_05.highest_trade.dissect(buffer, index, packet, parent)

  -- Lowest Trade: 8 Byte Signed Fixed Width Integer
  index, lowest_trade = asx_securities_ntp_itch_v1_05.lowest_trade.dissect(buffer, index, packet, parent)

  -- Last Trade: 8 Byte Signed Fixed Width Integer
  index, last_trade = asx_securities_ntp_itch_v1_05.last_trade.dissect(buffer, index, packet, parent)

  -- Last Volume: 4 Byte Unsigned Fixed Width Integer
  index, last_volume = asx_securities_ntp_itch_v1_05.last_volume.dissect(buffer, index, packet, parent)

  -- Total Traded Volume: 8 Byte Unsigned Fixed Width Integer
  index, total_traded_volume = asx_securities_ntp_itch_v1_05.total_traded_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Settlement Message
asx_securities_ntp_itch_v1_05.market_settlement_message.dissect = function(buffer, offset, packet, parent)
  if show.market_settlement_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.market_settlement_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.market_settlement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.market_settlement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.market_settlement_message.fields(buffer, offset, packet, parent)
  end
end

-- Open High Low Last Trade Adjustment Message
asx_securities_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message = {}

-- Calculate size of: Open High Low Last Trade Adjustment Message
asx_securities_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.opening_trade.size

  index = index + asx_securities_ntp_itch_v1_05.highest_trade.size

  index = index + asx_securities_ntp_itch_v1_05.lowest_trade.size

  index = index + asx_securities_ntp_itch_v1_05.last_trade.size

  index = index + asx_securities_ntp_itch_v1_05.last_volume.size

  index = index + asx_securities_ntp_itch_v1_05.total_traded_volume.size

  return index
end

-- Display: Open High Low Last Trade Adjustment Message
asx_securities_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open High Low Last Trade Adjustment Message
asx_securities_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Opening Trade: 8 Byte Signed Fixed Width Integer
  index, opening_trade = asx_securities_ntp_itch_v1_05.opening_trade.dissect(buffer, index, packet, parent)

  -- Highest Trade: 8 Byte Signed Fixed Width Integer
  index, highest_trade = asx_securities_ntp_itch_v1_05.highest_trade.dissect(buffer, index, packet, parent)

  -- Lowest Trade: 8 Byte Signed Fixed Width Integer
  index, lowest_trade = asx_securities_ntp_itch_v1_05.lowest_trade.dissect(buffer, index, packet, parent)

  -- Last Trade: 8 Byte Signed Fixed Width Integer
  index, last_trade = asx_securities_ntp_itch_v1_05.last_trade.dissect(buffer, index, packet, parent)

  -- Last Volume: 4 Byte Unsigned Fixed Width Integer
  index, last_volume = asx_securities_ntp_itch_v1_05.last_volume.dissect(buffer, index, packet, parent)

  -- Total Traded Volume: 8 Byte Unsigned Fixed Width Integer
  index, total_traded_volume = asx_securities_ntp_itch_v1_05.total_traded_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open High Low Last Trade Adjustment Message
asx_securities_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.dissect = function(buffer, offset, packet, parent)
  if show.open_high_low_last_trade_adjustment_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.open_high_low_last_trade_adjustment_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.fields(buffer, offset, packet, parent)
  end
end

-- Ask Quantity
asx_securities_ntp_itch_v1_05.ask_quantity = {}

-- Size: Ask Quantity
asx_securities_ntp_itch_v1_05.ask_quantity.size = 8

-- Display: Ask Quantity
asx_securities_ntp_itch_v1_05.ask_quantity.display = function(value)
  return "Ask Quantity: "..value
end

-- Dissect: Ask Quantity
asx_securities_ntp_itch_v1_05.ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.ask_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.ask_quantity, range, value, display)

  return offset + length, value
end

-- Bid Quantity
asx_securities_ntp_itch_v1_05.bid_quantity = {}

-- Size: Bid Quantity
asx_securities_ntp_itch_v1_05.bid_quantity.size = 8

-- Display: Bid Quantity
asx_securities_ntp_itch_v1_05.bid_quantity.display = function(value)
  return "Bid Quantity: "..value
end

-- Dissect: Bid Quantity
asx_securities_ntp_itch_v1_05.bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.bid_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.bid_quantity, range, value, display)

  return offset + length, value
end

-- Matched Quantity
asx_securities_ntp_itch_v1_05.matched_quantity = {}

-- Size: Matched Quantity
asx_securities_ntp_itch_v1_05.matched_quantity.size = 8

-- Display: Matched Quantity
asx_securities_ntp_itch_v1_05.matched_quantity.display = function(value)
  return "Matched Quantity: "..value
end

-- Dissect: Matched Quantity
asx_securities_ntp_itch_v1_05.matched_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.matched_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.matched_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.matched_quantity, range, value, display)

  return offset + length, value
end

-- Equilibrium Price
asx_securities_ntp_itch_v1_05.equilibrium_price = {}

-- Size: Equilibrium Price
asx_securities_ntp_itch_v1_05.equilibrium_price.size = 8

-- Display: Equilibrium Price
asx_securities_ntp_itch_v1_05.equilibrium_price.display = function(value)
  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
asx_securities_ntp_itch_v1_05.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Equilibrium Price Message
asx_securities_ntp_itch_v1_05.equilibrium_price_message = {}

-- Calculate size of: Equilibrium Price Message
asx_securities_ntp_itch_v1_05.equilibrium_price_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.equilibrium_price.size

  index = index + asx_securities_ntp_itch_v1_05.matched_quantity.size

  index = index + asx_securities_ntp_itch_v1_05.bid_quantity.size

  index = index + asx_securities_ntp_itch_v1_05.ask_quantity.size

  return index
end

-- Display: Equilibrium Price Message
asx_securities_ntp_itch_v1_05.equilibrium_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equilibrium Price Message
asx_securities_ntp_itch_v1_05.equilibrium_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: 8 Byte Signed Fixed Width Integer
  index, equilibrium_price = asx_securities_ntp_itch_v1_05.equilibrium_price.dissect(buffer, index, packet, parent)

  -- Matched Quantity: 8 Byte Unsigned Fixed Width Integer
  index, matched_quantity = asx_securities_ntp_itch_v1_05.matched_quantity.dissect(buffer, index, packet, parent)

  -- Bid Quantity: 8 Byte Unsigned Fixed Width Integer
  index, bid_quantity = asx_securities_ntp_itch_v1_05.bid_quantity.dissect(buffer, index, packet, parent)

  -- Ask Quantity: 8 Byte Unsigned Fixed Width Integer
  index, ask_quantity = asx_securities_ntp_itch_v1_05.ask_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Message
asx_securities_ntp_itch_v1_05.equilibrium_price_message.dissect = function(buffer, offset, packet, parent)
  if show.equilibrium_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.equilibrium_price_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.equilibrium_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.equilibrium_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.equilibrium_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Id
asx_securities_ntp_itch_v1_05.trade_id = {}

-- Size: Trade Id
asx_securities_ntp_itch_v1_05.trade_id.size = 8

-- Display: Trade Id
asx_securities_ntp_itch_v1_05.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
asx_securities_ntp_itch_v1_05.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Cancellation Message
asx_securities_ntp_itch_v1_05.trade_cancellation_message = {}

-- Calculate size of: Trade Cancellation Message
asx_securities_ntp_itch_v1_05.trade_cancellation_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.trade_id.size

  return index
end

-- Display: Trade Cancellation Message
asx_securities_ntp_itch_v1_05.trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancellation Message
asx_securities_ntp_itch_v1_05.trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = asx_securities_ntp_itch_v1_05.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancellation Message
asx_securities_ntp_itch_v1_05.trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.trade_cancellation_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Seller Participant Id
asx_securities_ntp_itch_v1_05.seller_participant_id = {}

-- Size: Seller Participant Id
asx_securities_ntp_itch_v1_05.seller_participant_id.size = 3

-- Display: Seller Participant Id
asx_securities_ntp_itch_v1_05.seller_participant_id.display = function(value)
  return "Seller Participant Id: "..value
end

-- Dissect: Seller Participant Id
asx_securities_ntp_itch_v1_05.seller_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.seller_participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.seller_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.seller_participant_id, range, value, display)

  return offset + length, value
end

-- Seller Combination Trade Id
asx_securities_ntp_itch_v1_05.seller_combination_trade_id = {}

-- Size: Seller Combination Trade Id
asx_securities_ntp_itch_v1_05.seller_combination_trade_id.size = 8

-- Display: Seller Combination Trade Id
asx_securities_ntp_itch_v1_05.seller_combination_trade_id.display = function(value)
  return "Seller Combination Trade Id: "..value
end

-- Dissect: Seller Combination Trade Id
asx_securities_ntp_itch_v1_05.seller_combination_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.seller_combination_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.seller_combination_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.seller_combination_trade_id, range, value, display)

  return offset + length, value
end

-- Seller Order Id
asx_securities_ntp_itch_v1_05.seller_order_id = {}

-- Size: Seller Order Id
asx_securities_ntp_itch_v1_05.seller_order_id.size = 8

-- Display: Seller Order Id
asx_securities_ntp_itch_v1_05.seller_order_id.display = function(value)
  return "Seller Order Id: "..value
end

-- Dissect: Seller Order Id
asx_securities_ntp_itch_v1_05.seller_order_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.seller_order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.seller_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.seller_order_id, range, value, display)

  return offset + length, value
end

-- Seller Side
asx_securities_ntp_itch_v1_05.seller_side = {}

-- Size: Seller Side
asx_securities_ntp_itch_v1_05.seller_side.size = 1

-- Display: Seller Side
asx_securities_ntp_itch_v1_05.seller_side.display = function(value)
  if value == "S" then
    return "Seller Side: Sell (S)"
  end
  if value == "B" then
    return "Seller Side: Buy (B)"
  end

  return "Seller Side: Unknown("..value..")"
end

-- Dissect: Seller Side
asx_securities_ntp_itch_v1_05.seller_side.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.seller_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05.seller_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.seller_side, range, value, display)

  return offset + length, value
end

-- Seller Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.seller_tradeable_instrument_id = {}

-- Size: Seller Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.seller_tradeable_instrument_id.size = 4

-- Display: Seller Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.seller_tradeable_instrument_id.display = function(value)
  return "Seller Tradeable Instrument Id: "..value
end

-- Dissect: Seller Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.seller_tradeable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.seller_tradeable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.seller_tradeable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.seller_tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Buyer Participant Id
asx_securities_ntp_itch_v1_05.buyer_participant_id = {}

-- Size: Buyer Participant Id
asx_securities_ntp_itch_v1_05.buyer_participant_id.size = 3

-- Display: Buyer Participant Id
asx_securities_ntp_itch_v1_05.buyer_participant_id.display = function(value)
  return "Buyer Participant Id: "..value
end

-- Dissect: Buyer Participant Id
asx_securities_ntp_itch_v1_05.buyer_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.buyer_participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.buyer_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.buyer_participant_id, range, value, display)

  return offset + length, value
end

-- Buyer Combination Trade Id
asx_securities_ntp_itch_v1_05.buyer_combination_trade_id = {}

-- Size: Buyer Combination Trade Id
asx_securities_ntp_itch_v1_05.buyer_combination_trade_id.size = 8

-- Display: Buyer Combination Trade Id
asx_securities_ntp_itch_v1_05.buyer_combination_trade_id.display = function(value)
  return "Buyer Combination Trade Id: "..value
end

-- Dissect: Buyer Combination Trade Id
asx_securities_ntp_itch_v1_05.buyer_combination_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.buyer_combination_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.buyer_combination_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.buyer_combination_trade_id, range, value, display)

  return offset + length, value
end

-- Buyer Order Id
asx_securities_ntp_itch_v1_05.buyer_order_id = {}

-- Size: Buyer Order Id
asx_securities_ntp_itch_v1_05.buyer_order_id.size = 8

-- Display: Buyer Order Id
asx_securities_ntp_itch_v1_05.buyer_order_id.display = function(value)
  return "Buyer Order Id: "..value
end

-- Dissect: Buyer Order Id
asx_securities_ntp_itch_v1_05.buyer_order_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.buyer_order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.buyer_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.buyer_order_id, range, value, display)

  return offset + length, value
end

-- Buyer Side
asx_securities_ntp_itch_v1_05.buyer_side = {}

-- Size: Buyer Side
asx_securities_ntp_itch_v1_05.buyer_side.size = 1

-- Display: Buyer Side
asx_securities_ntp_itch_v1_05.buyer_side.display = function(value)
  if value == "S" then
    return "Buyer Side: Sell (S)"
  end
  if value == "B" then
    return "Buyer Side: Buy (B)"
  end

  return "Buyer Side: Unknown("..value..")"
end

-- Dissect: Buyer Side
asx_securities_ntp_itch_v1_05.buyer_side.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.buyer_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05.buyer_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.buyer_side, range, value, display)

  return offset + length, value
end

-- Buyer Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.buyer_tradeable_instrument_id = {}

-- Size: Buyer Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.buyer_tradeable_instrument_id.size = 4

-- Display: Buyer Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.buyer_tradeable_instrument_id.display = function(value)
  return "Buyer Tradeable Instrument Id: "..value
end

-- Dissect: Buyer Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.buyer_tradeable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.buyer_tradeable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.buyer_tradeable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.buyer_tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Trade Price
asx_securities_ntp_itch_v1_05.trade_price = {}

-- Size: Trade Price
asx_securities_ntp_itch_v1_05.trade_price.size = 8

-- Display: Trade Price
asx_securities_ntp_itch_v1_05.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
asx_securities_ntp_itch_v1_05.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.trade_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Executed Quantity
asx_securities_ntp_itch_v1_05.executed_quantity = {}

-- Size: Executed Quantity
asx_securities_ntp_itch_v1_05.executed_quantity.size = 4

-- Display: Executed Quantity
asx_securities_ntp_itch_v1_05.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
asx_securities_ntp_itch_v1_05.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Trade Type
asx_securities_ntp_itch_v1_05.trade_type = {}

-- Size: Trade Type
asx_securities_ntp_itch_v1_05.trade_type.size = 1

-- Display: Trade Type
asx_securities_ntp_itch_v1_05.trade_type.display = function(value)
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
asx_securities_ntp_itch_v1_05.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Combination Trade Executed Message
asx_securities_ntp_itch_v1_05.combination_trade_executed_message = {}

-- Calculate size of: Combination Trade Executed Message
asx_securities_ntp_itch_v1_05.combination_trade_executed_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.trade_type.size

  index = index + asx_securities_ntp_itch_v1_05.trade_id.size

  index = index + asx_securities_ntp_itch_v1_05.executed_quantity.size

  index = index + asx_securities_ntp_itch_v1_05.trade_price.size

  index = index + asx_securities_ntp_itch_v1_05.buyer_tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.buyer_side.size

  index = index + asx_securities_ntp_itch_v1_05.buyer_order_id.size

  index = index + asx_securities_ntp_itch_v1_05.buyer_combination_trade_id.size

  index = index + asx_securities_ntp_itch_v1_05.buyer_participant_id.size

  index = index + asx_securities_ntp_itch_v1_05.seller_tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.seller_side.size

  index = index + asx_securities_ntp_itch_v1_05.seller_order_id.size

  index = index + asx_securities_ntp_itch_v1_05.seller_combination_trade_id.size

  index = index + asx_securities_ntp_itch_v1_05.seller_participant_id.size

  return index
end

-- Display: Combination Trade Executed Message
asx_securities_ntp_itch_v1_05.combination_trade_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Trade Executed Message
asx_securities_ntp_itch_v1_05.combination_trade_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 12 values
  index, trade_type = asx_securities_ntp_itch_v1_05.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = asx_securities_ntp_itch_v1_05.trade_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_ntp_itch_v1_05.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_ntp_itch_v1_05.trade_price.dissect(buffer, index, packet, parent)

  -- Buyer Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, buyer_tradeable_instrument_id = asx_securities_ntp_itch_v1_05.buyer_tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Buyer Side: 1 Byte Ascii String Enum with 2 values
  index, buyer_side = asx_securities_ntp_itch_v1_05.buyer_side.dissect(buffer, index, packet, parent)

  -- Buyer Order Id: 8 Byte Unsigned Fixed Width Integer
  index, buyer_order_id = asx_securities_ntp_itch_v1_05.buyer_order_id.dissect(buffer, index, packet, parent)

  -- Buyer Combination Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, buyer_combination_trade_id = asx_securities_ntp_itch_v1_05.buyer_combination_trade_id.dissect(buffer, index, packet, parent)

  -- Buyer Participant Id: 3 Byte Ascii String
  index, buyer_participant_id = asx_securities_ntp_itch_v1_05.buyer_participant_id.dissect(buffer, index, packet, parent)

  -- Seller Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, seller_tradeable_instrument_id = asx_securities_ntp_itch_v1_05.seller_tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Seller Side: 1 Byte Ascii String Enum with 2 values
  index, seller_side = asx_securities_ntp_itch_v1_05.seller_side.dissect(buffer, index, packet, parent)

  -- Seller Order Id: 8 Byte Unsigned Fixed Width Integer
  index, seller_order_id = asx_securities_ntp_itch_v1_05.seller_order_id.dissect(buffer, index, packet, parent)

  -- Seller Combination Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, seller_combination_trade_id = asx_securities_ntp_itch_v1_05.seller_combination_trade_id.dissect(buffer, index, packet, parent)

  -- Seller Participant Id: 3 Byte Ascii String
  index, seller_participant_id = asx_securities_ntp_itch_v1_05.seller_participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Trade Executed Message
asx_securities_ntp_itch_v1_05.combination_trade_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.combination_trade_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.combination_trade_executed_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.combination_trade_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.combination_trade_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.combination_trade_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant Id Seller
asx_securities_ntp_itch_v1_05.participant_id_seller = {}

-- Size: Participant Id Seller
asx_securities_ntp_itch_v1_05.participant_id_seller.size = 3

-- Display: Participant Id Seller
asx_securities_ntp_itch_v1_05.participant_id_seller.display = function(value)
  return "Participant Id Seller: "..value
end

-- Dissect: Participant Id Seller
asx_securities_ntp_itch_v1_05.participant_id_seller.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.participant_id_seller.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.participant_id_seller.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.participant_id_seller, range, value, display)

  return offset + length, value
end

-- Participant Id Buyer
asx_securities_ntp_itch_v1_05.participant_id_buyer = {}

-- Size: Participant Id Buyer
asx_securities_ntp_itch_v1_05.participant_id_buyer.size = 3

-- Display: Participant Id Buyer
asx_securities_ntp_itch_v1_05.participant_id_buyer.display = function(value)
  return "Participant Id Buyer: "..value
end

-- Dissect: Participant Id Buyer
asx_securities_ntp_itch_v1_05.participant_id_buyer.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.participant_id_buyer.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.participant_id_buyer.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.participant_id_buyer, range, value, display)

  return offset + length, value
end

-- Combination Trade Id
asx_securities_ntp_itch_v1_05.combination_trade_id = {}

-- Size: Combination Trade Id
asx_securities_ntp_itch_v1_05.combination_trade_id.size = 8

-- Display: Combination Trade Id
asx_securities_ntp_itch_v1_05.combination_trade_id.display = function(value)
  return "Combination Trade Id: "..value
end

-- Dissect: Combination Trade Id
asx_securities_ntp_itch_v1_05.combination_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.combination_trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.combination_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.combination_trade_id, range, value, display)

  return offset + length, value
end

-- Trade Executed Message
asx_securities_ntp_itch_v1_05.trade_executed_message = {}

-- Calculate size of: Trade Executed Message
asx_securities_ntp_itch_v1_05.trade_executed_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.trade_type.size

  index = index + asx_securities_ntp_itch_v1_05.trade_id.size

  index = index + asx_securities_ntp_itch_v1_05.executed_quantity.size

  index = index + asx_securities_ntp_itch_v1_05.trade_price.size

  index = index + asx_securities_ntp_itch_v1_05.combination_trade_id.size

  index = index + asx_securities_ntp_itch_v1_05.participant_id_buyer.size

  index = index + asx_securities_ntp_itch_v1_05.participant_id_seller.size

  return index
end

-- Display: Trade Executed Message
asx_securities_ntp_itch_v1_05.trade_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Executed Message
asx_securities_ntp_itch_v1_05.trade_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 12 values
  index, trade_type = asx_securities_ntp_itch_v1_05.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = asx_securities_ntp_itch_v1_05.trade_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_ntp_itch_v1_05.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_ntp_itch_v1_05.trade_price.dissect(buffer, index, packet, parent)

  -- Combination Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, combination_trade_id = asx_securities_ntp_itch_v1_05.combination_trade_id.dissect(buffer, index, packet, parent)

  -- Participant Id Buyer: 3 Byte Ascii String
  index, participant_id_buyer = asx_securities_ntp_itch_v1_05.participant_id_buyer.dissect(buffer, index, packet, parent)

  -- Participant Id Seller: 3 Byte Ascii String
  index, participant_id_seller = asx_securities_ntp_itch_v1_05.participant_id_seller.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Executed Message
asx_securities_ntp_itch_v1_05.trade_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.trade_executed_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.trade_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.trade_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.trade_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
asx_securities_ntp_itch_v1_05.order_id = {}

-- Size: Order Id
asx_securities_ntp_itch_v1_05.order_id.size = 8

-- Display: Order Id
asx_securities_ntp_itch_v1_05.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
asx_securities_ntp_itch_v1_05.order_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.order_id, range, value, display)

  return offset + length, value
end

-- Side
asx_securities_ntp_itch_v1_05.side = {}

-- Size: Side
asx_securities_ntp_itch_v1_05.side.size = 1

-- Display: Side
asx_securities_ntp_itch_v1_05.side.display = function(value)
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "B" then
    return "Side: Buy (B)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
asx_securities_ntp_itch_v1_05.side.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.side, range, value, display)

  return offset + length, value
end

-- Implied Order Deleted Message
asx_securities_ntp_itch_v1_05.implied_order_deleted_message = {}

-- Calculate size of: Implied Order Deleted Message
asx_securities_ntp_itch_v1_05.implied_order_deleted_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.side.size

  index = index + asx_securities_ntp_itch_v1_05.order_id.size

  return index
end

-- Display: Implied Order Deleted Message
asx_securities_ntp_itch_v1_05.implied_order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Deleted Message
asx_securities_ntp_itch_v1_05.implied_order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Deleted Message
asx_securities_ntp_itch_v1_05.implied_order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.implied_order_deleted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.implied_order_deleted_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.implied_order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.implied_order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.implied_order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Price
asx_securities_ntp_itch_v1_05.price = {}

-- Size: Price
asx_securities_ntp_itch_v1_05.price.size = 8

-- Display: Price
asx_securities_ntp_itch_v1_05.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
asx_securities_ntp_itch_v1_05.price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.price, range, value, display)

  return offset + length, value
end

-- Order Book Priority
asx_securities_ntp_itch_v1_05.order_book_priority = {}

-- Size: Order Book Priority
asx_securities_ntp_itch_v1_05.order_book_priority.size = 8

-- Display: Order Book Priority
asx_securities_ntp_itch_v1_05.order_book_priority.display = function(value)
  return "Order Book Priority: "..value
end

-- Dissect: Order Book Priority
asx_securities_ntp_itch_v1_05.order_book_priority.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.order_book_priority.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.order_book_priority.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.order_book_priority, range, value, display)

  return offset + length, value
end

-- Implied Order Replaced Message
asx_securities_ntp_itch_v1_05.implied_order_replaced_message = {}

-- Calculate size of: Implied Order Replaced Message
asx_securities_ntp_itch_v1_05.implied_order_replaced_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.side.size

  index = index + asx_securities_ntp_itch_v1_05.order_id.size

  index = index + asx_securities_ntp_itch_v1_05.order_book_priority.size

  index = index + asx_securities_ntp_itch_v1_05.quantity.size

  index = index + asx_securities_ntp_itch_v1_05.price.size

  return index
end

-- Display: Implied Order Replaced Message
asx_securities_ntp_itch_v1_05.implied_order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Replaced Message
asx_securities_ntp_itch_v1_05.implied_order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Priority: 8 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_ntp_itch_v1_05.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_ntp_itch_v1_05.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = asx_securities_ntp_itch_v1_05.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Replaced Message
asx_securities_ntp_itch_v1_05.implied_order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.implied_order_replaced_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.implied_order_replaced_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.implied_order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.implied_order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.implied_order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Implied Order Added Message
asx_securities_ntp_itch_v1_05.implied_order_added_message = {}

-- Calculate size of: Implied Order Added Message
asx_securities_ntp_itch_v1_05.implied_order_added_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.side.size

  index = index + asx_securities_ntp_itch_v1_05.order_id.size

  index = index + asx_securities_ntp_itch_v1_05.order_book_priority.size

  index = index + asx_securities_ntp_itch_v1_05.quantity.size

  index = index + asx_securities_ntp_itch_v1_05.price.size

  return index
end

-- Display: Implied Order Added Message
asx_securities_ntp_itch_v1_05.implied_order_added_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Implied Order Added Message
asx_securities_ntp_itch_v1_05.implied_order_added_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Priority: 8 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_ntp_itch_v1_05.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_ntp_itch_v1_05.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = asx_securities_ntp_itch_v1_05.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Implied Order Added Message
asx_securities_ntp_itch_v1_05.implied_order_added_message.dissect = function(buffer, offset, packet, parent)
  if show.implied_order_added_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.implied_order_added_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.implied_order_added_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.implied_order_added_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.implied_order_added_message.fields(buffer, offset, packet, parent)
  end
end

-- Opposite Order Id
asx_securities_ntp_itch_v1_05.opposite_order_id = {}

-- Size: Opposite Order Id
asx_securities_ntp_itch_v1_05.opposite_order_id.size = 8

-- Display: Opposite Order Id
asx_securities_ntp_itch_v1_05.opposite_order_id.display = function(value)
  return "Opposite Order Id: "..value
end

-- Dissect: Opposite Order Id
asx_securities_ntp_itch_v1_05.opposite_order_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.opposite_order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.opposite_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.opposite_order_id, range, value, display)

  return offset + length, value
end

-- Opposite Side
asx_securities_ntp_itch_v1_05.opposite_side = {}

-- Size: Opposite Side
asx_securities_ntp_itch_v1_05.opposite_side.size = 1

-- Display: Opposite Side
asx_securities_ntp_itch_v1_05.opposite_side.display = function(value)
  if value == "S" then
    return "Opposite Side: Sell (S)"
  end
  if value == "B" then
    return "Opposite Side: Buy (B)"
  end

  return "Opposite Side: Unknown("..value..")"
end

-- Dissect: Opposite Side
asx_securities_ntp_itch_v1_05.opposite_side.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.opposite_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05.opposite_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.opposite_side, range, value, display)

  return offset + length, value
end

-- Opposite Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.opposite_tradeable_instrument_id = {}

-- Size: Opposite Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.opposite_tradeable_instrument_id.size = 4

-- Display: Opposite Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.opposite_tradeable_instrument_id.display = function(value)
  return "Opposite Tradeable Instrument Id: "..value
end

-- Dissect: Opposite Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.opposite_tradeable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.opposite_tradeable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.opposite_tradeable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.opposite_tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Quantity Remaining
asx_securities_ntp_itch_v1_05.quantity_remaining = {}

-- Size: Quantity Remaining
asx_securities_ntp_itch_v1_05.quantity_remaining.size = 4

-- Display: Quantity Remaining
asx_securities_ntp_itch_v1_05.quantity_remaining.display = function(value)
  return "Quantity Remaining: "..value
end

-- Dissect: Quantity Remaining
asx_securities_ntp_itch_v1_05.quantity_remaining.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.quantity_remaining.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.quantity_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.quantity_remaining, range, value, display)

  return offset + length, value
end

-- Combination Order Executed Message
asx_securities_ntp_itch_v1_05.combination_order_executed_message = {}

-- Calculate size of: Combination Order Executed Message
asx_securities_ntp_itch_v1_05.combination_order_executed_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.side.size

  index = index + asx_securities_ntp_itch_v1_05.order_id.size

  index = index + asx_securities_ntp_itch_v1_05.quantity_remaining.size

  index = index + asx_securities_ntp_itch_v1_05.trade_type.size

  index = index + asx_securities_ntp_itch_v1_05.trade_id.size

  index = index + asx_securities_ntp_itch_v1_05.executed_quantity.size

  index = index + asx_securities_ntp_itch_v1_05.trade_price.size

  index = index + asx_securities_ntp_itch_v1_05.opposite_tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.opposite_side.size

  index = index + asx_securities_ntp_itch_v1_05.opposite_order_id.size

  index = index + asx_securities_ntp_itch_v1_05.combination_trade_id.size

  return index
end

-- Display: Combination Order Executed Message
asx_securities_ntp_itch_v1_05.combination_order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Order Executed Message
asx_securities_ntp_itch_v1_05.combination_order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_ntp_itch_v1_05.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 12 values
  index, trade_type = asx_securities_ntp_itch_v1_05.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = asx_securities_ntp_itch_v1_05.trade_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_ntp_itch_v1_05.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_ntp_itch_v1_05.trade_price.dissect(buffer, index, packet, parent)

  -- Opposite Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, opposite_tradeable_instrument_id = asx_securities_ntp_itch_v1_05.opposite_tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Opposite Side: 1 Byte Ascii String Enum with 2 values
  index, opposite_side = asx_securities_ntp_itch_v1_05.opposite_side.dissect(buffer, index, packet, parent)

  -- Opposite Order Id: 8 Byte Unsigned Fixed Width Integer
  index, opposite_order_id = asx_securities_ntp_itch_v1_05.opposite_order_id.dissect(buffer, index, packet, parent)

  -- Combination Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, combination_trade_id = asx_securities_ntp_itch_v1_05.combination_trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Executed Message
asx_securities_ntp_itch_v1_05.combination_order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.combination_order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.combination_order_executed_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.combination_order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.combination_order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.combination_order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Order Executed Message
asx_securities_ntp_itch_v1_05.auction_order_executed_message = {}

-- Calculate size of: Auction Order Executed Message
asx_securities_ntp_itch_v1_05.auction_order_executed_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.side.size

  index = index + asx_securities_ntp_itch_v1_05.order_id.size

  index = index + asx_securities_ntp_itch_v1_05.quantity_remaining.size

  index = index + asx_securities_ntp_itch_v1_05.trade_type.size

  index = index + asx_securities_ntp_itch_v1_05.trade_id.size

  index = index + asx_securities_ntp_itch_v1_05.executed_quantity.size

  index = index + asx_securities_ntp_itch_v1_05.trade_price.size

  index = index + asx_securities_ntp_itch_v1_05.opposite_order_id.size

  return index
end

-- Display: Auction Order Executed Message
asx_securities_ntp_itch_v1_05.auction_order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Order Executed Message
asx_securities_ntp_itch_v1_05.auction_order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_ntp_itch_v1_05.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 12 values
  index, trade_type = asx_securities_ntp_itch_v1_05.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = asx_securities_ntp_itch_v1_05.trade_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_ntp_itch_v1_05.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_ntp_itch_v1_05.trade_price.dissect(buffer, index, packet, parent)

  -- Opposite Order Id: 8 Byte Unsigned Fixed Width Integer
  index, opposite_order_id = asx_securities_ntp_itch_v1_05.opposite_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Order Executed Message
asx_securities_ntp_itch_v1_05.auction_order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.auction_order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.auction_order_executed_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.auction_order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.auction_order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.auction_order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Counter Party Id
asx_securities_ntp_itch_v1_05.counter_party_id = {}

-- Size: Counter Party Id
asx_securities_ntp_itch_v1_05.counter_party_id.size = 3

-- Display: Counter Party Id
asx_securities_ntp_itch_v1_05.counter_party_id.display = function(value)
  return "Counter Party Id: "..value
end

-- Dissect: Counter Party Id
asx_securities_ntp_itch_v1_05.counter_party_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.counter_party_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.counter_party_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.counter_party_id, range, value, display)

  return offset + length, value
end

-- Order Executed Message
asx_securities_ntp_itch_v1_05.order_executed_message = {}

-- Calculate size of: Order Executed Message
asx_securities_ntp_itch_v1_05.order_executed_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.side.size

  index = index + asx_securities_ntp_itch_v1_05.order_id.size

  index = index + asx_securities_ntp_itch_v1_05.quantity_remaining.size

  index = index + asx_securities_ntp_itch_v1_05.trade_type.size

  index = index + asx_securities_ntp_itch_v1_05.trade_id.size

  index = index + asx_securities_ntp_itch_v1_05.executed_quantity.size

  index = index + asx_securities_ntp_itch_v1_05.trade_price.size

  index = index + asx_securities_ntp_itch_v1_05.combination_trade_id.size

  index = index + asx_securities_ntp_itch_v1_05.counter_party_id.size

  return index
end

-- Display: Order Executed Message
asx_securities_ntp_itch_v1_05.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
asx_securities_ntp_itch_v1_05.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Quantity Remaining: 4 Byte Unsigned Fixed Width Integer
  index, quantity_remaining = asx_securities_ntp_itch_v1_05.quantity_remaining.dissect(buffer, index, packet, parent)

  -- Trade Type: 1 Byte Ascii String Enum with 12 values
  index, trade_type = asx_securities_ntp_itch_v1_05.trade_type.dissect(buffer, index, packet, parent)

  -- Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_id = asx_securities_ntp_itch_v1_05.trade_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_ntp_itch_v1_05.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_ntp_itch_v1_05.trade_price.dissect(buffer, index, packet, parent)

  -- Combination Trade Id: 8 Byte Unsigned Fixed Width Integer
  index, combination_trade_id = asx_securities_ntp_itch_v1_05.combination_trade_id.dissect(buffer, index, packet, parent)

  -- Counter Party Id: 3 Byte Ascii String
  index, counter_party_id = asx_securities_ntp_itch_v1_05.counter_party_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
asx_securities_ntp_itch_v1_05.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.order_executed_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Message
asx_securities_ntp_itch_v1_05.order_deleted_message = {}

-- Calculate size of: Order Deleted Message
asx_securities_ntp_itch_v1_05.order_deleted_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.side.size

  index = index + asx_securities_ntp_itch_v1_05.order_id.size

  return index
end

-- Display: Order Deleted Message
asx_securities_ntp_itch_v1_05.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
asx_securities_ntp_itch_v1_05.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
asx_securities_ntp_itch_v1_05.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.order_deleted_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.order_deleted_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Volume Cancelled Message
asx_securities_ntp_itch_v1_05.order_volume_cancelled_message = {}

-- Calculate size of: Order Volume Cancelled Message
asx_securities_ntp_itch_v1_05.order_volume_cancelled_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.side.size

  index = index + asx_securities_ntp_itch_v1_05.order_id.size

  index = index + asx_securities_ntp_itch_v1_05.quantity.size

  return index
end

-- Display: Order Volume Cancelled Message
asx_securities_ntp_itch_v1_05.order_volume_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Volume Cancelled Message
asx_securities_ntp_itch_v1_05.order_volume_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_ntp_itch_v1_05.quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Volume Cancelled Message
asx_securities_ntp_itch_v1_05.order_volume_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.order_volume_cancelled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.order_volume_cancelled_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.order_volume_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.order_volume_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.order_volume_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Message
asx_securities_ntp_itch_v1_05.add_order_message = {}

-- Calculate size of: Add Order Message
asx_securities_ntp_itch_v1_05.add_order_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.side.size

  index = index + asx_securities_ntp_itch_v1_05.order_id.size

  index = index + asx_securities_ntp_itch_v1_05.order_book_priority.size

  index = index + asx_securities_ntp_itch_v1_05.quantity.size

  index = index + asx_securities_ntp_itch_v1_05.price.size

  return index
end

-- Display: Add Order Message
asx_securities_ntp_itch_v1_05.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
asx_securities_ntp_itch_v1_05.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_ntp_itch_v1_05.side.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_ntp_itch_v1_05.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Priority: 8 Byte Unsigned Fixed Width Integer
  index, order_book_priority = asx_securities_ntp_itch_v1_05.order_book_priority.dissect(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_ntp_itch_v1_05.quantity.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = asx_securities_ntp_itch_v1_05.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
asx_securities_ntp_itch_v1_05.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.add_order_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Session State
asx_securities_ntp_itch_v1_05.session_state = {}

-- Size: Session State
asx_securities_ntp_itch_v1_05.session_state.size = 1

-- Display: Session State
asx_securities_ntp_itch_v1_05.session_state.display = function(value)
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
asx_securities_ntp_itch_v1_05.session_state.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.session_state, range, value, display)

  return offset + length, value
end

-- Order Book State Message
asx_securities_ntp_itch_v1_05.order_book_state_message = {}

-- Calculate size of: Order Book State Message
asx_securities_ntp_itch_v1_05.order_book_state_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.session_state.size

  return index
end

-- Display: Order Book State Message
asx_securities_ntp_itch_v1_05.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
asx_securities_ntp_itch_v1_05.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Session State: 1 Byte Ascii String Enum with 6 values
  index, session_state = asx_securities_ntp_itch_v1_05.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
asx_securities_ntp_itch_v1_05.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.order_book_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.order_book_state_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Leg
asx_securities_ntp_itch_v1_05.price_leg = {}

-- Size: Price Leg
asx_securities_ntp_itch_v1_05.price_leg.size = 8

-- Display: Price Leg
asx_securities_ntp_itch_v1_05.price_leg.display = function(value)
  return "Price Leg: "..value
end

-- Dissect: Price Leg
asx_securities_ntp_itch_v1_05.price_leg.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.price_leg.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.price_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.price_leg, range, value, display)

  return offset + length, value
end

-- Ratio Leg
asx_securities_ntp_itch_v1_05.ratio_leg = {}

-- Size: Ratio Leg
asx_securities_ntp_itch_v1_05.ratio_leg.size = 4

-- Display: Ratio Leg
asx_securities_ntp_itch_v1_05.ratio_leg.display = function(value)
  return "Ratio Leg: "..value
end

-- Dissect: Ratio Leg
asx_securities_ntp_itch_v1_05.ratio_leg.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.ratio_leg.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.ratio_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.ratio_leg, range, value, display)

  return offset + length, value
end

-- Side Leg
asx_securities_ntp_itch_v1_05.side_leg = {}

-- Size: Side Leg
asx_securities_ntp_itch_v1_05.side_leg.size = 1

-- Display: Side Leg
asx_securities_ntp_itch_v1_05.side_leg.display = function(value)
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
asx_securities_ntp_itch_v1_05.side_leg.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.side_leg.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05.side_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.side_leg, range, value, display)

  return offset + length, value
end

-- Tradeable Instrument Id Leg
asx_securities_ntp_itch_v1_05.tradeable_instrument_id_leg = {}

-- Size: Tradeable Instrument Id Leg
asx_securities_ntp_itch_v1_05.tradeable_instrument_id_leg.size = 4

-- Display: Tradeable Instrument Id Leg
asx_securities_ntp_itch_v1_05.tradeable_instrument_id_leg.display = function(value)
  return "Tradeable Instrument Id Leg: "..value
end

-- Dissect: Tradeable Instrument Id Leg
asx_securities_ntp_itch_v1_05.tradeable_instrument_id_leg.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.tradeable_instrument_id_leg.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.tradeable_instrument_id_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.tradeable_instrument_id_leg, range, value, display)

  return offset + length, value
end

-- Bundle Leg
asx_securities_ntp_itch_v1_05.bundle_leg = {}

-- Calculate size of: Bundle Leg
asx_securities_ntp_itch_v1_05.bundle_leg.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id_leg.size

  index = index + asx_securities_ntp_itch_v1_05.side_leg.size

  index = index + asx_securities_ntp_itch_v1_05.ratio_leg.size

  index = index + asx_securities_ntp_itch_v1_05.price_leg.size

  return index
end

-- Display: Bundle Leg
asx_securities_ntp_itch_v1_05.bundle_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bundle Leg
asx_securities_ntp_itch_v1_05.bundle_leg.fields = function(buffer, offset, packet, parent, bundle_leg_index)
  local index = offset

  -- Implicit Bundle Leg Index
  if bundle_leg_index ~= nil then
    local iteration = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.bundle_leg_index, bundle_leg_index)
    iteration:set_generated()
  end

  -- Tradeable Instrument Id Leg: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id_leg = asx_securities_ntp_itch_v1_05.tradeable_instrument_id_leg.dissect(buffer, index, packet, parent)

  -- Side Leg: 1 Byte Ascii String Enum with 3 values
  index, side_leg = asx_securities_ntp_itch_v1_05.side_leg.dissect(buffer, index, packet, parent)

  -- Ratio Leg: 4 Byte Unsigned Fixed Width Integer
  index, ratio_leg = asx_securities_ntp_itch_v1_05.ratio_leg.dissect(buffer, index, packet, parent)

  -- Price Leg: 8 Byte Signed Fixed Width Integer
  index, price_leg = asx_securities_ntp_itch_v1_05.price_leg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bundle Leg
asx_securities_ntp_itch_v1_05.bundle_leg.dissect = function(buffer, offset, packet, parent, bundle_leg_index)
  if show.bundle_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.bundle_leg, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.bundle_leg.fields(buffer, offset, packet, parent, bundle_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.bundle_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.bundle_leg.fields(buffer, offset, packet, parent, bundle_leg_index)
  end
end

-- Legs
asx_securities_ntp_itch_v1_05.legs = {}

-- Size: Legs
asx_securities_ntp_itch_v1_05.legs.size = 1

-- Display: Legs
asx_securities_ntp_itch_v1_05.legs.display = function(value)
  return "Legs: "..value
end

-- Dissect: Legs
asx_securities_ntp_itch_v1_05.legs.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.legs, range, value, display)

  return offset + length, value
end

-- Price Minimum Tick
asx_securities_ntp_itch_v1_05.price_minimum_tick = {}

-- Size: Price Minimum Tick
asx_securities_ntp_itch_v1_05.price_minimum_tick.size = 4

-- Display: Price Minimum Tick
asx_securities_ntp_itch_v1_05.price_minimum_tick.display = function(value)
  return "Price Minimum Tick: "..value
end

-- Dissect: Price Minimum Tick
asx_securities_ntp_itch_v1_05.price_minimum_tick.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.price_minimum_tick.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.price_minimum_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.price_minimum_tick, range, value, display)

  return offset + length, value
end

-- Price Fractional Denominator
asx_securities_ntp_itch_v1_05.price_fractional_denominator = {}

-- Size: Price Fractional Denominator
asx_securities_ntp_itch_v1_05.price_fractional_denominator.size = 4

-- Display: Price Fractional Denominator
asx_securities_ntp_itch_v1_05.price_fractional_denominator.display = function(value)
  return "Price Fractional Denominator: "..value
end

-- Dissect: Price Fractional Denominator
asx_securities_ntp_itch_v1_05.price_fractional_denominator.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.price_fractional_denominator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.price_fractional_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.price_fractional_denominator, range, value, display)

  return offset + length, value
end

-- Price Display Decimals
asx_securities_ntp_itch_v1_05.price_display_decimals = {}

-- Size: Price Display Decimals
asx_securities_ntp_itch_v1_05.price_display_decimals.size = 1

-- Display: Price Display Decimals
asx_securities_ntp_itch_v1_05.price_display_decimals.display = function(value)
  return "Price Display Decimals: "..value
end

-- Dissect: Price Display Decimals
asx_securities_ntp_itch_v1_05.price_display_decimals.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.price_display_decimals.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.price_display_decimals.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.price_display_decimals, range, value, display)

  return offset + length, value
end

-- Price Method
asx_securities_ntp_itch_v1_05.price_method = {}

-- Size: Price Method
asx_securities_ntp_itch_v1_05.price_method.size = 1

-- Display: Price Method
asx_securities_ntp_itch_v1_05.price_method.display = function(value)
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
asx_securities_ntp_itch_v1_05.price_method.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.price_method.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.price_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.price_method, range, value, display)

  return offset + length, value
end

-- Cfi Code
asx_securities_ntp_itch_v1_05.cfi_code = {}

-- Size: Cfi Code
asx_securities_ntp_itch_v1_05.cfi_code.size = 6

-- Display: Cfi Code
asx_securities_ntp_itch_v1_05.cfi_code.display = function(value)
  return "Cfi Code: "..value
end

-- Dissect: Cfi Code
asx_securities_ntp_itch_v1_05.cfi_code.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.cfi_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.cfi_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.cfi_code, range, value, display)

  return offset + length, value
end

-- Long Name
asx_securities_ntp_itch_v1_05.long_name = {}

-- Size: Long Name
asx_securities_ntp_itch_v1_05.long_name.size = 60

-- Display: Long Name
asx_securities_ntp_itch_v1_05.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
asx_securities_ntp_itch_v1_05.long_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.long_name, range, value, display)

  return offset + length, value
end

-- Symbol Name
asx_securities_ntp_itch_v1_05.symbol_name = {}

-- Size: Symbol Name
asx_securities_ntp_itch_v1_05.symbol_name.size = 32

-- Display: Symbol Name
asx_securities_ntp_itch_v1_05.symbol_name.display = function(value)
  return "Symbol Name: "..value
end

-- Dissect: Symbol Name
asx_securities_ntp_itch_v1_05.symbol_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.symbol_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.symbol_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.symbol_name, range, value, display)

  return offset + length, value
end

-- Bundles Symbol Directory
asx_securities_ntp_itch_v1_05.bundles_symbol_directory = {}

-- Calculate size of: Bundles Symbol Directory
asx_securities_ntp_itch_v1_05.bundles_symbol_directory.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.symbol_name.size

  index = index + asx_securities_ntp_itch_v1_05.long_name.size

  index = index + asx_securities_ntp_itch_v1_05.cfi_code.size

  index = index + asx_securities_ntp_itch_v1_05.price_method.size

  index = index + asx_securities_ntp_itch_v1_05.price_display_decimals.size

  index = index + asx_securities_ntp_itch_v1_05.price_fractional_denominator.size

  index = index + asx_securities_ntp_itch_v1_05.price_minimum_tick.size

  index = index + asx_securities_ntp_itch_v1_05.legs.size

  index = index + 20 * asx_securities_ntp_itch_v1_05.bundle_leg.size(buffer, offset + index)

  return index
end

-- Display: Bundles Symbol Directory
asx_securities_ntp_itch_v1_05.bundles_symbol_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bundles Symbol Directory
asx_securities_ntp_itch_v1_05.bundles_symbol_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Symbol Name: 32 Byte Ascii String
  index, symbol_name = asx_securities_ntp_itch_v1_05.symbol_name.dissect(buffer, index, packet, parent)

  -- Long Name: 60 Byte Ascii String
  index, long_name = asx_securities_ntp_itch_v1_05.long_name.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = asx_securities_ntp_itch_v1_05.cfi_code.dissect(buffer, index, packet, parent)

  -- Price Method: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_method = asx_securities_ntp_itch_v1_05.price_method.dissect(buffer, index, packet, parent)

  -- Price Display Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_display_decimals = asx_securities_ntp_itch_v1_05.price_display_decimals.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_ntp_itch_v1_05.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: 4 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_ntp_itch_v1_05.price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Legs: 1 Byte Unsigned Fixed Width Integer
  index, legs = asx_securities_ntp_itch_v1_05.legs.dissect(buffer, index, packet, parent)

  -- Array Of: Bundle Leg
  for bundle_leg_index = 1, 20 do
    index, bundle_leg = asx_securities_ntp_itch_v1_05.bundle_leg.dissect(buffer, index, packet, parent, bundle_leg_index)
  end

  return index
end

-- Dissect: Bundles Symbol Directory
asx_securities_ntp_itch_v1_05.bundles_symbol_directory.dissect = function(buffer, offset, packet, parent)
  if show.bundles_symbol_directory then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.bundles_symbol_directory, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.bundles_symbol_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.bundles_symbol_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.bundles_symbol_directory.fields(buffer, offset, packet, parent)
  end
end

-- Combination Leg
asx_securities_ntp_itch_v1_05.combination_leg = {}

-- Calculate size of: Combination Leg
asx_securities_ntp_itch_v1_05.combination_leg.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id_leg.size

  index = index + asx_securities_ntp_itch_v1_05.side_leg.size

  index = index + asx_securities_ntp_itch_v1_05.ratio_leg.size

  index = index + asx_securities_ntp_itch_v1_05.price_leg.size

  return index
end

-- Display: Combination Leg
asx_securities_ntp_itch_v1_05.combination_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Leg
asx_securities_ntp_itch_v1_05.combination_leg.fields = function(buffer, offset, packet, parent, combination_leg_index)
  local index = offset

  -- Implicit Combination Leg Index
  if combination_leg_index ~= nil then
    local iteration = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.combination_leg_index, combination_leg_index)
    iteration:set_generated()
  end

  -- Tradeable Instrument Id Leg: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id_leg = asx_securities_ntp_itch_v1_05.tradeable_instrument_id_leg.dissect(buffer, index, packet, parent)

  -- Side Leg: 1 Byte Ascii String Enum with 3 values
  index, side_leg = asx_securities_ntp_itch_v1_05.side_leg.dissect(buffer, index, packet, parent)

  -- Ratio Leg: 4 Byte Unsigned Fixed Width Integer
  index, ratio_leg = asx_securities_ntp_itch_v1_05.ratio_leg.dissect(buffer, index, packet, parent)

  -- Price Leg: 8 Byte Signed Fixed Width Integer
  index, price_leg = asx_securities_ntp_itch_v1_05.price_leg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Leg
asx_securities_ntp_itch_v1_05.combination_leg.dissect = function(buffer, offset, packet, parent, combination_leg_index)
  if show.combination_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.combination_leg, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.combination_leg.fields(buffer, offset, packet, parent, combination_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.combination_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.combination_leg.fields(buffer, offset, packet, parent, combination_leg_index)
  end
end

-- Combination Symbol Directory Message
asx_securities_ntp_itch_v1_05.combination_symbol_directory_message = {}

-- Calculate size of: Combination Symbol Directory Message
asx_securities_ntp_itch_v1_05.combination_symbol_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.symbol_name.size

  index = index + asx_securities_ntp_itch_v1_05.long_name.size

  index = index + asx_securities_ntp_itch_v1_05.cfi_code.size

  index = index + asx_securities_ntp_itch_v1_05.price_method.size

  index = index + asx_securities_ntp_itch_v1_05.price_display_decimals.size

  index = index + asx_securities_ntp_itch_v1_05.price_fractional_denominator.size

  index = index + asx_securities_ntp_itch_v1_05.price_minimum_tick.size

  index = index + asx_securities_ntp_itch_v1_05.legs.size

  index = index + 6 * asx_securities_ntp_itch_v1_05.combination_leg.size(buffer, offset + index)

  return index
end

-- Display: Combination Symbol Directory Message
asx_securities_ntp_itch_v1_05.combination_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Symbol Directory Message
asx_securities_ntp_itch_v1_05.combination_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Symbol Name: 32 Byte Ascii String
  index, symbol_name = asx_securities_ntp_itch_v1_05.symbol_name.dissect(buffer, index, packet, parent)

  -- Long Name: 60 Byte Ascii String
  index, long_name = asx_securities_ntp_itch_v1_05.long_name.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = asx_securities_ntp_itch_v1_05.cfi_code.dissect(buffer, index, packet, parent)

  -- Price Method: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, price_method = asx_securities_ntp_itch_v1_05.price_method.dissect(buffer, index, packet, parent)

  -- Price Display Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_display_decimals = asx_securities_ntp_itch_v1_05.price_display_decimals.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_ntp_itch_v1_05.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: 4 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_ntp_itch_v1_05.price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Legs: 1 Byte Unsigned Fixed Width Integer
  index, legs = asx_securities_ntp_itch_v1_05.legs.dissect(buffer, index, packet, parent)

  -- Array Of: Combination Leg
  for combination_leg_index = 1, 6 do
    index, combination_leg = asx_securities_ntp_itch_v1_05.combination_leg.dissect(buffer, index, packet, parent, combination_leg_index)
  end

  return index
end

-- Dissect: Combination Symbol Directory Message
asx_securities_ntp_itch_v1_05.combination_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.combination_symbol_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.combination_symbol_directory_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.combination_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.combination_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.combination_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Basis Of Quotation
asx_securities_ntp_itch_v1_05.basis_of_quotation = {}

-- Size: Basis Of Quotation
asx_securities_ntp_itch_v1_05.basis_of_quotation.size = 10

-- Display: Basis Of Quotation
asx_securities_ntp_itch_v1_05.basis_of_quotation.display = function(value)
  return "Basis Of Quotation: "..value
end

-- Dissect: Basis Of Quotation
asx_securities_ntp_itch_v1_05.basis_of_quotation.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.basis_of_quotation.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.basis_of_quotation.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.basis_of_quotation, range, value, display)

  return offset + length, value
end

-- Expiry Date
asx_securities_ntp_itch_v1_05.expiry_date = {}

-- Size: Expiry Date
asx_securities_ntp_itch_v1_05.expiry_date.size = 4

-- Display: Expiry Date
asx_securities_ntp_itch_v1_05.expiry_date.display = function(value)
  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
asx_securities_ntp_itch_v1_05.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.expiry_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Block Lot Size
asx_securities_ntp_itch_v1_05.block_lot_size = {}

-- Size: Block Lot Size
asx_securities_ntp_itch_v1_05.block_lot_size.size = 4

-- Display: Block Lot Size
asx_securities_ntp_itch_v1_05.block_lot_size.display = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
asx_securities_ntp_itch_v1_05.block_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.block_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.block_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Payments Per Year
asx_securities_ntp_itch_v1_05.payments_per_year = {}

-- Size: Payments Per Year
asx_securities_ntp_itch_v1_05.payments_per_year.size = 1

-- Display: Payments Per Year
asx_securities_ntp_itch_v1_05.payments_per_year.display = function(value)
  return "Payments Per Year: "..value
end

-- Dissect: Payments Per Year
asx_securities_ntp_itch_v1_05.payments_per_year.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.payments_per_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.payments_per_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.payments_per_year, range, value, display)

  return offset + length, value
end

-- Coupon Rate
asx_securities_ntp_itch_v1_05.coupon_rate = {}

-- Size: Coupon Rate
asx_securities_ntp_itch_v1_05.coupon_rate.size = 2

-- Display: Coupon Rate
asx_securities_ntp_itch_v1_05.coupon_rate.display = function(value)
  return "Coupon Rate: "..value
end

-- Dissect: Coupon Rate
asx_securities_ntp_itch_v1_05.coupon_rate.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.coupon_rate.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.coupon_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.coupon_rate, range, value, display)

  return offset + length, value
end

-- Maturity Value
asx_securities_ntp_itch_v1_05.maturity_value = {}

-- Size: Maturity Value
asx_securities_ntp_itch_v1_05.maturity_value.size = 1

-- Display: Maturity Value
asx_securities_ntp_itch_v1_05.maturity_value.display = function(value)
  return "Maturity Value: "..value
end

-- Dissect: Maturity Value
asx_securities_ntp_itch_v1_05.maturity_value.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.maturity_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.maturity_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.maturity_value, range, value, display)

  return offset + length, value
end

-- Lot Size Or Face Value
asx_securities_ntp_itch_v1_05.lot_size_or_face_value = {}

-- Size: Lot Size Or Face Value
asx_securities_ntp_itch_v1_05.lot_size_or_face_value.size = 8

-- Display: Lot Size Or Face Value
asx_securities_ntp_itch_v1_05.lot_size_or_face_value.display = function(value)
  return "Lot Size Or Face Value: "..value
end

-- Dissect: Lot Size Or Face Value
asx_securities_ntp_itch_v1_05.lot_size_or_face_value.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.lot_size_or_face_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.lot_size_or_face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.lot_size_or_face_value, range, value, display)

  return offset + length, value
end

-- Currency
asx_securities_ntp_itch_v1_05.currency = {}

-- Size: Currency
asx_securities_ntp_itch_v1_05.currency.size = 3

-- Display: Currency
asx_securities_ntp_itch_v1_05.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
asx_securities_ntp_itch_v1_05.currency.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.currency, range, value, display)

  return offset + length, value
end

-- Volatility
asx_securities_ntp_itch_v1_05.volatility = {}

-- Size: Volatility
asx_securities_ntp_itch_v1_05.volatility.size = 8

-- Display: Volatility
asx_securities_ntp_itch_v1_05.volatility.display = function(value)
  return "Volatility: "..value
end

-- Dissect: Volatility
asx_securities_ntp_itch_v1_05.volatility.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.volatility.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.volatility, range, value, display)

  return offset + length, value
end

-- Prior Day Settlement
asx_securities_ntp_itch_v1_05.prior_day_settlement = {}

-- Size: Prior Day Settlement
asx_securities_ntp_itch_v1_05.prior_day_settlement.size = 8

-- Display: Prior Day Settlement
asx_securities_ntp_itch_v1_05.prior_day_settlement.display = function(value)
  return "Prior Day Settlement: "..value
end

-- Dissect: Prior Day Settlement
asx_securities_ntp_itch_v1_05.prior_day_settlement.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.prior_day_settlement.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.prior_day_settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.prior_day_settlement, range, value, display)

  return offset + length, value
end

-- Last Trading Date
asx_securities_ntp_itch_v1_05.last_trading_date = {}

-- Size: Last Trading Date
asx_securities_ntp_itch_v1_05.last_trading_date.size = 4

-- Display: Last Trading Date
asx_securities_ntp_itch_v1_05.last_trading_date.display = function(value)
  return "Last Trading Date: "..value
end

-- Dissect: Last Trading Date
asx_securities_ntp_itch_v1_05.last_trading_date.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.last_trading_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.last_trading_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.last_trading_date, range, value, display)

  return offset + length, value
end

-- Strike Price Minimum Tick
asx_securities_ntp_itch_v1_05.strike_price_minimum_tick = {}

-- Size: Strike Price Minimum Tick
asx_securities_ntp_itch_v1_05.strike_price_minimum_tick.size = 4

-- Display: Strike Price Minimum Tick
asx_securities_ntp_itch_v1_05.strike_price_minimum_tick.display = function(value)
  return "Strike Price Minimum Tick: "..value
end

-- Dissect: Strike Price Minimum Tick
asx_securities_ntp_itch_v1_05.strike_price_minimum_tick.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.strike_price_minimum_tick.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.strike_price_minimum_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.strike_price_minimum_tick, range, value, display)

  return offset + length, value
end

-- Strike Price Fractional Denominator
asx_securities_ntp_itch_v1_05.strike_price_fractional_denominator = {}

-- Size: Strike Price Fractional Denominator
asx_securities_ntp_itch_v1_05.strike_price_fractional_denominator.size = 4

-- Display: Strike Price Fractional Denominator
asx_securities_ntp_itch_v1_05.strike_price_fractional_denominator.display = function(value)
  return "Strike Price Fractional Denominator: "..value
end

-- Dissect: Strike Price Fractional Denominator
asx_securities_ntp_itch_v1_05.strike_price_fractional_denominator.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.strike_price_fractional_denominator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.strike_price_fractional_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.strike_price_fractional_denominator, range, value, display)

  return offset + length, value
end

-- Strike Price Decimal Position
asx_securities_ntp_itch_v1_05.strike_price_decimal_position = {}

-- Size: Strike Price Decimal Position
asx_securities_ntp_itch_v1_05.strike_price_decimal_position.size = 1

-- Display: Strike Price Decimal Position
asx_securities_ntp_itch_v1_05.strike_price_decimal_position.display = function(value)
  return "Strike Price Decimal Position: "..value
end

-- Dissect: Strike Price Decimal Position
asx_securities_ntp_itch_v1_05.strike_price_decimal_position.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.strike_price_decimal_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.strike_price_decimal_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.strike_price_decimal_position, range, value, display)

  return offset + length, value
end

-- Underlying Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.underlying_tradeable_instrument_id = {}

-- Size: Underlying Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.underlying_tradeable_instrument_id.size = 4

-- Display: Underlying Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.underlying_tradeable_instrument_id.display = function(value)
  return "Underlying Tradeable Instrument Id: "..value
end

-- Dissect: Underlying Tradeable Instrument Id
asx_securities_ntp_itch_v1_05.underlying_tradeable_instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.underlying_tradeable_instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.underlying_tradeable_instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.underlying_tradeable_instrument_id, range, value, display)

  return offset + length, value
end

-- Strike
asx_securities_ntp_itch_v1_05.strike = {}

-- Size: Strike
asx_securities_ntp_itch_v1_05.strike.size = 8

-- Display: Strike
asx_securities_ntp_itch_v1_05.strike.display = function(value)
  return "Strike: "..value
end

-- Dissect: Strike
asx_securities_ntp_itch_v1_05.strike.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.strike.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = asx_securities_ntp_itch_v1_05.strike.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.strike, range, value, display)

  return offset + length, value
end

-- Option Type
asx_securities_ntp_itch_v1_05.option_type = {}

-- Size: Option Type
asx_securities_ntp_itch_v1_05.option_type.size = 1

-- Display: Option Type
asx_securities_ntp_itch_v1_05.option_type.display = function(value)
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == "C" then
    return "Option Type: Call (C)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
asx_securities_ntp_itch_v1_05.option_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.option_type, range, value, display)

  return offset + length, value
end

-- Expiry Month
asx_securities_ntp_itch_v1_05.expiry_month = {}

-- Size: Expiry Month
asx_securities_ntp_itch_v1_05.expiry_month.size = 1

-- Display: Expiry Month
asx_securities_ntp_itch_v1_05.expiry_month.display = function(value)
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
asx_securities_ntp_itch_v1_05.expiry_month.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.expiry_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.expiry_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.expiry_month, range, value, display)

  return offset + length, value
end

-- Expiry Year
asx_securities_ntp_itch_v1_05.expiry_year = {}

-- Size: Expiry Year
asx_securities_ntp_itch_v1_05.expiry_year.size = 2

-- Display: Expiry Year
asx_securities_ntp_itch_v1_05.expiry_year.display = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
asx_securities_ntp_itch_v1_05.expiry_year.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.expiry_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.expiry_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- Instrument
asx_securities_ntp_itch_v1_05.instrument = {}

-- Size: Instrument
asx_securities_ntp_itch_v1_05.instrument.size = 6

-- Display: Instrument
asx_securities_ntp_itch_v1_05.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
asx_securities_ntp_itch_v1_05.instrument.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.instrument.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.instrument, range, value, display)

  return offset + length, value
end

-- Exchange
asx_securities_ntp_itch_v1_05.exchange = {}

-- Size: Exchange
asx_securities_ntp_itch_v1_05.exchange.size = 6

-- Display: Exchange
asx_securities_ntp_itch_v1_05.exchange.display = function(value)
  return "Exchange: "..value
end

-- Dissect: Exchange
asx_securities_ntp_itch_v1_05.exchange.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.exchange.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.exchange.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.exchange, range, value, display)

  return offset + length, value
end

-- Isin
asx_securities_ntp_itch_v1_05.isin = {}

-- Size: Isin
asx_securities_ntp_itch_v1_05.isin.size = 12

-- Display: Isin
asx_securities_ntp_itch_v1_05.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
asx_securities_ntp_itch_v1_05.isin.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_ntp_itch_v1_05.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.isin, range, value, display)

  return offset + length, value
end

-- Options Symbol Directory Message
asx_securities_ntp_itch_v1_05.options_symbol_directory_message = {}

-- Calculate size of: Options Symbol Directory Message
asx_securities_ntp_itch_v1_05.options_symbol_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.symbol_name.size

  index = index + asx_securities_ntp_itch_v1_05.long_name.size

  index = index + asx_securities_ntp_itch_v1_05.isin.size

  index = index + asx_securities_ntp_itch_v1_05.exchange.size

  index = index + asx_securities_ntp_itch_v1_05.instrument.size

  index = index + asx_securities_ntp_itch_v1_05.cfi_code.size

  index = index + asx_securities_ntp_itch_v1_05.expiry_year.size

  index = index + asx_securities_ntp_itch_v1_05.expiry_month.size

  index = index + asx_securities_ntp_itch_v1_05.option_type.size

  index = index + asx_securities_ntp_itch_v1_05.strike.size

  index = index + asx_securities_ntp_itch_v1_05.underlying_tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.price_display_decimals.size

  index = index + asx_securities_ntp_itch_v1_05.price_fractional_denominator.size

  index = index + asx_securities_ntp_itch_v1_05.price_minimum_tick.size

  index = index + asx_securities_ntp_itch_v1_05.strike_price_decimal_position.size

  index = index + asx_securities_ntp_itch_v1_05.strike_price_fractional_denominator.size

  index = index + asx_securities_ntp_itch_v1_05.strike_price_minimum_tick.size

  index = index + asx_securities_ntp_itch_v1_05.last_trading_date.size

  index = index + asx_securities_ntp_itch_v1_05.prior_day_settlement.size

  index = index + asx_securities_ntp_itch_v1_05.volatility.size

  index = index + asx_securities_ntp_itch_v1_05.currency.size

  index = index + asx_securities_ntp_itch_v1_05.lot_size_or_face_value.size

  index = index + asx_securities_ntp_itch_v1_05.maturity_value.size

  index = index + asx_securities_ntp_itch_v1_05.coupon_rate.size

  index = index + asx_securities_ntp_itch_v1_05.payments_per_year.size

  index = index + asx_securities_ntp_itch_v1_05.block_lot_size.size

  index = index + asx_securities_ntp_itch_v1_05.expiry_date.size

  index = index + asx_securities_ntp_itch_v1_05.basis_of_quotation.size

  return index
end

-- Display: Options Symbol Directory Message
asx_securities_ntp_itch_v1_05.options_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Symbol Directory Message
asx_securities_ntp_itch_v1_05.options_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Symbol Name: 32 Byte Ascii String
  index, symbol_name = asx_securities_ntp_itch_v1_05.symbol_name.dissect(buffer, index, packet, parent)

  -- Long Name: 60 Byte Ascii String
  index, long_name = asx_securities_ntp_itch_v1_05.long_name.dissect(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = asx_securities_ntp_itch_v1_05.isin.dissect(buffer, index, packet, parent)

  -- Exchange: 6 Byte Ascii String
  index, exchange = asx_securities_ntp_itch_v1_05.exchange.dissect(buffer, index, packet, parent)

  -- Instrument: 6 Byte Ascii String
  index, instrument = asx_securities_ntp_itch_v1_05.instrument.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = asx_securities_ntp_itch_v1_05.cfi_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Unsigned Fixed Width Integer
  index, expiry_year = asx_securities_ntp_itch_v1_05.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, expiry_month = asx_securities_ntp_itch_v1_05.expiry_month.dissect(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = asx_securities_ntp_itch_v1_05.option_type.dissect(buffer, index, packet, parent)

  -- Strike: 8 Byte Signed Fixed Width Integer
  index, strike = asx_securities_ntp_itch_v1_05.strike.dissect(buffer, index, packet, parent)

  -- Underlying Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, underlying_tradeable_instrument_id = asx_securities_ntp_itch_v1_05.underlying_tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Price Display Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_display_decimals = asx_securities_ntp_itch_v1_05.price_display_decimals.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_ntp_itch_v1_05.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: 4 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_ntp_itch_v1_05.price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Strike Price Decimal Position: 1 Byte Unsigned Fixed Width Integer
  index, strike_price_decimal_position = asx_securities_ntp_itch_v1_05.strike_price_decimal_position.dissect(buffer, index, packet, parent)

  -- Strike Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, strike_price_fractional_denominator = asx_securities_ntp_itch_v1_05.strike_price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Strike Price Minimum Tick: 4 Byte Unsigned Fixed Width Integer
  index, strike_price_minimum_tick = asx_securities_ntp_itch_v1_05.strike_price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Last Trading Date: 4 Byte Unsigned Fixed Width Integer
  index, last_trading_date = asx_securities_ntp_itch_v1_05.last_trading_date.dissect(buffer, index, packet, parent)

  -- Prior Day Settlement: 8 Byte Signed Fixed Width Integer
  index, prior_day_settlement = asx_securities_ntp_itch_v1_05.prior_day_settlement.dissect(buffer, index, packet, parent)

  -- Volatility: 8 Byte Unsigned Fixed Width Integer
  index, volatility = asx_securities_ntp_itch_v1_05.volatility.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = asx_securities_ntp_itch_v1_05.currency.dissect(buffer, index, packet, parent)

  -- Lot Size Or Face Value: 8 Byte Unsigned Fixed Width Integer
  index, lot_size_or_face_value = asx_securities_ntp_itch_v1_05.lot_size_or_face_value.dissect(buffer, index, packet, parent)

  -- Maturity Value: 1 Byte Unsigned Fixed Width Integer
  index, maturity_value = asx_securities_ntp_itch_v1_05.maturity_value.dissect(buffer, index, packet, parent)

  -- Coupon Rate: 2 Byte Unsigned Fixed Width Integer
  index, coupon_rate = asx_securities_ntp_itch_v1_05.coupon_rate.dissect(buffer, index, packet, parent)

  -- Payments Per Year: 1 Byte Unsigned Fixed Width Integer
  index, payments_per_year = asx_securities_ntp_itch_v1_05.payments_per_year.dissect(buffer, index, packet, parent)

  -- Block Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, block_lot_size = asx_securities_ntp_itch_v1_05.block_lot_size.dissect(buffer, index, packet, parent)

  -- Expiry Date: 4 Byte Unsigned Fixed Width Integer
  index, expiry_date = asx_securities_ntp_itch_v1_05.expiry_date.dissect(buffer, index, packet, parent)

  -- Basis Of Quotation: 10 Byte Ascii String
  index, basis_of_quotation = asx_securities_ntp_itch_v1_05.basis_of_quotation.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Symbol Directory Message
asx_securities_ntp_itch_v1_05.options_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.options_symbol_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.options_symbol_directory_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.options_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.options_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.options_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Symbol Directory Message
asx_securities_ntp_itch_v1_05.future_symbol_directory_message = {}

-- Calculate size of: Future Symbol Directory Message
asx_securities_ntp_itch_v1_05.future_symbol_directory_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.tradeable_instrument_id.size

  index = index + asx_securities_ntp_itch_v1_05.symbol_name.size

  index = index + asx_securities_ntp_itch_v1_05.long_name.size

  index = index + asx_securities_ntp_itch_v1_05.isin.size

  index = index + asx_securities_ntp_itch_v1_05.exchange.size

  index = index + asx_securities_ntp_itch_v1_05.instrument.size

  index = index + asx_securities_ntp_itch_v1_05.cfi_code.size

  index = index + asx_securities_ntp_itch_v1_05.expiry_year.size

  index = index + asx_securities_ntp_itch_v1_05.expiry_month.size

  index = index + asx_securities_ntp_itch_v1_05.price_display_decimals.size

  index = index + asx_securities_ntp_itch_v1_05.price_fractional_denominator.size

  index = index + asx_securities_ntp_itch_v1_05.price_minimum_tick.size

  index = index + asx_securities_ntp_itch_v1_05.last_trading_date.size

  index = index + asx_securities_ntp_itch_v1_05.prior_day_settlement.size

  index = index + asx_securities_ntp_itch_v1_05.currency.size

  index = index + asx_securities_ntp_itch_v1_05.lot_size_or_face_value.size

  index = index + asx_securities_ntp_itch_v1_05.maturity_value.size

  index = index + asx_securities_ntp_itch_v1_05.coupon_rate.size

  index = index + asx_securities_ntp_itch_v1_05.payments_per_year.size

  index = index + asx_securities_ntp_itch_v1_05.block_lot_size.size

  index = index + asx_securities_ntp_itch_v1_05.expiry_date.size

  return index
end

-- Display: Future Symbol Directory Message
asx_securities_ntp_itch_v1_05.future_symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Symbol Directory Message
asx_securities_ntp_itch_v1_05.future_symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Tradeable Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, tradeable_instrument_id = asx_securities_ntp_itch_v1_05.tradeable_instrument_id.dissect(buffer, index, packet, parent)

  -- Symbol Name: 32 Byte Ascii String
  index, symbol_name = asx_securities_ntp_itch_v1_05.symbol_name.dissect(buffer, index, packet, parent)

  -- Long Name: 60 Byte Ascii String
  index, long_name = asx_securities_ntp_itch_v1_05.long_name.dissect(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = asx_securities_ntp_itch_v1_05.isin.dissect(buffer, index, packet, parent)

  -- Exchange: 6 Byte Ascii String
  index, exchange = asx_securities_ntp_itch_v1_05.exchange.dissect(buffer, index, packet, parent)

  -- Instrument: 6 Byte Ascii String
  index, instrument = asx_securities_ntp_itch_v1_05.instrument.dissect(buffer, index, packet, parent)

  -- Cfi Code: 6 Byte Ascii String
  index, cfi_code = asx_securities_ntp_itch_v1_05.cfi_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Unsigned Fixed Width Integer
  index, expiry_year = asx_securities_ntp_itch_v1_05.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Unsigned Fixed Width Integer Enum with 12 values
  index, expiry_month = asx_securities_ntp_itch_v1_05.expiry_month.dissect(buffer, index, packet, parent)

  -- Price Display Decimals: 1 Byte Unsigned Fixed Width Integer
  index, price_display_decimals = asx_securities_ntp_itch_v1_05.price_display_decimals.dissect(buffer, index, packet, parent)

  -- Price Fractional Denominator: 4 Byte Unsigned Fixed Width Integer
  index, price_fractional_denominator = asx_securities_ntp_itch_v1_05.price_fractional_denominator.dissect(buffer, index, packet, parent)

  -- Price Minimum Tick: 4 Byte Unsigned Fixed Width Integer
  index, price_minimum_tick = asx_securities_ntp_itch_v1_05.price_minimum_tick.dissect(buffer, index, packet, parent)

  -- Last Trading Date: 4 Byte Unsigned Fixed Width Integer
  index, last_trading_date = asx_securities_ntp_itch_v1_05.last_trading_date.dissect(buffer, index, packet, parent)

  -- Prior Day Settlement: 8 Byte Signed Fixed Width Integer
  index, prior_day_settlement = asx_securities_ntp_itch_v1_05.prior_day_settlement.dissect(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = asx_securities_ntp_itch_v1_05.currency.dissect(buffer, index, packet, parent)

  -- Lot Size Or Face Value: 8 Byte Unsigned Fixed Width Integer
  index, lot_size_or_face_value = asx_securities_ntp_itch_v1_05.lot_size_or_face_value.dissect(buffer, index, packet, parent)

  -- Maturity Value: 1 Byte Unsigned Fixed Width Integer
  index, maturity_value = asx_securities_ntp_itch_v1_05.maturity_value.dissect(buffer, index, packet, parent)

  -- Coupon Rate: 2 Byte Unsigned Fixed Width Integer
  index, coupon_rate = asx_securities_ntp_itch_v1_05.coupon_rate.dissect(buffer, index, packet, parent)

  -- Payments Per Year: 1 Byte Unsigned Fixed Width Integer
  index, payments_per_year = asx_securities_ntp_itch_v1_05.payments_per_year.dissect(buffer, index, packet, parent)

  -- Block Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, block_lot_size = asx_securities_ntp_itch_v1_05.block_lot_size.dissect(buffer, index, packet, parent)

  -- Expiry Date: 4 Byte Unsigned Fixed Width Integer
  index, expiry_date = asx_securities_ntp_itch_v1_05.expiry_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Symbol Directory Message
asx_securities_ntp_itch_v1_05.future_symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.future_symbol_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.future_symbol_directory_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.future_symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.future_symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.future_symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
asx_securities_ntp_itch_v1_05.event_code = {}

-- Size: Event Code
asx_securities_ntp_itch_v1_05.event_code.size = 1

-- Display: Event Code
asx_securities_ntp_itch_v1_05.event_code.display = function(value)
  if value == "C" then
    return "Event Code: Business Trade Date Has Ended (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
asx_securities_ntp_itch_v1_05.event_code.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.event_code, range, value, display)

  return offset + length, value
end

-- End Of Business Trade Date Message
asx_securities_ntp_itch_v1_05.end_of_business_trade_date_message = {}

-- Calculate size of: End Of Business Trade Date Message
asx_securities_ntp_itch_v1_05.end_of_business_trade_date_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.timestamp.size

  index = index + asx_securities_ntp_itch_v1_05.trade_date.size

  index = index + asx_securities_ntp_itch_v1_05.event_code.size

  return index
end

-- Display: End Of Business Trade Date Message
asx_securities_ntp_itch_v1_05.end_of_business_trade_date_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Business Trade Date Message
asx_securities_ntp_itch_v1_05.end_of_business_trade_date_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = asx_securities_ntp_itch_v1_05.timestamp.dissect(buffer, index, packet, parent)

  -- Trade Date: 2 Byte Unsigned Fixed Width Integer
  index, trade_date = asx_securities_ntp_itch_v1_05.trade_date.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 1 values
  index, event_code = asx_securities_ntp_itch_v1_05.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Business Trade Date Message
asx_securities_ntp_itch_v1_05.end_of_business_trade_date_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_business_trade_date_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.end_of_business_trade_date_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.end_of_business_trade_date_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.end_of_business_trade_date_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.end_of_business_trade_date_message.fields(buffer, offset, packet, parent)
  end
end

-- Seconds
asx_securities_ntp_itch_v1_05.seconds = {}

-- Size: Seconds
asx_securities_ntp_itch_v1_05.seconds.size = 4

-- Display: Seconds
asx_securities_ntp_itch_v1_05.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
asx_securities_ntp_itch_v1_05.seconds.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.seconds, range, value, display)

  return offset + length, value
end

-- Seconds Message
asx_securities_ntp_itch_v1_05.seconds_message = {}

-- Calculate size of: Seconds Message
asx_securities_ntp_itch_v1_05.seconds_message.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.seconds.size

  return index
end

-- Display: Seconds Message
asx_securities_ntp_itch_v1_05.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
asx_securities_ntp_itch_v1_05.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = asx_securities_ntp_itch_v1_05.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  asx_securities_ntp_itch_v1_05_store.seconds = seconds

  return index
end

-- Dissect: Seconds Message
asx_securities_ntp_itch_v1_05.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.seconds_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.seconds_message, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
asx_securities_ntp_itch_v1_05.payload = {}

-- Calculate runtime size of: Payload
asx_securities_ntp_itch_v1_05.payload.size = function(buffer, offset, message_type)
  -- Size of Seconds Message
  if message_type == "T" then
    return asx_securities_ntp_itch_v1_05.seconds_message.size(buffer, offset)
  end
  -- Size of End Of Business Trade Date Message
  if message_type == "S" then
    return asx_securities_ntp_itch_v1_05.end_of_business_trade_date_message.size(buffer, offset)
  end
  -- Size of Future Symbol Directory Message
  if message_type == "f" then
    return asx_securities_ntp_itch_v1_05.future_symbol_directory_message.size(buffer, offset)
  end
  -- Size of Options Symbol Directory Message
  if message_type == "h" then
    return asx_securities_ntp_itch_v1_05.options_symbol_directory_message.size(buffer, offset)
  end
  -- Size of Combination Symbol Directory Message
  if message_type == "M" then
    return asx_securities_ntp_itch_v1_05.combination_symbol_directory_message.size(buffer, offset)
  end
  -- Size of Bundles Symbol Directory
  if message_type == "m" then
    return asx_securities_ntp_itch_v1_05.bundles_symbol_directory.size(buffer, offset)
  end
  -- Size of Order Book State Message
  if message_type == "O" then
    return asx_securities_ntp_itch_v1_05.order_book_state_message.size(buffer, offset)
  end
  -- Size of Add Order Message
  if message_type == "A" then
    return asx_securities_ntp_itch_v1_05.add_order_message.size(buffer, offset)
  end
  -- Size of Order Volume Cancelled Message
  if message_type == "X" then
    return asx_securities_ntp_itch_v1_05.order_volume_cancelled_message.size(buffer, offset)
  end
  -- Size of Order Deleted Message
  if message_type == "D" then
    return asx_securities_ntp_itch_v1_05.order_deleted_message.size(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return asx_securities_ntp_itch_v1_05.order_executed_message.size(buffer, offset)
  end
  -- Size of Auction Order Executed Message
  if message_type == "C" then
    return asx_securities_ntp_itch_v1_05.auction_order_executed_message.size(buffer, offset)
  end
  -- Size of Combination Order Executed Message
  if message_type == "e" then
    return asx_securities_ntp_itch_v1_05.combination_order_executed_message.size(buffer, offset)
  end
  -- Size of Implied Order Added Message
  if message_type == "j" then
    return asx_securities_ntp_itch_v1_05.implied_order_added_message.size(buffer, offset)
  end
  -- Size of Implied Order Replaced Message
  if message_type == "l" then
    return asx_securities_ntp_itch_v1_05.implied_order_replaced_message.size(buffer, offset)
  end
  -- Size of Implied Order Deleted Message
  if message_type == "k" then
    return asx_securities_ntp_itch_v1_05.implied_order_deleted_message.size(buffer, offset)
  end
  -- Size of Trade Executed Message
  if message_type == "P" then
    return asx_securities_ntp_itch_v1_05.trade_executed_message.size(buffer, offset)
  end
  -- Size of Combination Trade Executed Message
  if message_type == "p" then
    return asx_securities_ntp_itch_v1_05.combination_trade_executed_message.size(buffer, offset)
  end
  -- Size of Trade Cancellation Message
  if message_type == "B" then
    return asx_securities_ntp_itch_v1_05.trade_cancellation_message.size(buffer, offset)
  end
  -- Size of Equilibrium Price Message
  if message_type == "Z" then
    return asx_securities_ntp_itch_v1_05.equilibrium_price_message.size(buffer, offset)
  end
  -- Size of Open High Low Last Trade Adjustment Message
  if message_type == "t" then
    return asx_securities_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.size(buffer, offset)
  end
  -- Size of Market Settlement Message
  if message_type == "Y" then
    return asx_securities_ntp_itch_v1_05.market_settlement_message.size(buffer, offset)
  end
  -- Size of Text Message
  if message_type == "x" then
    return asx_securities_ntp_itch_v1_05.text_message.size(buffer, offset)
  end
  -- Size of Request For Quote Message
  if message_type == "q" then
    return asx_securities_ntp_itch_v1_05.request_for_quote_message.size(buffer, offset)
  end
  -- Size of Anomalous Order Threshold Publish Message
  if message_type == "W" then
    return asx_securities_ntp_itch_v1_05.anomalous_order_threshold_publish_message.size(buffer, offset)
  end
  -- Size of Volume And Open Interest Message
  if message_type == "V" then
    return asx_securities_ntp_itch_v1_05.volume_and_open_interest_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
asx_securities_ntp_itch_v1_05.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
asx_securities_ntp_itch_v1_05.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return asx_securities_ntp_itch_v1_05.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Business Trade Date Message
  if message_type == "S" then
    return asx_securities_ntp_itch_v1_05.end_of_business_trade_date_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Symbol Directory Message
  if message_type == "f" then
    return asx_securities_ntp_itch_v1_05.future_symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Symbol Directory Message
  if message_type == "h" then
    return asx_securities_ntp_itch_v1_05.options_symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Symbol Directory Message
  if message_type == "M" then
    return asx_securities_ntp_itch_v1_05.combination_symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bundles Symbol Directory
  if message_type == "m" then
    return asx_securities_ntp_itch_v1_05.bundles_symbol_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if message_type == "O" then
    return asx_securities_ntp_itch_v1_05.order_book_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == "A" then
    return asx_securities_ntp_itch_v1_05.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Volume Cancelled Message
  if message_type == "X" then
    return asx_securities_ntp_itch_v1_05.order_volume_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if message_type == "D" then
    return asx_securities_ntp_itch_v1_05.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return asx_securities_ntp_itch_v1_05.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Order Executed Message
  if message_type == "C" then
    return asx_securities_ntp_itch_v1_05.auction_order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Order Executed Message
  if message_type == "e" then
    return asx_securities_ntp_itch_v1_05.combination_order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Added Message
  if message_type == "j" then
    return asx_securities_ntp_itch_v1_05.implied_order_added_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Replaced Message
  if message_type == "l" then
    return asx_securities_ntp_itch_v1_05.implied_order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Implied Order Deleted Message
  if message_type == "k" then
    return asx_securities_ntp_itch_v1_05.implied_order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Executed Message
  if message_type == "P" then
    return asx_securities_ntp_itch_v1_05.trade_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Trade Executed Message
  if message_type == "p" then
    return asx_securities_ntp_itch_v1_05.combination_trade_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancellation Message
  if message_type == "B" then
    return asx_securities_ntp_itch_v1_05.trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Message
  if message_type == "Z" then
    return asx_securities_ntp_itch_v1_05.equilibrium_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open High Low Last Trade Adjustment Message
  if message_type == "t" then
    return asx_securities_ntp_itch_v1_05.open_high_low_last_trade_adjustment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Settlement Message
  if message_type == "Y" then
    return asx_securities_ntp_itch_v1_05.market_settlement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Text Message
  if message_type == "x" then
    return asx_securities_ntp_itch_v1_05.text_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request For Quote Message
  if message_type == "q" then
    return asx_securities_ntp_itch_v1_05.request_for_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Anomalous Order Threshold Publish Message
  if message_type == "W" then
    return asx_securities_ntp_itch_v1_05.anomalous_order_threshold_publish_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Volume And Open Interest Message
  if message_type == "V" then
    return asx_securities_ntp_itch_v1_05.volume_and_open_interest_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
asx_securities_ntp_itch_v1_05.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return asx_securities_ntp_itch_v1_05.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = asx_securities_ntp_itch_v1_05.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = asx_securities_ntp_itch_v1_05.payload.display(buffer, packet, parent)
  local element = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.payload, range, display)

  return asx_securities_ntp_itch_v1_05.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
asx_securities_ntp_itch_v1_05.message_type = {}

-- Size: Message Type
asx_securities_ntp_itch_v1_05.message_type.size = 1

-- Display: Message Type
asx_securities_ntp_itch_v1_05.message_type.display = function(value)
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
asx_securities_ntp_itch_v1_05.message_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_ntp_itch_v1_05.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
asx_securities_ntp_itch_v1_05.message_length = {}

-- Size: Message Length
asx_securities_ntp_itch_v1_05.message_length.size = 2

-- Display: Message Length
asx_securities_ntp_itch_v1_05.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
asx_securities_ntp_itch_v1_05.message_length.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
asx_securities_ntp_itch_v1_05.message_header = {}

-- Calculate size of: Message Header
asx_securities_ntp_itch_v1_05.message_header.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.message_length.size

  index = index + asx_securities_ntp_itch_v1_05.message_type.size

  return index
end

-- Display: Message Header
asx_securities_ntp_itch_v1_05.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
asx_securities_ntp_itch_v1_05.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = asx_securities_ntp_itch_v1_05.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 26 values
  index, message_type = asx_securities_ntp_itch_v1_05.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
asx_securities_ntp_itch_v1_05.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.message_header, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
asx_securities_ntp_itch_v1_05.message = {}

-- Display: Message
asx_securities_ntp_itch_v1_05.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
asx_securities_ntp_itch_v1_05.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = asx_securities_ntp_itch_v1_05.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 26 branches
  index = asx_securities_ntp_itch_v1_05.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
asx_securities_ntp_itch_v1_05.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.message, buffer(offset, 0))
    local current = asx_securities_ntp_itch_v1_05.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = asx_securities_ntp_itch_v1_05.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    asx_securities_ntp_itch_v1_05.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
asx_securities_ntp_itch_v1_05.message_count = {}

-- Size: Message Count
asx_securities_ntp_itch_v1_05.message_count.size = 2

-- Display: Message Count
asx_securities_ntp_itch_v1_05.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
asx_securities_ntp_itch_v1_05.message_count.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_ntp_itch_v1_05.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
asx_securities_ntp_itch_v1_05.sequence_number = {}

-- Size: Sequence Number
asx_securities_ntp_itch_v1_05.sequence_number.size = 8

-- Display: Sequence Number
asx_securities_ntp_itch_v1_05.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
asx_securities_ntp_itch_v1_05.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_ntp_itch_v1_05.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
asx_securities_ntp_itch_v1_05.session = {}

-- Size: Session
asx_securities_ntp_itch_v1_05.session.size = 10

-- Display: Session
asx_securities_ntp_itch_v1_05.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
asx_securities_ntp_itch_v1_05.session.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_ntp_itch_v1_05.session.size
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

  local display = asx_securities_ntp_itch_v1_05.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_ntp_itch_v1_05.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
asx_securities_ntp_itch_v1_05.packet_header = {}

-- Calculate size of: Packet Header
asx_securities_ntp_itch_v1_05.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + asx_securities_ntp_itch_v1_05.session.size

  index = index + asx_securities_ntp_itch_v1_05.sequence_number.size

  index = index + asx_securities_ntp_itch_v1_05.message_count.size

  return index
end

-- Display: Packet Header
asx_securities_ntp_itch_v1_05.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
asx_securities_ntp_itch_v1_05.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = asx_securities_ntp_itch_v1_05.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = asx_securities_ntp_itch_v1_05.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = asx_securities_ntp_itch_v1_05.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
asx_securities_ntp_itch_v1_05.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_ntp_itch_v1_05.fields.packet_header, buffer(offset, 0))
    local index = asx_securities_ntp_itch_v1_05.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_ntp_itch_v1_05.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_ntp_itch_v1_05.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
asx_securities_ntp_itch_v1_05.packet = {}

-- Dissect Packet
asx_securities_ntp_itch_v1_05.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = asx_securities_ntp_itch_v1_05.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = asx_securities_ntp_itch_v1_05.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_asx_securities_ntp_itch_v1_05.init()
end

-- Dissector for Asx Securities Ntp Itch 1.05
function omi_asx_securities_ntp_itch_v1_05.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_asx_securities_ntp_itch_v1_05.name

  -- Dissect protocol
  local protocol = parent:add(omi_asx_securities_ntp_itch_v1_05, buffer(), omi_asx_securities_ntp_itch_v1_05.description, "("..buffer:len().." Bytes)")
  return asx_securities_ntp_itch_v1_05.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_asx_securities_ntp_itch_v1_05)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_asx_securities_ntp_itch_v1_05_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Asx Securities Ntp Itch 1.05
local function omi_asx_securities_ntp_itch_v1_05_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_asx_securities_ntp_itch_v1_05_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_asx_securities_ntp_itch_v1_05
  omi_asx_securities_ntp_itch_v1_05.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Asx Securities Ntp Itch 1.05
omi_asx_securities_ntp_itch_v1_05:register_heuristic("udp", omi_asx_securities_ntp_itch_v1_05_heuristic)

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
