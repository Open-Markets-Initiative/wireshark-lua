-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx Mx Sola Multicast Hsvf 1.14 Protocol
local tmx_mx_sola_multicast_hsvf_v1_14 = Proto("Tmx.Mx.Sola.Multicast.Hsvf.v1.14.Lua", "Tmx Mx Sola Multicast Hsvf 1.14")

-- Component Tables
local show = {}
local format = {}
local tmx_mx_sola_multicast_hsvf_v1_14_display = {}
local tmx_mx_sola_multicast_hsvf_v1_14_dissect = {}
local tmx_mx_sola_multicast_hsvf_v1_14_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx Mx Sola Multicast Hsvf 1.14 Fields
tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_price = ProtoField.new("Ask Price", "tmx.mx.sola.multicast.hsvf.v1.14.askprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_price_fraction_indicator = ProtoField.new("Ask Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.askpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_price_sign = ProtoField.new("Ask Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.askpricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_size = ProtoField.new("Ask Size", "tmx.mx.sola.multicast.hsvf.v1.14.asksize", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.associated_product = ProtoField.new("Associated Product", "tmx.mx.sola.multicast.hsvf.v1.14.associatedproduct", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.auction_duration = ProtoField.new("Auction Duration", "tmx.mx.sola.multicast.hsvf.v1.14.auctionduration", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.auction_expiry_timestamp = ProtoField.new("Auction Expiry Timestamp", "tmx.mx.sola.multicast.hsvf.v1.14.auctionexpirytimestamp", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.auction_id = ProtoField.new("Auction Id", "tmx.mx.sola.multicast.hsvf.v1.14.auctionid", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_future_options_summary_message = ProtoField.new("Beginning Of Future Options Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.beginningoffutureoptionssummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_futures_summary_message = ProtoField.new("Beginning Of Futures Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.beginningoffuturessummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_options_summary_message = ProtoField.new("Beginning Of Options Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.beginningofoptionssummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_strategy_summary_message = ProtoField.new("Beginning Of Strategy Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.beginningofstrategysummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_price = ProtoField.new("Bid Price", "tmx.mx.sola.multicast.hsvf.v1.14.bidprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_price_fraction_indicator = ProtoField.new("Bid Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.bidpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_price_sign = ProtoField.new("Bid Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.bidpricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_size = ProtoField.new("Bid Size", "tmx.mx.sola.multicast.hsvf.v1.14.bidsize", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.bond_definition = ProtoField.new("Bond Definition", "tmx.mx.sola.multicast.hsvf.v1.14.bonddefinition", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletin = ProtoField.new("Bulletin", "tmx.mx.sola.multicast.hsvf.v1.14.bulletin", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletin_contents_x_49 = ProtoField.new("Bulletin Contents X 49", "tmx.mx.sola.multicast.hsvf.v1.14.bulletincontentsx49", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletin_type = ProtoField.new("Bulletin Type", "tmx.mx.sola.multicast.hsvf.v1.14.bulletintype", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletins_message = ProtoField.new("Bulletins Message", "tmx.mx.sola.multicast.hsvf.v1.14.bulletinsmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.business_date = ProtoField.new("Business Date", "tmx.mx.sola.multicast.hsvf.v1.14.businessdate", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.call_put_code = ProtoField.new("Call Put Code", "tmx.mx.sola.multicast.hsvf.v1.14.callputcode", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.circuit_assurance_message = ProtoField.new("Circuit Assurance Message", "tmx.mx.sola.multicast.hsvf.v1.14.circuitassurancemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.closing_price = ProtoField.new("Closing Price", "tmx.mx.sola.multicast.hsvf.v1.14.closingprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.closing_price_fraction_indicator = ProtoField.new("Closing Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.closingpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.continue_marker = ProtoField.new("Continue Marker", "tmx.mx.sola.multicast.hsvf.v1.14.continuemarker", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.contract_size = ProtoField.new("Contract Size", "tmx.mx.sola.multicast.hsvf.v1.14.contractsize", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.conversion_factor = ProtoField.new("Conversion Factor", "tmx.mx.sola.multicast.hsvf.v1.14.conversionfactor", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.conversion_factor_fraction_indicator = ProtoField.new("Conversion Factor Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.conversionfactorfractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.coupon = ProtoField.new("Coupon", "tmx.mx.sola.multicast.hsvf.v1.14.coupon", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.coupon_fraction_indicator = ProtoField.new("Coupon Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.couponfractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.currency = ProtoField.new("Currency", "tmx.mx.sola.multicast.hsvf.v1.14.currency", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.delivery_type = ProtoField.new("Delivery Type", "tmx.mx.sola.multicast.hsvf.v1.14.deliverytype", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.end_of_sales_message = ProtoField.new("End Of Sales Message", "tmx.mx.sola.multicast.hsvf.v1.14.endofsalesmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.end_of_transmission_message = ProtoField.new("End Of Transmission Message", "tmx.mx.sola.multicast.hsvf.v1.14.endoftransmissionmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.exchange_id = ProtoField.new("Exchange Id", "tmx.mx.sola.multicast.hsvf.v1.14.exchangeid", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_date = ProtoField.new("Expiry Date", "tmx.mx.sola.multicast.hsvf.v1.14.expirydate", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_day = ProtoField.new("Expiry Day", "tmx.mx.sola.multicast.hsvf.v1.14.expiryday", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_month = ProtoField.new("Expiry Month", "tmx.mx.sola.multicast.hsvf.v1.14.expirymonth", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_year = ProtoField.new("Expiry Year", "tmx.mx.sola.multicast.hsvf.v1.14.expiryyear", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.external_price_at_source = ProtoField.new("External Price At Source", "tmx.mx.sola.multicast.hsvf.v1.14.externalpriceatsource", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.external_price_fraction_indicator = ProtoField.new("External Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.externalpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.future_deliverables_message = ProtoField.new("Future Deliverables Message", "tmx.mx.sola.multicast.hsvf.v1.14.futuredeliverablesmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.future_option_symbol = ProtoField.new("Future Option Symbol", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionsymbol", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_instrument_keys_message = ProtoField.new("Future Options Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionsinstrumentkeysmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_market_depth_message = ProtoField.new("Future Options Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionsmarketdepthmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_quote_message = ProtoField.new("Future Options Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionsquotemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_request_for_quote_message = ProtoField.new("Future Options Request For Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionsrequestforquotemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_summary_message = ProtoField.new("Future Options Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionssummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_trade_cancellation_message = ProtoField.new("Future Options Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionstradecancellationmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_trade_message = ProtoField.new("Future Options Trade Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionstrademessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.future_product = ProtoField.new("Future Product", "tmx.mx.sola.multicast.hsvf.v1.14.futureproduct", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.future_request_for_quote_message = ProtoField.new("Future Request For Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.futurerequestforquotemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.future_trade_cancellation_message = ProtoField.new("Future Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.14.futuretradecancellationmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_instrument_keys_message = ProtoField.new("Futures Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.14.futuresinstrumentkeysmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_market_depth_message = ProtoField.new("Futures Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.14.futuresmarketdepthmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_quote_message = ProtoField.new("Futures Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.futuresquotemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_summary_message = ProtoField.new("Futures Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.futuressummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_trade_correction_message = ProtoField.new("Futures Trade Correction Message", "tmx.mx.sola.multicast.hsvf.v1.14.futurestradecorrectionmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_trade_message = ProtoField.new("Futures Trade Message", "tmx.mx.sola.multicast.hsvf.v1.14.futurestrademessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.group_instrument = ProtoField.new("Group Instrument", "tmx.mx.sola.multicast.hsvf.v1.14.groupinstrument", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.group_status = ProtoField.new("Group Status", "tmx.mx.sola.multicast.hsvf.v1.14.groupstatus", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.group_status_message = ProtoField.new("Group Status Message", "tmx.mx.sola.multicast.hsvf.v1.14.groupstatusmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.group_status_strategies_message = ProtoField.new("Group Status Strategies Message", "tmx.mx.sola.multicast.hsvf.v1.14.groupstatusstrategiesmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.high_price = ProtoField.new("High Price", "tmx.mx.sola.multicast.hsvf.v1.14.highprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.high_price_fraction_indicator = ProtoField.new("High Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.highpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.high_price_sign = ProtoField.new("High Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.highpricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.hsvf_etx = ProtoField.new("Hsvf Etx", "tmx.mx.sola.multicast.hsvf.v1.14.hsvfetx", ftypes.INT8)
tmx_mx_sola_multicast_hsvf_v1_14.fields.hsvf_stx = ProtoField.new("Hsvf Stx", "tmx.mx.sola.multicast.hsvf.v1.14.hsvfstx", ftypes.INT8)
tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_price = ProtoField.new("Initial Order Price", "tmx.mx.sola.multicast.hsvf.v1.14.initialorderprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_price_fraction_indicator = ProtoField.new("Initial Order Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.initialorderpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_quantity = ProtoField.new("Initial Order Quantity", "tmx.mx.sola.multicast.hsvf.v1.14.initialorderquantity", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_side = ProtoField.new("Initial Order Side", "tmx.mx.sola.multicast.hsvf.v1.14.initialorderside", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_quantity_assured = ProtoField.new("Initial Quantity Assured", "tmx.mx.sola.multicast.hsvf.v1.14.initialquantityassured", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument = ProtoField.new("Instrument", "tmx.mx.sola.multicast.hsvf.v1.14.instrument", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_external_code = ProtoField.new("Instrument External Code", "tmx.mx.sola.multicast.hsvf.v1.14.instrumentexternalcode", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_future_message = ProtoField.new("Instrument Schedule Notice Future Message", "tmx.mx.sola.multicast.hsvf.v1.14.instrumentschedulenoticefuturemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_futures_option_message = ProtoField.new("Instrument Schedule Notice Futures Option Message", "tmx.mx.sola.multicast.hsvf.v1.14.instrumentschedulenoticefuturesoptionmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_option_message = ProtoField.new("Instrument Schedule Notice Option Message", "tmx.mx.sola.multicast.hsvf.v1.14.instrumentschedulenoticeoptionmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_strategy_message = ProtoField.new("Instrument Schedule Notice Strategy Message", "tmx.mx.sola.multicast.hsvf.v1.14.instrumentschedulenoticestrategymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_status_marker = ProtoField.new("Instrument Status Marker", "tmx.mx.sola.multicast.hsvf.v1.14.instrumentstatusmarker", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.last_price = ProtoField.new("Last Price", "tmx.mx.sola.multicast.hsvf.v1.14.lastprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.last_price_fraction_indicator = ProtoField.new("Last Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.lastpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.last_price_sign = ProtoField.new("Last Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.lastpricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.last_trading_datetime = ProtoField.new("Last Trading Datetime", "tmx.mx.sola.multicast.hsvf.v1.14.lasttradingdatetime", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_group_instrument = ProtoField.new("Leg Group Instrument", "tmx.mx.sola.multicast.hsvf.v1.14.leggroupinstrument", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_instrument = ProtoField.new("Leg Instrument", "tmx.mx.sola.multicast.hsvf.v1.14.leginstrument", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_price = ProtoField.new("Leg Price", "tmx.mx.sola.multicast.hsvf.v1.14.legprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_price_fraction_indicator = ProtoField.new("Leg Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.legpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_ratio_or_delta = ProtoField.new("Leg Ratio Or Delta", "tmx.mx.sola.multicast.hsvf.v1.14.legratioordelta", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_ratio_or_delta_fraction_indicator = ProtoField.new("Leg Ratio Or Delta Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.legratioordeltafractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.level_of_market_depth = ProtoField.new("Level Of Market Depth", "tmx.mx.sola.multicast.hsvf.v1.14.levelofmarketdepth", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.low_price = ProtoField.new("Low Price", "tmx.mx.sola.multicast.hsvf.v1.14.lowprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.low_price_fraction_indicator = ProtoField.new("Low Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.lowpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.low_price_sign = ProtoField.new("Low Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.lowpricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.market_depth_level = ProtoField.new("Market Depth Level", "tmx.mx.sola.multicast.hsvf.v1.14.marketdepthlevel", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.market_flow_indicator = ProtoField.new("Market Flow Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.marketflowindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.maturity_date = ProtoField.new("Maturity Date", "tmx.mx.sola.multicast.hsvf.v1.14.maturitydate", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.maximum_number_of_contracts_per_order = ProtoField.new("Maximum Number Of Contracts Per Order", "tmx.mx.sola.multicast.hsvf.v1.14.maximumnumberofcontractsperorder", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.maximum_threshold_price = ProtoField.new("Maximum Threshold Price", "tmx.mx.sola.multicast.hsvf.v1.14.maximumthresholdprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.maximum_threshold_price_fraction_indicator = ProtoField.new("Maximum Threshold Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.maximumthresholdpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.message_body = ProtoField.new("Message Body", "tmx.mx.sola.multicast.hsvf.v1.14.messagebody", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.message_header = ProtoField.new("Message Header", "tmx.mx.sola.multicast.hsvf.v1.14.messageheader", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.message_timestamp = ProtoField.new("Message Timestamp", "tmx.mx.sola.multicast.hsvf.v1.14.messagetimestamp", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.message_type = ProtoField.new("Message Type", "tmx.mx.sola.multicast.hsvf.v1.14.messagetype", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.min_price = ProtoField.new("Min Price", "tmx.mx.sola.multicast.hsvf.v1.14.minprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.min_price_fraction_indicator = ProtoField.new("Min Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.minpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_number_of_contracts_per_order = ProtoField.new("Minimum Number Of Contracts Per Order", "tmx.mx.sola.multicast.hsvf.v1.14.minimumnumberofcontractsperorder", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_threshold_price_fraction_indicator = ProtoField.new("Minimum Threshold Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.minimumthresholdpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_threshold_price_n_7 = ProtoField.new("Minimum Threshold Price N 7", "tmx.mx.sola.multicast.hsvf.v1.14.minimumthresholdpricen7", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_threshold_price_x_7 = ProtoField.new("Minimum Threshold Price X 7", "tmx.mx.sola.multicast.hsvf.v1.14.minimumthresholdpricex7", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change = ProtoField.new("Net Change", "tmx.mx.sola.multicast.hsvf.v1.14.netchange", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_fraction_indicator_a_1 = ProtoField.new("Net Change Fraction Indicator A 1", "tmx.mx.sola.multicast.hsvf.v1.14.netchangefractionindicatora1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_fraction_indicator_x_1 = ProtoField.new("Net Change Fraction Indicator X 1", "tmx.mx.sola.multicast.hsvf.v1.14.netchangefractionindicatorx1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_sign_a_1 = ProtoField.new("Net Change Sign A 1", "tmx.mx.sola.multicast.hsvf.v1.14.netchangesigna1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_sign_x_1 = ProtoField.new("Net Change Sign X 1", "tmx.mx.sola.multicast.hsvf.v1.14.netchangesignx1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_ask_orders = ProtoField.new("Number Of Ask Orders", "tmx.mx.sola.multicast.hsvf.v1.14.numberofaskorders", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_bid_orders = ProtoField.new("Number Of Bid Orders", "tmx.mx.sola.multicast.hsvf.v1.14.numberofbidorders", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_bonds = ProtoField.new("Number Of Bonds", "tmx.mx.sola.multicast.hsvf.v1.14.numberofbonds", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_entries = ProtoField.new("Number Of Entries", "tmx.mx.sola.multicast.hsvf.v1.14.numberofentries", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_legs = ProtoField.new("Number Of Legs", "tmx.mx.sola.multicast.hsvf.v1.14.numberoflegs", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_levels = ProtoField.new("Number Of Levels", "tmx.mx.sola.multicast.hsvf.v1.14.numberoflevels", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.open_interest = ProtoField.new("Open Interest", "tmx.mx.sola.multicast.hsvf.v1.14.openinterest", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.open_interest_date_n_6 = ProtoField.new("Open Interest Date N 6", "tmx.mx.sola.multicast.hsvf.v1.14.openinterestdaten6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.open_interest_date_n_7 = ProtoField.new("Open Interest Date N 7", "tmx.mx.sola.multicast.hsvf.v1.14.openinterestdaten7", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.open_price = ProtoField.new("Open Price", "tmx.mx.sola.multicast.hsvf.v1.14.openprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.open_price_fraction_indicator = ProtoField.new("Open Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.openpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.open_price_sign = ProtoField.new("Open Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.openpricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.opening_price = ProtoField.new("Opening Price", "tmx.mx.sola.multicast.hsvf.v1.14.openingprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.opening_price_fraction_indicator = ProtoField.new("Opening Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.openingpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.option_auction_beginning_message = ProtoField.new("Option Auction Beginning Message", "tmx.mx.sola.multicast.hsvf.v1.14.optionauctionbeginningmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.option_auction_ending_message = ProtoField.new("Option Auction Ending Message", "tmx.mx.sola.multicast.hsvf.v1.14.optionauctionendingmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.option_initial_and_improvement_order_message = ProtoField.new("Option Initial And Improvement Order Message", "tmx.mx.sola.multicast.hsvf.v1.14.optioninitialandimprovementordermessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.option_instrument_keys_message = ProtoField.new("Option Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.14.optioninstrumentkeysmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.option_marker = ProtoField.new("Option Marker", "tmx.mx.sola.multicast.hsvf.v1.14.optionmarker", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.option_market_depth_message = ProtoField.new("Option Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.14.optionmarketdepthmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.option_quote_message = ProtoField.new("Option Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.optionquotemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.option_request_for_quote_message = ProtoField.new("Option Request For Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.optionrequestforquotemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.option_summary_message = ProtoField.new("Option Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.optionsummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.option_symbol = ProtoField.new("Option Symbol", "tmx.mx.sola.multicast.hsvf.v1.14.optionsymbol", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.option_trade_cancellation_message = ProtoField.new("Option Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.14.optiontradecancellationmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.option_trade_message = ProtoField.new("Option Trade Message", "tmx.mx.sola.multicast.hsvf.v1.14.optiontrademessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.option_type = ProtoField.new("Option Type", "tmx.mx.sola.multicast.hsvf.v1.14.optiontype", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.order_id = ProtoField.new("Order Id", "tmx.mx.sola.multicast.hsvf.v1.14.orderid", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.order_price = ProtoField.new("Order Price", "tmx.mx.sola.multicast.hsvf.v1.14.orderprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.order_price_fraction_indicator = ProtoField.new("Order Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.orderpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.order_quantity = ProtoField.new("Order Quantity", "tmx.mx.sola.multicast.hsvf.v1.14.orderquantity", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.order_side = ProtoField.new("Order Side", "tmx.mx.sola.multicast.hsvf.v1.14.orderside", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.order_type = ProtoField.new("Order Type", "tmx.mx.sola.multicast.hsvf.v1.14.ordertype", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.outstanding_bond_value = ProtoField.new("Outstanding Bond Value", "tmx.mx.sola.multicast.hsvf.v1.14.outstandingbondvalue", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.packet = ProtoField.new("Packet", "tmx.mx.sola.multicast.hsvf.v1.14.packet", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_closing_price = ProtoField.new("Previous Closing Price", "tmx.mx.sola.multicast.hsvf.v1.14.previousclosingprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_closing_price_fraction_indicator = ProtoField.new("Previous Closing Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.previousclosingpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_order_id = ProtoField.new("Previous Order Id", "tmx.mx.sola.multicast.hsvf.v1.14.previousorderid", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement = ProtoField.new("Previous Settlement", "tmx.mx.sola.multicast.hsvf.v1.14.previoussettlement", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement_fraction_indicator = ProtoField.new("Previous Settlement Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.previoussettlementfractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement_price = ProtoField.new("Previous Settlement Price", "tmx.mx.sola.multicast.hsvf.v1.14.previoussettlementprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement_price_fraction_indicator = ProtoField.new("Previous Settlement Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.previoussettlementpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.price = ProtoField.new("Price", "tmx.mx.sola.multicast.hsvf.v1.14.price", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.price_fraction_indicator = ProtoField.new("Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.pricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.price_indicator_marker_a_1 = ProtoField.new("Price Indicator Marker A 1", "tmx.mx.sola.multicast.hsvf.v1.14.priceindicatormarkera1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.price_indicator_marker_x_1 = ProtoField.new("Price Indicator Marker X 1", "tmx.mx.sola.multicast.hsvf.v1.14.priceindicatormarkerx1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.reason = ProtoField.new("Reason", "tmx.mx.sola.multicast.hsvf.v1.14.reason", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.regular_bulletin_contents = ProtoField.new("Regular Bulletin Contents", "tmx.mx.sola.multicast.hsvf.v1.14.regularbulletincontents", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.regular_text_bulletin = ProtoField.new("Regular Text Bulletin", "tmx.mx.sola.multicast.hsvf.v1.14.regulartextbulletin", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.requested_market_side = ProtoField.new("Requested Market Side", "tmx.mx.sola.multicast.hsvf.v1.14.requestedmarketside", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.requested_size = ProtoField.new("Requested Size", "tmx.mx.sola.multicast.hsvf.v1.14.requestedsize", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.reserved = ProtoField.new("Reserved", "tmx.mx.sola.multicast.hsvf.v1.14.reserved", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.root = ProtoField.new("Root", "tmx.mx.sola.multicast.hsvf.v1.14.root", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.scheduled_status_change_time = ProtoField.new("Scheduled Status Change Time", "tmx.mx.sola.multicast.hsvf.v1.14.scheduledstatuschangetime", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.sequence_number = ProtoField.new("Sequence Number", "tmx.mx.sola.multicast.hsvf.v1.14.sequencenumber", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.series_status = ProtoField.new("Series Status", "tmx.mx.sola.multicast.hsvf.v1.14.seriesstatus", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.settlement_price = ProtoField.new("Settlement Price", "tmx.mx.sola.multicast.hsvf.v1.14.settlementprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.settlement_price_fraction_indicator = ProtoField.new("Settlement Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.settlementpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.special_text_bulletin = ProtoField.new("Special Text Bulletin", "tmx.mx.sola.multicast.hsvf.v1.14.specialtextbulletin", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "tmx.mx.sola.multicast.hsvf.v1.14.startofdaymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_allow_implied = ProtoField.new("Strategy Allow Implied", "tmx.mx.sola.multicast.hsvf.v1.14.strategyallowimplied", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_auction_beginning_message = ProtoField.new("Strategy Auction Beginning Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategyauctionbeginningmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_auction_ending_message = ProtoField.new("Strategy Auction Ending Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategyauctionendingmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_code = ProtoField.new("Strategy Code", "tmx.mx.sola.multicast.hsvf.v1.14.strategycode", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_initial_and_improvement_order_message = ProtoField.new("Strategy Initial And Improvement Order Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategyinitialandimprovementordermessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_instrument_keys_message = ProtoField.new("Strategy Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategyinstrumentkeysmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_instrument_leg = ProtoField.new("Strategy Instrument Leg", "tmx.mx.sola.multicast.hsvf.v1.14.strategyinstrumentleg", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_market_depth_level = ProtoField.new("Strategy Market Depth Level", "tmx.mx.sola.multicast.hsvf.v1.14.strategymarketdepthlevel", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_market_depth_message = ProtoField.new("Strategy Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategymarketdepthmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_quote_message = ProtoField.new("Strategy Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategyquotemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_request_for_quote_message = ProtoField.new("Strategy Request For Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategyrequestforquotemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_summary_message = ProtoField.new("Strategy Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategysummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_symbol = ProtoField.new("Strategy Symbol", "tmx.mx.sola.multicast.hsvf.v1.14.strategysymbol", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_trade_cancellation_message = ProtoField.new("Strategy Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategytradecancellationmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_trade_message = ProtoField.new("Strategy Trade Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategytrademessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_type = ProtoField.new("Strategy Type", "tmx.mx.sola.multicast.hsvf.v1.14.strategytype", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strike_price = ProtoField.new("Strike Price", "tmx.mx.sola.multicast.hsvf.v1.14.strikeprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strike_price_currency = ProtoField.new("Strike Price Currency", "tmx.mx.sola.multicast.hsvf.v1.14.strikepricecurrency", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.strike_price_fraction_indicator = ProtoField.new("Strike Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.strikepricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.symbol = ProtoField.new("Symbol", "tmx.mx.sola.multicast.hsvf.v1.14.symbol", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.symbol_month = ProtoField.new("Symbol Month", "tmx.mx.sola.multicast.hsvf.v1.14.symbolmonth", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.symbol_year = ProtoField.new("Symbol Year", "tmx.mx.sola.multicast.hsvf.v1.14.symbolyear", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.tick = ProtoField.new("Tick", "tmx.mx.sola.multicast.hsvf.v1.14.tick", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_entry = ProtoField.new("Tick Entry", "tmx.mx.sola.multicast.hsvf.v1.14.tickentry", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_increment = ProtoField.new("Tick Increment", "tmx.mx.sola.multicast.hsvf.v1.14.tickincrement", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_increment_fraction_indicator_x_1 = ProtoField.new("Tick Increment Fraction Indicator X 1", "tmx.mx.sola.multicast.hsvf.v1.14.tickincrementfractionindicatorx1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_increment_fraction_indicator_x_7 = ProtoField.new("Tick Increment Fraction Indicator X 7", "tmx.mx.sola.multicast.hsvf.v1.14.tickincrementfractionindicatorx7", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_price = ProtoField.new("Tick Price", "tmx.mx.sola.multicast.hsvf.v1.14.tickprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_price_fraction_indicator = ProtoField.new("Tick Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.tickpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_table_message = ProtoField.new("Tick Table Message", "tmx.mx.sola.multicast.hsvf.v1.14.ticktablemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_table_name = ProtoField.new("Tick Table Name", "tmx.mx.sola.multicast.hsvf.v1.14.ticktablename", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_table_short_name = ProtoField.new("Tick Table Short Name", "tmx.mx.sola.multicast.hsvf.v1.14.ticktableshortname", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_value = ProtoField.new("Tick Value", "tmx.mx.sola.multicast.hsvf.v1.14.tickvalue", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_value_fraction_indicator = ProtoField.new("Tick Value Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.tickvaluefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.time = ProtoField.new("Time", "tmx.mx.sola.multicast.hsvf.v1.14.time", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_number = ProtoField.new("Trade Number", "tmx.mx.sola.multicast.hsvf.v1.14.tradenumber", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_fraction_indicator = ProtoField.new("Trade Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.tradepricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_n_6 = ProtoField.new("Trade Price N 6", "tmx.mx.sola.multicast.hsvf.v1.14.tradepricen6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_n_7 = ProtoField.new("Trade Price N 7", "tmx.mx.sola.multicast.hsvf.v1.14.tradepricen7", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_sign = ProtoField.new("Trade Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.tradepricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_instrument_keys_message = ProtoField.new("Underlying Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.14.underlyinginstrumentkeysmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_root_symbol = ProtoField.new("Underlying Root Symbol", "tmx.mx.sola.multicast.hsvf.v1.14.underlyingrootsymbol", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "tmx.mx.sola.multicast.hsvf.v1.14.underlyingsymbol", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol_month = ProtoField.new("Underlying Symbol Month", "tmx.mx.sola.multicast.hsvf.v1.14.underlyingsymbolmonth", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol_root = ProtoField.new("Underlying Symbol Root", "tmx.mx.sola.multicast.hsvf.v1.14.underlyingsymbolroot", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol_year = ProtoField.new("Underlying Symbol Year", "tmx.mx.sola.multicast.hsvf.v1.14.underlyingsymbolyear", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.variable_legs_strategy_code = ProtoField.new("Variable Legs Strategy Code", "tmx.mx.sola.multicast.hsvf.v1.14.variablelegsstrategycode", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_14.fields.volume = ProtoField.new("Volume", "tmx.mx.sola.multicast.hsvf.v1.14.volume", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Tmx Mx Sola Multicast Hsvf 1.14 Element Dissection Options
show.associated_product = true
show.beginning_of_future_options_summary_message = true
show.beginning_of_futures_summary_message = true
show.beginning_of_options_summary_message = true
show.beginning_of_strategy_summary_message = true
show.bond_definition = true
show.bulletins_message = true
show.circuit_assurance_message = true
show.end_of_sales_message = true
show.end_of_transmission_message = true
show.future_deliverables_message = true
show.future_option_symbol = true
show.future_options_instrument_keys_message = true
show.future_options_market_depth_message = true
show.future_options_quote_message = true
show.future_options_request_for_quote_message = true
show.future_options_summary_message = true
show.future_options_trade_cancellation_message = true
show.future_options_trade_message = true
show.future_product = true
show.future_request_for_quote_message = true
show.future_trade_cancellation_message = true
show.futures_instrument_keys_message = true
show.futures_market_depth_message = true
show.futures_quote_message = true
show.futures_summary_message = true
show.futures_trade_correction_message = true
show.futures_trade_message = true
show.group_status_message = true
show.group_status_strategies_message = true
show.instrument_schedule_notice_future_message = true
show.instrument_schedule_notice_futures_option_message = true
show.instrument_schedule_notice_option_message = true
show.instrument_schedule_notice_strategy_message = true
show.market_depth_level = true
show.message_header = true
show.option_auction_beginning_message = true
show.option_auction_ending_message = true
show.option_initial_and_improvement_order_message = true
show.option_instrument_keys_message = true
show.option_market_depth_message = true
show.option_quote_message = true
show.option_request_for_quote_message = true
show.option_summary_message = true
show.option_symbol = true
show.option_trade_cancellation_message = true
show.option_trade_message = true
show.packet = true
show.regular_text_bulletin = true
show.special_text_bulletin = true
show.start_of_day_message = true
show.strategy_auction_beginning_message = true
show.strategy_auction_ending_message = true
show.strategy_initial_and_improvement_order_message = true
show.strategy_instrument_keys_message = true
show.strategy_instrument_leg = true
show.strategy_market_depth_level = true
show.strategy_market_depth_message = true
show.strategy_quote_message = true
show.strategy_request_for_quote_message = true
show.strategy_summary_message = true
show.strategy_trade_cancellation_message = true
show.strategy_trade_message = true
show.tick_entry = true
show.tick_table_message = true
show.underlying_instrument_keys_message = true
show.bulletin = false
show.message_body = false

-- Register Tmx Mx Sola Multicast Hsvf 1.14 Show Options
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_associated_product = Pref.bool("Show Associated Product", show.associated_product, "Parse and add Associated Product to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_future_options_summary_message = Pref.bool("Show Beginning Of Future Options Summary Message", show.beginning_of_future_options_summary_message, "Parse and add Beginning Of Future Options Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_futures_summary_message = Pref.bool("Show Beginning Of Futures Summary Message", show.beginning_of_futures_summary_message, "Parse and add Beginning Of Futures Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_options_summary_message = Pref.bool("Show Beginning Of Options Summary Message", show.beginning_of_options_summary_message, "Parse and add Beginning Of Options Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_strategy_summary_message = Pref.bool("Show Beginning Of Strategy Summary Message", show.beginning_of_strategy_summary_message, "Parse and add Beginning Of Strategy Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bond_definition = Pref.bool("Show Bond Definition", show.bond_definition, "Parse and add Bond Definition to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bulletins_message = Pref.bool("Show Bulletins Message", show.bulletins_message, "Parse and add Bulletins Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_circuit_assurance_message = Pref.bool("Show Circuit Assurance Message", show.circuit_assurance_message, "Parse and add Circuit Assurance Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_end_of_sales_message = Pref.bool("Show End Of Sales Message", show.end_of_sales_message, "Parse and add End Of Sales Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_end_of_transmission_message = Pref.bool("Show End Of Transmission Message", show.end_of_transmission_message, "Parse and add End Of Transmission Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_deliverables_message = Pref.bool("Show Future Deliverables Message", show.future_deliverables_message, "Parse and add Future Deliverables Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_option_symbol = Pref.bool("Show Future Option Symbol", show.future_option_symbol, "Parse and add Future Option Symbol to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_instrument_keys_message = Pref.bool("Show Future Options Instrument Keys Message", show.future_options_instrument_keys_message, "Parse and add Future Options Instrument Keys Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_market_depth_message = Pref.bool("Show Future Options Market Depth Message", show.future_options_market_depth_message, "Parse and add Future Options Market Depth Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_quote_message = Pref.bool("Show Future Options Quote Message", show.future_options_quote_message, "Parse and add Future Options Quote Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_request_for_quote_message = Pref.bool("Show Future Options Request For Quote Message", show.future_options_request_for_quote_message, "Parse and add Future Options Request For Quote Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_summary_message = Pref.bool("Show Future Options Summary Message", show.future_options_summary_message, "Parse and add Future Options Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_trade_cancellation_message = Pref.bool("Show Future Options Trade Cancellation Message", show.future_options_trade_cancellation_message, "Parse and add Future Options Trade Cancellation Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_trade_message = Pref.bool("Show Future Options Trade Message", show.future_options_trade_message, "Parse and add Future Options Trade Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_product = Pref.bool("Show Future Product", show.future_product, "Parse and add Future Product to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_request_for_quote_message = Pref.bool("Show Future Request For Quote Message", show.future_request_for_quote_message, "Parse and add Future Request For Quote Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_trade_cancellation_message = Pref.bool("Show Future Trade Cancellation Message", show.future_trade_cancellation_message, "Parse and add Future Trade Cancellation Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_instrument_keys_message = Pref.bool("Show Futures Instrument Keys Message", show.futures_instrument_keys_message, "Parse and add Futures Instrument Keys Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_market_depth_message = Pref.bool("Show Futures Market Depth Message", show.futures_market_depth_message, "Parse and add Futures Market Depth Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_quote_message = Pref.bool("Show Futures Quote Message", show.futures_quote_message, "Parse and add Futures Quote Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_summary_message = Pref.bool("Show Futures Summary Message", show.futures_summary_message, "Parse and add Futures Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_trade_correction_message = Pref.bool("Show Futures Trade Correction Message", show.futures_trade_correction_message, "Parse and add Futures Trade Correction Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_trade_message = Pref.bool("Show Futures Trade Message", show.futures_trade_message, "Parse and add Futures Trade Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_group_status_message = Pref.bool("Show Group Status Message", show.group_status_message, "Parse and add Group Status Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_group_status_strategies_message = Pref.bool("Show Group Status Strategies Message", show.group_status_strategies_message, "Parse and add Group Status Strategies Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_future_message = Pref.bool("Show Instrument Schedule Notice Future Message", show.instrument_schedule_notice_future_message, "Parse and add Instrument Schedule Notice Future Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_futures_option_message = Pref.bool("Show Instrument Schedule Notice Futures Option Message", show.instrument_schedule_notice_futures_option_message, "Parse and add Instrument Schedule Notice Futures Option Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_option_message = Pref.bool("Show Instrument Schedule Notice Option Message", show.instrument_schedule_notice_option_message, "Parse and add Instrument Schedule Notice Option Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_strategy_message = Pref.bool("Show Instrument Schedule Notice Strategy Message", show.instrument_schedule_notice_strategy_message, "Parse and add Instrument Schedule Notice Strategy Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_market_depth_level = Pref.bool("Show Market Depth Level", show.market_depth_level, "Parse and add Market Depth Level to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_auction_beginning_message = Pref.bool("Show Option Auction Beginning Message", show.option_auction_beginning_message, "Parse and add Option Auction Beginning Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_auction_ending_message = Pref.bool("Show Option Auction Ending Message", show.option_auction_ending_message, "Parse and add Option Auction Ending Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_initial_and_improvement_order_message = Pref.bool("Show Option Initial And Improvement Order Message", show.option_initial_and_improvement_order_message, "Parse and add Option Initial And Improvement Order Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_instrument_keys_message = Pref.bool("Show Option Instrument Keys Message", show.option_instrument_keys_message, "Parse and add Option Instrument Keys Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_market_depth_message = Pref.bool("Show Option Market Depth Message", show.option_market_depth_message, "Parse and add Option Market Depth Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_quote_message = Pref.bool("Show Option Quote Message", show.option_quote_message, "Parse and add Option Quote Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_request_for_quote_message = Pref.bool("Show Option Request For Quote Message", show.option_request_for_quote_message, "Parse and add Option Request For Quote Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_summary_message = Pref.bool("Show Option Summary Message", show.option_summary_message, "Parse and add Option Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_symbol = Pref.bool("Show Option Symbol", show.option_symbol, "Parse and add Option Symbol to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_trade_cancellation_message = Pref.bool("Show Option Trade Cancellation Message", show.option_trade_cancellation_message, "Parse and add Option Trade Cancellation Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_trade_message = Pref.bool("Show Option Trade Message", show.option_trade_message, "Parse and add Option Trade Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_regular_text_bulletin = Pref.bool("Show Regular Text Bulletin", show.regular_text_bulletin, "Parse and add Regular Text Bulletin to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_special_text_bulletin = Pref.bool("Show Special Text Bulletin", show.special_text_bulletin, "Parse and add Special Text Bulletin to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_auction_beginning_message = Pref.bool("Show Strategy Auction Beginning Message", show.strategy_auction_beginning_message, "Parse and add Strategy Auction Beginning Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_auction_ending_message = Pref.bool("Show Strategy Auction Ending Message", show.strategy_auction_ending_message, "Parse and add Strategy Auction Ending Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_initial_and_improvement_order_message = Pref.bool("Show Strategy Initial And Improvement Order Message", show.strategy_initial_and_improvement_order_message, "Parse and add Strategy Initial And Improvement Order Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_instrument_keys_message = Pref.bool("Show Strategy Instrument Keys Message", show.strategy_instrument_keys_message, "Parse and add Strategy Instrument Keys Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_instrument_leg = Pref.bool("Show Strategy Instrument Leg", show.strategy_instrument_leg, "Parse and add Strategy Instrument Leg to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_market_depth_level = Pref.bool("Show Strategy Market Depth Level", show.strategy_market_depth_level, "Parse and add Strategy Market Depth Level to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_market_depth_message = Pref.bool("Show Strategy Market Depth Message", show.strategy_market_depth_message, "Parse and add Strategy Market Depth Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_quote_message = Pref.bool("Show Strategy Quote Message", show.strategy_quote_message, "Parse and add Strategy Quote Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_request_for_quote_message = Pref.bool("Show Strategy Request For Quote Message", show.strategy_request_for_quote_message, "Parse and add Strategy Request For Quote Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_summary_message = Pref.bool("Show Strategy Summary Message", show.strategy_summary_message, "Parse and add Strategy Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_trade_cancellation_message = Pref.bool("Show Strategy Trade Cancellation Message", show.strategy_trade_cancellation_message, "Parse and add Strategy Trade Cancellation Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_trade_message = Pref.bool("Show Strategy Trade Message", show.strategy_trade_message, "Parse and add Strategy Trade Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_tick_entry = Pref.bool("Show Tick Entry", show.tick_entry, "Parse and add Tick Entry to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_tick_table_message = Pref.bool("Show Tick Table Message", show.tick_table_message, "Parse and add Tick Table Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_underlying_instrument_keys_message = Pref.bool("Show Underlying Instrument Keys Message", show.underlying_instrument_keys_message, "Parse and add Underlying Instrument Keys Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bulletin = Pref.bool("Show Bulletin", show.bulletin, "Parse and add Bulletin to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_message_body = Pref.bool("Show Message Body", show.message_body, "Parse and add Message Body to protocol tree")

-- Handle changed preferences
function tmx_mx_sola_multicast_hsvf_v1_14.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.associated_product ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_associated_product then
    show.associated_product = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_associated_product
    changed = true
  end
  if show.beginning_of_future_options_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_future_options_summary_message then
    show.beginning_of_future_options_summary_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_future_options_summary_message
    changed = true
  end
  if show.beginning_of_futures_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_futures_summary_message then
    show.beginning_of_futures_summary_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_futures_summary_message
    changed = true
  end
  if show.beginning_of_options_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_options_summary_message then
    show.beginning_of_options_summary_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_options_summary_message
    changed = true
  end
  if show.beginning_of_strategy_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_strategy_summary_message then
    show.beginning_of_strategy_summary_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_strategy_summary_message
    changed = true
  end
  if show.bond_definition ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bond_definition then
    show.bond_definition = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bond_definition
    changed = true
  end
  if show.bulletins_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bulletins_message then
    show.bulletins_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bulletins_message
    changed = true
  end
  if show.circuit_assurance_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_circuit_assurance_message then
    show.circuit_assurance_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_circuit_assurance_message
    changed = true
  end
  if show.end_of_sales_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_end_of_sales_message then
    show.end_of_sales_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_end_of_sales_message
    changed = true
  end
  if show.end_of_transmission_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_end_of_transmission_message then
    show.end_of_transmission_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_end_of_transmission_message
    changed = true
  end
  if show.future_deliverables_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_deliverables_message then
    show.future_deliverables_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_deliverables_message
    changed = true
  end
  if show.future_option_symbol ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_option_symbol then
    show.future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_option_symbol
    changed = true
  end
  if show.future_options_instrument_keys_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_instrument_keys_message then
    show.future_options_instrument_keys_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_instrument_keys_message
    changed = true
  end
  if show.future_options_market_depth_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_market_depth_message then
    show.future_options_market_depth_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_market_depth_message
    changed = true
  end
  if show.future_options_quote_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_quote_message then
    show.future_options_quote_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_quote_message
    changed = true
  end
  if show.future_options_request_for_quote_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_request_for_quote_message then
    show.future_options_request_for_quote_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_request_for_quote_message
    changed = true
  end
  if show.future_options_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_summary_message then
    show.future_options_summary_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_summary_message
    changed = true
  end
  if show.future_options_trade_cancellation_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_trade_cancellation_message then
    show.future_options_trade_cancellation_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_trade_cancellation_message
    changed = true
  end
  if show.future_options_trade_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_trade_message then
    show.future_options_trade_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_trade_message
    changed = true
  end
  if show.future_product ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_product then
    show.future_product = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_product
    changed = true
  end
  if show.future_request_for_quote_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_request_for_quote_message then
    show.future_request_for_quote_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_request_for_quote_message
    changed = true
  end
  if show.future_trade_cancellation_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_trade_cancellation_message then
    show.future_trade_cancellation_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_trade_cancellation_message
    changed = true
  end
  if show.futures_instrument_keys_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_instrument_keys_message then
    show.futures_instrument_keys_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_instrument_keys_message
    changed = true
  end
  if show.futures_market_depth_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_market_depth_message then
    show.futures_market_depth_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_market_depth_message
    changed = true
  end
  if show.futures_quote_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_quote_message then
    show.futures_quote_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_quote_message
    changed = true
  end
  if show.futures_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_summary_message then
    show.futures_summary_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_summary_message
    changed = true
  end
  if show.futures_trade_correction_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_trade_correction_message then
    show.futures_trade_correction_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_trade_correction_message
    changed = true
  end
  if show.futures_trade_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_trade_message then
    show.futures_trade_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_trade_message
    changed = true
  end
  if show.group_status_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_group_status_message then
    show.group_status_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_group_status_message
    changed = true
  end
  if show.group_status_strategies_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_group_status_strategies_message then
    show.group_status_strategies_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_group_status_strategies_message
    changed = true
  end
  if show.instrument_schedule_notice_future_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_future_message then
    show.instrument_schedule_notice_future_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_future_message
    changed = true
  end
  if show.instrument_schedule_notice_futures_option_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_futures_option_message then
    show.instrument_schedule_notice_futures_option_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_futures_option_message
    changed = true
  end
  if show.instrument_schedule_notice_option_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_option_message then
    show.instrument_schedule_notice_option_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_option_message
    changed = true
  end
  if show.instrument_schedule_notice_strategy_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_strategy_message then
    show.instrument_schedule_notice_strategy_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_strategy_message
    changed = true
  end
  if show.market_depth_level ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_market_depth_level then
    show.market_depth_level = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_market_depth_level
    changed = true
  end
  if show.message_header ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_message_header then
    show.message_header = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_message_header
    changed = true
  end
  if show.option_auction_beginning_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_auction_beginning_message then
    show.option_auction_beginning_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_auction_beginning_message
    changed = true
  end
  if show.option_auction_ending_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_auction_ending_message then
    show.option_auction_ending_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_auction_ending_message
    changed = true
  end
  if show.option_initial_and_improvement_order_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_initial_and_improvement_order_message then
    show.option_initial_and_improvement_order_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_initial_and_improvement_order_message
    changed = true
  end
  if show.option_instrument_keys_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_instrument_keys_message then
    show.option_instrument_keys_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_instrument_keys_message
    changed = true
  end
  if show.option_market_depth_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_market_depth_message then
    show.option_market_depth_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_market_depth_message
    changed = true
  end
  if show.option_quote_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_quote_message then
    show.option_quote_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_quote_message
    changed = true
  end
  if show.option_request_for_quote_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_request_for_quote_message then
    show.option_request_for_quote_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_request_for_quote_message
    changed = true
  end
  if show.option_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_summary_message then
    show.option_summary_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_summary_message
    changed = true
  end
  if show.option_symbol ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_symbol then
    show.option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_symbol
    changed = true
  end
  if show.option_trade_cancellation_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_trade_cancellation_message then
    show.option_trade_cancellation_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_trade_cancellation_message
    changed = true
  end
  if show.option_trade_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_trade_message then
    show.option_trade_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_trade_message
    changed = true
  end
  if show.packet ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_packet then
    show.packet = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_packet
    changed = true
  end
  if show.regular_text_bulletin ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_regular_text_bulletin then
    show.regular_text_bulletin = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_regular_text_bulletin
    changed = true
  end
  if show.special_text_bulletin ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_special_text_bulletin then
    show.special_text_bulletin = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_special_text_bulletin
    changed = true
  end
  if show.start_of_day_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_start_of_day_message then
    show.start_of_day_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_start_of_day_message
    changed = true
  end
  if show.strategy_auction_beginning_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_auction_beginning_message then
    show.strategy_auction_beginning_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_auction_beginning_message
    changed = true
  end
  if show.strategy_auction_ending_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_auction_ending_message then
    show.strategy_auction_ending_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_auction_ending_message
    changed = true
  end
  if show.strategy_initial_and_improvement_order_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_initial_and_improvement_order_message then
    show.strategy_initial_and_improvement_order_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_initial_and_improvement_order_message
    changed = true
  end
  if show.strategy_instrument_keys_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_instrument_keys_message then
    show.strategy_instrument_keys_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_instrument_keys_message
    changed = true
  end
  if show.strategy_instrument_leg ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_instrument_leg then
    show.strategy_instrument_leg = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_instrument_leg
    changed = true
  end
  if show.strategy_market_depth_level ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_market_depth_level then
    show.strategy_market_depth_level = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_market_depth_level
    changed = true
  end
  if show.strategy_market_depth_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_market_depth_message then
    show.strategy_market_depth_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_market_depth_message
    changed = true
  end
  if show.strategy_quote_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_quote_message then
    show.strategy_quote_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_quote_message
    changed = true
  end
  if show.strategy_request_for_quote_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_request_for_quote_message then
    show.strategy_request_for_quote_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_request_for_quote_message
    changed = true
  end
  if show.strategy_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_summary_message then
    show.strategy_summary_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_summary_message
    changed = true
  end
  if show.strategy_trade_cancellation_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_trade_cancellation_message then
    show.strategy_trade_cancellation_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_trade_cancellation_message
    changed = true
  end
  if show.strategy_trade_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_trade_message then
    show.strategy_trade_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_trade_message
    changed = true
  end
  if show.tick_entry ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_tick_entry then
    show.tick_entry = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_tick_entry
    changed = true
  end
  if show.tick_table_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_tick_table_message then
    show.tick_table_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_tick_table_message
    changed = true
  end
  if show.underlying_instrument_keys_message ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_underlying_instrument_keys_message then
    show.underlying_instrument_keys_message = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_underlying_instrument_keys_message
    changed = true
  end
  if show.bulletin ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bulletin then
    show.bulletin = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bulletin
    changed = true
  end
  if show.message_body ~= tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_message_body then
    show.message_body = tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_message_body
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
-- Dissect Tmx Mx Sola Multicast Hsvf 1.14
-----------------------------------------------------------------------

-- Size: Hsvf Etx
tmx_mx_sola_multicast_hsvf_v1_14_size_of.hsvf_etx = 1

-- Display: Hsvf Etx
tmx_mx_sola_multicast_hsvf_v1_14_display.hsvf_etx = function(value)
  return "Hsvf Etx: "..value
end

-- Dissect: Hsvf Etx
tmx_mx_sola_multicast_hsvf_v1_14_dissect.hsvf_etx = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.hsvf_etx
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.hsvf_etx(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.hsvf_etx, range, value, display)

  return offset + length, value
end

-- Size: Business Date
tmx_mx_sola_multicast_hsvf_v1_14_size_of.business_date = 8

-- Display: Business Date
tmx_mx_sola_multicast_hsvf_v1_14_display.business_date = function(value)
  return "Business Date: "..value
end

-- Dissect: Business Date
tmx_mx_sola_multicast_hsvf_v1_14_dissect.business_date = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.business_date
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.business_date(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.business_date, range, value, display)

  return offset + length, value
end

-- Size: Exchange Id
tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id = 1

-- Display: Exchange Id
tmx_mx_sola_multicast_hsvf_v1_14_display.exchange_id = function(value)
  if value == "Q" then
    return "Exchange Id: Montreal (Q)"
  end

  return "Exchange Id: Unknown("..value..")"
end

-- Dissect: Exchange Id
tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.exchange_id(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Start Of Day Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.start_of_day_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.business_date

  return index
end

-- Display: Start Of Day Message
tmx_mx_sola_multicast_hsvf_v1_14_display.start_of_day_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.start_of_day_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Business Date: N
  index, business_date = tmx_mx_sola_multicast_hsvf_v1_14_dissect.business_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.start_of_day_message = function(buffer, offset, packet, parent)
  if show.start_of_day_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.start_of_day_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.start_of_day_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.start_of_day_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.start_of_day_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Time
tmx_mx_sola_multicast_hsvf_v1_14_size_of.time = 6

-- Display: Time
tmx_mx_sola_multicast_hsvf_v1_14_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
tmx_mx_sola_multicast_hsvf_v1_14_dissect.time = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.time
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.time(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.circuit_assurance_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.time

  return index
end

-- Display: Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_14_display.circuit_assurance_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.circuit_assurance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: N
  index, time = tmx_mx_sola_multicast_hsvf_v1_14_dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.circuit_assurance_message = function(buffer, offset, packet, parent)
  if show.circuit_assurance_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.circuit_assurance_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.circuit_assurance_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.circuit_assurance_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.circuit_assurance_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.end_of_transmission_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.time

  return index
end

-- Display: End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_14_display.end_of_transmission_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.end_of_transmission_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Time: N
  index, time = tmx_mx_sola_multicast_hsvf_v1_14_dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.end_of_transmission_message = function(buffer, offset, packet, parent)
  if show.end_of_transmission_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.end_of_transmission_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.end_of_transmission_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.end_of_transmission_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.end_of_transmission_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Tick Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_price_fraction_indicator = 1

-- Display: Tick Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.tick_price_fraction_indicator = function(value)
  return "Tick Price Fraction Indicator: "..value
end

-- Dissect: Tick Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.tick_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Tick Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_price = 7

-- Display: Tick Price
tmx_mx_sola_multicast_hsvf_v1_14_display.tick_price = function(value)
  return "Tick Price: "..value
end

-- Dissect: Tick Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.tick_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_price, range, value, display)

  return offset + length, value
end

-- Size: Min Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.min_price_fraction_indicator = 1

-- Display: Min Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.min_price_fraction_indicator = function(value)
  return "Min Price Fraction Indicator: "..value
end

-- Dissect: Min Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.min_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.min_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.min_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.min_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Min Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.min_price = 7

-- Display: Min Price
tmx_mx_sola_multicast_hsvf_v1_14_display.min_price = function(value)
  return "Min Price: "..value
end

-- Dissect: Min Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.min_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.min_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.min_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.min_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tick Entry
tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_entry = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.min_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.min_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_price_fraction_indicator

  return index
end

-- Display: Tick Entry
tmx_mx_sola_multicast_hsvf_v1_14_display.tick_entry = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Entry
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_entry_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Min Price: N
  index, min_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.min_price(buffer, index, packet, parent)

  -- Min Price Fraction Indicator: X
  index, min_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.min_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Price: N
  index, tick_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_price(buffer, index, packet, parent)

  -- Tick Price Fraction Indicator: X
  index, tick_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_price_fraction_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Entry
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_entry = function(buffer, offset, packet, parent)
  if show.tick_entry then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_entry, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_entry_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.tick_entry(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_entry_fields(buffer, offset, packet, parent)
  end
end

-- Size: Number Of Entries
tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_entries = 2

-- Display: Number Of Entries
tmx_mx_sola_multicast_hsvf_v1_14_display.number_of_entries = function(value)
  return "Number Of Entries: "..value
end

-- Dissect: Number Of Entries
tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_entries = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_entries
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.number_of_entries(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_entries, range, value, display)

  return offset + length, value
end

-- Size: Tick Table Short Name
tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_table_short_name = 2

-- Display: Tick Table Short Name
tmx_mx_sola_multicast_hsvf_v1_14_display.tick_table_short_name = function(value)
  return "Tick Table Short Name: "..value
end

-- Dissect: Tick Table Short Name
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_table_short_name = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_table_short_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.tick_table_short_name(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_table_short_name, range, value, display)

  return offset + length, value
end

-- Size: Tick Table Name
tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_table_name = 50

-- Display: Tick Table Name
tmx_mx_sola_multicast_hsvf_v1_14_display.tick_table_name = function(value)
  return "Tick Table Name: "..value
end

-- Dissect: Tick Table Name
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_table_name = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_table_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.tick_table_name(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_table_name, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_table_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_table_name

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_table_short_name

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_entries

  -- Calculate field size from count
  local tick_entry_count = buffer(offset + index - 2, 2):string()
  index = index + tick_entry_count * 16

  return index
end

-- Display: Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_14_display.tick_table_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_table_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Tick Table Name: X
  index, tick_table_name = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_table_name(buffer, index, packet, parent)

  -- Tick Table Short Name: X
  index, tick_table_short_name = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_table_short_name(buffer, index, packet, parent)

  -- Number Of Entries: N
  index, number_of_entries = tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_entries(buffer, index, packet, parent)

  -- Tick Entry: Struct of 4 fields
  for i = 1, number_of_entries do
    index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_entry(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_table_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.tick_table_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_table_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.tick_table_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_table_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_table_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved
tmx_mx_sola_multicast_hsvf_v1_14_size_of.reserved = 1

-- Display: Reserved
tmx_mx_sola_multicast_hsvf_v1_14_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
tmx_mx_sola_multicast_hsvf_v1_14_dissect.reserved = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.reserved
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.reserved(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.reserved, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.end_of_sales_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.reserved

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.time

  return index
end

-- Display: End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_14_display.end_of_sales_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.end_of_sales_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: 1 Byte Ascii String
  index, reserved = tmx_mx_sola_multicast_hsvf_v1_14_dissect.reserved(buffer, index, packet, parent)

  -- Time: N
  index, time = tmx_mx_sola_multicast_hsvf_v1_14_dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.end_of_sales_message = function(buffer, offset, packet, parent)
  if show.end_of_sales_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.end_of_sales_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.end_of_sales_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.end_of_sales_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.end_of_sales_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Continue Marker
tmx_mx_sola_multicast_hsvf_v1_14_size_of.continue_marker = 1

-- Display: Continue Marker
tmx_mx_sola_multicast_hsvf_v1_14_display.continue_marker = function(value)
  return "Continue Marker: "..value
end

-- Dissect: Continue Marker
tmx_mx_sola_multicast_hsvf_v1_14_dissect.continue_marker = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.continue_marker
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.continue_marker(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.continue_marker, range, value, display)

  return offset + length, value
end

-- Size: Bulletin Contents X 49
tmx_mx_sola_multicast_hsvf_v1_14_size_of.bulletin_contents_x_49 = 49

-- Display: Bulletin Contents X 49
tmx_mx_sola_multicast_hsvf_v1_14_display.bulletin_contents_x_49 = function(value)
  return "Bulletin Contents X 49: "..value
end

-- Dissect: Bulletin Contents X 49
tmx_mx_sola_multicast_hsvf_v1_14_dissect.bulletin_contents_x_49 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.bulletin_contents_x_49
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.bulletin_contents_x_49(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletin_contents_x_49, range, value, display)

  return offset + length, value
end

-- Size: Symbol
tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol = 30

-- Display: Symbol
tmx_mx_sola_multicast_hsvf_v1_14_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14_size_of.special_text_bulletin = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bulletin_contents_x_49

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.continue_marker

  return index
end

-- Display: Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14_display.special_text_bulletin = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14_dissect.special_text_bulletin_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol(buffer, index, packet, parent)

  -- Bulletin Contents X 49: X
  index, bulletin_contents_x_49 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bulletin_contents_x_49(buffer, index, packet, parent)

  -- Continue Marker: N
  index, continue_marker = tmx_mx_sola_multicast_hsvf_v1_14_dissect.continue_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14_dissect.special_text_bulletin = function(buffer, offset, packet, parent)
  if show.special_text_bulletin then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.special_text_bulletin, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.special_text_bulletin_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.special_text_bulletin(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.special_text_bulletin_fields(buffer, offset, packet, parent)
  end
end

-- Size: Regular Bulletin Contents
tmx_mx_sola_multicast_hsvf_v1_14_size_of.regular_bulletin_contents = 79

-- Display: Regular Bulletin Contents
tmx_mx_sola_multicast_hsvf_v1_14_display.regular_bulletin_contents = function(value)
  return "Regular Bulletin Contents: "..value
end

-- Dissect: Regular Bulletin Contents
tmx_mx_sola_multicast_hsvf_v1_14_dissect.regular_bulletin_contents = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.regular_bulletin_contents
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.regular_bulletin_contents(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.regular_bulletin_contents, range, value, display)

  return offset + length, value
end

-- Calculate size of: Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14_size_of.regular_text_bulletin = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.regular_bulletin_contents

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.continue_marker

  return index
end

-- Display: Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14_display.regular_text_bulletin = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14_dissect.regular_text_bulletin_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Regular Bulletin Contents: X
  index, regular_bulletin_contents = tmx_mx_sola_multicast_hsvf_v1_14_dissect.regular_bulletin_contents(buffer, index, packet, parent)

  -- Continue Marker: N
  index, continue_marker = tmx_mx_sola_multicast_hsvf_v1_14_dissect.continue_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14_dissect.regular_text_bulletin = function(buffer, offset, packet, parent)
  if show.regular_text_bulletin then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.regular_text_bulletin, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.regular_text_bulletin_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.regular_text_bulletin(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.regular_text_bulletin_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Bulletin
tmx_mx_sola_multicast_hsvf_v1_14_size_of.bulletin = function(buffer, offset, bulletin_type)
  -- Size of Regular Text Bulletin
  if bulletin_type == "1" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.regular_text_bulletin(buffer, offset)
  end
  -- Size of Special Text Bulletin
  if bulletin_type == "2" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.special_text_bulletin(buffer, offset)
  end

  return 0
end

-- Display: Bulletin
tmx_mx_sola_multicast_hsvf_v1_14_display.bulletin = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Bulletin
tmx_mx_sola_multicast_hsvf_v1_14_dissect.bulletin_branches = function(buffer, offset, packet, parent, bulletin_type)
  -- Dissect Regular Text Bulletin
  if bulletin_type == "1" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.regular_text_bulletin(buffer, offset, packet, parent)
  end
  -- Dissect Special Text Bulletin
  if bulletin_type == "2" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.special_text_bulletin(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Bulletin
tmx_mx_sola_multicast_hsvf_v1_14_dissect.bulletin = function(buffer, offset, packet, parent, bulletin_type)
  if not show.bulletin then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.bulletin_branches(buffer, offset, packet, parent, bulletin_type)
  end

  -- Calculate size and check that branch is not empty
  local size = tmx_mx_sola_multicast_hsvf_v1_14_size_of.bulletin(buffer, offset, bulletin_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.bulletin(buffer, packet, parent)
  local element = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletin, range, display)

  return tmx_mx_sola_multicast_hsvf_v1_14_dissect.bulletin_branches(buffer, offset, packet, parent, bulletin_type)
end

-- Size: Bulletin Type
tmx_mx_sola_multicast_hsvf_v1_14_size_of.bulletin_type = 1

-- Display: Bulletin Type
tmx_mx_sola_multicast_hsvf_v1_14_display.bulletin_type = function(value)
  if value == "1" then
    return "Bulletin Type: Regular Text Bulletin (1)"
  end
  if value == "2" then
    return "Bulletin Type: Special Text Bulletin (2)"
  end

  return "Bulletin Type: Unknown("..value..")"
end

-- Dissect: Bulletin Type
tmx_mx_sola_multicast_hsvf_v1_14_dissect.bulletin_type = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.bulletin_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.bulletin_type(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletin_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.bulletins_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.reserved

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bulletin_type

  -- Calculate runtime size of Bulletin field
  local bulletin_offset = offset + index
  local bulletin_type = buffer(bulletin_offset - 1, 1):string()
  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bulletin(buffer, bulletin_offset, bulletin_type)

  return index
end

-- Display: Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_14_display.bulletins_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.bulletins_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: 1 Byte Ascii String
  index, reserved = tmx_mx_sola_multicast_hsvf_v1_14_dissect.reserved(buffer, index, packet, parent)

  -- Bulletin Type: X
  index, bulletin_type = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bulletin_type(buffer, index, packet, parent)

  -- Bulletin: Runtime Type with 2 branches
  index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bulletin(buffer, index, packet, parent, bulletin_type)

  return index
end

-- Dissect: Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.bulletins_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.bulletins_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.bulletins_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.bulletins_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletins_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14_dissect.bulletins_message_fields(buffer, offset, packet, parent)
end

-- Size: Conversion Factor Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.conversion_factor_fraction_indicator = 1

-- Display: Conversion Factor Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.conversion_factor_fraction_indicator = function(value)
  return "Conversion Factor Fraction Indicator: "..value
end

-- Dissect: Conversion Factor Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.conversion_factor_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.conversion_factor_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.conversion_factor_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.conversion_factor_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Conversion Factor
tmx_mx_sola_multicast_hsvf_v1_14_size_of.conversion_factor = 7

-- Display: Conversion Factor
tmx_mx_sola_multicast_hsvf_v1_14_display.conversion_factor = function(value)
  return "Conversion Factor: "..value
end

-- Dissect: Conversion Factor
tmx_mx_sola_multicast_hsvf_v1_14_dissect.conversion_factor = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.conversion_factor
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.conversion_factor(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.conversion_factor, range, value, display)

  return offset + length, value
end

-- Size: Outstanding Bond Value
tmx_mx_sola_multicast_hsvf_v1_14_size_of.outstanding_bond_value = 8

-- Display: Outstanding Bond Value
tmx_mx_sola_multicast_hsvf_v1_14_display.outstanding_bond_value = function(value)
  return "Outstanding Bond Value: "..value
end

-- Dissect: Outstanding Bond Value
tmx_mx_sola_multicast_hsvf_v1_14_dissect.outstanding_bond_value = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.outstanding_bond_value
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.outstanding_bond_value(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.outstanding_bond_value, range, value, display)

  return offset + length, value
end

-- Size: Coupon Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.coupon_fraction_indicator = 1

-- Display: Coupon Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.coupon_fraction_indicator = function(value)
  return "Coupon Fraction Indicator: "..value
end

-- Dissect: Coupon Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.coupon_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.coupon_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.coupon_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.coupon_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Coupon
tmx_mx_sola_multicast_hsvf_v1_14_size_of.coupon = 7

-- Display: Coupon
tmx_mx_sola_multicast_hsvf_v1_14_display.coupon = function(value)
  return "Coupon: "..value
end

-- Dissect: Coupon
tmx_mx_sola_multicast_hsvf_v1_14_dissect.coupon = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.coupon
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.coupon(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.coupon, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
tmx_mx_sola_multicast_hsvf_v1_14_size_of.maturity_date = 8

-- Display: Maturity Date
tmx_mx_sola_multicast_hsvf_v1_14_display.maturity_date = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
tmx_mx_sola_multicast_hsvf_v1_14_dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.maturity_date
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bond Definition
tmx_mx_sola_multicast_hsvf_v1_14_size_of.bond_definition = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.maturity_date

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.coupon

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.coupon_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.outstanding_bond_value

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.conversion_factor

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.conversion_factor_fraction_indicator

  return index
end

-- Display: Bond Definition
tmx_mx_sola_multicast_hsvf_v1_14_display.bond_definition = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Definition
tmx_mx_sola_multicast_hsvf_v1_14_dissect.bond_definition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Maturity Date: A
  index, maturity_date = tmx_mx_sola_multicast_hsvf_v1_14_dissect.maturity_date(buffer, index, packet, parent)

  -- Coupon: N
  index, coupon = tmx_mx_sola_multicast_hsvf_v1_14_dissect.coupon(buffer, index, packet, parent)

  -- Coupon Fraction Indicator: A
  index, coupon_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.coupon_fraction_indicator(buffer, index, packet, parent)

  -- Outstanding Bond Value: N
  index, outstanding_bond_value = tmx_mx_sola_multicast_hsvf_v1_14_dissect.outstanding_bond_value(buffer, index, packet, parent)

  -- Conversion Factor: N
  index, conversion_factor = tmx_mx_sola_multicast_hsvf_v1_14_dissect.conversion_factor(buffer, index, packet, parent)

  -- Conversion Factor Fraction Indicator: X
  index, conversion_factor_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.conversion_factor_fraction_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Definition
tmx_mx_sola_multicast_hsvf_v1_14_dissect.bond_definition = function(buffer, offset, packet, parent)
  if show.bond_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.bond_definition, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bond_definition_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.bond_definition(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.bond_definition_fields(buffer, offset, packet, parent)
  end
end

-- Size: Number Of Bonds
tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_bonds = 2

-- Display: Number Of Bonds
tmx_mx_sola_multicast_hsvf_v1_14_display.number_of_bonds = function(value)
  return "Number Of Bonds: "..value
end

-- Dissect: Number Of Bonds
tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_bonds = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_bonds
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.number_of_bonds(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_bonds, range, value, display)

  return offset + length, value
end

-- Size: Expiry Day
tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_day = 2

-- Display: Expiry Day
tmx_mx_sola_multicast_hsvf_v1_14_display.expiry_day = function(value)
  return "Expiry Day: "..value
end

-- Dissect: Expiry Day
tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_day = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_day
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.expiry_day(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_day, range, value, display)

  return offset + length, value
end

-- Size: Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol_year = 2

-- Display: Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14_display.symbol_year = function(value)
  return "Symbol Year: "..value
end

-- Dissect: Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol_year = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol_year
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.symbol_year(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.symbol_year, range, value, display)

  return offset + length, value
end

-- Size: Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol_month = 1

-- Display: Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14_display.symbol_month = function(value)
  return "Symbol Month: "..value
end

-- Dissect: Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol_month = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol_month
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.symbol_month(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.symbol_month, range, value, display)

  return offset + length, value
end

-- Size: Root
tmx_mx_sola_multicast_hsvf_v1_14_size_of.root = 6

-- Display: Root
tmx_mx_sola_multicast_hsvf_v1_14_display.root = function(value)
  return "Root: "..value
end

-- Dissect: Root
tmx_mx_sola_multicast_hsvf_v1_14_dissect.root = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.root
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.root(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.root, range, value, display)

  return offset + length, value
end

-- Calculate size of: Future Product
tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_product = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.root

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol_month

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol_year

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_day

  return index
end

-- Display: Future Product
tmx_mx_sola_multicast_hsvf_v1_14_display.future_product = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Product
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root: X
  index, root = tmx_mx_sola_multicast_hsvf_v1_14_dissect.root(buffer, index, packet, parent)

  -- Symbol Month: A
  index, symbol_month = tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol_month(buffer, index, packet, parent)

  -- Symbol Year: N
  index, symbol_year = tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol_year(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_day(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Product
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product = function(buffer, offset, packet, parent)
  if show.future_product then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.future_product, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.future_product(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Future Deliverables Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_deliverables_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_product(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_bonds

  -- Calculate field size from count
  local bond_definition_count = buffer(offset + index - 2, 2):string()
  index = index + bond_definition_count * 32

  return index
end

-- Display: Future Deliverables Message
tmx_mx_sola_multicast_hsvf_v1_14_display.future_deliverables_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Deliverables Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_deliverables_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product(buffer, index, packet, parent)

  -- Number Of Bonds: N
  index, number_of_bonds = tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_bonds(buffer, index, packet, parent)

  -- Bond Definition: Struct of 6 fields
  for i = 1, number_of_bonds do
    index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bond_definition(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Future Deliverables Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_deliverables_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.future_deliverables_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_deliverables_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.future_deliverables_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.future_deliverables_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_deliverables_message_fields(buffer, offset, packet, parent)
end

-- Size: Group Status
tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_status = 1

-- Display: Group Status
tmx_mx_sola_multicast_hsvf_v1_14_display.group_status = function(value)
  return "Group Status: "..value
end

-- Dissect: Group Status
tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_status = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.group_status(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.group_status, range, value, display)

  return offset + length, value
end

-- Size: Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_instrument = 2

-- Display: Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14_display.group_instrument = function(value)
  return "Group Instrument: "..value
end

-- Dissect: Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_instrument = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_instrument
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.group_instrument(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.group_instrument, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Status Strategies Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_status_strategies_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_instrument

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_status

  return index
end

-- Display: Group Status Strategies Message
tmx_mx_sola_multicast_hsvf_v1_14_display.group_status_strategies_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Status Strategies Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_status_strategies_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_instrument(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Strategies Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_status_strategies_message = function(buffer, offset, packet, parent)
  if show.group_status_strategies_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.group_status_strategies_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_status_strategies_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.group_status_strategies_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_status_strategies_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Group Status Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_status_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.root

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_status

  return index
end

-- Display: Group Status Message
tmx_mx_sola_multicast_hsvf_v1_14_display.group_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Status Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Root: X
  index, root = tmx_mx_sola_multicast_hsvf_v1_14_dissect.root(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_status_message = function(buffer, offset, packet, parent)
  if show.group_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.group_status_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.group_status_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trade Number
tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_number = 8

-- Display: Trade Number
tmx_mx_sola_multicast_hsvf_v1_14_display.trade_number = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_number = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.trade_number(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Size: Price Indicator Marker X 1
tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_indicator_marker_x_1 = 1

-- Display: Price Indicator Marker X 1
tmx_mx_sola_multicast_hsvf_v1_14_display.price_indicator_marker_x_1 = function(value)
  return "Price Indicator Marker X 1: "..value
end

-- Dissect: Price Indicator Marker X 1
tmx_mx_sola_multicast_hsvf_v1_14_dissect.price_indicator_marker_x_1 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_indicator_marker_x_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.price_indicator_marker_x_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.price_indicator_marker_x_1, range, value, display)

  return offset + length, value
end

-- Size: Net Change Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_fraction_indicator_x_1 = 1

-- Display: Net Change Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14_display.net_change_fraction_indicator_x_1 = function(value)
  return "Net Change Fraction Indicator X 1: "..value
end

-- Dissect: Net Change Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_fraction_indicator_x_1 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_fraction_indicator_x_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.net_change_fraction_indicator_x_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_fraction_indicator_x_1, range, value, display)

  return offset + length, value
end

-- Size: Net Change
tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change = 7

-- Display: Net Change
tmx_mx_sola_multicast_hsvf_v1_14_display.net_change = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.net_change(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change, range, value, display)

  return offset + length, value
end

-- Size: Net Change Sign X 1
tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_sign_x_1 = 1

-- Display: Net Change Sign X 1
tmx_mx_sola_multicast_hsvf_v1_14_display.net_change_sign_x_1 = function(value)
  return "Net Change Sign X 1: "..value
end

-- Dissect: Net Change Sign X 1
tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_sign_x_1 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_sign_x_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.net_change_sign_x_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_sign_x_1, range, value, display)

  return offset + length, value
end

-- Size: Trade Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_fraction_indicator = 1

-- Display: Trade Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.trade_price_fraction_indicator = function(value)
  return "Trade Price Fraction Indicator: "..value
end

-- Dissect: Trade Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.trade_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trade Price N 6
tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_n_6 = 6

-- Display: Trade Price N 6
tmx_mx_sola_multicast_hsvf_v1_14_display.trade_price_n_6 = function(value)
  return "Trade Price N 6: "..value
end

-- Dissect: Trade Price N 6
tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_n_6 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_n_6
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.trade_price_n_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_n_6, range, value, display)

  return offset + length, value
end

-- Size: Volume
tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume = 8

-- Display: Volume
tmx_mx_sola_multicast_hsvf_v1_14_display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.volume(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.futures_trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_product(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_n_6

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_sign_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_fraction_indicator_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_indicator_marker_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_number

  return index
end

-- Display: Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_14_display.futures_trade_correction_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume(buffer, index, packet, parent)

  -- Trade Price N 6: N
  index, trade_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_n_6(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.price_indicator_marker_x_1(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_trade_correction_message = function(buffer, offset, packet, parent)
  if show.futures_trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_trade_correction_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_trade_correction_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.futures_trade_correction_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_trade_correction_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Auction Id
tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id = 6

-- Display: Auction Id
tmx_mx_sola_multicast_hsvf_v1_14_display.auction_id = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.auction_id(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Size: Strategy Symbol
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_symbol = 30

-- Display: Strategy Symbol
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_symbol = function(value)
  return "Strategy Symbol: "..value
end

-- Dissect: Strategy Symbol
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_symbol = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_auction_ending_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  return index
end

-- Display: Strategy Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_auction_ending_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_auction_ending_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_symbol(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_auction_ending_message = function(buffer, offset, packet, parent)
  if show.strategy_auction_ending_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_auction_ending_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_auction_ending_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_auction_ending_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_auction_ending_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Expiry Year
tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_year = 2

-- Display: Expiry Year
tmx_mx_sola_multicast_hsvf_v1_14_display.expiry_year = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_year = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_year
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.expiry_year(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strike_price_fraction_indicator = 1

-- Display: Strike Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.strike_price_fraction_indicator = function(value)
  return "Strike Price Fraction Indicator: "..value
end

-- Dissect: Strike Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strike_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.strike_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strike_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strike_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strike_price = 7

-- Display: Strike Price
tmx_mx_sola_multicast_hsvf_v1_14_display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.strike_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Expiry Month
tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_month = 1

-- Display: Expiry Month
tmx_mx_sola_multicast_hsvf_v1_14_display.expiry_month = function(value)
  if value == "A" then
    return "Expiry Month: January (A)"
  end
  if value == "B" then
    return "Expiry Month: February (B)"
  end
  if value == "C" then
    return "Expiry Month: March (C)"
  end
  if value == "D" then
    return "Expiry Month: April (D)"
  end
  if value == "E" then
    return "Expiry Month: May (E)"
  end
  if value == "F" then
    return "Expiry Month: June (F)"
  end
  if value == "G" then
    return "Expiry Month: July (G)"
  end
  if value == "H" then
    return "Expiry Month: August (H)"
  end
  if value == "I" then
    return "Expiry Month: September (I)"
  end
  if value == "J" then
    return "Expiry Month: October (J)"
  end
  if value == "K" then
    return "Expiry Month: November (K)"
  end
  if value == "L" then
    return "Expiry Month: December (L)"
  end

  return "Expiry Month: Unknown("..value..")"
end

-- Dissect: Expiry Month
tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_month = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_month
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.expiry_month(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_month, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_symbol = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.root

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_month

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strike_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strike_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_year

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_day

  return index
end

-- Display: Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14_display.option_symbol = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root: X
  index, root = tmx_mx_sola_multicast_hsvf_v1_14_dissect.root(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_month(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strike_price(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_day(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol = function(buffer, offset, packet, parent)
  if show.option_symbol then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.option_symbol, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.option_symbol(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Option Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_auction_ending_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  return index
end

-- Display: Option Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14_display.option_auction_ending_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_auction_ending_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_auction_ending_message = function(buffer, offset, packet, parent)
  if show.option_auction_ending_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.option_auction_ending_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_auction_ending_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.option_auction_ending_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_auction_ending_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.beginning_of_strategy_summary_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  return index
end

-- Display: Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_display.beginning_of_strategy_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_strategy_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_strategy_summary_message = function(buffer, offset, packet, parent)
  if show.beginning_of_strategy_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_strategy_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_strategy_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.beginning_of_strategy_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_strategy_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.beginning_of_futures_summary_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  return index
end

-- Display: Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_display.beginning_of_futures_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_futures_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_futures_summary_message = function(buffer, offset, packet, parent)
  if show.beginning_of_futures_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_futures_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_futures_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.beginning_of_futures_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_futures_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.beginning_of_future_options_summary_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  return index
end

-- Display: Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_display.beginning_of_future_options_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_future_options_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_future_options_summary_message = function(buffer, offset, packet, parent)
  if show.beginning_of_future_options_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_future_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_future_options_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.beginning_of_future_options_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_future_options_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.beginning_of_options_summary_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  return index
end

-- Display: Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_display.beginning_of_options_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_options_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_options_summary_message = function(buffer, offset, packet, parent)
  if show.beginning_of_options_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_options_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.beginning_of_options_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_options_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Previous Order Id
tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_order_id = 8

-- Display: Previous Order Id
tmx_mx_sola_multicast_hsvf_v1_14_display.previous_order_id = function(value)
  return "Previous Order Id: "..value
end

-- Dissect: Previous Order Id
tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_order_id = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_order_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.previous_order_id(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_order_id, range, value, display)

  return offset + length, value
end

-- Size: Order Id
tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_id = 8

-- Display: Order Id
tmx_mx_sola_multicast_hsvf_v1_14_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_id = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.order_id(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.order_id, range, value, display)

  return offset + length, value
end

-- Size: Order Type
tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_type = 1

-- Display: Order Type
tmx_mx_sola_multicast_hsvf_v1_14_display.order_type = function(value)
  if value == "A" then
    return "Order Type: Initial Order (A)"
  end
  if value == "B" then
    return "Order Type: Improvement Order (B)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_type = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.order_type(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.order_type, range, value, display)

  return offset + length, value
end

-- Size: Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_price_fraction_indicator = 1

-- Display: Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.order_price_fraction_indicator = function(value)
  return "Order Price Fraction Indicator: "..value
end

-- Dissect: Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.order_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.order_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Order Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_price = 7

-- Display: Order Price
tmx_mx_sola_multicast_hsvf_v1_14_display.order_price = function(value)
  return "Order Price: "..value
end

-- Dissect: Order Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.order_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.order_price, range, value, display)

  return offset + length, value
end

-- Size: Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_quantity = 8

-- Display: Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14_display.order_quantity = function(value)
  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_quantity = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_quantity
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.order_quantity(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Size: Order Side
tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_side = 1

-- Display: Order Side
tmx_mx_sola_multicast_hsvf_v1_14_display.order_side = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_side = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.order_side(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.order_side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_initial_and_improvement_order_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_side

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_quantity

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_type

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_order_id

  return index
end

-- Display: Strategy Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_initial_and_improvement_order_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_initial_and_improvement_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_symbol(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  -- Order Side: X
  index, order_side = tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_side(buffer, index, packet, parent)

  -- Order Quantity: N
  index, order_quantity = tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_quantity(buffer, index, packet, parent)

  -- Order Price: N
  index, order_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_price(buffer, index, packet, parent)

  -- Order Price Fraction Indicator: X
  index, order_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_price_fraction_indicator(buffer, index, packet, parent)

  -- Order Type: X
  index, order_type = tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_type(buffer, index, packet, parent)

  -- Order Id: X
  index, order_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_id(buffer, index, packet, parent)

  -- Previous Order Id: X
  index, previous_order_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_initial_and_improvement_order_message = function(buffer, offset, packet, parent)
  if show.strategy_initial_and_improvement_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_initial_and_improvement_order_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_initial_and_improvement_order_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Option Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_initial_and_improvement_order_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_side

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_quantity

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_type

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.order_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_order_id

  return index
end

-- Display: Option Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14_display.option_initial_and_improvement_order_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_initial_and_improvement_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  -- Order Side: X
  index, order_side = tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_side(buffer, index, packet, parent)

  -- Order Quantity: N
  index, order_quantity = tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_quantity(buffer, index, packet, parent)

  -- Order Price: N
  index, order_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_price(buffer, index, packet, parent)

  -- Order Price Fraction Indicator: X
  index, order_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_price_fraction_indicator(buffer, index, packet, parent)

  -- Order Type: X
  index, order_type = tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_type(buffer, index, packet, parent)

  -- Order Id: X
  index, order_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.order_id(buffer, index, packet, parent)

  -- Previous Order Id: X
  index, previous_order_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_initial_and_improvement_order_message = function(buffer, offset, packet, parent)
  if show.option_initial_and_improvement_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.option_initial_and_improvement_order_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.option_initial_and_improvement_order_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reason
tmx_mx_sola_multicast_hsvf_v1_14_size_of.reason = 1

-- Display: Reason
tmx_mx_sola_multicast_hsvf_v1_14_display.reason = function(value)
  if value == "S" then
    return "Reason: Start Of Day (S)"
  end
  if value == "E" then
    return "Reason: End Of Day (E)"
  end
  if value == "U" then
    return "Reason: Instrument New Or Update (U)"
  end
  if value == "C" then
    return "Reason: Trade Cancellation (C)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
tmx_mx_sola_multicast_hsvf_v1_14_dissect.reason = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.reason(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Low Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price_fraction_indicator = 1

-- Display: Low Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.low_price_fraction_indicator = function(value)
  return "Low Price Fraction Indicator: "..value
end

-- Dissect: Low Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.low_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.low_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.low_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Low Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price = 7

-- Display: Low Price
tmx_mx_sola_multicast_hsvf_v1_14_display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.low_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.low_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: Low Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price_sign = 1

-- Display: Low Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_display.low_price_sign = function(value)
  return "Low Price Sign: "..value
end

-- Dissect: Low Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_dissect.low_price_sign = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.low_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.low_price_sign, range, value, display)

  return offset + length, value
end

-- Size: High Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price_fraction_indicator = 1

-- Display: High Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.high_price_fraction_indicator = function(value)
  return "High Price Fraction Indicator: "..value
end

-- Dissect: High Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.high_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.high_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.high_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: High Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price = 7

-- Display: High Price
tmx_mx_sola_multicast_hsvf_v1_14_display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.high_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.high_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: High Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price_sign = 1

-- Display: High Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_display.high_price_sign = function(value)
  return "High Price Sign: "..value
end

-- Dissect: High Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_dissect.high_price_sign = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.high_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.high_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Open Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_price_fraction_indicator = 1

-- Display: Open Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.open_price_fraction_indicator = function(value)
  return "Open Price Fraction Indicator: "..value
end

-- Dissect: Open Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.open_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.open_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Open Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_price = 7

-- Display: Open Price
tmx_mx_sola_multicast_hsvf_v1_14_display.open_price = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.open_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.open_price, range, value, display)

  return offset + length, value
end

-- Size: Open Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_price_sign = 1

-- Display: Open Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_display.open_price_sign = function(value)
  return "Open Price Sign: "..value
end

-- Dissect: Open Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_price_sign = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.open_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.open_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Last Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price_fraction_indicator = 1

-- Display: Last Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.last_price_fraction_indicator = function(value)
  return "Last Price Fraction Indicator: "..value
end

-- Dissect: Last Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.last_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.last_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Last Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price = 7

-- Display: Last Price
tmx_mx_sola_multicast_hsvf_v1_14_display.last_price = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.last_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.last_price, range, value, display)

  return offset + length, value
end

-- Size: Last Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price_sign = 1

-- Display: Last Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_display.last_price_sign = function(value)
  return "Last Price Sign: "..value
end

-- Dissect: Last Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_price_sign = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.last_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.last_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Ask Size
tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_size = 5

-- Display: Ask Size
tmx_mx_sola_multicast_hsvf_v1_14_display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_size = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.ask_size(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_fraction_indicator = 1

-- Display: Ask Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.ask_price_fraction_indicator = function(value)
  return "Ask Price Fraction Indicator: "..value
end

-- Dissect: Ask Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.ask_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price = 7

-- Display: Ask Price
tmx_mx_sola_multicast_hsvf_v1_14_display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.ask_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_sign = 1

-- Display: Ask Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_display.ask_price_sign = function(value)
  return "Ask Price Sign: "..value
end

-- Dissect: Ask Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_sign = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.ask_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_size = 5

-- Display: Bid Size
tmx_mx_sola_multicast_hsvf_v1_14_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_fraction_indicator = 1

-- Display: Bid Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.bid_price_fraction_indicator = function(value)
  return "Bid Price Fraction Indicator: "..value
end

-- Dissect: Bid Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.bid_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price = 7

-- Display: Bid Price
tmx_mx_sola_multicast_hsvf_v1_14_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_sign = 1

-- Display: Bid Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_display.bid_price_sign = function(value)
  return "Bid Price Sign: "..value
end

-- Dissect: Bid Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_sign = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.bid_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_price_sign, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_summary_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_sign

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_sign

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price_sign

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_price_sign

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price_sign

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price_sign

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_sign_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_fraction_indicator_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.reason

  return index
end

-- Display: Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_symbol(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_sign(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_sign(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_size(buffer, index, packet, parent)

  -- Last Price Sign: X
  index, last_price_sign = tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_price_sign(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_price(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_price_fraction_indicator(buffer, index, packet, parent)

  -- Open Price Sign: X
  index, open_price_sign = tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_price_sign(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_price(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_price_fraction_indicator(buffer, index, packet, parent)

  -- High Price Sign: X
  index, high_price_sign = tmx_mx_sola_multicast_hsvf_v1_14_dissect.high_price_sign(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.high_price(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.high_price_fraction_indicator(buffer, index, packet, parent)

  -- Low Price Sign: X
  index, low_price_sign = tmx_mx_sola_multicast_hsvf_v1_14_dissect.low_price_sign(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.low_price(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.low_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_sola_multicast_hsvf_v1_14_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_summary_message = function(buffer, offset, packet, parent)
  if show.strategy_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: External Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.external_price_fraction_indicator = 1

-- Display: External Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.external_price_fraction_indicator = function(value)
  return "External Price Fraction Indicator: "..value
end

-- Dissect: External Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.external_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.external_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.external_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.external_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: External Price At Source
tmx_mx_sola_multicast_hsvf_v1_14_size_of.external_price_at_source = 7

-- Display: External Price At Source
tmx_mx_sola_multicast_hsvf_v1_14_display.external_price_at_source = function(value)
  return "External Price At Source: "..value
end

-- Dissect: External Price At Source
tmx_mx_sola_multicast_hsvf_v1_14_dissect.external_price_at_source = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.external_price_at_source
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.external_price_at_source(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.external_price_at_source, range, value, display)

  return offset + length, value
end

-- Size: Open Interest Date N 7
tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_interest_date_n_7 = 7

-- Display: Open Interest Date N 7
tmx_mx_sola_multicast_hsvf_v1_14_display.open_interest_date_n_7 = function(value)
  return "Open Interest Date N 7: "..value
end

-- Dissect: Open Interest Date N 7
tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_interest_date_n_7 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_interest_date_n_7
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.open_interest_date_n_7(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.open_interest_date_n_7, range, value, display)

  return offset + length, value
end

-- Size: Open Interest
tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_interest = 7

-- Display: Open Interest
tmx_mx_sola_multicast_hsvf_v1_14_display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_interest = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_interest
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.open_interest(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Size: Previous Settlement Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_settlement_fraction_indicator = 1

-- Display: Previous Settlement Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.previous_settlement_fraction_indicator = function(value)
  return "Previous Settlement Fraction Indicator: "..value
end

-- Dissect: Previous Settlement Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_settlement_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_settlement_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.previous_settlement_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Previous Settlement
tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_settlement = 7

-- Display: Previous Settlement
tmx_mx_sola_multicast_hsvf_v1_14_display.previous_settlement = function(value)
  return "Previous Settlement: "..value
end

-- Dissect: Previous Settlement
tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_settlement = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_settlement
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.previous_settlement(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement, range, value, display)

  return offset + length, value
end

-- Size: Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.settlement_price_fraction_indicator = 1

-- Display: Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.settlement_price_fraction_indicator = function(value)
  return "Settlement Price Fraction Indicator: "..value
end

-- Dissect: Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.settlement_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.settlement_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.settlement_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.settlement_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.settlement_price = 7

-- Display: Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14_display.settlement_price = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.settlement_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.settlement_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.settlement_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.futures_summary_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_product(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.settlement_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.settlement_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_sign_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_fraction_indicator_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_settlement

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_settlement_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_interest

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_interest_date_n_7

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.reason

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.external_price_at_source

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.external_price_fraction_indicator

  return index
end

-- Display: Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_display.futures_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_size(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_price(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_price_fraction_indicator(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_price(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_price_fraction_indicator(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.high_price(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.high_price_fraction_indicator(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.low_price(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.low_price_fraction_indicator(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.settlement_price(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator: X
  index, settlement_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.settlement_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume(buffer, index, packet, parent)

  -- Previous Settlement: N
  index, previous_settlement = tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_settlement(buffer, index, packet, parent)

  -- Previous Settlement Fraction Indicator: X
  index, previous_settlement_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_settlement_fraction_indicator(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_interest(buffer, index, packet, parent)

  -- Open Interest Date N 7: N
  index, open_interest_date_n_7 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_interest_date_n_7(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_sola_multicast_hsvf_v1_14_dissect.reason(buffer, index, packet, parent)

  -- External Price At Source: N
  index, external_price_at_source = tmx_mx_sola_multicast_hsvf_v1_14_dissect.external_price_at_source(buffer, index, packet, parent)

  -- External Price Fraction Indicator: X
  index, external_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.external_price_fraction_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_summary_message = function(buffer, offset, packet, parent)
  if show.futures_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.futures_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Previous Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_settlement_price_fraction_indicator = 1

-- Display: Previous Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.previous_settlement_price_fraction_indicator = function(value)
  return "Previous Settlement Price Fraction Indicator: "..value
end

-- Dissect: Previous Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_settlement_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_settlement_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.previous_settlement_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Previous Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_settlement_price = 7

-- Display: Previous Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14_display.previous_settlement_price = function(value)
  return "Previous Settlement Price: "..value
end

-- Dissect: Previous Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_settlement_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_settlement_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.previous_settlement_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement_price, range, value, display)

  return offset + length, value
end

-- Size: Opening Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.opening_price_fraction_indicator = 1

-- Display: Opening Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.opening_price_fraction_indicator = function(value)
  return "Opening Price Fraction Indicator: "..value
end

-- Dissect: Opening Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.opening_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.opening_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.opening_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.opening_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Opening Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.opening_price = 7

-- Display: Opening Price
tmx_mx_sola_multicast_hsvf_v1_14_display.opening_price = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.opening_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.opening_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.opening_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Size: Tick
tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick = 1

-- Display: Tick
tmx_mx_sola_multicast_hsvf_v1_14_display.tick = function(value)
  if value == "+" then
    return "Tick: Uptick (+)"
  end
  if value == "-" then
    return "Tick: Downtick (-)"
  end

  return "Tick: Unknown("..value..")"
end

-- Dissect: Tick
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.tick(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.tick, range, value, display)

  return offset + length, value
end

-- Size: Open Interest Date N 6
tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_interest_date_n_6 = 6

-- Display: Open Interest Date N 6
tmx_mx_sola_multicast_hsvf_v1_14_display.open_interest_date_n_6 = function(value)
  return "Open Interest Date N 6: "..value
end

-- Dissect: Open Interest Date N 6
tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_interest_date_n_6 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_interest_date_n_6
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.open_interest_date_n_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.open_interest_date_n_6, range, value, display)

  return offset + length, value
end

-- Size: Call Put Code
tmx_mx_sola_multicast_hsvf_v1_14_size_of.call_put_code = 1

-- Display: Call Put Code
tmx_mx_sola_multicast_hsvf_v1_14_display.call_put_code = function(value)
  if value == "C" then
    return "Call Put Code: Call (C)"
  end
  if value == "P" then
    return "Call Put Code: Put (P)"
  end

  return "Call Put Code: Unknown("..value..")"
end

-- Dissect: Call Put Code
tmx_mx_sola_multicast_hsvf_v1_14_dissect.call_put_code = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.call_put_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.call_put_code(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.call_put_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Future Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_option_symbol = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.root

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol_month

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol_year

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_day

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.call_put_code

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strike_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strike_price_fraction_indicator

  return index
end

-- Display: Future Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14_display.future_option_symbol = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_option_symbol_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root: X
  index, root = tmx_mx_sola_multicast_hsvf_v1_14_dissect.root(buffer, index, packet, parent)

  -- Symbol Month: A
  index, symbol_month = tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol_month(buffer, index, packet, parent)

  -- Symbol Year: N
  index, symbol_year = tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol_year(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_day(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_sola_multicast_hsvf_v1_14_dissect.call_put_code(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strike_price(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_option_symbol = function(buffer, offset, packet, parent)
  if show.future_option_symbol then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.future_option_symbol, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_option_symbol_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.future_option_symbol(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_option_symbol_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_summary_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_interest

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_interest_date_n_6

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_sign_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_fraction_indicator_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.opening_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.opening_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.settlement_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.settlement_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_settlement_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_settlement_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.reason

  return index
end

-- Display: Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_option_symbol(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_size(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_price(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_price_fraction_indicator(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_interest(buffer, index, packet, parent)

  -- Open Interest Date N 6: N
  index, open_interest_date_n_6 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_interest_date_n_6(buffer, index, packet, parent)

  -- Tick: X
  index, tick = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Opening Price: N
  index, opening_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.opening_price(buffer, index, packet, parent)

  -- Opening Price Fraction Indicator: X
  index, opening_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.opening_price_fraction_indicator(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.high_price(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.high_price_fraction_indicator(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.low_price(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.low_price_fraction_indicator(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.settlement_price(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator: X
  index, settlement_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.settlement_price_fraction_indicator(buffer, index, packet, parent)

  -- Previous Settlement Price: N
  index, previous_settlement_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_settlement_price(buffer, index, packet, parent)

  -- Previous Settlement Price Fraction Indicator: X
  index, previous_settlement_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_settlement_price_fraction_indicator(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_sola_multicast_hsvf_v1_14_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_summary_message = function(buffer, offset, packet, parent)
  if show.future_options_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Previous Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_closing_price_fraction_indicator = 1

-- Display: Previous Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.previous_closing_price_fraction_indicator = function(value)
  return "Previous Closing Price Fraction Indicator: "..value
end

-- Dissect: Previous Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_closing_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_closing_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.previous_closing_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_closing_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Previous Closing Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_closing_price = 7

-- Display: Previous Closing Price
tmx_mx_sola_multicast_hsvf_v1_14_display.previous_closing_price = function(value)
  return "Previous Closing Price: "..value
end

-- Dissect: Previous Closing Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_closing_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_closing_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.previous_closing_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_closing_price, range, value, display)

  return offset + length, value
end

-- Size: Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.closing_price_fraction_indicator = 1

-- Display: Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.closing_price_fraction_indicator = function(value)
  return "Closing Price Fraction Indicator: "..value
end

-- Dissect: Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.closing_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.closing_price_fraction_indicator
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.closing_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.closing_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Closing Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.closing_price = 7

-- Display: Closing Price
tmx_mx_sola_multicast_hsvf_v1_14_display.closing_price = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.closing_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.closing_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.closing_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Size: Option Marker
tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_marker = 2

-- Display: Option Marker
tmx_mx_sola_multicast_hsvf_v1_14_display.option_marker = function(value)
  return "Option Marker: "..value
end

-- Dissect: Option Marker
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_marker = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_marker
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.option_marker(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.option_marker, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_summary_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_interest

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_interest_date_n_6

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_sign_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_fraction_indicator_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.open_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.high_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.low_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_marker

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.closing_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.closing_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_closing_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.previous_closing_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.reason

  return index
end

-- Display: Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_display.option_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_size(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_price(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_price_fraction_indicator(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_interest(buffer, index, packet, parent)

  -- Open Interest Date N 6: N
  index, open_interest_date_n_6 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_interest_date_n_6(buffer, index, packet, parent)

  -- Tick: X
  index, tick = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_price(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.open_price_fraction_indicator(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.high_price(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.high_price_fraction_indicator(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.low_price(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.low_price_fraction_indicator(buffer, index, packet, parent)

  -- Option Marker: A
  index, option_marker = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_marker(buffer, index, packet, parent)

  -- Closing Price: N
  index, closing_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.closing_price(buffer, index, packet, parent)

  -- Closing Price Fraction Indicator: N
  index, closing_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.closing_price_fraction_indicator(buffer, index, packet, parent)

  -- Previous Closing Price: N
  index, previous_closing_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_closing_price(buffer, index, packet, parent)

  -- Previous Closing Price Fraction Indicator: X
  index, previous_closing_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.previous_closing_price_fraction_indicator(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_sola_multicast_hsvf_v1_14_dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_summary_message = function(buffer, offset, packet, parent)
  if show.option_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.option_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.option_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Initial Quantity Assured
tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_quantity_assured = 8

-- Display: Initial Quantity Assured
tmx_mx_sola_multicast_hsvf_v1_14_display.initial_quantity_assured = function(value)
  return "Initial Quantity Assured: "..value
end

-- Dissect: Initial Quantity Assured
tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_quantity_assured = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_quantity_assured
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.initial_quantity_assured(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_quantity_assured, range, value, display)

  return offset + length, value
end

-- Size: Auction Duration
tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_duration = 12

-- Display: Auction Duration
tmx_mx_sola_multicast_hsvf_v1_14_display.auction_duration = function(value)
  return "Auction Duration: "..value
end

-- Dissect: Auction Duration
tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_duration = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_duration
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.auction_duration(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.auction_duration, range, value, display)

  return offset + length, value
end

-- Size: Auction Expiry Timestamp
tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_expiry_timestamp = 20

-- Display: Auction Expiry Timestamp
tmx_mx_sola_multicast_hsvf_v1_14_display.auction_expiry_timestamp = function(value)
  return "Auction Expiry Timestamp: "..value
end

-- Dissect: Auction Expiry Timestamp
tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_expiry_timestamp = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_expiry_timestamp
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.auction_expiry_timestamp(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.auction_expiry_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_price_fraction_indicator = 1

-- Display: Initial Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.initial_order_price_fraction_indicator = function(value)
  return "Initial Order Price Fraction Indicator: "..value
end

-- Dissect: Initial Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_order_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.initial_order_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_price = 7

-- Display: Initial Order Price
tmx_mx_sola_multicast_hsvf_v1_14_display.initial_order_price = function(value)
  return "Initial Order Price: "..value
end

-- Dissect: Initial Order Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_order_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.initial_order_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_price, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_quantity = 8

-- Display: Initial Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14_display.initial_order_quantity = function(value)
  return "Initial Order Quantity: "..value
end

-- Dissect: Initial Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_order_quantity = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_quantity
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.initial_order_quantity(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_quantity, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Side
tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_side = 1

-- Display: Initial Order Side
tmx_mx_sola_multicast_hsvf_v1_14_display.initial_order_side = function(value)
  if value == "B" then
    return "Initial Order Side: Buy (B)"
  end
  if value == "S" then
    return "Initial Order Side: Sell (S)"
  end

  return "Initial Order Side: Unknown("..value..")"
end

-- Dissect: Initial Order Side
tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_order_side = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.initial_order_side(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_auction_beginning_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_side

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_quantity

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_expiry_timestamp

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_duration

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_quantity_assured

  return index
end

-- Display: Strategy Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_auction_beginning_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_auction_beginning_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_symbol(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  -- Initial Order Side: X
  index, initial_order_side = tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_order_side(buffer, index, packet, parent)

  -- Initial Order Quantity: N
  index, initial_order_quantity = tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_order_quantity(buffer, index, packet, parent)

  -- Initial Order Price: N
  index, initial_order_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_order_price(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_order_price_fraction_indicator(buffer, index, packet, parent)

  -- Auction Expiry Timestamp: X
  index, auction_expiry_timestamp = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_expiry_timestamp(buffer, index, packet, parent)

  -- Auction Duration: N
  index, auction_duration = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_duration(buffer, index, packet, parent)

  -- Initial Quantity Assured: N
  index, initial_quantity_assured = tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_quantity_assured(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_auction_beginning_message = function(buffer, offset, packet, parent)
  if show.strategy_auction_beginning_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_auction_beginning_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_auction_beginning_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_auction_beginning_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_auction_beginning_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Option Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_auction_beginning_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_side

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_quantity

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_order_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_expiry_timestamp

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_duration

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.initial_quantity_assured

  return index
end

-- Display: Option Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14_display.option_auction_beginning_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_auction_beginning_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  -- Initial Order Side: X
  index, initial_order_side = tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_order_side(buffer, index, packet, parent)

  -- Initial Order Quantity: N
  index, initial_order_quantity = tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_order_quantity(buffer, index, packet, parent)

  -- Initial Order Price: N
  index, initial_order_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_order_price(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_order_price_fraction_indicator(buffer, index, packet, parent)

  -- Auction Expiry Timestamp: X
  index, auction_expiry_timestamp = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_expiry_timestamp(buffer, index, packet, parent)

  -- Auction Duration: N
  index, auction_duration = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_duration(buffer, index, packet, parent)

  -- Initial Quantity Assured: N
  index, initial_quantity_assured = tmx_mx_sola_multicast_hsvf_v1_14_dissect.initial_quantity_assured(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_auction_beginning_message = function(buffer, offset, packet, parent)
  if show.option_auction_beginning_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.option_auction_beginning_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_auction_beginning_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.option_auction_beginning_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_auction_beginning_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Leg Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_price_fraction_indicator = 1

-- Display: Leg Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.leg_price_fraction_indicator = function(value)
  return "Leg Price Fraction Indicator: "..value
end

-- Dissect: Leg Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.leg_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.leg_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Leg Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_price = 7

-- Display: Leg Price
tmx_mx_sola_multicast_hsvf_v1_14_display.leg_price = function(value)
  return "Leg Price: "..value
end

-- Dissect: Leg Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.leg_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.leg_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Or Delta Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_ratio_or_delta_fraction_indicator = 1

-- Display: Leg Ratio Or Delta Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.leg_ratio_or_delta_fraction_indicator = function(value)
  return "Leg Ratio Or Delta Fraction Indicator: "..value
end

-- Dissect: Leg Ratio Or Delta Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.leg_ratio_or_delta_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_ratio_or_delta_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.leg_ratio_or_delta_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_ratio_or_delta_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Or Delta
tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_ratio_or_delta = 4

-- Display: Leg Ratio Or Delta
tmx_mx_sola_multicast_hsvf_v1_14_display.leg_ratio_or_delta = function(value)
  return "Leg Ratio Or Delta: "..value
end

-- Dissect: Leg Ratio Or Delta
tmx_mx_sola_multicast_hsvf_v1_14_dissect.leg_ratio_or_delta = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_ratio_or_delta
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.leg_ratio_or_delta(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_ratio_or_delta, range, value, display)

  return offset + length, value
end

-- Size: Leg Instrument
tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_instrument = 4

-- Display: Leg Instrument
tmx_mx_sola_multicast_hsvf_v1_14_display.leg_instrument = function(value)
  return "Leg Instrument: "..value
end

-- Dissect: Leg Instrument
tmx_mx_sola_multicast_hsvf_v1_14_dissect.leg_instrument = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_instrument
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.leg_instrument(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_instrument, range, value, display)

  return offset + length, value
end

-- Size: Leg Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_group_instrument = 2

-- Display: Leg Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14_display.leg_group_instrument = function(value)
  return "Leg Group Instrument: "..value
end

-- Dissect: Leg Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14_dissect.leg_group_instrument = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_group_instrument
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.leg_group_instrument(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_group_instrument, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Instrument Leg
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_instrument_leg = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_group_instrument

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_instrument

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_ratio_or_delta

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_ratio_or_delta_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.leg_price_fraction_indicator

  return index
end

-- Display: Strategy Instrument Leg
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_instrument_leg = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Instrument Leg
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_instrument_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Group Instrument: X
  index, leg_group_instrument = tmx_mx_sola_multicast_hsvf_v1_14_dissect.leg_group_instrument(buffer, index, packet, parent)

  -- Leg Instrument: X
  index, leg_instrument = tmx_mx_sola_multicast_hsvf_v1_14_dissect.leg_instrument(buffer, index, packet, parent)

  -- Leg Ratio Or Delta: N
  index, leg_ratio_or_delta = tmx_mx_sola_multicast_hsvf_v1_14_dissect.leg_ratio_or_delta(buffer, index, packet, parent)

  -- Leg Ratio Or Delta Fraction Indicator: X
  index, leg_ratio_or_delta_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.leg_ratio_or_delta_fraction_indicator(buffer, index, packet, parent)

  -- Leg Price: N
  index, leg_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.leg_price(buffer, index, packet, parent)

  -- Leg Price Fraction Indicator: X
  index, leg_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.leg_price_fraction_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Instrument Leg
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_instrument_leg = function(buffer, offset, packet, parent)
  if show.strategy_instrument_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_instrument_leg, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_instrument_leg_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_instrument_leg(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_instrument_leg_fields(buffer, offset, packet, parent)
  end
end

-- Size: Number Of Legs
tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_legs = 2

-- Display: Number Of Legs
tmx_mx_sola_multicast_hsvf_v1_14_display.number_of_legs = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_legs = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_legs
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.number_of_legs(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Size: Variable Legs Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14_size_of.variable_legs_strategy_code = 2

-- Display: Variable Legs Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14_display.variable_legs_strategy_code = function(value)
  return "Variable Legs Strategy Code: "..value
end

-- Dissect: Variable Legs Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14_dissect.variable_legs_strategy_code = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.variable_legs_strategy_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.variable_legs_strategy_code(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.variable_legs_strategy_code, range, value, display)

  return offset + length, value
end

-- Size: Last Trading Datetime
tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_trading_datetime = 14

-- Display: Last Trading Datetime
tmx_mx_sola_multicast_hsvf_v1_14_display.last_trading_datetime = function(value)
  return "Last Trading Datetime: "..value
end

-- Dissect: Last Trading Datetime
tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_trading_datetime = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_trading_datetime
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.last_trading_datetime(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.last_trading_datetime, range, value, display)

  return offset + length, value
end

-- Size: Strategy Type
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_type = 1

-- Display: Strategy Type
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_type = function(value)
  if value == "C" then
    return "Strategy Type: Classic (C)"
  end
  if value == "S" then
    return "Strategy Type: Strip (S)"
  end
  if value == "V" then
    return "Strategy Type: Covered Regular (V)"
  end
  if value == "R" then
    return "Strategy Type: Covered Reference Fixed (R)"
  end

  return "Strategy Type: Unknown("..value..")"
end

-- Dissect: Strategy Type
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_type = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_type(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_type, range, value, display)

  return offset + length, value
end

-- Size: Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_code = 2

-- Display: Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_code = function(value)
  return "Strategy Code: "..value
end

-- Dissect: Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_code = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_code(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_code, range, value, display)

  return offset + length, value
end

-- Size: Strategy Allow Implied
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_allow_implied = 1

-- Display: Strategy Allow Implied
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_allow_implied = function(value)
  if value == "Y" then
    return "Strategy Allow Implied: Yes (Y)"
  end
  if value == "N" then
    return "Strategy Allow Implied: No (N)"
  end

  return "Strategy Allow Implied: Unknown("..value..")"
end

-- Dissect: Strategy Allow Implied
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_allow_implied = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_allow_implied
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_allow_implied(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_allow_implied, range, value, display)

  return offset + length, value
end

-- Size: Instrument External Code
tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_external_code = 30

-- Display: Instrument External Code
tmx_mx_sola_multicast_hsvf_v1_14_display.instrument_external_code = function(value)
  return "Instrument External Code: "..value
end

-- Dissect: Instrument External Code
tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_external_code = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_external_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.instrument_external_code(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_external_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument
tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument = 4

-- Display: Instrument
tmx_mx_sola_multicast_hsvf_v1_14_display.instrument = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.instrument(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument, range, value, display)

  return offset + length, value
end

-- Size: Market Flow Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.market_flow_indicator = 2

-- Display: Market Flow Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.market_flow_indicator = function(value)
  return "Market Flow Indicator: "..value
end

-- Dissect: Market Flow Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.market_flow_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.market_flow_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.market_flow_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.market_flow_indicator, range, value, display)

  return offset + length, value
end

-- Size: Tick Increment Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment_fraction_indicator_x_1 = 1

-- Display: Tick Increment Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14_display.tick_increment_fraction_indicator_x_1 = function(value)
  return "Tick Increment Fraction Indicator X 1: "..value
end

-- Dissect: Tick Increment Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_increment_fraction_indicator_x_1 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment_fraction_indicator_x_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.tick_increment_fraction_indicator_x_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_increment_fraction_indicator_x_1, range, value, display)

  return offset + length, value
end

-- Size: Tick Increment
tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment = 7

-- Display: Tick Increment
tmx_mx_sola_multicast_hsvf_v1_14_display.tick_increment = function(value)
  return "Tick Increment: "..value
end

-- Dissect: Tick Increment
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_increment = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.tick_increment(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_increment, range, value, display)

  return offset + length, value
end

-- Size: Minimum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_fraction_indicator = 1

-- Display: Minimum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.minimum_threshold_price_fraction_indicator = function(value)
  return "Minimum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Minimum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_threshold_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.minimum_threshold_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Minimum Threshold Price X 7
tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_x_7 = 7

-- Display: Minimum Threshold Price X 7
tmx_mx_sola_multicast_hsvf_v1_14_display.minimum_threshold_price_x_7 = function(value)
  return "Minimum Threshold Price X 7: "..value
end

-- Dissect: Minimum Threshold Price X 7
tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_threshold_price_x_7 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_x_7
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.minimum_threshold_price_x_7(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_threshold_price_x_7, range, value, display)

  return offset + length, value
end

-- Size: Maximum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_threshold_price_fraction_indicator = 1

-- Display: Maximum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.maximum_threshold_price_fraction_indicator = function(value)
  return "Maximum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Maximum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_threshold_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_threshold_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.maximum_threshold_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.maximum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Maximum Threshold Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_threshold_price = 7

-- Display: Maximum Threshold Price
tmx_mx_sola_multicast_hsvf_v1_14_display.maximum_threshold_price = function(value)
  return "Maximum Threshold Price: "..value
end

-- Dissect: Maximum Threshold Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_threshold_price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_threshold_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.maximum_threshold_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.maximum_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Minimum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_number_of_contracts_per_order = 6

-- Display: Minimum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14_display.minimum_number_of_contracts_per_order = function(value)
  return "Minimum Number Of Contracts Per Order: "..value
end

-- Dissect: Minimum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_number_of_contracts_per_order = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_number_of_contracts_per_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.minimum_number_of_contracts_per_order(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Size: Maximum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_number_of_contracts_per_order = 6

-- Display: Maximum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14_display.maximum_number_of_contracts_per_order = function(value)
  return "Maximum Number Of Contracts Per Order: "..value
end

-- Dissect: Maximum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_number_of_contracts_per_order = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_number_of_contracts_per_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.maximum_number_of_contracts_per_order(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.maximum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_year

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_month

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_day

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_number_of_contracts_per_order

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_number_of_contracts_per_order

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_threshold_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_threshold_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_x_7

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment_fraction_indicator_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.market_flow_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_instrument

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_external_code

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_allow_implied

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_code

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_type

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_trading_datetime

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.variable_legs_strategy_code

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_legs

  -- Calculate field size from count
  local strategy_instrument_leg_count = buffer(offset + index - 2, 2):string()
  index = index + strategy_instrument_leg_count * 19

  return index
end

-- Display: Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_instrument_keys_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_symbol(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_month(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_day(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Maximum Threshold Price: N
  index, maximum_threshold_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_threshold_price(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Minimum Threshold Price X 7: X
  index, minimum_threshold_price_x_7 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_threshold_price_x_7(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_increment(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator X 1: X
  index, tick_increment_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_increment_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.market_flow_indicator(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_instrument(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_external_code(buffer, index, packet, parent)

  -- Strategy Allow Implied: A
  index, strategy_allow_implied = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_allow_implied(buffer, index, packet, parent)

  -- Strategy Code: X
  index, strategy_code = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_code(buffer, index, packet, parent)

  -- Strategy Type: X
  index, strategy_type = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_type(buffer, index, packet, parent)

  -- Last Trading Datetime: N
  index, last_trading_datetime = tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_trading_datetime(buffer, index, packet, parent)

  -- Variable Legs Strategy Code: X
  index, variable_legs_strategy_code = tmx_mx_sola_multicast_hsvf_v1_14_dissect.variable_legs_strategy_code(buffer, index, packet, parent)

  -- Number Of Legs: N
  index, number_of_legs = tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_legs(buffer, index, packet, parent)

  -- Strategy Instrument Leg: Struct of 6 fields
  for i = 1, number_of_legs do
    index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_instrument_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_instrument_keys_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_instrument_keys_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_instrument_keys_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_instrument_keys_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_instrument_keys_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_instrument_keys_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Associated Product
tmx_mx_sola_multicast_hsvf_v1_14_size_of.associated_product = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.root

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol_month

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol_year

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_day

  return index
end

-- Display: Associated Product
tmx_mx_sola_multicast_hsvf_v1_14_display.associated_product = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Associated Product
tmx_mx_sola_multicast_hsvf_v1_14_dissect.associated_product_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root: X
  index, root = tmx_mx_sola_multicast_hsvf_v1_14_dissect.root(buffer, index, packet, parent)

  -- Symbol Month: A
  index, symbol_month = tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol_month(buffer, index, packet, parent)

  -- Symbol Year: N
  index, symbol_year = tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol_year(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_day(buffer, index, packet, parent)

  return index
end

-- Dissect: Associated Product
tmx_mx_sola_multicast_hsvf_v1_14_dissect.associated_product = function(buffer, offset, packet, parent)
  if show.associated_product then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.associated_product, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.associated_product_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.associated_product(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.associated_product_fields(buffer, offset, packet, parent)
  end
end

-- Size: Delivery Type
tmx_mx_sola_multicast_hsvf_v1_14_size_of.delivery_type = 1

-- Display: Delivery Type
tmx_mx_sola_multicast_hsvf_v1_14_display.delivery_type = function(value)
  if value == "C" then
    return "Delivery Type: Cash (C)"
  end
  if value == "P" then
    return "Delivery Type: Physical (P)"
  end

  return "Delivery Type: Unknown("..value..")"
end

-- Dissect: Delivery Type
tmx_mx_sola_multicast_hsvf_v1_14_dissect.delivery_type = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.delivery_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.delivery_type(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.delivery_type, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_symbol = 12

-- Display: Underlying Symbol
tmx_mx_sola_multicast_hsvf_v1_14_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Currency
tmx_mx_sola_multicast_hsvf_v1_14_size_of.currency = 3

-- Display: Currency
tmx_mx_sola_multicast_hsvf_v1_14_display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
tmx_mx_sola_multicast_hsvf_v1_14_dissect.currency = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.currency(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Tick Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_value_fraction_indicator = 1

-- Display: Tick Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.tick_value_fraction_indicator = function(value)
  return "Tick Value Fraction Indicator: "..value
end

-- Dissect: Tick Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_value_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_value_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.tick_value_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_value_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Tick Value
tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_value = 7

-- Display: Tick Value
tmx_mx_sola_multicast_hsvf_v1_14_display.tick_value = function(value)
  return "Tick Value: "..value
end

-- Dissect: Tick Value
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_value = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_value
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.tick_value(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_value, range, value, display)

  return offset + length, value
end

-- Size: Contract Size
tmx_mx_sola_multicast_hsvf_v1_14_size_of.contract_size = 8

-- Display: Contract Size
tmx_mx_sola_multicast_hsvf_v1_14_display.contract_size = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
tmx_mx_sola_multicast_hsvf_v1_14_dissect.contract_size = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.contract_size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.contract_size(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Size: Tick Increment Fraction Indicator X 7
tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment_fraction_indicator_x_7 = 7

-- Display: Tick Increment Fraction Indicator X 7
tmx_mx_sola_multicast_hsvf_v1_14_display.tick_increment_fraction_indicator_x_7 = function(value)
  return "Tick Increment Fraction Indicator X 7: "..value
end

-- Dissect: Tick Increment Fraction Indicator X 7
tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_increment_fraction_indicator_x_7 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment_fraction_indicator_x_7
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.tick_increment_fraction_indicator_x_7(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_increment_fraction_indicator_x_7, range, value, display)

  return offset + length, value
end

-- Size: Minimum Threshold Price N 7
tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_n_7 = 7

-- Display: Minimum Threshold Price N 7
tmx_mx_sola_multicast_hsvf_v1_14_display.minimum_threshold_price_n_7 = function(value)
  return "Minimum Threshold Price N 7: "..value
end

-- Dissect: Minimum Threshold Price N 7
tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_threshold_price_n_7 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_n_7
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.minimum_threshold_price_n_7(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_threshold_price_n_7, range, value, display)

  return offset + length, value
end

-- Size: Expiry Date
tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_date = 6

-- Display: Expiry Date
tmx_mx_sola_multicast_hsvf_v1_14_display.expiry_date = function(value)
  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_date = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_date
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.expiry_date(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.futures_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_product(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_date

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_number_of_contracts_per_order

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_number_of_contracts_per_order

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_threshold_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_threshold_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_n_7

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment_fraction_indicator_x_7

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.market_flow_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_instrument

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_external_code

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.contract_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_value

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_value_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.currency

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.delivery_type

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.associated_product(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_trading_datetime

  return index
end

-- Display: Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_display.futures_instrument_keys_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product(buffer, index, packet, parent)

  -- Expiry Date: N
  index, expiry_date = tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_date(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Maximum Threshold Price: N
  index, maximum_threshold_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_threshold_price(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Minimum Threshold Price N 7: N
  index, minimum_threshold_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_threshold_price_n_7(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_increment(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator X 7: X
  index, tick_increment_fraction_indicator_x_7 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_increment_fraction_indicator_x_7(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.market_flow_indicator(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_instrument(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_external_code(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.contract_size(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_value(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_value_fraction_indicator(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_sola_multicast_hsvf_v1_14_dissect.currency(buffer, index, packet, parent)

  -- Underlying Symbol: A
  index, underlying_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_sola_multicast_hsvf_v1_14_dissect.delivery_type(buffer, index, packet, parent)

  -- Associated Product: Struct of 4 fields
  index, associated_product = tmx_mx_sola_multicast_hsvf_v1_14_dissect.associated_product(buffer, index, packet, parent)

  -- Last Trading Datetime: N
  index, last_trading_datetime = tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_trading_datetime(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_instrument_keys_message = function(buffer, offset, packet, parent)
  if show.futures_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_instrument_keys_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.futures_instrument_keys_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_instrument_keys_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_instrument

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_external_code

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.market_flow_indicator

  return index
end

-- Display: Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_display.underlying_instrument_keys_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_instrument(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_external_code(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.market_flow_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_instrument_keys_message = function(buffer, offset, packet, parent)
  if show.underlying_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_instrument_keys_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.underlying_instrument_keys_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_instrument_keys_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Underlying Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_symbol_year = 2

-- Display: Underlying Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14_display.underlying_symbol_year = function(value)
  return "Underlying Symbol Year: "..value
end

-- Dissect: Underlying Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_symbol_year = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_symbol_year
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.underlying_symbol_year(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol_year, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_symbol_month = 1

-- Display: Underlying Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14_display.underlying_symbol_month = function(value)
  return "Underlying Symbol Month: "..value
end

-- Dissect: Underlying Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_symbol_month = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_symbol_month
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.underlying_symbol_month(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol_month, range, value, display)

  return offset + length, value
end

-- Size: Underlying Root Symbol
tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_root_symbol = 6

-- Display: Underlying Root Symbol
tmx_mx_sola_multicast_hsvf_v1_14_display.underlying_root_symbol = function(value)
  return "Underlying Root Symbol: "..value
end

-- Dissect: Underlying Root Symbol
tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_root_symbol = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_root_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.underlying_root_symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_root_symbol, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Currency
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strike_price_currency = 3

-- Display: Strike Price Currency
tmx_mx_sola_multicast_hsvf_v1_14_display.strike_price_currency = function(value)
  return "Strike Price Currency: "..value
end

-- Dissect: Strike Price Currency
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strike_price_currency = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.strike_price_currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strike_price_currency(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strike_price_currency, range, value, display)

  return offset + length, value
end

-- Calculate size of: Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.expiry_date

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strike_price_currency

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_number_of_contracts_per_order

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_number_of_contracts_per_order

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_threshold_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_threshold_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_n_7

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment_fraction_indicator_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.market_flow_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_instrument

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_external_code

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.contract_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_value

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_value_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.currency

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.delivery_type

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_root_symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_symbol_month

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_symbol_year

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_trading_datetime

  return index
end

-- Display: Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_instrument_keys_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_option_symbol(buffer, index, packet, parent)

  -- Expiry Date: N
  index, expiry_date = tmx_mx_sola_multicast_hsvf_v1_14_dissect.expiry_date(buffer, index, packet, parent)

  -- Strike Price Currency: A
  index, strike_price_currency = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strike_price_currency(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Maximum Threshold Price: N
  index, maximum_threshold_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_threshold_price(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Minimum Threshold Price N 7: N
  index, minimum_threshold_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_threshold_price_n_7(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_increment(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator X 1: X
  index, tick_increment_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_increment_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.market_flow_indicator(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_instrument(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_external_code(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.contract_size(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_value(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_value_fraction_indicator(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_sola_multicast_hsvf_v1_14_dissect.currency(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_sola_multicast_hsvf_v1_14_dissect.delivery_type(buffer, index, packet, parent)

  -- Underlying Root Symbol: A
  index, underlying_root_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_root_symbol(buffer, index, packet, parent)

  -- Underlying Symbol Month: A
  index, underlying_symbol_month = tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_symbol_month(buffer, index, packet, parent)

  -- Underlying Symbol Year: N
  index, underlying_symbol_year = tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_symbol_year(buffer, index, packet, parent)

  -- Last Trading Datetime: N
  index, last_trading_datetime = tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_trading_datetime(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_instrument_keys_message = function(buffer, offset, packet, parent)
  if show.future_options_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_instrument_keys_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_instrument_keys_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_instrument_keys_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Underlying Symbol Root
tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_symbol_root = 12

-- Display: Underlying Symbol Root
tmx_mx_sola_multicast_hsvf_v1_14_display.underlying_symbol_root = function(value)
  return "Underlying Symbol Root: "..value
end

-- Dissect: Underlying Symbol Root
tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_symbol_root = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_symbol_root
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.underlying_symbol_root(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol_root, range, value, display)

  return offset + length, value
end

-- Size: Option Type
tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_type = 1

-- Display: Option Type
tmx_mx_sola_multicast_hsvf_v1_14_display.option_type = function(value)
  if value == "A" then
    return "Option Type: American (A)"
  end
  if value == "E" then
    return "Option Type: European (E)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_type = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_type
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.option_type(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.option_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strike_price_currency

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_number_of_contracts_per_order

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_number_of_contracts_per_order

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_threshold_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.maximum_threshold_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_n_7

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.minimum_threshold_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_increment_fraction_indicator_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_type

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.market_flow_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_instrument

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_external_code

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_marker

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_symbol_root

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.contract_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_value

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_value_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.currency

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.delivery_type

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.last_trading_datetime

  return index
end

-- Display: Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_display.option_instrument_keys_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol(buffer, index, packet, parent)

  -- Strike Price Currency: A
  index, strike_price_currency = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strike_price_currency(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Maximum Threshold Price: N
  index, maximum_threshold_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_threshold_price(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.maximum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Minimum Threshold Price N 7: N
  index, minimum_threshold_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_threshold_price_n_7(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.minimum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_increment(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator X 1: X
  index, tick_increment_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_increment_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Option Type: N
  index, option_type = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_type(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.market_flow_indicator(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_instrument(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_external_code(buffer, index, packet, parent)

  -- Option Marker: A
  index, option_marker = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_marker(buffer, index, packet, parent)

  -- Underlying Symbol Root: X
  index, underlying_symbol_root = tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_symbol_root(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.contract_size(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_value(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_value_fraction_indicator(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_sola_multicast_hsvf_v1_14_dissect.currency(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_sola_multicast_hsvf_v1_14_dissect.delivery_type(buffer, index, packet, parent)

  -- Last Trading Datetime: N
  index, last_trading_datetime = tmx_mx_sola_multicast_hsvf_v1_14_dissect.last_trading_datetime(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_instrument_keys_message = function(buffer, offset, packet, parent)
  if show.option_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.option_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_instrument_keys_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.option_instrument_keys_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_instrument_keys_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trade Price N 7
tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_n_7 = 7

-- Display: Trade Price N 7
tmx_mx_sola_multicast_hsvf_v1_14_display.trade_price_n_7 = function(value)
  return "Trade Price N 7: "..value
end

-- Dissect: Trade Price N 7
tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_n_7 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_n_7
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.trade_price_n_7(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_n_7, range, value, display)

  return offset + length, value
end

-- Size: Trade Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_sign = 1

-- Display: Trade Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_display.trade_price_sign = function(value)
  return "Trade Price Sign: "..value
end

-- Dissect: Trade Price Sign
tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_sign = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.trade_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_sign, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_sign

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_n_7

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_number

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  return index
end

-- Display: Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_trade_cancellation_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_sign(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_n_7(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_number(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_trade_cancellation_message = function(buffer, offset, packet, parent)
  if show.strategy_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_trade_cancellation_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_trade_cancellation_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_trade_cancellation_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_product(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_n_7

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_indicator_marker_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_number

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  return index
end

-- Display: Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_display.future_trade_cancellation_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_n_7(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.price_indicator_marker_x_1(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_number(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_trade_cancellation_message = function(buffer, offset, packet, parent)
  if show.future_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.future_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_trade_cancellation_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.future_trade_cancellation_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_trade_cancellation_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Price Indicator Marker A 1
tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_indicator_marker_a_1 = 1

-- Display: Price Indicator Marker A 1
tmx_mx_sola_multicast_hsvf_v1_14_display.price_indicator_marker_a_1 = function(value)
  return "Price Indicator Marker A 1: "..value
end

-- Dissect: Price Indicator Marker A 1
tmx_mx_sola_multicast_hsvf_v1_14_dissect.price_indicator_marker_a_1 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_indicator_marker_a_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.price_indicator_marker_a_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.price_indicator_marker_a_1, range, value, display)

  return offset + length, value
end

-- Size: Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_fraction_indicator = 1

-- Display: Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_display.price_fraction_indicator = function(value)
  return "Price Fraction Indicator: "..value
end

-- Dissect: Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14_dissect.price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Price
tmx_mx_sola_multicast_hsvf_v1_14_size_of.price = 7

-- Display: Price
tmx_mx_sola_multicast_hsvf_v1_14_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
tmx_mx_sola_multicast_hsvf_v1_14_dissect.price = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_indicator_marker_a_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_number

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  return index
end

-- Display: Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_trade_cancellation_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_option_symbol(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume(buffer, index, packet, parent)

  -- Price: N
  index, price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.price(buffer, index, packet, parent)

  -- Price Fraction Indicator: X
  index, price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.price_fraction_indicator(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.price_indicator_marker_a_1(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_number(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_trade_cancellation_message = function(buffer, offset, packet, parent)
  if show.future_options_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_trade_cancellation_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_trade_cancellation_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_trade_cancellation_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_n_7

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_indicator_marker_a_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_number

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  return index
end

-- Display: Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_display.option_trade_cancellation_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_n_7(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.price_indicator_marker_a_1(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_number(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_trade_cancellation_message = function(buffer, offset, packet, parent)
  if show.option_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.option_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_trade_cancellation_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.option_trade_cancellation_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_trade_cancellation_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Number Of Ask Orders
tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_ask_orders = 2

-- Display: Number Of Ask Orders
tmx_mx_sola_multicast_hsvf_v1_14_display.number_of_ask_orders = function(value)
  return "Number Of Ask Orders: "..value
end

-- Dissect: Number Of Ask Orders
tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_ask_orders = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_ask_orders
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.number_of_ask_orders(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_ask_orders, range, value, display)

  return offset + length, value
end

-- Size: Number Of Bid Orders
tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_bid_orders = 2

-- Display: Number Of Bid Orders
tmx_mx_sola_multicast_hsvf_v1_14_display.number_of_bid_orders = function(value)
  return "Number Of Bid Orders: "..value
end

-- Dissect: Number Of Bid Orders
tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_bid_orders = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_bid_orders
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.number_of_bid_orders(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_bid_orders, range, value, display)

  return offset + length, value
end

-- Size: Level Of Market Depth
tmx_mx_sola_multicast_hsvf_v1_14_size_of.level_of_market_depth = 1

-- Display: Level Of Market Depth
tmx_mx_sola_multicast_hsvf_v1_14_display.level_of_market_depth = function(value)
  return "Level Of Market Depth: "..value
end

-- Dissect: Level Of Market Depth
tmx_mx_sola_multicast_hsvf_v1_14_dissect.level_of_market_depth = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.level_of_market_depth
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.level_of_market_depth(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.level_of_market_depth, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_market_depth_level = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.level_of_market_depth

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_sign

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_bid_orders

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_sign

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_ask_orders

  return index
end

-- Display: Strategy Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_market_depth_level = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_market_depth_level_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_sola_multicast_hsvf_v1_14_dissect.level_of_market_depth(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_sign(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_size(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_bid_orders(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_sign(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_size(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_ask_orders(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_market_depth_level = function(buffer, offset, packet, parent)
  if show.strategy_market_depth_level then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_market_depth_level, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_market_depth_level_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_market_depth_level(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_market_depth_level_fields(buffer, offset, packet, parent)
  end
end

-- Size: Number Of Levels
tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_levels = 1

-- Display: Number Of Levels
tmx_mx_sola_multicast_hsvf_v1_14_display.number_of_levels = function(value)
  return "Number Of Levels: "..value
end

-- Dissect: Number Of Levels
tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_levels = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_levels
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.number_of_levels(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_levels, range, value, display)

  return offset + length, value
end

-- Size: Instrument Status Marker
tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_status_marker = 1

-- Display: Instrument Status Marker
tmx_mx_sola_multicast_hsvf_v1_14_display.instrument_status_marker = function(value)
  if value == "Y" then
    return "Instrument Status Marker: Preopening (Y)"
  end
  if value == "O" then
    return "Instrument Status Marker: Opening (O)"
  end
  if value == "T" then
    return "Instrument Status Marker: Continuous Trading (T)"
  end
  if value == "F" then
    return "Instrument Status Marker: Forbidden (F)"
  end
  if value == "E" then
    return "Instrument Status Marker: Intervention Before Opening (E)"
  end
  if value == "H" then
    return "Instrument Status Marker: Halted Trading (H)"
  end
  if value == "R" then
    return "Instrument Status Marker: Reserved (R)"
  end
  if value == "S" then
    return "Instrument Status Marker: Suspended (S)"
  end
  if value == "A" then
    return "Instrument Status Marker: Surveillance Intervention (A)"
  end
  if value == "C" then
    return "Instrument Status Marker: Endof Day Inquiries (C)"
  end
  if value == " " then
    return "Instrument Status Marker: Not Available (<whitespace>)"
  end

  return "Instrument Status Marker: Unknown("..value..")"
end

-- Dissect: Instrument Status Marker
tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_status_marker = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_status_marker
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.instrument_status_marker(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_status_marker, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_market_depth_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_status_marker

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_levels

  -- Calculate field size from count
  local strategy_market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + strategy_market_depth_level_count * 33

  return index
end

-- Display: Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_market_depth_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_market_depth_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_status_marker(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_levels(buffer, index, packet, parent)

  -- Strategy Market Depth Level: Struct of 11 fields
  for i = 1, number_of_levels do
    index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_market_depth_level(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_market_depth_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_market_depth_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_market_depth_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_market_depth_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_market_depth_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_market_depth_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14_size_of.market_depth_level = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.level_of_market_depth

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_bid_orders

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_ask_orders

  return index
end

-- Display: Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14_display.market_depth_level = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14_dissect.market_depth_level_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_sola_multicast_hsvf_v1_14_dissect.level_of_market_depth(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_size(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_bid_orders(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_size(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_ask_orders(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14_dissect.market_depth_level = function(buffer, offset, packet, parent)
  if show.market_depth_level then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.market_depth_level, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.market_depth_level_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.market_depth_level(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.market_depth_level_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.futures_market_depth_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_product(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_status_marker

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_levels

  -- Calculate field size from count
  local market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + market_depth_level_count * 31

  return index
end

-- Display: Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_display.futures_market_depth_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_market_depth_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_status_marker(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_levels(buffer, index, packet, parent)

  -- Market Depth Level: Struct of 9 fields
  for i = 1, number_of_levels do
    index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.market_depth_level(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_market_depth_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.futures_market_depth_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.futures_market_depth_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.futures_market_depth_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_market_depth_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_market_depth_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_market_depth_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_status_marker

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_levels

  -- Calculate field size from count
  local market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + market_depth_level_count * 31

  return index
end

-- Display: Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_market_depth_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_market_depth_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_option_symbol(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_status_marker(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_levels(buffer, index, packet, parent)

  -- Market Depth Level: Struct of 9 fields
  for i = 1, number_of_levels do
    index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.market_depth_level(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_market_depth_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.future_options_market_depth_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_market_depth_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_market_depth_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_market_depth_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_market_depth_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_market_depth_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_status_marker

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.number_of_levels

  -- Calculate field size from count
  local market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + market_depth_level_count * 31

  return index
end

-- Display: Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_display.option_market_depth_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_market_depth_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_status_marker(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = tmx_mx_sola_multicast_hsvf_v1_14_dissect.number_of_levels(buffer, index, packet, parent)

  -- Market Depth Level: Struct of 9 fields
  for i = 1, number_of_levels do
    index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.market_depth_level(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_market_depth_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.option_market_depth_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_market_depth_message(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.option_market_depth_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.option_market_depth_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_market_depth_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_quote_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_sign

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_sign

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_status_marker

  return index
end

-- Display: Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_sign(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_sign(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_size(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_status_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_quote_message = function(buffer, offset, packet, parent)
  if show.strategy_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_quote_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_quote_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_quote_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.futures_quote_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_product(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_status_marker

  return index
end

-- Display: Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_display.futures_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_size(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_status_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_quote_message = function(buffer, offset, packet, parent)
  if show.futures_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_quote_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.futures_quote_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_quote_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_quote_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_status_marker

  return index
end

-- Display: Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_option_symbol(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_size(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_status_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_quote_message = function(buffer, offset, packet, parent)
  if show.future_options_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_quote_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_quote_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_quote_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_quote_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.bid_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.ask_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_status_marker

  return index
end

-- Display: Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_display.option_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.ask_size(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_status_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_quote_message = function(buffer, offset, packet, parent)
  if show.option_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.option_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_quote_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.option_quote_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_quote_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Scheduled Status Change Time
tmx_mx_sola_multicast_hsvf_v1_14_size_of.scheduled_status_change_time = 6

-- Display: Scheduled Status Change Time
tmx_mx_sola_multicast_hsvf_v1_14_display.scheduled_status_change_time = function(value)
  return "Scheduled Status Change Time: "..value
end

-- Dissect: Scheduled Status Change Time
tmx_mx_sola_multicast_hsvf_v1_14_dissect.scheduled_status_change_time = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.scheduled_status_change_time
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.scheduled_status_change_time(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.scheduled_status_change_time, range, value, display)

  return offset + length, value
end

-- Size: Series Status
tmx_mx_sola_multicast_hsvf_v1_14_size_of.series_status = 1

-- Display: Series Status
tmx_mx_sola_multicast_hsvf_v1_14_display.series_status = function(value)
  if value == "Y" then
    return "Series Status: Preopening (Y)"
  end
  if value == "O" then
    return "Series Status: Opening (O)"
  end
  if value == "T" then
    return "Series Status: Continuous Trading (T)"
  end
  if value == "F" then
    return "Series Status: Forbidden (F)"
  end
  if value == "E" then
    return "Series Status: Intervention Before Opening (E)"
  end
  if value == "H" then
    return "Series Status: Halted Trading (H)"
  end
  if value == "R" then
    return "Series Status: Reserved (R)"
  end
  if value == "S" then
    return "Series Status: Suspended (S)"
  end
  if value == "A" then
    return "Series Status: Surveillance Intervention (A)"
  end
  if value == "C" then
    return "Series Status: Endof Day Inquiries (C)"
  end
  if value == " " then
    return "Series Status: Not Available (<whitespace>)"
  end

  return "Series Status: Unknown("..value..")"
end

-- Dissect: Series Status
tmx_mx_sola_multicast_hsvf_v1_14_dissect.series_status = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.series_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.series_status(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.series_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_schedule_notice_strategy_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.series_status

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.scheduled_status_change_time

  return index
end

-- Display: Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_14_display.instrument_schedule_notice_strategy_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_strategy_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_symbol(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_sola_multicast_hsvf_v1_14_dissect.series_status(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_sola_multicast_hsvf_v1_14_dissect.scheduled_status_change_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_strategy_message = function(buffer, offset, packet, parent)
  if show.instrument_schedule_notice_strategy_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_strategy_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_strategy_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.instrument_schedule_notice_strategy_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_strategy_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_schedule_notice_future_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_product(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.series_status

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.scheduled_status_change_time

  return index
end

-- Display: Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_14_display.instrument_schedule_notice_future_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_future_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_sola_multicast_hsvf_v1_14_dissect.series_status(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_sola_multicast_hsvf_v1_14_dissect.scheduled_status_change_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_future_message = function(buffer, offset, packet, parent)
  if show.instrument_schedule_notice_future_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_future_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_future_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.instrument_schedule_notice_future_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_future_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_schedule_notice_futures_option_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.series_status

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.scheduled_status_change_time

  return index
end

-- Display: Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_14_display.instrument_schedule_notice_futures_option_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_futures_option_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_option_symbol(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_sola_multicast_hsvf_v1_14_dissect.series_status(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_sola_multicast_hsvf_v1_14_dissect.scheduled_status_change_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_futures_option_message = function(buffer, offset, packet, parent)
  if show.instrument_schedule_notice_futures_option_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_futures_option_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_futures_option_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.instrument_schedule_notice_futures_option_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_futures_option_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_schedule_notice_option_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.series_status

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.scheduled_status_change_time

  return index
end

-- Display: Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_14_display.instrument_schedule_notice_option_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_option_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_sola_multicast_hsvf_v1_14_dissect.series_status(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_sola_multicast_hsvf_v1_14_dissect.scheduled_status_change_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_option_message = function(buffer, offset, packet, parent)
  if show.instrument_schedule_notice_option_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_option_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_option_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.instrument_schedule_notice_option_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_option_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Requested Market Side
tmx_mx_sola_multicast_hsvf_v1_14_size_of.requested_market_side = 1

-- Display: Requested Market Side
tmx_mx_sola_multicast_hsvf_v1_14_display.requested_market_side = function(value)
  if value == "B" then
    return "Requested Market Side: Buy (B)"
  end
  if value == "S" then
    return "Requested Market Side: Sell (S)"
  end
  if value == "2" then
    return "Requested Market Side: Both (2)"
  end

  return "Requested Market Side: Unknown("..value..")"
end

-- Dissect: Requested Market Side
tmx_mx_sola_multicast_hsvf_v1_14_dissect.requested_market_side = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.requested_market_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.requested_market_side(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.requested_market_side, range, value, display)

  return offset + length, value
end

-- Size: Requested Size
tmx_mx_sola_multicast_hsvf_v1_14_size_of.requested_size = 8

-- Display: Requested Size
tmx_mx_sola_multicast_hsvf_v1_14_display.requested_size = function(value)
  return "Requested Size: "..value
end

-- Dissect: Requested Size
tmx_mx_sola_multicast_hsvf_v1_14_dissect.requested_size = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.requested_size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.requested_size(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.requested_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_request_for_quote_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.requested_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.requested_market_side

  return index
end

-- Display: Strategy Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_request_for_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_request_for_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.requested_size(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_sola_multicast_hsvf_v1_14_dissect.requested_market_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_request_for_quote_message = function(buffer, offset, packet, parent)
  if show.strategy_request_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_request_for_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_request_for_quote_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_request_for_quote_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_request_for_quote_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Future Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_request_for_quote_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_product(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.requested_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.requested_market_side

  return index
end

-- Display: Future Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_display.future_request_for_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_request_for_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.requested_size(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_sola_multicast_hsvf_v1_14_dissect.requested_market_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_request_for_quote_message = function(buffer, offset, packet, parent)
  if show.future_request_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.future_request_for_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_request_for_quote_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.future_request_for_quote_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_request_for_quote_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Future Options Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_request_for_quote_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.requested_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.requested_market_side

  return index
end

-- Display: Future Options Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_request_for_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_request_for_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_option_symbol(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.requested_size(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_sola_multicast_hsvf_v1_14_dissect.requested_market_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_request_for_quote_message = function(buffer, offset, packet, parent)
  if show.future_options_request_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_request_for_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_request_for_quote_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_request_for_quote_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_request_for_quote_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Option Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_request_for_quote_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.requested_size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.requested_market_side

  return index
end

-- Display: Option Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_display.option_request_for_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_request_for_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_sola_multicast_hsvf_v1_14_dissect.requested_size(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_sola_multicast_hsvf_v1_14_dissect.requested_market_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_request_for_quote_message = function(buffer, offset, packet, parent)
  if show.option_request_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.option_request_for_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_request_for_quote_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.option_request_for_quote_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_request_for_quote_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_trade_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.symbol

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_sign

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_n_7

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_sign_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_fraction_indicator_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_indicator_marker_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_number

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  return index
end

-- Display: Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.symbol(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_sign(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_n_7(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.price_indicator_marker_x_1(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_number(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_trade_message = function(buffer, offset, packet, parent)
  if show.strategy_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_trade_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.strategy_trade_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.futures_trade_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_product(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_n_7

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_sign_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_fraction_indicator_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_indicator_marker_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_number

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  return index
end

-- Display: Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_display.futures_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_product(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_n_7(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.price_indicator_marker_x_1(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_number(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_trade_message = function(buffer, offset, packet, parent)
  if show.futures_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_trade_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.futures_trade_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Net Change Fraction Indicator A 1
tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_fraction_indicator_a_1 = 1

-- Display: Net Change Fraction Indicator A 1
tmx_mx_sola_multicast_hsvf_v1_14_display.net_change_fraction_indicator_a_1 = function(value)
  return "Net Change Fraction Indicator A 1: "..value
end

-- Dissect: Net Change Fraction Indicator A 1
tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_fraction_indicator_a_1 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_fraction_indicator_a_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.net_change_fraction_indicator_a_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_fraction_indicator_a_1, range, value, display)

  return offset + length, value
end

-- Size: Net Change Sign A 1
tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_sign_a_1 = 1

-- Display: Net Change Sign A 1
tmx_mx_sola_multicast_hsvf_v1_14_display.net_change_sign_a_1 = function(value)
  return "Net Change Sign A 1: "..value
end

-- Dissect: Net Change Sign A 1
tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_sign_a_1 = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_sign_a_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.net_change_sign_a_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_sign_a_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_trade_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_n_7

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_indicator_marker_a_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_sign_a_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_fraction_indicator_a_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_number

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  return index
end

-- Display: Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_option_symbol(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_n_7(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.price_indicator_marker_a_1(buffer, index, packet, parent)

  -- Net Change Sign A 1: A
  index, net_change_sign_a_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_sign_a_1(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator A 1: A
  index, net_change_fraction_indicator_a_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_fraction_indicator_a_1(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_number(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_trade_message = function(buffer, offset, packet, parent)
  if show.future_options_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_trade_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.future_options_trade_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_trade_message = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.exchange_id

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_symbol(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.volume

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_n_7

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_price_fraction_indicator

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_sign_a_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.net_change_fraction_indicator_x_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.price_indicator_marker_a_1

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.trade_number

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.auction_id

  return index
end

-- Display: Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_display.option_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.exchange_id(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_symbol(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14_dissect.volume(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_n_7(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign A 1: A
  index, net_change_sign_a_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_sign_a_1(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_14_dissect.price_indicator_marker_a_1(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14_dissect.trade_number(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14_dissect.auction_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_trade_message = function(buffer, offset, packet, parent)
  if show.option_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.option_trade_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.option_trade_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Message Body
tmx_mx_sola_multicast_hsvf_v1_14_size_of.message_body = function(buffer, offset, message_type)
  -- Size of Option Trade Message
  if message_type == "C" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_trade_message(buffer, offset)
  end
  -- Size of Future Options Trade Message
  if message_type == "CB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_trade_message(buffer, offset)
  end
  -- Size of Futures Trade Message
  if message_type == "CF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.futures_trade_message(buffer, offset)
  end
  -- Size of Strategy Trade Message
  if message_type == "CS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_trade_message(buffer, offset)
  end
  -- Size of Option Request For Quote Message
  if message_type == "D" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_request_for_quote_message(buffer, offset)
  end
  -- Size of Future Options Request For Quote Message
  if message_type == "DB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_request_for_quote_message(buffer, offset)
  end
  -- Size of Future Request For Quote Message
  if message_type == "DF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_request_for_quote_message(buffer, offset)
  end
  -- Size of Strategy Request For Quote Message
  if message_type == "DS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_request_for_quote_message(buffer, offset)
  end
  -- Size of Instrument Schedule Notice Option Message
  if message_type == "E" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_schedule_notice_option_message(buffer, offset)
  end
  -- Size of Instrument Schedule Notice Futures Option Message
  if message_type == "EB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_schedule_notice_futures_option_message(buffer, offset)
  end
  -- Size of Instrument Schedule Notice Future Message
  if message_type == "EF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_schedule_notice_future_message(buffer, offset)
  end
  -- Size of Instrument Schedule Notice Strategy Message
  if message_type == "ES" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.instrument_schedule_notice_strategy_message(buffer, offset)
  end
  -- Size of Option Quote Message
  if message_type == "F" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_quote_message(buffer, offset)
  end
  -- Size of Future Options Quote Message
  if message_type == "FB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_quote_message(buffer, offset)
  end
  -- Size of Futures Quote Message
  if message_type == "FF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.futures_quote_message(buffer, offset)
  end
  -- Size of Strategy Quote Message
  if message_type == "FS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_quote_message(buffer, offset)
  end
  -- Size of Option Market Depth Message
  if message_type == "H" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_market_depth_message(buffer, offset)
  end
  -- Size of Future Options Market Depth Message
  if message_type == "HB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_market_depth_message(buffer, offset)
  end
  -- Size of Futures Market Depth Message
  if message_type == "HF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.futures_market_depth_message(buffer, offset)
  end
  -- Size of Strategy Market Depth Message
  if message_type == "HS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_market_depth_message(buffer, offset)
  end
  -- Size of Option Trade Cancellation Message
  if message_type == "I" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_trade_cancellation_message(buffer, offset)
  end
  -- Size of Future Options Trade Cancellation Message
  if message_type == "IB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_trade_cancellation_message(buffer, offset)
  end
  -- Size of Future Trade Cancellation Message
  if message_type == "IF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_trade_cancellation_message(buffer, offset)
  end
  -- Size of Strategy Trade Cancellation Message
  if message_type == "IS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_trade_cancellation_message(buffer, offset)
  end
  -- Size of Option Instrument Keys Message
  if message_type == "J" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_instrument_keys_message(buffer, offset)
  end
  -- Size of Future Options Instrument Keys Message
  if message_type == "JB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_instrument_keys_message(buffer, offset)
  end
  -- Size of Underlying Instrument Keys Message
  if message_type == "JE" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.underlying_instrument_keys_message(buffer, offset)
  end
  -- Size of Futures Instrument Keys Message
  if message_type == "JF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.futures_instrument_keys_message(buffer, offset)
  end
  -- Size of Strategy Instrument Keys Message
  if message_type == "JS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_instrument_keys_message(buffer, offset)
  end
  -- Size of Option Auction Beginning Message
  if message_type == "M" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_auction_beginning_message(buffer, offset)
  end
  -- Size of Strategy Auction Beginning Message
  if message_type == "MS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_auction_beginning_message(buffer, offset)
  end
  -- Size of Option Summary Message
  if message_type == "N" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_summary_message(buffer, offset)
  end
  -- Size of Future Options Summary Message
  if message_type == "NB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_options_summary_message(buffer, offset)
  end
  -- Size of Futures Summary Message
  if message_type == "NF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.futures_summary_message(buffer, offset)
  end
  -- Size of Strategy Summary Message
  if message_type == "NS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_summary_message(buffer, offset)
  end
  -- Size of Option Initial And Improvement Order Message
  if message_type == "O" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_initial_and_improvement_order_message(buffer, offset)
  end
  -- Size of Strategy Initial And Improvement Order Message
  if message_type == "OS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_initial_and_improvement_order_message(buffer, offset)
  end
  -- Size of Beginning Of Options Summary Message
  if message_type == "Q" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.beginning_of_options_summary_message(buffer, offset)
  end
  -- Size of Beginning Of Future Options Summary Message
  if message_type == "QB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.beginning_of_future_options_summary_message(buffer, offset)
  end
  -- Size of Beginning Of Futures Summary Message
  if message_type == "QF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.beginning_of_futures_summary_message(buffer, offset)
  end
  -- Size of Beginning Of Strategy Summary Message
  if message_type == "QS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.beginning_of_strategy_summary_message(buffer, offset)
  end
  -- Size of Option Auction Ending Message
  if message_type == "T" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.option_auction_ending_message(buffer, offset)
  end
  -- Size of Strategy Auction Ending Message
  if message_type == "TS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.strategy_auction_ending_message(buffer, offset)
  end
  -- Size of Futures Trade Correction Message
  if message_type == "XF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.futures_trade_correction_message(buffer, offset)
  end
  -- Size of Group Status Message
  if message_type == "GR" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_status_message(buffer, offset)
  end
  -- Size of Group Status Strategies Message
  if message_type == "GS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.group_status_strategies_message(buffer, offset)
  end
  -- Size of Future Deliverables Message
  if message_type == "XF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.future_deliverables_message(buffer, offset)
  end
  -- Size of Bulletins Message
  if message_type == "L" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.bulletins_message(buffer, offset)
  end
  -- Size of End Of Sales Message
  if message_type == "S" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.end_of_sales_message(buffer, offset)
  end
  -- Size of Tick Table Message
  if message_type == "TT" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.tick_table_message(buffer, offset)
  end
  -- Size of End Of Transmission Message
  if message_type == "U" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.end_of_transmission_message(buffer, offset)
  end
  -- Size of Circuit Assurance Message
  if message_type == "V" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.circuit_assurance_message(buffer, offset)
  end
  -- Size of Start Of Day Message
  if message_type == "SD" then
    return tmx_mx_sola_multicast_hsvf_v1_14_size_of.start_of_day_message(buffer, offset)
  end

  return 0
end

-- Display: Message Body
tmx_mx_sola_multicast_hsvf_v1_14_display.message_body = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Body
tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_body_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Option Trade Message
  if message_type == "C" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Message
  if message_type == "CB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Message
  if message_type == "CF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Message
  if message_type == "CS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Request For Quote Message
  if message_type == "D" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_request_for_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Request For Quote Message
  if message_type == "DB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_request_for_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Request For Quote Message
  if message_type == "DF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_request_for_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Request For Quote Message
  if message_type == "DS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_request_for_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Option Message
  if message_type == "E" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_option_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Futures Option Message
  if message_type == "EB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_futures_option_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Future Message
  if message_type == "EF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_future_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Strategy Message
  if message_type == "ES" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.instrument_schedule_notice_strategy_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Quote Message
  if message_type == "F" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Quote Message
  if message_type == "FB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Quote Message
  if message_type == "FF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Quote Message
  if message_type == "FS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Market Depth Message
  if message_type == "H" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_market_depth_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Market Depth Message
  if message_type == "HB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_market_depth_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Market Depth Message
  if message_type == "HF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_market_depth_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Market Depth Message
  if message_type == "HS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_market_depth_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Cancellation Message
  if message_type == "I" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Cancellation Message
  if message_type == "IB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Trade Cancellation Message
  if message_type == "IF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Cancellation Message
  if message_type == "IS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Instrument Keys Message
  if message_type == "J" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Instrument Keys Message
  if message_type == "JB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Instrument Keys Message
  if message_type == "JE" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.underlying_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Keys Message
  if message_type == "JF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Instrument Keys Message
  if message_type == "JS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Auction Beginning Message
  if message_type == "M" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_auction_beginning_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Auction Beginning Message
  if message_type == "MS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_auction_beginning_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Summary Message
  if message_type == "N" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Summary Message
  if message_type == "NB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_options_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Summary Message
  if message_type == "NF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Summary Message
  if message_type == "NS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Initial And Improvement Order Message
  if message_type == "O" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_initial_and_improvement_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Initial And Improvement Order Message
  if message_type == "OS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_initial_and_improvement_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Options Summary Message
  if message_type == "Q" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_options_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Future Options Summary Message
  if message_type == "QB" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_future_options_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Futures Summary Message
  if message_type == "QF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_futures_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Strategy Summary Message
  if message_type == "QS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.beginning_of_strategy_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Auction Ending Message
  if message_type == "T" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.option_auction_ending_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Auction Ending Message
  if message_type == "TS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.strategy_auction_ending_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Correction Message
  if message_type == "XF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.futures_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Group Status Message
  if message_type == "GR" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Group Status Strategies Message
  if message_type == "GS" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.group_status_strategies_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Deliverables Message
  if message_type == "XF" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.future_deliverables_message(buffer, offset, packet, parent)
  end
  -- Dissect Bulletins Message
  if message_type == "L" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.bulletins_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Sales Message
  if message_type == "S" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.end_of_sales_message(buffer, offset, packet, parent)
  end
  -- Dissect Tick Table Message
  if message_type == "TT" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.tick_table_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmission Message
  if message_type == "U" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.end_of_transmission_message(buffer, offset, packet, parent)
  end
  -- Dissect Circuit Assurance Message
  if message_type == "V" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.circuit_assurance_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Day Message
  if message_type == "SD" then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.start_of_day_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Body
tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_body = function(buffer, offset, packet, parent, message_type)
  if not show.message_body then
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_body_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = tmx_mx_sola_multicast_hsvf_v1_14_size_of.message_body(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.message_body(buffer, packet, parent)
  local element = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.message_body, range, display)

  return tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_body_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Timestamp
tmx_mx_sola_multicast_hsvf_v1_14_size_of.message_timestamp = 20

-- Display: Message Timestamp
tmx_mx_sola_multicast_hsvf_v1_14_display.message_timestamp = function(value)
  return "Message Timestamp: "..value
end

-- Dissect: Message Timestamp
tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_timestamp = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.message_timestamp
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.message_timestamp(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.message_timestamp, range, value, display)

  return offset + length, value
end

-- Size: Message Type
tmx_mx_sola_multicast_hsvf_v1_14_size_of.message_type = 2

-- Display: Message Type
tmx_mx_sola_multicast_hsvf_v1_14_display.message_type = function(value)
  if value == "C" then
    return "Message Type: Option Trade Message (C)"
  end
  if value == "CB" then
    return "Message Type: Future Options Trade Message (CB)"
  end
  if value == "CF" then
    return "Message Type: Futures Trade Message (CF)"
  end
  if value == "CS" then
    return "Message Type: Strategy Trade Message (CS)"
  end
  if value == "D" then
    return "Message Type: Option Request For Quote Message (D)"
  end
  if value == "DB" then
    return "Message Type: Future Options Request For Quote Message (DB)"
  end
  if value == "DF" then
    return "Message Type: Future Request For Quote Message (DF)"
  end
  if value == "DS" then
    return "Message Type: Strategy Request For Quote Message (DS)"
  end
  if value == "E" then
    return "Message Type: Instrument Schedule Notice Option Message (E)"
  end
  if value == "EB" then
    return "Message Type: Instrument Schedule Notice Futures Option Message (EB)"
  end
  if value == "EF" then
    return "Message Type: Instrument Schedule Notice Future Message (EF)"
  end
  if value == "ES" then
    return "Message Type: Instrument Schedule Notice Strategy Message (ES)"
  end
  if value == "F" then
    return "Message Type: Option Quote Message (F)"
  end
  if value == "FB" then
    return "Message Type: Future Options Quote Message (FB)"
  end
  if value == "FF" then
    return "Message Type: Futures Quote Message (FF)"
  end
  if value == "FS" then
    return "Message Type: Strategy Quote Message (FS)"
  end
  if value == "H" then
    return "Message Type: Option Market Depth Message (H)"
  end
  if value == "HB" then
    return "Message Type: Future Options Market Depth Message (HB)"
  end
  if value == "HF" then
    return "Message Type: Futures Market Depth Message (HF)"
  end
  if value == "HS" then
    return "Message Type: Strategy Market Depth Message (HS)"
  end
  if value == "I" then
    return "Message Type: Option Trade Cancellation Message (I)"
  end
  if value == "IB" then
    return "Message Type: Future Options Trade Cancellation Message (IB)"
  end
  if value == "IF" then
    return "Message Type: Future Trade Cancellation Message (IF)"
  end
  if value == "IS" then
    return "Message Type: Strategy Trade Cancellation Message (IS)"
  end
  if value == "J" then
    return "Message Type: Option Instrument Keys Message (J)"
  end
  if value == "JB" then
    return "Message Type: Future Options Instrument Keys Message (JB)"
  end
  if value == "JE" then
    return "Message Type: Underlying Instrument Keys Message (JE)"
  end
  if value == "JF" then
    return "Message Type: Futures Instrument Keys Message (JF)"
  end
  if value == "JS" then
    return "Message Type: Strategy Instrument Keys Message (JS)"
  end
  if value == "M" then
    return "Message Type: Option Auction Beginning Message (M)"
  end
  if value == "MS" then
    return "Message Type: Strategy Auction Beginning Message (MS)"
  end
  if value == "N" then
    return "Message Type: Option Summary Message (N)"
  end
  if value == "NB" then
    return "Message Type: Future Options Summary Message (NB)"
  end
  if value == "NF" then
    return "Message Type: Futures Summary Message (NF)"
  end
  if value == "NS" then
    return "Message Type: Strategy Summary Message (NS)"
  end
  if value == "O" then
    return "Message Type: Option Initial And Improvement Order Message (O)"
  end
  if value == "OS" then
    return "Message Type: Strategy Initial And Improvement Order Message (OS)"
  end
  if value == "Q" then
    return "Message Type: Beginning Of Options Summary Message (Q)"
  end
  if value == "QB" then
    return "Message Type: Beginning Of Future Options Summary Message (QB)"
  end
  if value == "QF" then
    return "Message Type: Beginning Of Futures Summary Message (QF)"
  end
  if value == "QS" then
    return "Message Type: Beginning Of Strategy Summary Message (QS)"
  end
  if value == "T" then
    return "Message Type: Option Auction Ending Message (T)"
  end
  if value == "TS" then
    return "Message Type: Strategy Auction Ending Message (TS)"
  end
  if value == "XF" then
    return "Message Type: Futures Trade Correction Message (XF)"
  end
  if value == "GR" then
    return "Message Type: Group Status Message (GR)"
  end
  if value == "GS" then
    return "Message Type: Group Status Strategies Message (GS)"
  end
  if value == "XF" then
    return "Message Type: Future Deliverables Message (XF)"
  end
  if value == "L" then
    return "Message Type: Bulletins Message (L)"
  end
  if value == "S" then
    return "Message Type: End Of Sales Message (S)"
  end
  if value == "TT" then
    return "Message Type: Tick Table Message (TT)"
  end
  if value == "U" then
    return "Message Type: End Of Transmission Message (U)"
  end
  if value == "V" then
    return "Message Type: Circuit Assurance Message (V)"
  end
  if value == "SD" then
    return "Message Type: Start Of Day Message (SD)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_type = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.message_type
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.message_type(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
tmx_mx_sola_multicast_hsvf_v1_14_size_of.sequence_number = 10

-- Display: Sequence Number
tmx_mx_sola_multicast_hsvf_v1_14_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
tmx_mx_sola_multicast_hsvf_v1_14_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.sequence_number
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
tmx_mx_sola_multicast_hsvf_v1_14_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.sequence_number

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.message_type

  index = index + tmx_mx_sola_multicast_hsvf_v1_14_size_of.message_timestamp

  return index
end

-- Display: Message Header
tmx_mx_sola_multicast_hsvf_v1_14_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = tmx_mx_sola_multicast_hsvf_v1_14_dissect.sequence_number(buffer, index, packet, parent)

  -- Message Type: 2 Byte Ascii String Enum with 53 values
  index, message_type = tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_type(buffer, index, packet, parent)

  -- Message Timestamp: 20 Byte Ascii String
  index, message_timestamp = tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.message_header, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Size: Hsvf Stx
tmx_mx_sola_multicast_hsvf_v1_14_size_of.hsvf_stx = 1

-- Display: Hsvf Stx
tmx_mx_sola_multicast_hsvf_v1_14_display.hsvf_stx = function(value)
  return "Hsvf Stx: "..value
end

-- Dissect: Hsvf Stx
tmx_mx_sola_multicast_hsvf_v1_14_dissect.hsvf_stx = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14_size_of.hsvf_stx
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_mx_sola_multicast_hsvf_v1_14_display.hsvf_stx(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_14.fields.hsvf_stx, range, value, display)

  return offset + length, value
end

-- Dissect Packet
tmx_mx_sola_multicast_hsvf_v1_14_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Hsvf Stx: 1 Byte Fixed Width Integer Static
    index, hsvf_stx = tmx_mx_sola_multicast_hsvf_v1_14_dissect.hsvf_stx(buffer, index, packet, parent)

    -- Message Header: Struct of 3 fields
    index, message_header = tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_header(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = trim_right_spaces(buffer(index - 22, 2):string())

    -- Message Body: Runtime Type with 53 branches
    index = tmx_mx_sola_multicast_hsvf_v1_14_dissect.message_body(buffer, index, packet, parent, message_type)

    -- Hsvf Etx: 1 Byte Fixed Width Integer
    index, hsvf_etx = tmx_mx_sola_multicast_hsvf_v1_14_dissect.hsvf_etx(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function tmx_mx_sola_multicast_hsvf_v1_14.init()
end

-- Dissector for Tmx Mx Sola Multicast Hsvf 1.14
function tmx_mx_sola_multicast_hsvf_v1_14.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = tmx_mx_sola_multicast_hsvf_v1_14.name

  -- Dissect protocol
  local protocol = parent:add(tmx_mx_sola_multicast_hsvf_v1_14, buffer(), tmx_mx_sola_multicast_hsvf_v1_14.description, "("..buffer:len().." Bytes)")
  return tmx_mx_sola_multicast_hsvf_v1_14_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, tmx_mx_sola_multicast_hsvf_v1_14)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.tmx_mx_sola_multicast_hsvf_v1_14_packet_size = function(buffer)

  return true
end

-- Verify Hsvf Stx Field
verify.hsvf_stx = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Tmx Mx Sola Multicast Hsvf 1.14
local function tmx_mx_sola_multicast_hsvf_v1_14_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.tmx_mx_sola_multicast_hsvf_v1_14_packet_size(buffer) then return false end

  -- Verify Hsvf Stx
  if not verify.hsvf_stx(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = tmx_mx_sola_multicast_hsvf_v1_14
  tmx_mx_sola_multicast_hsvf_v1_14.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx Mx Sola Multicast Hsvf 1.14
tmx_mx_sola_multicast_hsvf_v1_14:register_heuristic("udp", tmx_mx_sola_multicast_hsvf_v1_14_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Tmx Group
--   Version: 1.14
--   Date: Monday, February 5, 2024
--   Specification: hsvf-mx-005e-mx-sola-hsvf-multicast-specifications-guide-v1-14.pdf
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
