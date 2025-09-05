-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx Mx Sola Multicast Hsvf 1.14 Protocol
local omi_tmx_mx_sola_multicast_hsvf_v1_14 = Proto("Tmx.Mx.Sola.Multicast.Hsvf.v1.14.Lua", "Tmx Mx Sola Multicast Hsvf 1.14")

-- Protocol table
local tmx_mx_sola_multicast_hsvf_v1_14 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx Mx Sola Multicast Hsvf 1.14 Fields
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_price = ProtoField.new("Ask Price", "tmx.mx.sola.multicast.hsvf.v1.14.askprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_price_fraction_indicator = ProtoField.new("Ask Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.askpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_price_sign = ProtoField.new("Ask Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.askpricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_size = ProtoField.new("Ask Size", "tmx.mx.sola.multicast.hsvf.v1.14.asksize", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.associated_product = ProtoField.new("Associated Product", "tmx.mx.sola.multicast.hsvf.v1.14.associatedproduct", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.auction_duration = ProtoField.new("Auction Duration", "tmx.mx.sola.multicast.hsvf.v1.14.auctionduration", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.auction_expiry_timestamp = ProtoField.new("Auction Expiry Timestamp", "tmx.mx.sola.multicast.hsvf.v1.14.auctionexpirytimestamp", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.auction_id = ProtoField.new("Auction Id", "tmx.mx.sola.multicast.hsvf.v1.14.auctionid", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_price = ProtoField.new("Bid Price", "tmx.mx.sola.multicast.hsvf.v1.14.bidprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_price_fraction_indicator = ProtoField.new("Bid Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.bidpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_price_sign = ProtoField.new("Bid Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.bidpricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_size = ProtoField.new("Bid Size", "tmx.mx.sola.multicast.hsvf.v1.14.bidsize", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bond_definition = ProtoField.new("Bond Definition", "tmx.mx.sola.multicast.hsvf.v1.14.bonddefinition", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletin = ProtoField.new("Bulletin", "tmx.mx.sola.multicast.hsvf.v1.14.bulletin", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletin_contents_x_49 = ProtoField.new("Bulletin Contents X 49", "tmx.mx.sola.multicast.hsvf.v1.14.bulletincontentsx49", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletin_type = ProtoField.new("Bulletin Type", "tmx.mx.sola.multicast.hsvf.v1.14.bulletintype", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.business_date = ProtoField.new("Business Date", "tmx.mx.sola.multicast.hsvf.v1.14.businessdate", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.call_put_code = ProtoField.new("Call Put Code", "tmx.mx.sola.multicast.hsvf.v1.14.callputcode", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.closing_price = ProtoField.new("Closing Price", "tmx.mx.sola.multicast.hsvf.v1.14.closingprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.closing_price_fraction_indicator = ProtoField.new("Closing Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.closingpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.continue_marker = ProtoField.new("Continue Marker", "tmx.mx.sola.multicast.hsvf.v1.14.continuemarker", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.contract_size = ProtoField.new("Contract Size", "tmx.mx.sola.multicast.hsvf.v1.14.contractsize", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.conversion_factor = ProtoField.new("Conversion Factor", "tmx.mx.sola.multicast.hsvf.v1.14.conversionfactor", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.conversion_factor_fraction_indicator = ProtoField.new("Conversion Factor Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.conversionfactorfractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.coupon = ProtoField.new("Coupon", "tmx.mx.sola.multicast.hsvf.v1.14.coupon", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.coupon_fraction_indicator = ProtoField.new("Coupon Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.couponfractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.currency = ProtoField.new("Currency", "tmx.mx.sola.multicast.hsvf.v1.14.currency", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.delivery_type = ProtoField.new("Delivery Type", "tmx.mx.sola.multicast.hsvf.v1.14.deliverytype", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.exchange_id = ProtoField.new("Exchange Id", "tmx.mx.sola.multicast.hsvf.v1.14.exchangeid", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_date = ProtoField.new("Expiry Date", "tmx.mx.sola.multicast.hsvf.v1.14.expirydate", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_day = ProtoField.new("Expiry Day", "tmx.mx.sola.multicast.hsvf.v1.14.expiryday", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_month = ProtoField.new("Expiry Month", "tmx.mx.sola.multicast.hsvf.v1.14.expirymonth", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_year = ProtoField.new("Expiry Year", "tmx.mx.sola.multicast.hsvf.v1.14.expiryyear", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.external_price_at_source = ProtoField.new("External Price At Source", "tmx.mx.sola.multicast.hsvf.v1.14.externalpriceatsource", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.external_price_fraction_indicator = ProtoField.new("External Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.externalpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_option_symbol = ProtoField.new("Future Option Symbol", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionsymbol", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_product = ProtoField.new("Future Product", "tmx.mx.sola.multicast.hsvf.v1.14.futureproduct", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.group_instrument = ProtoField.new("Group Instrument", "tmx.mx.sola.multicast.hsvf.v1.14.groupinstrument", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.group_status = ProtoField.new("Group Status", "tmx.mx.sola.multicast.hsvf.v1.14.groupstatus", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.high_price = ProtoField.new("High Price", "tmx.mx.sola.multicast.hsvf.v1.14.highprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.high_price_fraction_indicator = ProtoField.new("High Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.highpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.high_price_sign = ProtoField.new("High Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.highpricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.hsvf_etx = ProtoField.new("Hsvf Etx", "tmx.mx.sola.multicast.hsvf.v1.14.hsvfetx", ftypes.INT8)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.hsvf_stx = ProtoField.new("Hsvf Stx", "tmx.mx.sola.multicast.hsvf.v1.14.hsvfstx", ftypes.INT8)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_price = ProtoField.new("Initial Order Price", "tmx.mx.sola.multicast.hsvf.v1.14.initialorderprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_price_fraction_indicator = ProtoField.new("Initial Order Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.initialorderpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_quantity = ProtoField.new("Initial Order Quantity", "tmx.mx.sola.multicast.hsvf.v1.14.initialorderquantity", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_side = ProtoField.new("Initial Order Side", "tmx.mx.sola.multicast.hsvf.v1.14.initialorderside", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_quantity_assured = ProtoField.new("Initial Quantity Assured", "tmx.mx.sola.multicast.hsvf.v1.14.initialquantityassured", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument = ProtoField.new("Instrument", "tmx.mx.sola.multicast.hsvf.v1.14.instrument", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_external_code = ProtoField.new("Instrument External Code", "tmx.mx.sola.multicast.hsvf.v1.14.instrumentexternalcode", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_status_marker = ProtoField.new("Instrument Status Marker", "tmx.mx.sola.multicast.hsvf.v1.14.instrumentstatusmarker", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.last_price = ProtoField.new("Last Price", "tmx.mx.sola.multicast.hsvf.v1.14.lastprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.last_price_fraction_indicator = ProtoField.new("Last Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.lastpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.last_price_sign = ProtoField.new("Last Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.lastpricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.last_trading_datetime = ProtoField.new("Last Trading Datetime", "tmx.mx.sola.multicast.hsvf.v1.14.lasttradingdatetime", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_group_instrument = ProtoField.new("Leg Group Instrument", "tmx.mx.sola.multicast.hsvf.v1.14.leggroupinstrument", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_instrument = ProtoField.new("Leg Instrument", "tmx.mx.sola.multicast.hsvf.v1.14.leginstrument", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_price = ProtoField.new("Leg Price", "tmx.mx.sola.multicast.hsvf.v1.14.legprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_price_fraction_indicator = ProtoField.new("Leg Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.legpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_ratio_or_delta = ProtoField.new("Leg Ratio Or Delta", "tmx.mx.sola.multicast.hsvf.v1.14.legratioordelta", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_ratio_or_delta_fraction_indicator = ProtoField.new("Leg Ratio Or Delta Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.legratioordeltafractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.level_of_market_depth = ProtoField.new("Level Of Market Depth", "tmx.mx.sola.multicast.hsvf.v1.14.levelofmarketdepth", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.low_price = ProtoField.new("Low Price", "tmx.mx.sola.multicast.hsvf.v1.14.lowprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.low_price_fraction_indicator = ProtoField.new("Low Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.lowpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.low_price_sign = ProtoField.new("Low Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.lowpricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.market_depth_level = ProtoField.new("Market Depth Level", "tmx.mx.sola.multicast.hsvf.v1.14.marketdepthlevel", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.market_flow_indicator = ProtoField.new("Market Flow Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.marketflowindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.maturity_date = ProtoField.new("Maturity Date", "tmx.mx.sola.multicast.hsvf.v1.14.maturitydate", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.maximum_number_of_contracts_per_order = ProtoField.new("Maximum Number Of Contracts Per Order", "tmx.mx.sola.multicast.hsvf.v1.14.maximumnumberofcontractsperorder", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.maximum_threshold_price = ProtoField.new("Maximum Threshold Price", "tmx.mx.sola.multicast.hsvf.v1.14.maximumthresholdprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.maximum_threshold_price_fraction_indicator = ProtoField.new("Maximum Threshold Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.maximumthresholdpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.message_body = ProtoField.new("Message Body", "tmx.mx.sola.multicast.hsvf.v1.14.messagebody", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.message_header = ProtoField.new("Message Header", "tmx.mx.sola.multicast.hsvf.v1.14.messageheader", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.message_timestamp = ProtoField.new("Message Timestamp", "tmx.mx.sola.multicast.hsvf.v1.14.messagetimestamp", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.message_type = ProtoField.new("Message Type", "tmx.mx.sola.multicast.hsvf.v1.14.messagetype", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.min_price = ProtoField.new("Min Price", "tmx.mx.sola.multicast.hsvf.v1.14.minprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.min_price_fraction_indicator = ProtoField.new("Min Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.minpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_number_of_contracts_per_order = ProtoField.new("Minimum Number Of Contracts Per Order", "tmx.mx.sola.multicast.hsvf.v1.14.minimumnumberofcontractsperorder", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_threshold_price_fraction_indicator = ProtoField.new("Minimum Threshold Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.minimumthresholdpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_threshold_price_n_7 = ProtoField.new("Minimum Threshold Price N 7", "tmx.mx.sola.multicast.hsvf.v1.14.minimumthresholdpricen7", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_threshold_price_x_7 = ProtoField.new("Minimum Threshold Price X 7", "tmx.mx.sola.multicast.hsvf.v1.14.minimumthresholdpricex7", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change = ProtoField.new("Net Change", "tmx.mx.sola.multicast.hsvf.v1.14.netchange", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_fraction_indicator_a_1 = ProtoField.new("Net Change Fraction Indicator A 1", "tmx.mx.sola.multicast.hsvf.v1.14.netchangefractionindicatora1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_fraction_indicator_x_1 = ProtoField.new("Net Change Fraction Indicator X 1", "tmx.mx.sola.multicast.hsvf.v1.14.netchangefractionindicatorx1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_sign_a_1 = ProtoField.new("Net Change Sign A 1", "tmx.mx.sola.multicast.hsvf.v1.14.netchangesigna1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_sign_x_1 = ProtoField.new("Net Change Sign X 1", "tmx.mx.sola.multicast.hsvf.v1.14.netchangesignx1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_ask_orders = ProtoField.new("Number Of Ask Orders", "tmx.mx.sola.multicast.hsvf.v1.14.numberofaskorders", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_bid_orders = ProtoField.new("Number Of Bid Orders", "tmx.mx.sola.multicast.hsvf.v1.14.numberofbidorders", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_bonds = ProtoField.new("Number Of Bonds", "tmx.mx.sola.multicast.hsvf.v1.14.numberofbonds", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_entries = ProtoField.new("Number Of Entries", "tmx.mx.sola.multicast.hsvf.v1.14.numberofentries", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_legs = ProtoField.new("Number Of Legs", "tmx.mx.sola.multicast.hsvf.v1.14.numberoflegs", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_levels = ProtoField.new("Number Of Levels", "tmx.mx.sola.multicast.hsvf.v1.14.numberoflevels", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.open_interest = ProtoField.new("Open Interest", "tmx.mx.sola.multicast.hsvf.v1.14.openinterest", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.open_interest_date_n_6 = ProtoField.new("Open Interest Date N 6", "tmx.mx.sola.multicast.hsvf.v1.14.openinterestdaten6", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.open_interest_date_n_7 = ProtoField.new("Open Interest Date N 7", "tmx.mx.sola.multicast.hsvf.v1.14.openinterestdaten7", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.open_price = ProtoField.new("Open Price", "tmx.mx.sola.multicast.hsvf.v1.14.openprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.open_price_fraction_indicator = ProtoField.new("Open Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.openpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.open_price_sign = ProtoField.new("Open Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.openpricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.opening_price = ProtoField.new("Opening Price", "tmx.mx.sola.multicast.hsvf.v1.14.openingprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.opening_price_fraction_indicator = ProtoField.new("Opening Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.openingpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_marker = ProtoField.new("Option Marker", "tmx.mx.sola.multicast.hsvf.v1.14.optionmarker", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_symbol = ProtoField.new("Option Symbol", "tmx.mx.sola.multicast.hsvf.v1.14.optionsymbol", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_type = ProtoField.new("Option Type", "tmx.mx.sola.multicast.hsvf.v1.14.optiontype", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.order_id = ProtoField.new("Order Id", "tmx.mx.sola.multicast.hsvf.v1.14.orderid", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.order_price = ProtoField.new("Order Price", "tmx.mx.sola.multicast.hsvf.v1.14.orderprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.order_price_fraction_indicator = ProtoField.new("Order Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.orderpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.order_quantity = ProtoField.new("Order Quantity", "tmx.mx.sola.multicast.hsvf.v1.14.orderquantity", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.order_side = ProtoField.new("Order Side", "tmx.mx.sola.multicast.hsvf.v1.14.orderside", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.order_type = ProtoField.new("Order Type", "tmx.mx.sola.multicast.hsvf.v1.14.ordertype", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.outstanding_bond_value = ProtoField.new("Outstanding Bond Value", "tmx.mx.sola.multicast.hsvf.v1.14.outstandingbondvalue", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.packet = ProtoField.new("Packet", "tmx.mx.sola.multicast.hsvf.v1.14.packet", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_closing_price = ProtoField.new("Previous Closing Price", "tmx.mx.sola.multicast.hsvf.v1.14.previousclosingprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_closing_price_fraction_indicator = ProtoField.new("Previous Closing Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.previousclosingpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_order_id = ProtoField.new("Previous Order Id", "tmx.mx.sola.multicast.hsvf.v1.14.previousorderid", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement = ProtoField.new("Previous Settlement", "tmx.mx.sola.multicast.hsvf.v1.14.previoussettlement", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement_fraction_indicator = ProtoField.new("Previous Settlement Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.previoussettlementfractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement_price = ProtoField.new("Previous Settlement Price", "tmx.mx.sola.multicast.hsvf.v1.14.previoussettlementprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement_price_fraction_indicator = ProtoField.new("Previous Settlement Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.previoussettlementpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.price = ProtoField.new("Price", "tmx.mx.sola.multicast.hsvf.v1.14.price", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.price_fraction_indicator = ProtoField.new("Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.pricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.price_indicator_marker_a_1 = ProtoField.new("Price Indicator Marker A 1", "tmx.mx.sola.multicast.hsvf.v1.14.priceindicatormarkera1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.price_indicator_marker_x_1 = ProtoField.new("Price Indicator Marker X 1", "tmx.mx.sola.multicast.hsvf.v1.14.priceindicatormarkerx1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.reason = ProtoField.new("Reason", "tmx.mx.sola.multicast.hsvf.v1.14.reason", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.regular_bulletin_contents = ProtoField.new("Regular Bulletin Contents", "tmx.mx.sola.multicast.hsvf.v1.14.regularbulletincontents", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.regular_text_bulletin = ProtoField.new("Regular Text Bulletin", "tmx.mx.sola.multicast.hsvf.v1.14.regulartextbulletin", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.requested_market_side = ProtoField.new("Requested Market Side", "tmx.mx.sola.multicast.hsvf.v1.14.requestedmarketside", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.requested_size = ProtoField.new("Requested Size", "tmx.mx.sola.multicast.hsvf.v1.14.requestedsize", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.reserved = ProtoField.new("Reserved", "tmx.mx.sola.multicast.hsvf.v1.14.reserved", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.root = ProtoField.new("Root", "tmx.mx.sola.multicast.hsvf.v1.14.root", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.scheduled_status_change_time = ProtoField.new("Scheduled Status Change Time", "tmx.mx.sola.multicast.hsvf.v1.14.scheduledstatuschangetime", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.sequence_number = ProtoField.new("Sequence Number", "tmx.mx.sola.multicast.hsvf.v1.14.sequencenumber", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.series_status = ProtoField.new("Series Status", "tmx.mx.sola.multicast.hsvf.v1.14.seriesstatus", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.settlement_price = ProtoField.new("Settlement Price", "tmx.mx.sola.multicast.hsvf.v1.14.settlementprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.settlement_price_fraction_indicator = ProtoField.new("Settlement Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.settlementpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.special_text_bulletin = ProtoField.new("Special Text Bulletin", "tmx.mx.sola.multicast.hsvf.v1.14.specialtextbulletin", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_allow_implied = ProtoField.new("Strategy Allow Implied", "tmx.mx.sola.multicast.hsvf.v1.14.strategyallowimplied", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_code = ProtoField.new("Strategy Code", "tmx.mx.sola.multicast.hsvf.v1.14.strategycode", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_instrument_leg = ProtoField.new("Strategy Instrument Leg", "tmx.mx.sola.multicast.hsvf.v1.14.strategyinstrumentleg", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_market_depth_level = ProtoField.new("Strategy Market Depth Level", "tmx.mx.sola.multicast.hsvf.v1.14.strategymarketdepthlevel", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_symbol = ProtoField.new("Strategy Symbol", "tmx.mx.sola.multicast.hsvf.v1.14.strategysymbol", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_type = ProtoField.new("Strategy Type", "tmx.mx.sola.multicast.hsvf.v1.14.strategytype", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strike_price = ProtoField.new("Strike Price", "tmx.mx.sola.multicast.hsvf.v1.14.strikeprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strike_price_currency = ProtoField.new("Strike Price Currency", "tmx.mx.sola.multicast.hsvf.v1.14.strikepricecurrency", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strike_price_fraction_indicator = ProtoField.new("Strike Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.strikepricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.symbol = ProtoField.new("Symbol", "tmx.mx.sola.multicast.hsvf.v1.14.symbol", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.symbol_month = ProtoField.new("Symbol Month", "tmx.mx.sola.multicast.hsvf.v1.14.symbolmonth", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.symbol_year = ProtoField.new("Symbol Year", "tmx.mx.sola.multicast.hsvf.v1.14.symbolyear", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick = ProtoField.new("Tick", "tmx.mx.sola.multicast.hsvf.v1.14.tick", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_entry = ProtoField.new("Tick Entry", "tmx.mx.sola.multicast.hsvf.v1.14.tickentry", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_increment = ProtoField.new("Tick Increment", "tmx.mx.sola.multicast.hsvf.v1.14.tickincrement", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_increment_fraction_indicator_x_1 = ProtoField.new("Tick Increment Fraction Indicator X 1", "tmx.mx.sola.multicast.hsvf.v1.14.tickincrementfractionindicatorx1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_increment_fraction_indicator_x_7 = ProtoField.new("Tick Increment Fraction Indicator X 7", "tmx.mx.sola.multicast.hsvf.v1.14.tickincrementfractionindicatorx7", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_price = ProtoField.new("Tick Price", "tmx.mx.sola.multicast.hsvf.v1.14.tickprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_price_fraction_indicator = ProtoField.new("Tick Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.tickpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_table_name = ProtoField.new("Tick Table Name", "tmx.mx.sola.multicast.hsvf.v1.14.ticktablename", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_table_short_name = ProtoField.new("Tick Table Short Name", "tmx.mx.sola.multicast.hsvf.v1.14.ticktableshortname", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_value = ProtoField.new("Tick Value", "tmx.mx.sola.multicast.hsvf.v1.14.tickvalue", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_value_fraction_indicator = ProtoField.new("Tick Value Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.tickvaluefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.time = ProtoField.new("Time", "tmx.mx.sola.multicast.hsvf.v1.14.time", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_number = ProtoField.new("Trade Number", "tmx.mx.sola.multicast.hsvf.v1.14.tradenumber", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_fraction_indicator = ProtoField.new("Trade Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.14.tradepricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_n_6 = ProtoField.new("Trade Price N 6", "tmx.mx.sola.multicast.hsvf.v1.14.tradepricen6", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_n_7 = ProtoField.new("Trade Price N 7", "tmx.mx.sola.multicast.hsvf.v1.14.tradepricen7", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_sign = ProtoField.new("Trade Price Sign", "tmx.mx.sola.multicast.hsvf.v1.14.tradepricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_root_symbol = ProtoField.new("Underlying Root Symbol", "tmx.mx.sola.multicast.hsvf.v1.14.underlyingrootsymbol", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "tmx.mx.sola.multicast.hsvf.v1.14.underlyingsymbol", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol_month = ProtoField.new("Underlying Symbol Month", "tmx.mx.sola.multicast.hsvf.v1.14.underlyingsymbolmonth", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol_root = ProtoField.new("Underlying Symbol Root", "tmx.mx.sola.multicast.hsvf.v1.14.underlyingsymbolroot", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol_year = ProtoField.new("Underlying Symbol Year", "tmx.mx.sola.multicast.hsvf.v1.14.underlyingsymbolyear", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.variable_legs_strategy_code = ProtoField.new("Variable Legs Strategy Code", "tmx.mx.sola.multicast.hsvf.v1.14.variablelegsstrategycode", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.volume = ProtoField.new("Volume", "tmx.mx.sola.multicast.hsvf.v1.14.volume", ftypes.STRING)

-- Tmx Mx Sola Multicast Hsvf 1.14 messages
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_future_options_summary_message = ProtoField.new("Beginning Of Future Options Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.beginningoffutureoptionssummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_futures_summary_message = ProtoField.new("Beginning Of Futures Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.beginningoffuturessummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_options_summary_message = ProtoField.new("Beginning Of Options Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.beginningofoptionssummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_strategy_summary_message = ProtoField.new("Beginning Of Strategy Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.beginningofstrategysummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletins_message = ProtoField.new("Bulletins Message", "tmx.mx.sola.multicast.hsvf.v1.14.bulletinsmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.circuit_assurance_message = ProtoField.new("Circuit Assurance Message", "tmx.mx.sola.multicast.hsvf.v1.14.circuitassurancemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.end_of_sales_message = ProtoField.new("End Of Sales Message", "tmx.mx.sola.multicast.hsvf.v1.14.endofsalesmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.end_of_transmission_message = ProtoField.new("End Of Transmission Message", "tmx.mx.sola.multicast.hsvf.v1.14.endoftransmissionmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_deliverables_message = ProtoField.new("Future Deliverables Message", "tmx.mx.sola.multicast.hsvf.v1.14.futuredeliverablesmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_instrument_keys_message = ProtoField.new("Future Options Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionsinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_market_depth_message = ProtoField.new("Future Options Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionsmarketdepthmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_quote_message = ProtoField.new("Future Options Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionsquotemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_request_for_quote_message = ProtoField.new("Future Options Request For Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionsrequestforquotemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_summary_message = ProtoField.new("Future Options Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionssummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_trade_cancellation_message = ProtoField.new("Future Options Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionstradecancellationmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_trade_message = ProtoField.new("Future Options Trade Message", "tmx.mx.sola.multicast.hsvf.v1.14.futureoptionstrademessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_request_for_quote_message = ProtoField.new("Future Request For Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.futurerequestforquotemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_trade_cancellation_message = ProtoField.new("Future Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.14.futuretradecancellationmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_instrument_keys_message = ProtoField.new("Futures Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.14.futuresinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_market_depth_message = ProtoField.new("Futures Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.14.futuresmarketdepthmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_quote_message = ProtoField.new("Futures Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.futuresquotemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_summary_message = ProtoField.new("Futures Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.futuressummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_trade_correction_message = ProtoField.new("Futures Trade Correction Message", "tmx.mx.sola.multicast.hsvf.v1.14.futurestradecorrectionmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_trade_message = ProtoField.new("Futures Trade Message", "tmx.mx.sola.multicast.hsvf.v1.14.futurestrademessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.group_status_message = ProtoField.new("Group Status Message", "tmx.mx.sola.multicast.hsvf.v1.14.groupstatusmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.group_status_strategies_message = ProtoField.new("Group Status Strategies Message", "tmx.mx.sola.multicast.hsvf.v1.14.groupstatusstrategiesmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_future_message = ProtoField.new("Instrument Schedule Notice Future Message", "tmx.mx.sola.multicast.hsvf.v1.14.instrumentschedulenoticefuturemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_futures_option_message = ProtoField.new("Instrument Schedule Notice Futures Option Message", "tmx.mx.sola.multicast.hsvf.v1.14.instrumentschedulenoticefuturesoptionmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_option_message = ProtoField.new("Instrument Schedule Notice Option Message", "tmx.mx.sola.multicast.hsvf.v1.14.instrumentschedulenoticeoptionmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_strategy_message = ProtoField.new("Instrument Schedule Notice Strategy Message", "tmx.mx.sola.multicast.hsvf.v1.14.instrumentschedulenoticestrategymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_auction_beginning_message = ProtoField.new("Option Auction Beginning Message", "tmx.mx.sola.multicast.hsvf.v1.14.optionauctionbeginningmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_auction_ending_message = ProtoField.new("Option Auction Ending Message", "tmx.mx.sola.multicast.hsvf.v1.14.optionauctionendingmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_initial_and_improvement_order_message = ProtoField.new("Option Initial And Improvement Order Message", "tmx.mx.sola.multicast.hsvf.v1.14.optioninitialandimprovementordermessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_instrument_keys_message = ProtoField.new("Option Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.14.optioninstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_market_depth_message = ProtoField.new("Option Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.14.optionmarketdepthmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_quote_message = ProtoField.new("Option Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.optionquotemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_request_for_quote_message = ProtoField.new("Option Request For Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.optionrequestforquotemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_summary_message = ProtoField.new("Option Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.optionsummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_trade_cancellation_message = ProtoField.new("Option Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.14.optiontradecancellationmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_trade_message = ProtoField.new("Option Trade Message", "tmx.mx.sola.multicast.hsvf.v1.14.optiontrademessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "tmx.mx.sola.multicast.hsvf.v1.14.startofdaymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_auction_beginning_message = ProtoField.new("Strategy Auction Beginning Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategyauctionbeginningmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_auction_ending_message = ProtoField.new("Strategy Auction Ending Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategyauctionendingmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_initial_and_improvement_order_message = ProtoField.new("Strategy Initial And Improvement Order Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategyinitialandimprovementordermessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_instrument_keys_message = ProtoField.new("Strategy Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategyinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_market_depth_message = ProtoField.new("Strategy Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategymarketdepthmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_quote_message = ProtoField.new("Strategy Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategyquotemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_request_for_quote_message = ProtoField.new("Strategy Request For Quote Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategyrequestforquotemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_summary_message = ProtoField.new("Strategy Summary Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategysummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_trade_cancellation_message = ProtoField.new("Strategy Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategytradecancellationmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_trade_message = ProtoField.new("Strategy Trade Message", "tmx.mx.sola.multicast.hsvf.v1.14.strategytrademessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_table_message = ProtoField.new("Tick Table Message", "tmx.mx.sola.multicast.hsvf.v1.14.ticktablemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_instrument_keys_message = ProtoField.new("Underlying Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.14.underlyinginstrumentkeysmessage", ftypes.STRING)

-- Tmx Mx Sola Multicast Hsvf 1.14 generated fields
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bond_definition_index = ProtoField.new("Bond Definition Index", "tmx.mx.sola.multicast.hsvf.v1.14.bonddefinitionindex", ftypes.UINT16)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.market_depth_level_index = ProtoField.new("Market Depth Level Index", "tmx.mx.sola.multicast.hsvf.v1.14.marketdepthlevelindex", ftypes.UINT16)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_instrument_leg_index = ProtoField.new("Strategy Instrument Leg Index", "tmx.mx.sola.multicast.hsvf.v1.14.strategyinstrumentlegindex", ftypes.UINT16)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_market_depth_level_index = ProtoField.new("Strategy Market Depth Level Index", "tmx.mx.sola.multicast.hsvf.v1.14.strategymarketdepthlevelindex", ftypes.UINT16)
omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_entry_index = ProtoField.new("Tick Entry Index", "tmx.mx.sola.multicast.hsvf.v1.14.tickentryindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_associated_product = Pref.bool("Show Associated Product", show.associated_product, "Parse and add Associated Product to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_future_options_summary_message = Pref.bool("Show Beginning Of Future Options Summary Message", show.beginning_of_future_options_summary_message, "Parse and add Beginning Of Future Options Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_futures_summary_message = Pref.bool("Show Beginning Of Futures Summary Message", show.beginning_of_futures_summary_message, "Parse and add Beginning Of Futures Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_options_summary_message = Pref.bool("Show Beginning Of Options Summary Message", show.beginning_of_options_summary_message, "Parse and add Beginning Of Options Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_strategy_summary_message = Pref.bool("Show Beginning Of Strategy Summary Message", show.beginning_of_strategy_summary_message, "Parse and add Beginning Of Strategy Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bond_definition = Pref.bool("Show Bond Definition", show.bond_definition, "Parse and add Bond Definition to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bulletins_message = Pref.bool("Show Bulletins Message", show.bulletins_message, "Parse and add Bulletins Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_circuit_assurance_message = Pref.bool("Show Circuit Assurance Message", show.circuit_assurance_message, "Parse and add Circuit Assurance Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_end_of_sales_message = Pref.bool("Show End Of Sales Message", show.end_of_sales_message, "Parse and add End Of Sales Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_end_of_transmission_message = Pref.bool("Show End Of Transmission Message", show.end_of_transmission_message, "Parse and add End Of Transmission Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_deliverables_message = Pref.bool("Show Future Deliverables Message", show.future_deliverables_message, "Parse and add Future Deliverables Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_option_symbol = Pref.bool("Show Future Option Symbol", show.future_option_symbol, "Parse and add Future Option Symbol to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_instrument_keys_message = Pref.bool("Show Future Options Instrument Keys Message", show.future_options_instrument_keys_message, "Parse and add Future Options Instrument Keys Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_market_depth_message = Pref.bool("Show Future Options Market Depth Message", show.future_options_market_depth_message, "Parse and add Future Options Market Depth Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_quote_message = Pref.bool("Show Future Options Quote Message", show.future_options_quote_message, "Parse and add Future Options Quote Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_request_for_quote_message = Pref.bool("Show Future Options Request For Quote Message", show.future_options_request_for_quote_message, "Parse and add Future Options Request For Quote Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_summary_message = Pref.bool("Show Future Options Summary Message", show.future_options_summary_message, "Parse and add Future Options Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_trade_cancellation_message = Pref.bool("Show Future Options Trade Cancellation Message", show.future_options_trade_cancellation_message, "Parse and add Future Options Trade Cancellation Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_trade_message = Pref.bool("Show Future Options Trade Message", show.future_options_trade_message, "Parse and add Future Options Trade Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_product = Pref.bool("Show Future Product", show.future_product, "Parse and add Future Product to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_request_for_quote_message = Pref.bool("Show Future Request For Quote Message", show.future_request_for_quote_message, "Parse and add Future Request For Quote Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_trade_cancellation_message = Pref.bool("Show Future Trade Cancellation Message", show.future_trade_cancellation_message, "Parse and add Future Trade Cancellation Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_instrument_keys_message = Pref.bool("Show Futures Instrument Keys Message", show.futures_instrument_keys_message, "Parse and add Futures Instrument Keys Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_market_depth_message = Pref.bool("Show Futures Market Depth Message", show.futures_market_depth_message, "Parse and add Futures Market Depth Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_quote_message = Pref.bool("Show Futures Quote Message", show.futures_quote_message, "Parse and add Futures Quote Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_summary_message = Pref.bool("Show Futures Summary Message", show.futures_summary_message, "Parse and add Futures Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_trade_correction_message = Pref.bool("Show Futures Trade Correction Message", show.futures_trade_correction_message, "Parse and add Futures Trade Correction Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_trade_message = Pref.bool("Show Futures Trade Message", show.futures_trade_message, "Parse and add Futures Trade Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_group_status_message = Pref.bool("Show Group Status Message", show.group_status_message, "Parse and add Group Status Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_group_status_strategies_message = Pref.bool("Show Group Status Strategies Message", show.group_status_strategies_message, "Parse and add Group Status Strategies Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_future_message = Pref.bool("Show Instrument Schedule Notice Future Message", show.instrument_schedule_notice_future_message, "Parse and add Instrument Schedule Notice Future Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_futures_option_message = Pref.bool("Show Instrument Schedule Notice Futures Option Message", show.instrument_schedule_notice_futures_option_message, "Parse and add Instrument Schedule Notice Futures Option Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_option_message = Pref.bool("Show Instrument Schedule Notice Option Message", show.instrument_schedule_notice_option_message, "Parse and add Instrument Schedule Notice Option Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_strategy_message = Pref.bool("Show Instrument Schedule Notice Strategy Message", show.instrument_schedule_notice_strategy_message, "Parse and add Instrument Schedule Notice Strategy Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_market_depth_level = Pref.bool("Show Market Depth Level", show.market_depth_level, "Parse and add Market Depth Level to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_auction_beginning_message = Pref.bool("Show Option Auction Beginning Message", show.option_auction_beginning_message, "Parse and add Option Auction Beginning Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_auction_ending_message = Pref.bool("Show Option Auction Ending Message", show.option_auction_ending_message, "Parse and add Option Auction Ending Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_initial_and_improvement_order_message = Pref.bool("Show Option Initial And Improvement Order Message", show.option_initial_and_improvement_order_message, "Parse and add Option Initial And Improvement Order Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_instrument_keys_message = Pref.bool("Show Option Instrument Keys Message", show.option_instrument_keys_message, "Parse and add Option Instrument Keys Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_market_depth_message = Pref.bool("Show Option Market Depth Message", show.option_market_depth_message, "Parse and add Option Market Depth Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_quote_message = Pref.bool("Show Option Quote Message", show.option_quote_message, "Parse and add Option Quote Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_request_for_quote_message = Pref.bool("Show Option Request For Quote Message", show.option_request_for_quote_message, "Parse and add Option Request For Quote Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_summary_message = Pref.bool("Show Option Summary Message", show.option_summary_message, "Parse and add Option Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_symbol = Pref.bool("Show Option Symbol", show.option_symbol, "Parse and add Option Symbol to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_trade_cancellation_message = Pref.bool("Show Option Trade Cancellation Message", show.option_trade_cancellation_message, "Parse and add Option Trade Cancellation Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_trade_message = Pref.bool("Show Option Trade Message", show.option_trade_message, "Parse and add Option Trade Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_regular_text_bulletin = Pref.bool("Show Regular Text Bulletin", show.regular_text_bulletin, "Parse and add Regular Text Bulletin to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_special_text_bulletin = Pref.bool("Show Special Text Bulletin", show.special_text_bulletin, "Parse and add Special Text Bulletin to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_auction_beginning_message = Pref.bool("Show Strategy Auction Beginning Message", show.strategy_auction_beginning_message, "Parse and add Strategy Auction Beginning Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_auction_ending_message = Pref.bool("Show Strategy Auction Ending Message", show.strategy_auction_ending_message, "Parse and add Strategy Auction Ending Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_initial_and_improvement_order_message = Pref.bool("Show Strategy Initial And Improvement Order Message", show.strategy_initial_and_improvement_order_message, "Parse and add Strategy Initial And Improvement Order Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_instrument_keys_message = Pref.bool("Show Strategy Instrument Keys Message", show.strategy_instrument_keys_message, "Parse and add Strategy Instrument Keys Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_instrument_leg = Pref.bool("Show Strategy Instrument Leg", show.strategy_instrument_leg, "Parse and add Strategy Instrument Leg to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_market_depth_level = Pref.bool("Show Strategy Market Depth Level", show.strategy_market_depth_level, "Parse and add Strategy Market Depth Level to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_market_depth_message = Pref.bool("Show Strategy Market Depth Message", show.strategy_market_depth_message, "Parse and add Strategy Market Depth Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_quote_message = Pref.bool("Show Strategy Quote Message", show.strategy_quote_message, "Parse and add Strategy Quote Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_request_for_quote_message = Pref.bool("Show Strategy Request For Quote Message", show.strategy_request_for_quote_message, "Parse and add Strategy Request For Quote Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_summary_message = Pref.bool("Show Strategy Summary Message", show.strategy_summary_message, "Parse and add Strategy Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_trade_cancellation_message = Pref.bool("Show Strategy Trade Cancellation Message", show.strategy_trade_cancellation_message, "Parse and add Strategy Trade Cancellation Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_trade_message = Pref.bool("Show Strategy Trade Message", show.strategy_trade_message, "Parse and add Strategy Trade Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_tick_entry = Pref.bool("Show Tick Entry", show.tick_entry, "Parse and add Tick Entry to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_tick_table_message = Pref.bool("Show Tick Table Message", show.tick_table_message, "Parse and add Tick Table Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_underlying_instrument_keys_message = Pref.bool("Show Underlying Instrument Keys Message", show.underlying_instrument_keys_message, "Parse and add Underlying Instrument Keys Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bulletin = Pref.bool("Show Bulletin", show.bulletin, "Parse and add Bulletin to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_message_body = Pref.bool("Show Message Body", show.message_body, "Parse and add Message Body to protocol tree")

-- Handle changed preferences
function omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.associated_product ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_associated_product then
    show.associated_product = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_associated_product
    changed = true
  end
  if show.beginning_of_future_options_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_future_options_summary_message then
    show.beginning_of_future_options_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_future_options_summary_message
    changed = true
  end
  if show.beginning_of_futures_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_futures_summary_message then
    show.beginning_of_futures_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_futures_summary_message
    changed = true
  end
  if show.beginning_of_options_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_options_summary_message then
    show.beginning_of_options_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_options_summary_message
    changed = true
  end
  if show.beginning_of_strategy_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_strategy_summary_message then
    show.beginning_of_strategy_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_beginning_of_strategy_summary_message
    changed = true
  end
  if show.bond_definition ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bond_definition then
    show.bond_definition = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bond_definition
    changed = true
  end
  if show.bulletins_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bulletins_message then
    show.bulletins_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bulletins_message
    changed = true
  end
  if show.circuit_assurance_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_circuit_assurance_message then
    show.circuit_assurance_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_circuit_assurance_message
    changed = true
  end
  if show.end_of_sales_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_end_of_sales_message then
    show.end_of_sales_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_end_of_sales_message
    changed = true
  end
  if show.end_of_transmission_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_end_of_transmission_message then
    show.end_of_transmission_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_end_of_transmission_message
    changed = true
  end
  if show.future_deliverables_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_deliverables_message then
    show.future_deliverables_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_deliverables_message
    changed = true
  end
  if show.future_option_symbol ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_option_symbol then
    show.future_option_symbol = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_option_symbol
    changed = true
  end
  if show.future_options_instrument_keys_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_instrument_keys_message then
    show.future_options_instrument_keys_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_instrument_keys_message
    changed = true
  end
  if show.future_options_market_depth_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_market_depth_message then
    show.future_options_market_depth_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_market_depth_message
    changed = true
  end
  if show.future_options_quote_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_quote_message then
    show.future_options_quote_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_quote_message
    changed = true
  end
  if show.future_options_request_for_quote_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_request_for_quote_message then
    show.future_options_request_for_quote_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_request_for_quote_message
    changed = true
  end
  if show.future_options_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_summary_message then
    show.future_options_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_summary_message
    changed = true
  end
  if show.future_options_trade_cancellation_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_trade_cancellation_message then
    show.future_options_trade_cancellation_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_trade_cancellation_message
    changed = true
  end
  if show.future_options_trade_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_trade_message then
    show.future_options_trade_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_options_trade_message
    changed = true
  end
  if show.future_product ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_product then
    show.future_product = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_product
    changed = true
  end
  if show.future_request_for_quote_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_request_for_quote_message then
    show.future_request_for_quote_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_request_for_quote_message
    changed = true
  end
  if show.future_trade_cancellation_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_trade_cancellation_message then
    show.future_trade_cancellation_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_future_trade_cancellation_message
    changed = true
  end
  if show.futures_instrument_keys_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_instrument_keys_message then
    show.futures_instrument_keys_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_instrument_keys_message
    changed = true
  end
  if show.futures_market_depth_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_market_depth_message then
    show.futures_market_depth_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_market_depth_message
    changed = true
  end
  if show.futures_quote_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_quote_message then
    show.futures_quote_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_quote_message
    changed = true
  end
  if show.futures_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_summary_message then
    show.futures_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_summary_message
    changed = true
  end
  if show.futures_trade_correction_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_trade_correction_message then
    show.futures_trade_correction_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_trade_correction_message
    changed = true
  end
  if show.futures_trade_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_trade_message then
    show.futures_trade_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_futures_trade_message
    changed = true
  end
  if show.group_status_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_group_status_message then
    show.group_status_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_group_status_message
    changed = true
  end
  if show.group_status_strategies_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_group_status_strategies_message then
    show.group_status_strategies_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_group_status_strategies_message
    changed = true
  end
  if show.instrument_schedule_notice_future_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_future_message then
    show.instrument_schedule_notice_future_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_future_message
    changed = true
  end
  if show.instrument_schedule_notice_futures_option_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_futures_option_message then
    show.instrument_schedule_notice_futures_option_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_futures_option_message
    changed = true
  end
  if show.instrument_schedule_notice_option_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_option_message then
    show.instrument_schedule_notice_option_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_option_message
    changed = true
  end
  if show.instrument_schedule_notice_strategy_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_strategy_message then
    show.instrument_schedule_notice_strategy_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_instrument_schedule_notice_strategy_message
    changed = true
  end
  if show.market_depth_level ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_market_depth_level then
    show.market_depth_level = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_market_depth_level
    changed = true
  end
  if show.message_header ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_message_header then
    show.message_header = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_message_header
    changed = true
  end
  if show.option_auction_beginning_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_auction_beginning_message then
    show.option_auction_beginning_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_auction_beginning_message
    changed = true
  end
  if show.option_auction_ending_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_auction_ending_message then
    show.option_auction_ending_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_auction_ending_message
    changed = true
  end
  if show.option_initial_and_improvement_order_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_initial_and_improvement_order_message then
    show.option_initial_and_improvement_order_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_initial_and_improvement_order_message
    changed = true
  end
  if show.option_instrument_keys_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_instrument_keys_message then
    show.option_instrument_keys_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_instrument_keys_message
    changed = true
  end
  if show.option_market_depth_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_market_depth_message then
    show.option_market_depth_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_market_depth_message
    changed = true
  end
  if show.option_quote_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_quote_message then
    show.option_quote_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_quote_message
    changed = true
  end
  if show.option_request_for_quote_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_request_for_quote_message then
    show.option_request_for_quote_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_request_for_quote_message
    changed = true
  end
  if show.option_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_summary_message then
    show.option_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_summary_message
    changed = true
  end
  if show.option_symbol ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_symbol then
    show.option_symbol = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_symbol
    changed = true
  end
  if show.option_trade_cancellation_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_trade_cancellation_message then
    show.option_trade_cancellation_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_trade_cancellation_message
    changed = true
  end
  if show.option_trade_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_trade_message then
    show.option_trade_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_option_trade_message
    changed = true
  end
  if show.packet ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_packet then
    show.packet = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_packet
    changed = true
  end
  if show.regular_text_bulletin ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_regular_text_bulletin then
    show.regular_text_bulletin = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_regular_text_bulletin
    changed = true
  end
  if show.special_text_bulletin ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_special_text_bulletin then
    show.special_text_bulletin = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_special_text_bulletin
    changed = true
  end
  if show.start_of_day_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_start_of_day_message then
    show.start_of_day_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_start_of_day_message
    changed = true
  end
  if show.strategy_auction_beginning_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_auction_beginning_message then
    show.strategy_auction_beginning_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_auction_beginning_message
    changed = true
  end
  if show.strategy_auction_ending_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_auction_ending_message then
    show.strategy_auction_ending_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_auction_ending_message
    changed = true
  end
  if show.strategy_initial_and_improvement_order_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_initial_and_improvement_order_message then
    show.strategy_initial_and_improvement_order_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_initial_and_improvement_order_message
    changed = true
  end
  if show.strategy_instrument_keys_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_instrument_keys_message then
    show.strategy_instrument_keys_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_instrument_keys_message
    changed = true
  end
  if show.strategy_instrument_leg ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_instrument_leg then
    show.strategy_instrument_leg = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_instrument_leg
    changed = true
  end
  if show.strategy_market_depth_level ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_market_depth_level then
    show.strategy_market_depth_level = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_market_depth_level
    changed = true
  end
  if show.strategy_market_depth_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_market_depth_message then
    show.strategy_market_depth_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_market_depth_message
    changed = true
  end
  if show.strategy_quote_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_quote_message then
    show.strategy_quote_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_quote_message
    changed = true
  end
  if show.strategy_request_for_quote_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_request_for_quote_message then
    show.strategy_request_for_quote_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_request_for_quote_message
    changed = true
  end
  if show.strategy_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_summary_message then
    show.strategy_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_summary_message
    changed = true
  end
  if show.strategy_trade_cancellation_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_trade_cancellation_message then
    show.strategy_trade_cancellation_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_trade_cancellation_message
    changed = true
  end
  if show.strategy_trade_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_trade_message then
    show.strategy_trade_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_strategy_trade_message
    changed = true
  end
  if show.tick_entry ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_tick_entry then
    show.tick_entry = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_tick_entry
    changed = true
  end
  if show.tick_table_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_tick_table_message then
    show.tick_table_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_tick_table_message
    changed = true
  end
  if show.underlying_instrument_keys_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_underlying_instrument_keys_message then
    show.underlying_instrument_keys_message = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_underlying_instrument_keys_message
    changed = true
  end
  if show.bulletin ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bulletin then
    show.bulletin = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_bulletin
    changed = true
  end
  if show.message_body ~= omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_message_body then
    show.message_body = omi_tmx_mx_sola_multicast_hsvf_v1_14.prefs.show_message_body
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

-- Hsvf Etx
tmx_mx_sola_multicast_hsvf_v1_14.hsvf_etx = {}

-- Size: Hsvf Etx
tmx_mx_sola_multicast_hsvf_v1_14.hsvf_etx.size = 1

-- Display: Hsvf Etx
tmx_mx_sola_multicast_hsvf_v1_14.hsvf_etx.display = function(value)
  return "Hsvf Etx: "..value
end

-- Dissect: Hsvf Etx
tmx_mx_sola_multicast_hsvf_v1_14.hsvf_etx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.hsvf_etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.hsvf_etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.hsvf_etx, range, value, display)

  return offset + length, value
end

-- Business Date
tmx_mx_sola_multicast_hsvf_v1_14.business_date = {}

-- Size: Business Date
tmx_mx_sola_multicast_hsvf_v1_14.business_date.size = 8

-- Display: Business Date
tmx_mx_sola_multicast_hsvf_v1_14.business_date.display = function(value)
  return "Business Date: "..value
end

-- Dissect: Business Date
tmx_mx_sola_multicast_hsvf_v1_14.business_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.business_date.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.business_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.business_date, range, value, display)

  return offset + length, value
end

-- Exchange Id
tmx_mx_sola_multicast_hsvf_v1_14.exchange_id = {}

-- Size: Exchange Id
tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size = 1

-- Display: Exchange Id
tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.display = function(value)
  if value == "Q" then
    return "Exchange Id: Montreal (Q)"
  end

  return "Exchange Id: Unknown("..value..")"
end

-- Dissect: Exchange Id
tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Start Of Day Message
tmx_mx_sola_multicast_hsvf_v1_14.start_of_day_message = {}

-- Calculate size of: Start Of Day Message
tmx_mx_sola_multicast_hsvf_v1_14.start_of_day_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.business_date.size

  return index
end

-- Display: Start Of Day Message
tmx_mx_sola_multicast_hsvf_v1_14.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
tmx_mx_sola_multicast_hsvf_v1_14.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Business Date: N
  index, business_date = tmx_mx_sola_multicast_hsvf_v1_14.business_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
tmx_mx_sola_multicast_hsvf_v1_14.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.start_of_day_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.start_of_day_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Time
tmx_mx_sola_multicast_hsvf_v1_14.time = {}

-- Size: Time
tmx_mx_sola_multicast_hsvf_v1_14.time.size = 6

-- Display: Time
tmx_mx_sola_multicast_hsvf_v1_14.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
tmx_mx_sola_multicast_hsvf_v1_14.time.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.time, range, value, display)

  return offset + length, value
end

-- Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_14.circuit_assurance_message = {}

-- Calculate size of: Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_14.circuit_assurance_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.time.size

  return index
end

-- Display: Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_14.circuit_assurance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_14.circuit_assurance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: N
  index, time = tmx_mx_sola_multicast_hsvf_v1_14.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_14.circuit_assurance_message.dissect = function(buffer, offset, packet, parent)
  if show.circuit_assurance_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.circuit_assurance_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.circuit_assurance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.circuit_assurance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.circuit_assurance_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_14.end_of_transmission_message = {}

-- Calculate size of: End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_14.end_of_transmission_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.time.size

  return index
end

-- Display: End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_14.end_of_transmission_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_14.end_of_transmission_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = tmx_mx_sola_multicast_hsvf_v1_14.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_14.end_of_transmission_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_transmission_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.end_of_transmission_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.end_of_transmission_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.end_of_transmission_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.end_of_transmission_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.tick_price_fraction_indicator = {}

-- Size: Tick Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.tick_price_fraction_indicator.size = 1

-- Display: Tick Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.tick_price_fraction_indicator.display = function(value)
  return "Tick Price Fraction Indicator: "..value
end

-- Dissect: Tick Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.tick_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.tick_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.tick_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Tick Price
tmx_mx_sola_multicast_hsvf_v1_14.tick_price = {}

-- Size: Tick Price
tmx_mx_sola_multicast_hsvf_v1_14.tick_price.size = 7

-- Display: Tick Price
tmx_mx_sola_multicast_hsvf_v1_14.tick_price.display = function(value)
  return "Tick Price: "..value
end

-- Dissect: Tick Price
tmx_mx_sola_multicast_hsvf_v1_14.tick_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.tick_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.tick_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_price, range, value, display)

  return offset + length, value
end

-- Min Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.min_price_fraction_indicator = {}

-- Size: Min Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.min_price_fraction_indicator.size = 1

-- Display: Min Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.min_price_fraction_indicator.display = function(value)
  return "Min Price Fraction Indicator: "..value
end

-- Dissect: Min Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.min_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.min_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.min_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.min_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Min Price
tmx_mx_sola_multicast_hsvf_v1_14.min_price = {}

-- Size: Min Price
tmx_mx_sola_multicast_hsvf_v1_14.min_price.size = 7

-- Display: Min Price
tmx_mx_sola_multicast_hsvf_v1_14.min_price.display = function(value)
  return "Min Price: "..value
end

-- Dissect: Min Price
tmx_mx_sola_multicast_hsvf_v1_14.min_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.min_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.min_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.min_price, range, value, display)

  return offset + length, value
end

-- Tick Entry
tmx_mx_sola_multicast_hsvf_v1_14.tick_entry = {}

-- Calculate size of: Tick Entry
tmx_mx_sola_multicast_hsvf_v1_14.tick_entry.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.min_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.min_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_price_fraction_indicator.size

  return index
end

-- Display: Tick Entry
tmx_mx_sola_multicast_hsvf_v1_14.tick_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Entry
tmx_mx_sola_multicast_hsvf_v1_14.tick_entry.fields = function(buffer, offset, packet, parent, tick_entry_index)
  local index = offset

  -- Implicit Tick Entry Index
  if tick_entry_index ~= nil then
    local iteration = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_entry_index, tick_entry_index)
    iteration:set_generated()
  end

  -- Min Price: N
  index, min_price = tmx_mx_sola_multicast_hsvf_v1_14.min_price.dissect(buffer, index, packet, parent)

  -- Min Price Fraction Indicator: X
  index, min_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.min_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Price: N
  index, tick_price = tmx_mx_sola_multicast_hsvf_v1_14.tick_price.dissect(buffer, index, packet, parent)

  -- Tick Price Fraction Indicator: X
  index, tick_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.tick_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Entry
tmx_mx_sola_multicast_hsvf_v1_14.tick_entry.dissect = function(buffer, offset, packet, parent, tick_entry_index)
  if show.tick_entry then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_entry, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.tick_entry.fields(buffer, offset, packet, parent, tick_entry_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.tick_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.tick_entry.fields(buffer, offset, packet, parent, tick_entry_index)
  end
end

-- Number Of Entries
tmx_mx_sola_multicast_hsvf_v1_14.number_of_entries = {}

-- Size: Number Of Entries
tmx_mx_sola_multicast_hsvf_v1_14.number_of_entries.size = 2

-- Display: Number Of Entries
tmx_mx_sola_multicast_hsvf_v1_14.number_of_entries.display = function(value)
  return "Number Of Entries: "..value
end

-- Dissect: Number Of Entries
tmx_mx_sola_multicast_hsvf_v1_14.number_of_entries.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.number_of_entries.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.number_of_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_entries, range, value, display)

  return offset + length, value
end

-- Tick Table Short Name
tmx_mx_sola_multicast_hsvf_v1_14.tick_table_short_name = {}

-- Size: Tick Table Short Name
tmx_mx_sola_multicast_hsvf_v1_14.tick_table_short_name.size = 2

-- Display: Tick Table Short Name
tmx_mx_sola_multicast_hsvf_v1_14.tick_table_short_name.display = function(value)
  return "Tick Table Short Name: "..value
end

-- Dissect: Tick Table Short Name
tmx_mx_sola_multicast_hsvf_v1_14.tick_table_short_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.tick_table_short_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.tick_table_short_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_table_short_name, range, value, display)

  return offset + length, value
end

-- Tick Table Name
tmx_mx_sola_multicast_hsvf_v1_14.tick_table_name = {}

-- Size: Tick Table Name
tmx_mx_sola_multicast_hsvf_v1_14.tick_table_name.size = 50

-- Display: Tick Table Name
tmx_mx_sola_multicast_hsvf_v1_14.tick_table_name.display = function(value)
  return "Tick Table Name: "..value
end

-- Dissect: Tick Table Name
tmx_mx_sola_multicast_hsvf_v1_14.tick_table_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.tick_table_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.tick_table_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_table_name, range, value, display)

  return offset + length, value
end

-- Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_14.tick_table_message = {}

-- Calculate size of: Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_14.tick_table_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_table_name.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_table_short_name.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.number_of_entries.size

  -- Calculate field size from count
  local tick_entry_count = buffer(offset + index - 2, 2):string()
  index = index + tick_entry_count * 16

  return index
end

-- Display: Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_14.tick_table_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_14.tick_table_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Tick Table Name: X
  index, tick_table_name = tmx_mx_sola_multicast_hsvf_v1_14.tick_table_name.dissect(buffer, index, packet, parent)

  -- Tick Table Short Name: X
  index, tick_table_short_name = tmx_mx_sola_multicast_hsvf_v1_14.tick_table_short_name.dissect(buffer, index, packet, parent)

  -- Number Of Entries: N
  index, number_of_entries = tmx_mx_sola_multicast_hsvf_v1_14.number_of_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Tick Entry
  for tick_entry_index = 1, number_of_entries do
    index, tick_entry = tmx_mx_sola_multicast_hsvf_v1_14.tick_entry.dissect(buffer, index, packet, parent, tick_entry_index)
  end

  return index
end

-- Dissect: Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_14.tick_table_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.tick_table_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14.tick_table_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.tick_table_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_table_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14.tick_table_message.fields(buffer, offset, packet, parent)
end

-- Reserved
tmx_mx_sola_multicast_hsvf_v1_14.reserved = {}

-- Size: Reserved
tmx_mx_sola_multicast_hsvf_v1_14.reserved.size = 1

-- Display: Reserved
tmx_mx_sola_multicast_hsvf_v1_14.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
tmx_mx_sola_multicast_hsvf_v1_14.reserved.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.reserved, range, value, display)

  return offset + length, value
end

-- End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_14.end_of_sales_message = {}

-- Calculate size of: End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_14.end_of_sales_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.reserved.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.time.size

  return index
end

-- Display: End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_14.end_of_sales_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_14.end_of_sales_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: 1 Byte Ascii String
  index, reserved = tmx_mx_sola_multicast_hsvf_v1_14.reserved.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = tmx_mx_sola_multicast_hsvf_v1_14.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_14.end_of_sales_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_sales_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.end_of_sales_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.end_of_sales_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.end_of_sales_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.end_of_sales_message.fields(buffer, offset, packet, parent)
  end
end

-- Continue Marker
tmx_mx_sola_multicast_hsvf_v1_14.continue_marker = {}

-- Size: Continue Marker
tmx_mx_sola_multicast_hsvf_v1_14.continue_marker.size = 1

-- Display: Continue Marker
tmx_mx_sola_multicast_hsvf_v1_14.continue_marker.display = function(value)
  return "Continue Marker: "..value
end

-- Dissect: Continue Marker
tmx_mx_sola_multicast_hsvf_v1_14.continue_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.continue_marker.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.continue_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.continue_marker, range, value, display)

  return offset + length, value
end

-- Bulletin Contents X 49
tmx_mx_sola_multicast_hsvf_v1_14.bulletin_contents_x_49 = {}

-- Size: Bulletin Contents X 49
tmx_mx_sola_multicast_hsvf_v1_14.bulletin_contents_x_49.size = 49

-- Display: Bulletin Contents X 49
tmx_mx_sola_multicast_hsvf_v1_14.bulletin_contents_x_49.display = function(value)
  return "Bulletin Contents X 49: "..value
end

-- Dissect: Bulletin Contents X 49
tmx_mx_sola_multicast_hsvf_v1_14.bulletin_contents_x_49.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.bulletin_contents_x_49.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.bulletin_contents_x_49.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletin_contents_x_49, range, value, display)

  return offset + length, value
end

-- Symbol
tmx_mx_sola_multicast_hsvf_v1_14.symbol = {}

-- Size: Symbol
tmx_mx_sola_multicast_hsvf_v1_14.symbol.size = 30

-- Display: Symbol
tmx_mx_sola_multicast_hsvf_v1_14.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
tmx_mx_sola_multicast_hsvf_v1_14.symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.symbol, range, value, display)

  return offset + length, value
end

-- Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.special_text_bulletin = {}

-- Calculate size of: Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.special_text_bulletin.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bulletin_contents_x_49.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.continue_marker.size

  return index
end

-- Display: Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.special_text_bulletin.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.special_text_bulletin.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_14.symbol.dissect(buffer, index, packet, parent)

  -- Bulletin Contents X 49: X
  index, bulletin_contents_x_49 = tmx_mx_sola_multicast_hsvf_v1_14.bulletin_contents_x_49.dissect(buffer, index, packet, parent)

  -- Continue Marker: N
  index, continue_marker = tmx_mx_sola_multicast_hsvf_v1_14.continue_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.special_text_bulletin.dissect = function(buffer, offset, packet, parent)
  if show.special_text_bulletin then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.special_text_bulletin, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.special_text_bulletin.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.special_text_bulletin.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.special_text_bulletin.fields(buffer, offset, packet, parent)
  end
end

-- Regular Bulletin Contents
tmx_mx_sola_multicast_hsvf_v1_14.regular_bulletin_contents = {}

-- Size: Regular Bulletin Contents
tmx_mx_sola_multicast_hsvf_v1_14.regular_bulletin_contents.size = 79

-- Display: Regular Bulletin Contents
tmx_mx_sola_multicast_hsvf_v1_14.regular_bulletin_contents.display = function(value)
  return "Regular Bulletin Contents: "..value
end

-- Dissect: Regular Bulletin Contents
tmx_mx_sola_multicast_hsvf_v1_14.regular_bulletin_contents.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.regular_bulletin_contents.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.regular_bulletin_contents.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.regular_bulletin_contents, range, value, display)

  return offset + length, value
end

-- Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.regular_text_bulletin = {}

-- Calculate size of: Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.regular_text_bulletin.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.regular_bulletin_contents.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.continue_marker.size

  return index
end

-- Display: Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.regular_text_bulletin.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.regular_text_bulletin.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Regular Bulletin Contents: X
  index, regular_bulletin_contents = tmx_mx_sola_multicast_hsvf_v1_14.regular_bulletin_contents.dissect(buffer, index, packet, parent)

  -- Continue Marker: N
  index, continue_marker = tmx_mx_sola_multicast_hsvf_v1_14.continue_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.regular_text_bulletin.dissect = function(buffer, offset, packet, parent)
  if show.regular_text_bulletin then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.regular_text_bulletin, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.regular_text_bulletin.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.regular_text_bulletin.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.regular_text_bulletin.fields(buffer, offset, packet, parent)
  end
end

-- Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.bulletin = {}

-- Calculate runtime size of: Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.bulletin.size = function(buffer, offset, bulletin_type)
  -- Size of Regular Text Bulletin
  if bulletin_type == "1" then
    return tmx_mx_sola_multicast_hsvf_v1_14.regular_text_bulletin.size(buffer, offset)
  end
  -- Size of Special Text Bulletin
  if bulletin_type == "2" then
    return tmx_mx_sola_multicast_hsvf_v1_14.special_text_bulletin.size(buffer, offset)
  end

  return 0
end

-- Display: Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.bulletin.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.bulletin.branches = function(buffer, offset, packet, parent, bulletin_type)
  -- Dissect Regular Text Bulletin
  if bulletin_type == "1" then
    return tmx_mx_sola_multicast_hsvf_v1_14.regular_text_bulletin.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Special Text Bulletin
  if bulletin_type == "2" then
    return tmx_mx_sola_multicast_hsvf_v1_14.special_text_bulletin.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Bulletin
tmx_mx_sola_multicast_hsvf_v1_14.bulletin.dissect = function(buffer, offset, packet, parent, bulletin_type)
  if not show.bulletin then
    return tmx_mx_sola_multicast_hsvf_v1_14.bulletin.branches(buffer, offset, packet, parent, bulletin_type)
  end

  -- Calculate size and check that branch is not empty
  local size = tmx_mx_sola_multicast_hsvf_v1_14.bulletin.size(buffer, offset, bulletin_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = tmx_mx_sola_multicast_hsvf_v1_14.bulletin.display(buffer, packet, parent)
  local element = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletin, range, display)

  return tmx_mx_sola_multicast_hsvf_v1_14.bulletin.branches(buffer, offset, packet, parent, bulletin_type)
end

-- Bulletin Type
tmx_mx_sola_multicast_hsvf_v1_14.bulletin_type = {}

-- Size: Bulletin Type
tmx_mx_sola_multicast_hsvf_v1_14.bulletin_type.size = 1

-- Display: Bulletin Type
tmx_mx_sola_multicast_hsvf_v1_14.bulletin_type.display = function(value)
  if value == "1" then
    return "Bulletin Type: Regular Text Bulletin (1)"
  end
  if value == "2" then
    return "Bulletin Type: Special Text Bulletin (2)"
  end

  return "Bulletin Type: Unknown("..value..")"
end

-- Dissect: Bulletin Type
tmx_mx_sola_multicast_hsvf_v1_14.bulletin_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.bulletin_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.bulletin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletin_type, range, value, display)

  return offset + length, value
end

-- Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_14.bulletins_message = {}

-- Calculate size of: Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_14.bulletins_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.reserved.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bulletin_type.size

  -- Calculate runtime size of Bulletin field
  local bulletin_offset = offset + index
  local bulletin_type = buffer(bulletin_offset - 1, 1):string()
  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bulletin.size(buffer, bulletin_offset, bulletin_type)

  return index
end

-- Display: Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_14.bulletins_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_14.bulletins_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: 1 Byte Ascii String
  index, reserved = tmx_mx_sola_multicast_hsvf_v1_14.reserved.dissect(buffer, index, packet, parent)

  -- Bulletin Type: X
  index, bulletin_type = tmx_mx_sola_multicast_hsvf_v1_14.bulletin_type.dissect(buffer, index, packet, parent)

  -- Bulletin: Runtime Type with 2 branches
  index = tmx_mx_sola_multicast_hsvf_v1_14.bulletin.dissect(buffer, index, packet, parent, bulletin_type)

  return index
end

-- Dissect: Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_14.bulletins_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.bulletins_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14.bulletins_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.bulletins_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bulletins_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14.bulletins_message.fields(buffer, offset, packet, parent)
end

-- Conversion Factor Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor_fraction_indicator = {}

-- Size: Conversion Factor Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor_fraction_indicator.size = 1

-- Display: Conversion Factor Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor_fraction_indicator.display = function(value)
  return "Conversion Factor Fraction Indicator: "..value
end

-- Dissect: Conversion Factor Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.conversion_factor_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Conversion Factor
tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor = {}

-- Size: Conversion Factor
tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor.size = 7

-- Display: Conversion Factor
tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor.display = function(value)
  return "Conversion Factor: "..value
end

-- Dissect: Conversion Factor
tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.conversion_factor, range, value, display)

  return offset + length, value
end

-- Outstanding Bond Value
tmx_mx_sola_multicast_hsvf_v1_14.outstanding_bond_value = {}

-- Size: Outstanding Bond Value
tmx_mx_sola_multicast_hsvf_v1_14.outstanding_bond_value.size = 8

-- Display: Outstanding Bond Value
tmx_mx_sola_multicast_hsvf_v1_14.outstanding_bond_value.display = function(value)
  return "Outstanding Bond Value: "..value
end

-- Dissect: Outstanding Bond Value
tmx_mx_sola_multicast_hsvf_v1_14.outstanding_bond_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.outstanding_bond_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.outstanding_bond_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.outstanding_bond_value, range, value, display)

  return offset + length, value
end

-- Coupon Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.coupon_fraction_indicator = {}

-- Size: Coupon Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.coupon_fraction_indicator.size = 1

-- Display: Coupon Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.coupon_fraction_indicator.display = function(value)
  return "Coupon Fraction Indicator: "..value
end

-- Dissect: Coupon Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.coupon_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.coupon_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.coupon_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.coupon_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Coupon
tmx_mx_sola_multicast_hsvf_v1_14.coupon = {}

-- Size: Coupon
tmx_mx_sola_multicast_hsvf_v1_14.coupon.size = 7

-- Display: Coupon
tmx_mx_sola_multicast_hsvf_v1_14.coupon.display = function(value)
  return "Coupon: "..value
end

-- Dissect: Coupon
tmx_mx_sola_multicast_hsvf_v1_14.coupon.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.coupon.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.coupon.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.coupon, range, value, display)

  return offset + length, value
end

-- Maturity Date
tmx_mx_sola_multicast_hsvf_v1_14.maturity_date = {}

-- Size: Maturity Date
tmx_mx_sola_multicast_hsvf_v1_14.maturity_date.size = 8

-- Display: Maturity Date
tmx_mx_sola_multicast_hsvf_v1_14.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
tmx_mx_sola_multicast_hsvf_v1_14.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.maturity_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Bond Definition
tmx_mx_sola_multicast_hsvf_v1_14.bond_definition = {}

-- Calculate size of: Bond Definition
tmx_mx_sola_multicast_hsvf_v1_14.bond_definition.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.maturity_date.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.coupon.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.coupon_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.outstanding_bond_value.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor_fraction_indicator.size

  return index
end

-- Display: Bond Definition
tmx_mx_sola_multicast_hsvf_v1_14.bond_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bond Definition
tmx_mx_sola_multicast_hsvf_v1_14.bond_definition.fields = function(buffer, offset, packet, parent, bond_definition_index)
  local index = offset

  -- Implicit Bond Definition Index
  if bond_definition_index ~= nil then
    local iteration = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bond_definition_index, bond_definition_index)
    iteration:set_generated()
  end

  -- Maturity Date: A
  index, maturity_date = tmx_mx_sola_multicast_hsvf_v1_14.maturity_date.dissect(buffer, index, packet, parent)

  -- Coupon: N
  index, coupon = tmx_mx_sola_multicast_hsvf_v1_14.coupon.dissect(buffer, index, packet, parent)

  -- Coupon Fraction Indicator: A
  index, coupon_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.coupon_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Outstanding Bond Value: N
  index, outstanding_bond_value = tmx_mx_sola_multicast_hsvf_v1_14.outstanding_bond_value.dissect(buffer, index, packet, parent)

  -- Conversion Factor: N
  index, conversion_factor = tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor.dissect(buffer, index, packet, parent)

  -- Conversion Factor Fraction Indicator: X
  index, conversion_factor_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.conversion_factor_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bond Definition
tmx_mx_sola_multicast_hsvf_v1_14.bond_definition.dissect = function(buffer, offset, packet, parent, bond_definition_index)
  if show.bond_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bond_definition, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.bond_definition.fields(buffer, offset, packet, parent, bond_definition_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.bond_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.bond_definition.fields(buffer, offset, packet, parent, bond_definition_index)
  end
end

-- Number Of Bonds
tmx_mx_sola_multicast_hsvf_v1_14.number_of_bonds = {}

-- Size: Number Of Bonds
tmx_mx_sola_multicast_hsvf_v1_14.number_of_bonds.size = 2

-- Display: Number Of Bonds
tmx_mx_sola_multicast_hsvf_v1_14.number_of_bonds.display = function(value)
  return "Number Of Bonds: "..value
end

-- Dissect: Number Of Bonds
tmx_mx_sola_multicast_hsvf_v1_14.number_of_bonds.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.number_of_bonds.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.number_of_bonds.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_bonds, range, value, display)

  return offset + length, value
end

-- Expiry Day
tmx_mx_sola_multicast_hsvf_v1_14.expiry_day = {}

-- Size: Expiry Day
tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.size = 2

-- Display: Expiry Day
tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.display = function(value)
  return "Expiry Day: "..value
end

-- Dissect: Expiry Day
tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_day, range, value, display)

  return offset + length, value
end

-- Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14.symbol_year = {}

-- Size: Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14.symbol_year.size = 2

-- Display: Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14.symbol_year.display = function(value)
  return "Symbol Year: "..value
end

-- Dissect: Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14.symbol_year.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.symbol_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.symbol_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.symbol_year, range, value, display)

  return offset + length, value
end

-- Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14.symbol_month = {}

-- Size: Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14.symbol_month.size = 1

-- Display: Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14.symbol_month.display = function(value)
  return "Symbol Month: "..value
end

-- Dissect: Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14.symbol_month.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.symbol_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.symbol_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.symbol_month, range, value, display)

  return offset + length, value
end

-- Root
tmx_mx_sola_multicast_hsvf_v1_14.root = {}

-- Size: Root
tmx_mx_sola_multicast_hsvf_v1_14.root.size = 6

-- Display: Root
tmx_mx_sola_multicast_hsvf_v1_14.root.display = function(value)
  return "Root: "..value
end

-- Dissect: Root
tmx_mx_sola_multicast_hsvf_v1_14.root.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.root.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.root.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.root, range, value, display)

  return offset + length, value
end

-- Future Product
tmx_mx_sola_multicast_hsvf_v1_14.future_product = {}

-- Calculate size of: Future Product
tmx_mx_sola_multicast_hsvf_v1_14.future_product.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.root.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.symbol_month.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.symbol_year.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.size

  return index
end

-- Display: Future Product
tmx_mx_sola_multicast_hsvf_v1_14.future_product.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Product
tmx_mx_sola_multicast_hsvf_v1_14.future_product.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root: X
  index, root = tmx_mx_sola_multicast_hsvf_v1_14.root.dissect(buffer, index, packet, parent)

  -- Symbol Month: A
  index, symbol_month = tmx_mx_sola_multicast_hsvf_v1_14.symbol_month.dissect(buffer, index, packet, parent)

  -- Symbol Year: N
  index, symbol_year = tmx_mx_sola_multicast_hsvf_v1_14.symbol_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Product
tmx_mx_sola_multicast_hsvf_v1_14.future_product.dissect = function(buffer, offset, packet, parent)
  if show.future_product then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_product, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.future_product.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.future_product.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.future_product.fields(buffer, offset, packet, parent)
  end
end

-- Future Deliverables Message
tmx_mx_sola_multicast_hsvf_v1_14.future_deliverables_message = {}

-- Calculate size of: Future Deliverables Message
tmx_mx_sola_multicast_hsvf_v1_14.future_deliverables_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_product.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.number_of_bonds.size

  -- Calculate field size from count
  local bond_definition_count = buffer(offset + index - 2, 2):string()
  index = index + bond_definition_count * 32

  return index
end

-- Display: Future Deliverables Message
tmx_mx_sola_multicast_hsvf_v1_14.future_deliverables_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Deliverables Message
tmx_mx_sola_multicast_hsvf_v1_14.future_deliverables_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14.future_product.dissect(buffer, index, packet, parent)

  -- Number Of Bonds: N
  index, number_of_bonds = tmx_mx_sola_multicast_hsvf_v1_14.number_of_bonds.dissect(buffer, index, packet, parent)

  -- Repeating: Bond Definition
  for bond_definition_index = 1, number_of_bonds do
    index, bond_definition = tmx_mx_sola_multicast_hsvf_v1_14.bond_definition.dissect(buffer, index, packet, parent, bond_definition_index)
  end

  return index
end

-- Dissect: Future Deliverables Message
tmx_mx_sola_multicast_hsvf_v1_14.future_deliverables_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.future_deliverables_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14.future_deliverables_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.future_deliverables_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_deliverables_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14.future_deliverables_message.fields(buffer, offset, packet, parent)
end

-- Group Status
tmx_mx_sola_multicast_hsvf_v1_14.group_status = {}

-- Size: Group Status
tmx_mx_sola_multicast_hsvf_v1_14.group_status.size = 1

-- Display: Group Status
tmx_mx_sola_multicast_hsvf_v1_14.group_status.display = function(value)
  return "Group Status: "..value
end

-- Dissect: Group Status
tmx_mx_sola_multicast_hsvf_v1_14.group_status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.group_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.group_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.group_status, range, value, display)

  return offset + length, value
end

-- Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14.group_instrument = {}

-- Size: Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.size = 2

-- Display: Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.display = function(value)
  return "Group Instrument: "..value
end

-- Dissect: Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.group_instrument, range, value, display)

  return offset + length, value
end

-- Group Status Strategies Message
tmx_mx_sola_multicast_hsvf_v1_14.group_status_strategies_message = {}

-- Calculate size of: Group Status Strategies Message
tmx_mx_sola_multicast_hsvf_v1_14.group_status_strategies_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.group_status.size

  return index
end

-- Display: Group Status Strategies Message
tmx_mx_sola_multicast_hsvf_v1_14.group_status_strategies_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Status Strategies Message
tmx_mx_sola_multicast_hsvf_v1_14.group_status_strategies_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = tmx_mx_sola_multicast_hsvf_v1_14.group_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Strategies Message
tmx_mx_sola_multicast_hsvf_v1_14.group_status_strategies_message.dissect = function(buffer, offset, packet, parent)
  if show.group_status_strategies_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.group_status_strategies_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.group_status_strategies_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.group_status_strategies_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.group_status_strategies_message.fields(buffer, offset, packet, parent)
  end
end

-- Group Status Message
tmx_mx_sola_multicast_hsvf_v1_14.group_status_message = {}

-- Calculate size of: Group Status Message
tmx_mx_sola_multicast_hsvf_v1_14.group_status_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.root.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.group_status.size

  return index
end

-- Display: Group Status Message
tmx_mx_sola_multicast_hsvf_v1_14.group_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Status Message
tmx_mx_sola_multicast_hsvf_v1_14.group_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Root: X
  index, root = tmx_mx_sola_multicast_hsvf_v1_14.root.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = tmx_mx_sola_multicast_hsvf_v1_14.group_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Message
tmx_mx_sola_multicast_hsvf_v1_14.group_status_message.dissect = function(buffer, offset, packet, parent)
  if show.group_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.group_status_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.group_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.group_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.group_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Number
tmx_mx_sola_multicast_hsvf_v1_14.trade_number = {}

-- Size: Trade Number
tmx_mx_sola_multicast_hsvf_v1_14.trade_number.size = 8

-- Display: Trade Number
tmx_mx_sola_multicast_hsvf_v1_14.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
tmx_mx_sola_multicast_hsvf_v1_14.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.trade_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Price Indicator Marker X 1
tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1 = {}

-- Size: Price Indicator Marker X 1
tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1.size = 1

-- Display: Price Indicator Marker X 1
tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1.display = function(value)
  return "Price Indicator Marker X 1: "..value
end

-- Dissect: Price Indicator Marker X 1
tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.price_indicator_marker_x_1, range, value, display)

  return offset + length, value
end

-- Net Change Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1 = {}

-- Size: Net Change Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.size = 1

-- Display: Net Change Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.display = function(value)
  return "Net Change Fraction Indicator X 1: "..value
end

-- Dissect: Net Change Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_fraction_indicator_x_1, range, value, display)

  return offset + length, value
end

-- Net Change
tmx_mx_sola_multicast_hsvf_v1_14.net_change = {}

-- Size: Net Change
tmx_mx_sola_multicast_hsvf_v1_14.net_change.size = 7

-- Display: Net Change
tmx_mx_sola_multicast_hsvf_v1_14.net_change.display = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
tmx_mx_sola_multicast_hsvf_v1_14.net_change.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.net_change.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.net_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change, range, value, display)

  return offset + length, value
end

-- Net Change Sign X 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1 = {}

-- Size: Net Change Sign X 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.size = 1

-- Display: Net Change Sign X 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.display = function(value)
  return "Net Change Sign X 1: "..value
end

-- Dissect: Net Change Sign X 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_sign_x_1, range, value, display)

  return offset + length, value
end

-- Trade Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator = {}

-- Size: Trade Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.size = 1

-- Display: Trade Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.display = function(value)
  return "Trade Price Fraction Indicator: "..value
end

-- Dissect: Trade Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Trade Price N 6
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_6 = {}

-- Size: Trade Price N 6
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_6.size = 6

-- Display: Trade Price N 6
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_6.display = function(value)
  return "Trade Price N 6: "..value
end

-- Dissect: Trade Price N 6
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_6.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_n_6, range, value, display)

  return offset + length, value
end

-- Volume
tmx_mx_sola_multicast_hsvf_v1_14.volume = {}

-- Size: Volume
tmx_mx_sola_multicast_hsvf_v1_14.volume.size = 8

-- Display: Volume
tmx_mx_sola_multicast_hsvf_v1_14.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.volume, range, value, display)

  return offset + length, value
end

-- Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_correction_message = {}

-- Calculate size of: Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_correction_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_product.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_6.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_number.size

  return index
end

-- Display: Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14.future_product.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect(buffer, index, packet, parent)

  -- Trade Price N 6: N
  index, trade_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_6.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.futures_trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_trade_correction_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Id
tmx_mx_sola_multicast_hsvf_v1_14.auction_id = {}

-- Size: Auction Id
tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size = 6

-- Display: Auction Id
tmx_mx_sola_multicast_hsvf_v1_14.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Strategy Symbol
tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol = {}

-- Size: Strategy Symbol
tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.size = 30

-- Display: Strategy Symbol
tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.display = function(value)
  return "Strategy Symbol: "..value
end

-- Dissect: Strategy Symbol
tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_symbol, range, value, display)

  return offset + length, value
end

-- Strategy Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_ending_message = {}

-- Calculate size of: Strategy Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_ending_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  return index
end

-- Display: Strategy Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_ending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_ending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_ending_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_auction_ending_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_auction_ending_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_ending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_ending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_ending_message.fields(buffer, offset, packet, parent)
  end
end

-- Expiry Year
tmx_mx_sola_multicast_hsvf_v1_14.expiry_year = {}

-- Size: Expiry Year
tmx_mx_sola_multicast_hsvf_v1_14.expiry_year.size = 2

-- Display: Expiry Year
tmx_mx_sola_multicast_hsvf_v1_14.expiry_year.display = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
tmx_mx_sola_multicast_hsvf_v1_14.expiry_year.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.expiry_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.expiry_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- Strike Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.strike_price_fraction_indicator = {}

-- Size: Strike Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.strike_price_fraction_indicator.size = 1

-- Display: Strike Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.strike_price_fraction_indicator.display = function(value)
  return "Strike Price Fraction Indicator: "..value
end

-- Dissect: Strike Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.strike_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.strike_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.strike_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strike_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Strike Price
tmx_mx_sola_multicast_hsvf_v1_14.strike_price = {}

-- Size: Strike Price
tmx_mx_sola_multicast_hsvf_v1_14.strike_price.size = 7

-- Display: Strike Price
tmx_mx_sola_multicast_hsvf_v1_14.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
tmx_mx_sola_multicast_hsvf_v1_14.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.strike_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Expiry Month
tmx_mx_sola_multicast_hsvf_v1_14.expiry_month = {}

-- Size: Expiry Month
tmx_mx_sola_multicast_hsvf_v1_14.expiry_month.size = 1

-- Display: Expiry Month
tmx_mx_sola_multicast_hsvf_v1_14.expiry_month.display = function(value)
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
tmx_mx_sola_multicast_hsvf_v1_14.expiry_month.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.expiry_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.expiry_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_month, range, value, display)

  return offset + length, value
end

-- Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14.option_symbol = {}

-- Calculate size of: Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.root.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.expiry_month.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strike_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strike_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.expiry_year.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.size

  return index
end

-- Display: Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root: X
  index, root = tmx_mx_sola_multicast_hsvf_v1_14.root.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_14.expiry_month.dissect(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = tmx_mx_sola_multicast_hsvf_v1_14.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_14.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.dissect = function(buffer, offset, packet, parent)
  if show.option_symbol then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_symbol, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.fields(buffer, offset, packet, parent)
  end
end

-- Option Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14.option_auction_ending_message = {}

-- Calculate size of: Option Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14.option_auction_ending_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  return index
end

-- Display: Option Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14.option_auction_ending_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14.option_auction_ending_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Auction Ending Message
tmx_mx_sola_multicast_hsvf_v1_14.option_auction_ending_message.dissect = function(buffer, offset, packet, parent)
  if show.option_auction_ending_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_auction_ending_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.option_auction_ending_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.option_auction_ending_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.option_auction_ending_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_strategy_summary_message = {}

-- Calculate size of: Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_strategy_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  return index
end

-- Display: Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_strategy_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_strategy_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_strategy_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.beginning_of_strategy_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_strategy_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_strategy_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_strategy_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_strategy_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_futures_summary_message = {}

-- Calculate size of: Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_futures_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  return index
end

-- Display: Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_futures_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_futures_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_futures_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.beginning_of_futures_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_futures_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_futures_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_futures_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_futures_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_future_options_summary_message = {}

-- Calculate size of: Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_future_options_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  return index
end

-- Display: Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_future_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_future_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_future_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.beginning_of_future_options_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_future_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_future_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_future_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_future_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_options_summary_message = {}

-- Calculate size of: Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_options_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  return index
end

-- Display: Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.beginning_of_options_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.beginning_of_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Previous Order Id
tmx_mx_sola_multicast_hsvf_v1_14.previous_order_id = {}

-- Size: Previous Order Id
tmx_mx_sola_multicast_hsvf_v1_14.previous_order_id.size = 8

-- Display: Previous Order Id
tmx_mx_sola_multicast_hsvf_v1_14.previous_order_id.display = function(value)
  return "Previous Order Id: "..value
end

-- Dissect: Previous Order Id
tmx_mx_sola_multicast_hsvf_v1_14.previous_order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.previous_order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.previous_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_order_id, range, value, display)

  return offset + length, value
end

-- Order Id
tmx_mx_sola_multicast_hsvf_v1_14.order_id = {}

-- Size: Order Id
tmx_mx_sola_multicast_hsvf_v1_14.order_id.size = 8

-- Display: Order Id
tmx_mx_sola_multicast_hsvf_v1_14.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
tmx_mx_sola_multicast_hsvf_v1_14.order_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.order_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Type
tmx_mx_sola_multicast_hsvf_v1_14.order_type = {}

-- Size: Order Type
tmx_mx_sola_multicast_hsvf_v1_14.order_type.size = 1

-- Display: Order Type
tmx_mx_sola_multicast_hsvf_v1_14.order_type.display = function(value)
  if value == "A" then
    return "Order Type: Initial Order (A)"
  end
  if value == "B" then
    return "Order Type: Improvement Order (B)"
  end

  return "Order Type: Unknown("..value..")"
end

-- Dissect: Order Type
tmx_mx_sola_multicast_hsvf_v1_14.order_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.order_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.order_type, range, value, display)

  return offset + length, value
end

-- Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.order_price_fraction_indicator = {}

-- Size: Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.order_price_fraction_indicator.size = 1

-- Display: Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.order_price_fraction_indicator.display = function(value)
  return "Order Price Fraction Indicator: "..value
end

-- Dissect: Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.order_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.order_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.order_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.order_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Order Price
tmx_mx_sola_multicast_hsvf_v1_14.order_price = {}

-- Size: Order Price
tmx_mx_sola_multicast_hsvf_v1_14.order_price.size = 7

-- Display: Order Price
tmx_mx_sola_multicast_hsvf_v1_14.order_price.display = function(value)
  return "Order Price: "..value
end

-- Dissect: Order Price
tmx_mx_sola_multicast_hsvf_v1_14.order_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.order_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.order_price, range, value, display)

  return offset + length, value
end

-- Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14.order_quantity = {}

-- Size: Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14.order_quantity.size = 8

-- Display: Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14.order_quantity.display = function(value)
  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14.order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.order_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Order Side
tmx_mx_sola_multicast_hsvf_v1_14.order_side = {}

-- Size: Order Side
tmx_mx_sola_multicast_hsvf_v1_14.order_side.size = 1

-- Display: Order Side
tmx_mx_sola_multicast_hsvf_v1_14.order_side.display = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
tmx_mx_sola_multicast_hsvf_v1_14.order_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.order_side, range, value, display)

  return offset + length, value
end

-- Strategy Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_initial_and_improvement_order_message = {}

-- Calculate size of: Strategy Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_initial_and_improvement_order_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.order_side.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.order_quantity.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.order_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.order_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.order_type.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.order_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.previous_order_id.size

  return index
end

-- Display: Strategy Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_initial_and_improvement_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_initial_and_improvement_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  -- Order Side: X
  index, order_side = tmx_mx_sola_multicast_hsvf_v1_14.order_side.dissect(buffer, index, packet, parent)

  -- Order Quantity: N
  index, order_quantity = tmx_mx_sola_multicast_hsvf_v1_14.order_quantity.dissect(buffer, index, packet, parent)

  -- Order Price: N
  index, order_price = tmx_mx_sola_multicast_hsvf_v1_14.order_price.dissect(buffer, index, packet, parent)

  -- Order Price Fraction Indicator: X
  index, order_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Order Type: X
  index, order_type = tmx_mx_sola_multicast_hsvf_v1_14.order_type.dissect(buffer, index, packet, parent)

  -- Order Id: X
  index, order_id = tmx_mx_sola_multicast_hsvf_v1_14.order_id.dissect(buffer, index, packet, parent)

  -- Previous Order Id: X
  index, previous_order_id = tmx_mx_sola_multicast_hsvf_v1_14.previous_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_initial_and_improvement_order_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_initial_and_improvement_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_initial_and_improvement_order_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.strategy_initial_and_improvement_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_initial_and_improvement_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_initial_and_improvement_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14.option_initial_and_improvement_order_message = {}

-- Calculate size of: Option Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14.option_initial_and_improvement_order_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.order_side.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.order_quantity.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.order_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.order_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.order_type.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.order_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.previous_order_id.size

  return index
end

-- Display: Option Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14.option_initial_and_improvement_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14.option_initial_and_improvement_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  -- Order Side: X
  index, order_side = tmx_mx_sola_multicast_hsvf_v1_14.order_side.dissect(buffer, index, packet, parent)

  -- Order Quantity: N
  index, order_quantity = tmx_mx_sola_multicast_hsvf_v1_14.order_quantity.dissect(buffer, index, packet, parent)

  -- Order Price: N
  index, order_price = tmx_mx_sola_multicast_hsvf_v1_14.order_price.dissect(buffer, index, packet, parent)

  -- Order Price Fraction Indicator: X
  index, order_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Order Type: X
  index, order_type = tmx_mx_sola_multicast_hsvf_v1_14.order_type.dissect(buffer, index, packet, parent)

  -- Order Id: X
  index, order_id = tmx_mx_sola_multicast_hsvf_v1_14.order_id.dissect(buffer, index, packet, parent)

  -- Previous Order Id: X
  index, previous_order_id = tmx_mx_sola_multicast_hsvf_v1_14.previous_order_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Initial And Improvement Order Message
tmx_mx_sola_multicast_hsvf_v1_14.option_initial_and_improvement_order_message.dissect = function(buffer, offset, packet, parent)
  if show.option_initial_and_improvement_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_initial_and_improvement_order_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.option_initial_and_improvement_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.option_initial_and_improvement_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.option_initial_and_improvement_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Reason
tmx_mx_sola_multicast_hsvf_v1_14.reason = {}

-- Size: Reason
tmx_mx_sola_multicast_hsvf_v1_14.reason.size = 1

-- Display: Reason
tmx_mx_sola_multicast_hsvf_v1_14.reason.display = function(value)
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
tmx_mx_sola_multicast_hsvf_v1_14.reason.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.reason, range, value, display)

  return offset + length, value
end

-- Low Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator = {}

-- Size: Low Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator.size = 1

-- Display: Low Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator.display = function(value)
  return "Low Price Fraction Indicator: "..value
end

-- Dissect: Low Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.low_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Low Price
tmx_mx_sola_multicast_hsvf_v1_14.low_price = {}

-- Size: Low Price
tmx_mx_sola_multicast_hsvf_v1_14.low_price.size = 7

-- Display: Low Price
tmx_mx_sola_multicast_hsvf_v1_14.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
tmx_mx_sola_multicast_hsvf_v1_14.low_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.low_price, range, value, display)

  return offset + length, value
end

-- Low Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.low_price_sign = {}

-- Size: Low Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.low_price_sign.size = 1

-- Display: Low Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.low_price_sign.display = function(value)
  return "Low Price Sign: "..value
end

-- Dissect: Low Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.low_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.low_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.low_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.low_price_sign, range, value, display)

  return offset + length, value
end

-- High Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator = {}

-- Size: High Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator.size = 1

-- Display: High Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator.display = function(value)
  return "High Price Fraction Indicator: "..value
end

-- Dissect: High Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.high_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- High Price
tmx_mx_sola_multicast_hsvf_v1_14.high_price = {}

-- Size: High Price
tmx_mx_sola_multicast_hsvf_v1_14.high_price.size = 7

-- Display: High Price
tmx_mx_sola_multicast_hsvf_v1_14.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
tmx_mx_sola_multicast_hsvf_v1_14.high_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.high_price, range, value, display)

  return offset + length, value
end

-- High Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.high_price_sign = {}

-- Size: High Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.high_price_sign.size = 1

-- Display: High Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.high_price_sign.display = function(value)
  return "High Price Sign: "..value
end

-- Dissect: High Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.high_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.high_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.high_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.high_price_sign, range, value, display)

  return offset + length, value
end

-- Open Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.open_price_fraction_indicator = {}

-- Size: Open Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.open_price_fraction_indicator.size = 1

-- Display: Open Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.open_price_fraction_indicator.display = function(value)
  return "Open Price Fraction Indicator: "..value
end

-- Dissect: Open Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.open_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.open_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.open_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.open_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Open Price
tmx_mx_sola_multicast_hsvf_v1_14.open_price = {}

-- Size: Open Price
tmx_mx_sola_multicast_hsvf_v1_14.open_price.size = 7

-- Display: Open Price
tmx_mx_sola_multicast_hsvf_v1_14.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
tmx_mx_sola_multicast_hsvf_v1_14.open_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.open_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.open_price, range, value, display)

  return offset + length, value
end

-- Open Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.open_price_sign = {}

-- Size: Open Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.open_price_sign.size = 1

-- Display: Open Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.open_price_sign.display = function(value)
  return "Open Price Sign: "..value
end

-- Dissect: Open Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.open_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.open_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.open_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.open_price_sign, range, value, display)

  return offset + length, value
end

-- Last Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator = {}

-- Size: Last Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator.size = 1

-- Display: Last Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator.display = function(value)
  return "Last Price Fraction Indicator: "..value
end

-- Dissect: Last Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.last_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Last Price
tmx_mx_sola_multicast_hsvf_v1_14.last_price = {}

-- Size: Last Price
tmx_mx_sola_multicast_hsvf_v1_14.last_price.size = 7

-- Display: Last Price
tmx_mx_sola_multicast_hsvf_v1_14.last_price.display = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
tmx_mx_sola_multicast_hsvf_v1_14.last_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.last_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.last_price_sign = {}

-- Size: Last Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.last_price_sign.size = 1

-- Display: Last Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.last_price_sign.display = function(value)
  return "Last Price Sign: "..value
end

-- Dissect: Last Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.last_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.last_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.last_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.last_price_sign, range, value, display)

  return offset + length, value
end

-- Ask Size
tmx_mx_sola_multicast_hsvf_v1_14.ask_size = {}

-- Size: Ask Size
tmx_mx_sola_multicast_hsvf_v1_14.ask_size.size = 5

-- Display: Ask Size
tmx_mx_sola_multicast_hsvf_v1_14.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
tmx_mx_sola_multicast_hsvf_v1_14.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.ask_size.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator = {}

-- Size: Ask Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.size = 1

-- Display: Ask Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.display = function(value)
  return "Ask Price Fraction Indicator: "..value
end

-- Dissect: Ask Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Ask Price
tmx_mx_sola_multicast_hsvf_v1_14.ask_price = {}

-- Size: Ask Price
tmx_mx_sola_multicast_hsvf_v1_14.ask_price.size = 7

-- Display: Ask Price
tmx_mx_sola_multicast_hsvf_v1_14.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
tmx_mx_sola_multicast_hsvf_v1_14.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.ask_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.ask_price_sign = {}

-- Size: Ask Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.ask_price_sign.size = 1

-- Display: Ask Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.ask_price_sign.display = function(value)
  return "Ask Price Sign: "..value
end

-- Dissect: Ask Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.ask_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.ask_price_sign, range, value, display)

  return offset + length, value
end

-- Bid Size
tmx_mx_sola_multicast_hsvf_v1_14.bid_size = {}

-- Size: Bid Size
tmx_mx_sola_multicast_hsvf_v1_14.bid_size.size = 5

-- Display: Bid Size
tmx_mx_sola_multicast_hsvf_v1_14.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
tmx_mx_sola_multicast_hsvf_v1_14.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.bid_size.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator = {}

-- Size: Bid Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.size = 1

-- Display: Bid Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.display = function(value)
  return "Bid Price Fraction Indicator: "..value
end

-- Dissect: Bid Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Bid Price
tmx_mx_sola_multicast_hsvf_v1_14.bid_price = {}

-- Size: Bid Price
tmx_mx_sola_multicast_hsvf_v1_14.bid_price.size = 7

-- Display: Bid Price
tmx_mx_sola_multicast_hsvf_v1_14.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
tmx_mx_sola_multicast_hsvf_v1_14.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.bid_price_sign = {}

-- Size: Bid Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.bid_price_sign.size = 1

-- Display: Bid Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.bid_price_sign.display = function(value)
  return "Bid Price Sign: "..value
end

-- Dissect: Bid Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.bid_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.bid_price_sign, range, value, display)

  return offset + length, value
end

-- Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_summary_message = {}

-- Calculate size of: Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.last_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.last_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.open_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.open_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.open_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.high_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.high_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.low_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.low_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.reason.size

  return index
end

-- Display: Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price Sign: X
  index, last_price_sign = tmx_mx_sola_multicast_hsvf_v1_14.last_price_sign.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_sola_multicast_hsvf_v1_14.last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price Sign: X
  index, open_price_sign = tmx_mx_sola_multicast_hsvf_v1_14.open_price_sign.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_sola_multicast_hsvf_v1_14.open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price Sign: X
  index, high_price_sign = tmx_mx_sola_multicast_hsvf_v1_14.high_price_sign.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_sola_multicast_hsvf_v1_14.high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price Sign: X
  index, low_price_sign = tmx_mx_sola_multicast_hsvf_v1_14.low_price_sign.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_sola_multicast_hsvf_v1_14.low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_sola_multicast_hsvf_v1_14.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.strategy_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- External Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.external_price_fraction_indicator = {}

-- Size: External Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.external_price_fraction_indicator.size = 1

-- Display: External Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.external_price_fraction_indicator.display = function(value)
  return "External Price Fraction Indicator: "..value
end

-- Dissect: External Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.external_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.external_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.external_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.external_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- External Price At Source
tmx_mx_sola_multicast_hsvf_v1_14.external_price_at_source = {}

-- Size: External Price At Source
tmx_mx_sola_multicast_hsvf_v1_14.external_price_at_source.size = 7

-- Display: External Price At Source
tmx_mx_sola_multicast_hsvf_v1_14.external_price_at_source.display = function(value)
  return "External Price At Source: "..value
end

-- Dissect: External Price At Source
tmx_mx_sola_multicast_hsvf_v1_14.external_price_at_source.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.external_price_at_source.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.external_price_at_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.external_price_at_source, range, value, display)

  return offset + length, value
end

-- Open Interest Date N 7
tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_7 = {}

-- Size: Open Interest Date N 7
tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_7.size = 7

-- Display: Open Interest Date N 7
tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_7.display = function(value)
  return "Open Interest Date N 7: "..value
end

-- Dissect: Open Interest Date N 7
tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_7.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_7.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.open_interest_date_n_7, range, value, display)

  return offset + length, value
end

-- Open Interest
tmx_mx_sola_multicast_hsvf_v1_14.open_interest = {}

-- Size: Open Interest
tmx_mx_sola_multicast_hsvf_v1_14.open_interest.size = 7

-- Display: Open Interest
tmx_mx_sola_multicast_hsvf_v1_14.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
tmx_mx_sola_multicast_hsvf_v1_14.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.open_interest.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Previous Settlement Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_fraction_indicator = {}

-- Size: Previous Settlement Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_fraction_indicator.size = 1

-- Display: Previous Settlement Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_fraction_indicator.display = function(value)
  return "Previous Settlement Fraction Indicator: "..value
end

-- Dissect: Previous Settlement Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Previous Settlement
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement = {}

-- Size: Previous Settlement
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement.size = 7

-- Display: Previous Settlement
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement.display = function(value)
  return "Previous Settlement: "..value
end

-- Dissect: Previous Settlement
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement, range, value, display)

  return offset + length, value
end

-- Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.settlement_price_fraction_indicator = {}

-- Size: Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.settlement_price_fraction_indicator.size = 1

-- Display: Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.settlement_price_fraction_indicator.display = function(value)
  return "Settlement Price Fraction Indicator: "..value
end

-- Dissect: Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.settlement_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.settlement_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.settlement_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.settlement_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14.settlement_price = {}

-- Size: Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14.settlement_price.size = 7

-- Display: Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_summary_message = {}

-- Calculate size of: Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_product.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.last_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.open_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.open_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.high_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.low_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.settlement_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.settlement_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.open_interest.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.reason.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.external_price_at_source.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.external_price_fraction_indicator.size

  return index
end

-- Display: Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14.future_product.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_sola_multicast_hsvf_v1_14.last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_sola_multicast_hsvf_v1_14.open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_sola_multicast_hsvf_v1_14.high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_sola_multicast_hsvf_v1_14.low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_sola_multicast_hsvf_v1_14.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator: X
  index, settlement_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect(buffer, index, packet, parent)

  -- Previous Settlement: N
  index, previous_settlement = tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement.dissect(buffer, index, packet, parent)

  -- Previous Settlement Fraction Indicator: X
  index, previous_settlement_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_14.open_interest.dissect(buffer, index, packet, parent)

  -- Open Interest Date N 7: N
  index, open_interest_date_n_7 = tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_7.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_sola_multicast_hsvf_v1_14.reason.dissect(buffer, index, packet, parent)

  -- External Price At Source: N
  index, external_price_at_source = tmx_mx_sola_multicast_hsvf_v1_14.external_price_at_source.dissect(buffer, index, packet, parent)

  -- External Price Fraction Indicator: X
  index, external_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.external_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.futures_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.futures_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.futures_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Previous Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price_fraction_indicator = {}

-- Size: Previous Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price_fraction_indicator.size = 1

-- Display: Previous Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price_fraction_indicator.display = function(value)
  return "Previous Settlement Price Fraction Indicator: "..value
end

-- Dissect: Previous Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Previous Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price = {}

-- Size: Previous Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price.size = 7

-- Display: Previous Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price.display = function(value)
  return "Previous Settlement Price: "..value
end

-- Dissect: Previous Settlement Price
tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_settlement_price, range, value, display)

  return offset + length, value
end

-- Opening Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.opening_price_fraction_indicator = {}

-- Size: Opening Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.opening_price_fraction_indicator.size = 1

-- Display: Opening Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.opening_price_fraction_indicator.display = function(value)
  return "Opening Price Fraction Indicator: "..value
end

-- Dissect: Opening Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.opening_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.opening_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.opening_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.opening_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Opening Price
tmx_mx_sola_multicast_hsvf_v1_14.opening_price = {}

-- Size: Opening Price
tmx_mx_sola_multicast_hsvf_v1_14.opening_price.size = 7

-- Display: Opening Price
tmx_mx_sola_multicast_hsvf_v1_14.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
tmx_mx_sola_multicast_hsvf_v1_14.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Tick
tmx_mx_sola_multicast_hsvf_v1_14.tick = {}

-- Size: Tick
tmx_mx_sola_multicast_hsvf_v1_14.tick.size = 1

-- Display: Tick
tmx_mx_sola_multicast_hsvf_v1_14.tick.display = function(value)
  if value == "+" then
    return "Tick: Uptick (+)"
  end
  if value == "-" then
    return "Tick: Downtick (-)"
  end

  return "Tick: Unknown("..value..")"
end

-- Dissect: Tick
tmx_mx_sola_multicast_hsvf_v1_14.tick.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.tick.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick, range, value, display)

  return offset + length, value
end

-- Open Interest Date N 6
tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_6 = {}

-- Size: Open Interest Date N 6
tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_6.size = 6

-- Display: Open Interest Date N 6
tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_6.display = function(value)
  return "Open Interest Date N 6: "..value
end

-- Dissect: Open Interest Date N 6
tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_6.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.open_interest_date_n_6, range, value, display)

  return offset + length, value
end

-- Call Put Code
tmx_mx_sola_multicast_hsvf_v1_14.call_put_code = {}

-- Size: Call Put Code
tmx_mx_sola_multicast_hsvf_v1_14.call_put_code.size = 1

-- Display: Call Put Code
tmx_mx_sola_multicast_hsvf_v1_14.call_put_code.display = function(value)
  if value == "C" then
    return "Call Put Code: Call (C)"
  end
  if value == "P" then
    return "Call Put Code: Put (P)"
  end

  return "Call Put Code: Unknown("..value..")"
end

-- Dissect: Call Put Code
tmx_mx_sola_multicast_hsvf_v1_14.call_put_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.call_put_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.call_put_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.call_put_code, range, value, display)

  return offset + length, value
end

-- Future Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol = {}

-- Calculate size of: Future Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.root.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.symbol_month.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.symbol_year.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.call_put_code.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strike_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strike_price_fraction_indicator.size

  return index
end

-- Display: Future Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root: X
  index, root = tmx_mx_sola_multicast_hsvf_v1_14.root.dissect(buffer, index, packet, parent)

  -- Symbol Month: A
  index, symbol_month = tmx_mx_sola_multicast_hsvf_v1_14.symbol_month.dissect(buffer, index, packet, parent)

  -- Symbol Year: N
  index, symbol_year = tmx_mx_sola_multicast_hsvf_v1_14.symbol_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_sola_multicast_hsvf_v1_14.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = tmx_mx_sola_multicast_hsvf_v1_14.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Option Symbol
tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.dissect = function(buffer, offset, packet, parent)
  if show.future_option_symbol then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_option_symbol, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_summary_message = {}

-- Calculate size of: Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.last_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.open_interest.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_6.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.opening_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.opening_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.high_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.low_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.settlement_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.settlement_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.reason.size

  return index
end

-- Display: Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_sola_multicast_hsvf_v1_14.last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_14.open_interest.dissect(buffer, index, packet, parent)

  -- Open Interest Date N 6: N
  index, open_interest_date_n_6 = tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_6.dissect(buffer, index, packet, parent)

  -- Tick: X
  index, tick = tmx_mx_sola_multicast_hsvf_v1_14.tick.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Opening Price: N
  index, opening_price = tmx_mx_sola_multicast_hsvf_v1_14.opening_price.dissect(buffer, index, packet, parent)

  -- Opening Price Fraction Indicator: X
  index, opening_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.opening_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_sola_multicast_hsvf_v1_14.high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_sola_multicast_hsvf_v1_14.low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_sola_multicast_hsvf_v1_14.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator: X
  index, settlement_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price: N
  index, previous_settlement_price = tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price Fraction Indicator: X
  index, previous_settlement_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.previous_settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_sola_multicast_hsvf_v1_14.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.future_options_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.future_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.future_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Previous Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price_fraction_indicator = {}

-- Size: Previous Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price_fraction_indicator.size = 1

-- Display: Previous Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price_fraction_indicator.display = function(value)
  return "Previous Closing Price Fraction Indicator: "..value
end

-- Dissect: Previous Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_closing_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Previous Closing Price
tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price = {}

-- Size: Previous Closing Price
tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price.size = 7

-- Display: Previous Closing Price
tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price.display = function(value)
  return "Previous Closing Price: "..value
end

-- Dissect: Previous Closing Price
tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.previous_closing_price, range, value, display)

  return offset + length, value
end

-- Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.closing_price_fraction_indicator = {}

-- Size: Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.closing_price_fraction_indicator.size = 1

-- Display: Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.closing_price_fraction_indicator.display = function(value)
  return "Closing Price Fraction Indicator: "..value
end

-- Dissect: Closing Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.closing_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.closing_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.closing_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.closing_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Closing Price
tmx_mx_sola_multicast_hsvf_v1_14.closing_price = {}

-- Size: Closing Price
tmx_mx_sola_multicast_hsvf_v1_14.closing_price.size = 7

-- Display: Closing Price
tmx_mx_sola_multicast_hsvf_v1_14.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Dissect: Closing Price
tmx_mx_sola_multicast_hsvf_v1_14.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.closing_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Option Marker
tmx_mx_sola_multicast_hsvf_v1_14.option_marker = {}

-- Size: Option Marker
tmx_mx_sola_multicast_hsvf_v1_14.option_marker.size = 2

-- Display: Option Marker
tmx_mx_sola_multicast_hsvf_v1_14.option_marker.display = function(value)
  return "Option Marker: "..value
end

-- Dissect: Option Marker
tmx_mx_sola_multicast_hsvf_v1_14.option_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.option_marker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14.option_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_marker, range, value, display)

  return offset + length, value
end

-- Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.option_summary_message = {}

-- Calculate size of: Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.option_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.last_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.open_interest.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_6.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.open_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.open_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.high_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.low_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_marker.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.closing_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.closing_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.reason.size

  return index
end

-- Display: Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.option_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.option_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_sola_multicast_hsvf_v1_14.last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_14.open_interest.dissect(buffer, index, packet, parent)

  -- Open Interest Date N 6: N
  index, open_interest_date_n_6 = tmx_mx_sola_multicast_hsvf_v1_14.open_interest_date_n_6.dissect(buffer, index, packet, parent)

  -- Tick: X
  index, tick = tmx_mx_sola_multicast_hsvf_v1_14.tick.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_sola_multicast_hsvf_v1_14.open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_sola_multicast_hsvf_v1_14.high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_sola_multicast_hsvf_v1_14.low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Marker: A
  index, option_marker = tmx_mx_sola_multicast_hsvf_v1_14.option_marker.dissect(buffer, index, packet, parent)

  -- Closing Price: N
  index, closing_price = tmx_mx_sola_multicast_hsvf_v1_14.closing_price.dissect(buffer, index, packet, parent)

  -- Closing Price Fraction Indicator: N
  index, closing_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.closing_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Previous Closing Price: N
  index, previous_closing_price = tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price.dissect(buffer, index, packet, parent)

  -- Previous Closing Price Fraction Indicator: X
  index, previous_closing_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.previous_closing_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_sola_multicast_hsvf_v1_14.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_14.option_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.option_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.option_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.option_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.option_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Initial Quantity Assured
tmx_mx_sola_multicast_hsvf_v1_14.initial_quantity_assured = {}

-- Size: Initial Quantity Assured
tmx_mx_sola_multicast_hsvf_v1_14.initial_quantity_assured.size = 8

-- Display: Initial Quantity Assured
tmx_mx_sola_multicast_hsvf_v1_14.initial_quantity_assured.display = function(value)
  return "Initial Quantity Assured: "..value
end

-- Dissect: Initial Quantity Assured
tmx_mx_sola_multicast_hsvf_v1_14.initial_quantity_assured.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.initial_quantity_assured.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.initial_quantity_assured.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_quantity_assured, range, value, display)

  return offset + length, value
end

-- Auction Duration
tmx_mx_sola_multicast_hsvf_v1_14.auction_duration = {}

-- Size: Auction Duration
tmx_mx_sola_multicast_hsvf_v1_14.auction_duration.size = 12

-- Display: Auction Duration
tmx_mx_sola_multicast_hsvf_v1_14.auction_duration.display = function(value)
  return "Auction Duration: "..value
end

-- Dissect: Auction Duration
tmx_mx_sola_multicast_hsvf_v1_14.auction_duration.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.auction_duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.auction_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.auction_duration, range, value, display)

  return offset + length, value
end

-- Auction Expiry Timestamp
tmx_mx_sola_multicast_hsvf_v1_14.auction_expiry_timestamp = {}

-- Size: Auction Expiry Timestamp
tmx_mx_sola_multicast_hsvf_v1_14.auction_expiry_timestamp.size = 20

-- Display: Auction Expiry Timestamp
tmx_mx_sola_multicast_hsvf_v1_14.auction_expiry_timestamp.display = function(value)
  return "Auction Expiry Timestamp: "..value
end

-- Dissect: Auction Expiry Timestamp
tmx_mx_sola_multicast_hsvf_v1_14.auction_expiry_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.auction_expiry_timestamp.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.auction_expiry_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.auction_expiry_timestamp, range, value, display)

  return offset + length, value
end

-- Initial Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price_fraction_indicator = {}

-- Size: Initial Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price_fraction_indicator.size = 1

-- Display: Initial Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price_fraction_indicator.display = function(value)
  return "Initial Order Price Fraction Indicator: "..value
end

-- Dissect: Initial Order Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Initial Order Price
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price = {}

-- Size: Initial Order Price
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price.size = 7

-- Display: Initial Order Price
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price.display = function(value)
  return "Initial Order Price: "..value
end

-- Dissect: Initial Order Price
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_price, range, value, display)

  return offset + length, value
end

-- Initial Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_quantity = {}

-- Size: Initial Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_quantity.size = 8

-- Display: Initial Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_quantity.display = function(value)
  return "Initial Order Quantity: "..value
end

-- Dissect: Initial Order Quantity
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_quantity, range, value, display)

  return offset + length, value
end

-- Initial Order Side
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_side = {}

-- Size: Initial Order Side
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_side.size = 1

-- Display: Initial Order Side
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_side.display = function(value)
  if value == "B" then
    return "Initial Order Side: Buy (B)"
  end
  if value == "S" then
    return "Initial Order Side: Sell (S)"
  end

  return "Initial Order Side: Unknown("..value..")"
end

-- Dissect: Initial Order Side
tmx_mx_sola_multicast_hsvf_v1_14.initial_order_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.initial_order_side, range, value, display)

  return offset + length, value
end

-- Strategy Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_beginning_message = {}

-- Calculate size of: Strategy Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_beginning_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.initial_order_side.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.initial_order_quantity.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_expiry_timestamp.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_duration.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.initial_quantity_assured.size

  return index
end

-- Display: Strategy Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_beginning_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_beginning_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  -- Initial Order Side: X
  index, initial_order_side = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_side.dissect(buffer, index, packet, parent)

  -- Initial Order Quantity: N
  index, initial_order_quantity = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_quantity.dissect(buffer, index, packet, parent)

  -- Initial Order Price: N
  index, initial_order_price = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price.dissect(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Auction Expiry Timestamp: X
  index, auction_expiry_timestamp = tmx_mx_sola_multicast_hsvf_v1_14.auction_expiry_timestamp.dissect(buffer, index, packet, parent)

  -- Auction Duration: N
  index, auction_duration = tmx_mx_sola_multicast_hsvf_v1_14.auction_duration.dissect(buffer, index, packet, parent)

  -- Initial Quantity Assured: N
  index, initial_quantity_assured = tmx_mx_sola_multicast_hsvf_v1_14.initial_quantity_assured.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_beginning_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_auction_beginning_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_auction_beginning_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_beginning_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_beginning_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_beginning_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14.option_auction_beginning_message = {}

-- Calculate size of: Option Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14.option_auction_beginning_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.initial_order_side.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.initial_order_quantity.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_expiry_timestamp.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_duration.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.initial_quantity_assured.size

  return index
end

-- Display: Option Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14.option_auction_beginning_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14.option_auction_beginning_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  -- Initial Order Side: X
  index, initial_order_side = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_side.dissect(buffer, index, packet, parent)

  -- Initial Order Quantity: N
  index, initial_order_quantity = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_quantity.dissect(buffer, index, packet, parent)

  -- Initial Order Price: N
  index, initial_order_price = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price.dissect(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.initial_order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Auction Expiry Timestamp: X
  index, auction_expiry_timestamp = tmx_mx_sola_multicast_hsvf_v1_14.auction_expiry_timestamp.dissect(buffer, index, packet, parent)

  -- Auction Duration: N
  index, auction_duration = tmx_mx_sola_multicast_hsvf_v1_14.auction_duration.dissect(buffer, index, packet, parent)

  -- Initial Quantity Assured: N
  index, initial_quantity_assured = tmx_mx_sola_multicast_hsvf_v1_14.initial_quantity_assured.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Auction Beginning Message
tmx_mx_sola_multicast_hsvf_v1_14.option_auction_beginning_message.dissect = function(buffer, offset, packet, parent)
  if show.option_auction_beginning_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_auction_beginning_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.option_auction_beginning_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.option_auction_beginning_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.option_auction_beginning_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.leg_price_fraction_indicator = {}

-- Size: Leg Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.leg_price_fraction_indicator.size = 1

-- Display: Leg Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.leg_price_fraction_indicator.display = function(value)
  return "Leg Price Fraction Indicator: "..value
end

-- Dissect: Leg Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.leg_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.leg_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.leg_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Leg Price
tmx_mx_sola_multicast_hsvf_v1_14.leg_price = {}

-- Size: Leg Price
tmx_mx_sola_multicast_hsvf_v1_14.leg_price.size = 7

-- Display: Leg Price
tmx_mx_sola_multicast_hsvf_v1_14.leg_price.display = function(value)
  return "Leg Price: "..value
end

-- Dissect: Leg Price
tmx_mx_sola_multicast_hsvf_v1_14.leg_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.leg_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.leg_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Leg Ratio Or Delta Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta_fraction_indicator = {}

-- Size: Leg Ratio Or Delta Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta_fraction_indicator.size = 1

-- Display: Leg Ratio Or Delta Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta_fraction_indicator.display = function(value)
  return "Leg Ratio Or Delta Fraction Indicator: "..value
end

-- Dissect: Leg Ratio Or Delta Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_ratio_or_delta_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Leg Ratio Or Delta
tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta = {}

-- Size: Leg Ratio Or Delta
tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta.size = 4

-- Display: Leg Ratio Or Delta
tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta.display = function(value)
  return "Leg Ratio Or Delta: "..value
end

-- Dissect: Leg Ratio Or Delta
tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_ratio_or_delta, range, value, display)

  return offset + length, value
end

-- Leg Instrument
tmx_mx_sola_multicast_hsvf_v1_14.leg_instrument = {}

-- Size: Leg Instrument
tmx_mx_sola_multicast_hsvf_v1_14.leg_instrument.size = 4

-- Display: Leg Instrument
tmx_mx_sola_multicast_hsvf_v1_14.leg_instrument.display = function(value)
  return "Leg Instrument: "..value
end

-- Dissect: Leg Instrument
tmx_mx_sola_multicast_hsvf_v1_14.leg_instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.leg_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.leg_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_instrument, range, value, display)

  return offset + length, value
end

-- Leg Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14.leg_group_instrument = {}

-- Size: Leg Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14.leg_group_instrument.size = 2

-- Display: Leg Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14.leg_group_instrument.display = function(value)
  return "Leg Group Instrument: "..value
end

-- Dissect: Leg Group Instrument
tmx_mx_sola_multicast_hsvf_v1_14.leg_group_instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.leg_group_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.leg_group_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.leg_group_instrument, range, value, display)

  return offset + length, value
end

-- Strategy Instrument Leg
tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_leg = {}

-- Calculate size of: Strategy Instrument Leg
tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_leg.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.leg_group_instrument.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.leg_instrument.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.leg_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.leg_price_fraction_indicator.size

  return index
end

-- Display: Strategy Instrument Leg
tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Instrument Leg
tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_leg.fields = function(buffer, offset, packet, parent, strategy_instrument_leg_index)
  local index = offset

  -- Implicit Strategy Instrument Leg Index
  if strategy_instrument_leg_index ~= nil then
    local iteration = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_instrument_leg_index, strategy_instrument_leg_index)
    iteration:set_generated()
  end

  -- Leg Group Instrument: X
  index, leg_group_instrument = tmx_mx_sola_multicast_hsvf_v1_14.leg_group_instrument.dissect(buffer, index, packet, parent)

  -- Leg Instrument: X
  index, leg_instrument = tmx_mx_sola_multicast_hsvf_v1_14.leg_instrument.dissect(buffer, index, packet, parent)

  -- Leg Ratio Or Delta: N
  index, leg_ratio_or_delta = tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta.dissect(buffer, index, packet, parent)

  -- Leg Ratio Or Delta Fraction Indicator: X
  index, leg_ratio_or_delta_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.leg_ratio_or_delta_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Leg Price: N
  index, leg_price = tmx_mx_sola_multicast_hsvf_v1_14.leg_price.dissect(buffer, index, packet, parent)

  -- Leg Price Fraction Indicator: X
  index, leg_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.leg_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Instrument Leg
tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_leg.dissect = function(buffer, offset, packet, parent, strategy_instrument_leg_index)
  if show.strategy_instrument_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_instrument_leg, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_leg.fields(buffer, offset, packet, parent, strategy_instrument_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_leg.fields(buffer, offset, packet, parent, strategy_instrument_leg_index)
  end
end

-- Number Of Legs
tmx_mx_sola_multicast_hsvf_v1_14.number_of_legs = {}

-- Size: Number Of Legs
tmx_mx_sola_multicast_hsvf_v1_14.number_of_legs.size = 2

-- Display: Number Of Legs
tmx_mx_sola_multicast_hsvf_v1_14.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
tmx_mx_sola_multicast_hsvf_v1_14.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.number_of_legs.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Variable Legs Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14.variable_legs_strategy_code = {}

-- Size: Variable Legs Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14.variable_legs_strategy_code.size = 2

-- Display: Variable Legs Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14.variable_legs_strategy_code.display = function(value)
  return "Variable Legs Strategy Code: "..value
end

-- Dissect: Variable Legs Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14.variable_legs_strategy_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.variable_legs_strategy_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.variable_legs_strategy_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.variable_legs_strategy_code, range, value, display)

  return offset + length, value
end

-- Last Trading Datetime
tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime = {}

-- Size: Last Trading Datetime
tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime.size = 14

-- Display: Last Trading Datetime
tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime.display = function(value)
  return "Last Trading Datetime: "..value
end

-- Dissect: Last Trading Datetime
tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.last_trading_datetime, range, value, display)

  return offset + length, value
end

-- Strategy Type
tmx_mx_sola_multicast_hsvf_v1_14.strategy_type = {}

-- Size: Strategy Type
tmx_mx_sola_multicast_hsvf_v1_14.strategy_type.size = 1

-- Display: Strategy Type
tmx_mx_sola_multicast_hsvf_v1_14.strategy_type.display = function(value)
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
tmx_mx_sola_multicast_hsvf_v1_14.strategy_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.strategy_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_type, range, value, display)

  return offset + length, value
end

-- Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14.strategy_code = {}

-- Size: Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14.strategy_code.size = 2

-- Display: Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14.strategy_code.display = function(value)
  return "Strategy Code: "..value
end

-- Dissect: Strategy Code
tmx_mx_sola_multicast_hsvf_v1_14.strategy_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.strategy_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_code, range, value, display)

  return offset + length, value
end

-- Strategy Allow Implied
tmx_mx_sola_multicast_hsvf_v1_14.strategy_allow_implied = {}

-- Size: Strategy Allow Implied
tmx_mx_sola_multicast_hsvf_v1_14.strategy_allow_implied.size = 1

-- Display: Strategy Allow Implied
tmx_mx_sola_multicast_hsvf_v1_14.strategy_allow_implied.display = function(value)
  if value == "Y" then
    return "Strategy Allow Implied: Yes (Y)"
  end
  if value == "N" then
    return "Strategy Allow Implied: No (N)"
  end

  return "Strategy Allow Implied: Unknown("..value..")"
end

-- Dissect: Strategy Allow Implied
tmx_mx_sola_multicast_hsvf_v1_14.strategy_allow_implied.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.strategy_allow_implied.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_allow_implied.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_allow_implied, range, value, display)

  return offset + length, value
end

-- Instrument External Code
tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code = {}

-- Size: Instrument External Code
tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.size = 30

-- Display: Instrument External Code
tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.display = function(value)
  return "Instrument External Code: "..value
end

-- Dissect: Instrument External Code
tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_external_code, range, value, display)

  return offset + length, value
end

-- Instrument
tmx_mx_sola_multicast_hsvf_v1_14.instrument = {}

-- Size: Instrument
tmx_mx_sola_multicast_hsvf_v1_14.instrument.size = 4

-- Display: Instrument
tmx_mx_sola_multicast_hsvf_v1_14.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
tmx_mx_sola_multicast_hsvf_v1_14.instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument, range, value, display)

  return offset + length, value
end

-- Market Flow Indicator
tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator = {}

-- Size: Market Flow Indicator
tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.size = 2

-- Display: Market Flow Indicator
tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.display = function(value)
  return "Market Flow Indicator: "..value
end

-- Dissect: Market Flow Indicator
tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.market_flow_indicator, range, value, display)

  return offset + length, value
end

-- Tick Increment Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_1 = {}

-- Size: Tick Increment Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_1.size = 1

-- Display: Tick Increment Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_1.display = function(value)
  return "Tick Increment Fraction Indicator X 1: "..value
end

-- Dissect: Tick Increment Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_increment_fraction_indicator_x_1, range, value, display)

  return offset + length, value
end

-- Tick Increment
tmx_mx_sola_multicast_hsvf_v1_14.tick_increment = {}

-- Size: Tick Increment
tmx_mx_sola_multicast_hsvf_v1_14.tick_increment.size = 7

-- Display: Tick Increment
tmx_mx_sola_multicast_hsvf_v1_14.tick_increment.display = function(value)
  return "Tick Increment: "..value
end

-- Dissect: Tick Increment
tmx_mx_sola_multicast_hsvf_v1_14.tick_increment.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_increment, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator = {}

-- Size: Minimum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator.size = 1

-- Display: Minimum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator.display = function(value)
  return "Minimum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Minimum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price X 7
tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_x_7 = {}

-- Size: Minimum Threshold Price X 7
tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_x_7.size = 7

-- Display: Minimum Threshold Price X 7
tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_x_7.display = function(value)
  return "Minimum Threshold Price X 7: "..value
end

-- Dissect: Minimum Threshold Price X 7
tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_x_7.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_x_7.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_x_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_threshold_price_x_7, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator = {}

-- Size: Maximum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator.size = 1

-- Display: Maximum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator.display = function(value)
  return "Maximum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Maximum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.maximum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price
tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price = {}

-- Size: Maximum Threshold Price
tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price.size = 7

-- Display: Maximum Threshold Price
tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price.display = function(value)
  return "Maximum Threshold Price: "..value
end

-- Dissect: Maximum Threshold Price
tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.maximum_threshold_price, range, value, display)

  return offset + length, value
end

-- Minimum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order = {}

-- Size: Minimum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order.size = 6

-- Display: Minimum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order.display = function(value)
  return "Minimum Number Of Contracts Per Order: "..value
end

-- Dissect: Minimum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Maximum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order = {}

-- Size: Maximum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order.size = 6

-- Display: Maximum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order.display = function(value)
  return "Maximum Number Of Contracts Per Order: "..value
end

-- Dissect: Maximum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.maximum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_keys_message = {}

-- Calculate size of: Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.expiry_year.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.expiry_month.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_x_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_increment.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strategy_allow_implied.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strategy_code.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strategy_type.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.variable_legs_strategy_code.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.number_of_legs.size

  -- Calculate field size from count
  local strategy_instrument_leg_count = buffer(offset + index - 2, 2):string()
  index = index + strategy_instrument_leg_count * 19

  return index
end

-- Display: Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_14.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_14.expiry_month.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price: N
  index, maximum_threshold_price = tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price X 7: X
  index, minimum_threshold_price_x_7 = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_x_7.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator X 1: X
  index, tick_increment_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_14.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Strategy Allow Implied: A
  index, strategy_allow_implied = tmx_mx_sola_multicast_hsvf_v1_14.strategy_allow_implied.dissect(buffer, index, packet, parent)

  -- Strategy Code: X
  index, strategy_code = tmx_mx_sola_multicast_hsvf_v1_14.strategy_code.dissect(buffer, index, packet, parent)

  -- Strategy Type: X
  index, strategy_type = tmx_mx_sola_multicast_hsvf_v1_14.strategy_type.dissect(buffer, index, packet, parent)

  -- Last Trading Datetime: N
  index, last_trading_datetime = tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime.dissect(buffer, index, packet, parent)

  -- Variable Legs Strategy Code: X
  index, variable_legs_strategy_code = tmx_mx_sola_multicast_hsvf_v1_14.variable_legs_strategy_code.dissect(buffer, index, packet, parent)

  -- Number Of Legs: N
  index, number_of_legs = tmx_mx_sola_multicast_hsvf_v1_14.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Strategy Instrument Leg
  for strategy_instrument_leg_index = 1, number_of_legs do
    index, strategy_instrument_leg = tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_leg.dissect(buffer, index, packet, parent, strategy_instrument_leg_index)
  end

  return index
end

-- Dissect: Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_instrument_keys_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_keys_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_keys_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_instrument_keys_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_keys_message.fields(buffer, offset, packet, parent)
end

-- Associated Product
tmx_mx_sola_multicast_hsvf_v1_14.associated_product = {}

-- Calculate size of: Associated Product
tmx_mx_sola_multicast_hsvf_v1_14.associated_product.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.root.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.symbol_month.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.symbol_year.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.size

  return index
end

-- Display: Associated Product
tmx_mx_sola_multicast_hsvf_v1_14.associated_product.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Associated Product
tmx_mx_sola_multicast_hsvf_v1_14.associated_product.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root: X
  index, root = tmx_mx_sola_multicast_hsvf_v1_14.root.dissect(buffer, index, packet, parent)

  -- Symbol Month: A
  index, symbol_month = tmx_mx_sola_multicast_hsvf_v1_14.symbol_month.dissect(buffer, index, packet, parent)

  -- Symbol Year: N
  index, symbol_year = tmx_mx_sola_multicast_hsvf_v1_14.symbol_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_14.expiry_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Associated Product
tmx_mx_sola_multicast_hsvf_v1_14.associated_product.dissect = function(buffer, offset, packet, parent)
  if show.associated_product then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.associated_product, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.associated_product.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.associated_product.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.associated_product.fields(buffer, offset, packet, parent)
  end
end

-- Delivery Type
tmx_mx_sola_multicast_hsvf_v1_14.delivery_type = {}

-- Size: Delivery Type
tmx_mx_sola_multicast_hsvf_v1_14.delivery_type.size = 1

-- Display: Delivery Type
tmx_mx_sola_multicast_hsvf_v1_14.delivery_type.display = function(value)
  if value == "C" then
    return "Delivery Type: Cash (C)"
  end
  if value == "P" then
    return "Delivery Type: Physical (P)"
  end

  return "Delivery Type: Unknown("..value..")"
end

-- Dissect: Delivery Type
tmx_mx_sola_multicast_hsvf_v1_14.delivery_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.delivery_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.delivery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.delivery_type, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol = {}

-- Size: Underlying Symbol
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol.size = 12

-- Display: Underlying Symbol
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Currency
tmx_mx_sola_multicast_hsvf_v1_14.currency = {}

-- Size: Currency
tmx_mx_sola_multicast_hsvf_v1_14.currency.size = 3

-- Display: Currency
tmx_mx_sola_multicast_hsvf_v1_14.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
tmx_mx_sola_multicast_hsvf_v1_14.currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.currency, range, value, display)

  return offset + length, value
end

-- Tick Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.tick_value_fraction_indicator = {}

-- Size: Tick Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.tick_value_fraction_indicator.size = 1

-- Display: Tick Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.tick_value_fraction_indicator.display = function(value)
  return "Tick Value Fraction Indicator: "..value
end

-- Dissect: Tick Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.tick_value_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.tick_value_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.tick_value_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_value_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Tick Value
tmx_mx_sola_multicast_hsvf_v1_14.tick_value = {}

-- Size: Tick Value
tmx_mx_sola_multicast_hsvf_v1_14.tick_value.size = 7

-- Display: Tick Value
tmx_mx_sola_multicast_hsvf_v1_14.tick_value.display = function(value)
  return "Tick Value: "..value
end

-- Dissect: Tick Value
tmx_mx_sola_multicast_hsvf_v1_14.tick_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.tick_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.tick_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_value, range, value, display)

  return offset + length, value
end

-- Contract Size
tmx_mx_sola_multicast_hsvf_v1_14.contract_size = {}

-- Size: Contract Size
tmx_mx_sola_multicast_hsvf_v1_14.contract_size.size = 8

-- Display: Contract Size
tmx_mx_sola_multicast_hsvf_v1_14.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
tmx_mx_sola_multicast_hsvf_v1_14.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.contract_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Tick Increment Fraction Indicator X 7
tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_7 = {}

-- Size: Tick Increment Fraction Indicator X 7
tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_7.size = 7

-- Display: Tick Increment Fraction Indicator X 7
tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_7.display = function(value)
  return "Tick Increment Fraction Indicator X 7: "..value
end

-- Dissect: Tick Increment Fraction Indicator X 7
tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_7.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_7.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.tick_increment_fraction_indicator_x_7, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price N 7
tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_n_7 = {}

-- Size: Minimum Threshold Price N 7
tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_n_7.size = 7

-- Display: Minimum Threshold Price N 7
tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_n_7.display = function(value)
  return "Minimum Threshold Price N 7: "..value
end

-- Dissect: Minimum Threshold Price N 7
tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_n_7.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_n_7.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_n_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.minimum_threshold_price_n_7, range, value, display)

  return offset + length, value
end

-- Expiry Date
tmx_mx_sola_multicast_hsvf_v1_14.expiry_date = {}

-- Size: Expiry Date
tmx_mx_sola_multicast_hsvf_v1_14.expiry_date.size = 6

-- Display: Expiry Date
tmx_mx_sola_multicast_hsvf_v1_14.expiry_date.display = function(value)
  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
tmx_mx_sola_multicast_hsvf_v1_14.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.expiry_date.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_instrument_keys_message = {}

-- Calculate size of: Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_product.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.expiry_date.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_n_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_increment.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.contract_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_value.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_value_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.currency.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.delivery_type.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.associated_product.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime.size

  return index
end

-- Display: Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14.future_product.dissect(buffer, index, packet, parent)

  -- Expiry Date: N
  index, expiry_date = tmx_mx_sola_multicast_hsvf_v1_14.expiry_date.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price: N
  index, maximum_threshold_price = tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price N 7: N
  index, minimum_threshold_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_n_7.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator X 7: X
  index, tick_increment_fraction_indicator_x_7 = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_7.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_14.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_sola_multicast_hsvf_v1_14.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_sola_multicast_hsvf_v1_14.tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_sola_multicast_hsvf_v1_14.currency.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: A
  index, underlying_symbol = tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_sola_multicast_hsvf_v1_14.delivery_type.dissect(buffer, index, packet, parent)

  -- Associated Product: Struct of 4 fields
  index, associated_product = tmx_mx_sola_multicast_hsvf_v1_14.associated_product.dissect(buffer, index, packet, parent)

  -- Last Trading Datetime: N
  index, last_trading_datetime = tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.futures_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.futures_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.futures_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.underlying_instrument_keys_message = {}

-- Calculate size of: Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.underlying_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.size

  return index
end

-- Display: Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.underlying_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.underlying_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_14.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.underlying_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.underlying_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.underlying_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.underlying_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.underlying_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_year = {}

-- Size: Underlying Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_year.size = 2

-- Display: Underlying Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_year.display = function(value)
  return "Underlying Symbol Year: "..value
end

-- Dissect: Underlying Symbol Year
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_year.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol_year, range, value, display)

  return offset + length, value
end

-- Underlying Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_month = {}

-- Size: Underlying Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_month.size = 1

-- Display: Underlying Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_month.display = function(value)
  return "Underlying Symbol Month: "..value
end

-- Dissect: Underlying Symbol Month
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_month.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol_month, range, value, display)

  return offset + length, value
end

-- Underlying Root Symbol
tmx_mx_sola_multicast_hsvf_v1_14.underlying_root_symbol = {}

-- Size: Underlying Root Symbol
tmx_mx_sola_multicast_hsvf_v1_14.underlying_root_symbol.size = 6

-- Display: Underlying Root Symbol
tmx_mx_sola_multicast_hsvf_v1_14.underlying_root_symbol.display = function(value)
  return "Underlying Root Symbol: "..value
end

-- Dissect: Underlying Root Symbol
tmx_mx_sola_multicast_hsvf_v1_14.underlying_root_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.underlying_root_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14.underlying_root_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_root_symbol, range, value, display)

  return offset + length, value
end

-- Strike Price Currency
tmx_mx_sola_multicast_hsvf_v1_14.strike_price_currency = {}

-- Size: Strike Price Currency
tmx_mx_sola_multicast_hsvf_v1_14.strike_price_currency.size = 3

-- Display: Strike Price Currency
tmx_mx_sola_multicast_hsvf_v1_14.strike_price_currency.display = function(value)
  return "Strike Price Currency: "..value
end

-- Dissect: Strike Price Currency
tmx_mx_sola_multicast_hsvf_v1_14.strike_price_currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.strike_price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14.strike_price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strike_price_currency, range, value, display)

  return offset + length, value
end

-- Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_instrument_keys_message = {}

-- Calculate size of: Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.expiry_date.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strike_price_currency.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_n_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_increment.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.contract_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_value.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_value_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.currency.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.delivery_type.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.underlying_root_symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_month.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_year.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime.size

  return index
end

-- Display: Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: N
  index, expiry_date = tmx_mx_sola_multicast_hsvf_v1_14.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: A
  index, strike_price_currency = tmx_mx_sola_multicast_hsvf_v1_14.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price: N
  index, maximum_threshold_price = tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price N 7: N
  index, minimum_threshold_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_n_7.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator X 1: X
  index, tick_increment_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_14.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_sola_multicast_hsvf_v1_14.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_sola_multicast_hsvf_v1_14.tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_sola_multicast_hsvf_v1_14.currency.dissect(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_sola_multicast_hsvf_v1_14.delivery_type.dissect(buffer, index, packet, parent)

  -- Underlying Root Symbol: A
  index, underlying_root_symbol = tmx_mx_sola_multicast_hsvf_v1_14.underlying_root_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Month: A
  index, underlying_symbol_month = tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_month.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Year: N
  index, underlying_symbol_year = tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_year.dissect(buffer, index, packet, parent)

  -- Last Trading Datetime: N
  index, last_trading_datetime = tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.future_options_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.future_options_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.future_options_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Symbol Root
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_root = {}

-- Size: Underlying Symbol Root
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_root.size = 12

-- Display: Underlying Symbol Root
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_root.display = function(value)
  return "Underlying Symbol Root: "..value
end

-- Dissect: Underlying Symbol Root
tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_root.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_root.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.underlying_symbol_root, range, value, display)

  return offset + length, value
end

-- Option Type
tmx_mx_sola_multicast_hsvf_v1_14.option_type = {}

-- Size: Option Type
tmx_mx_sola_multicast_hsvf_v1_14.option_type.size = 1

-- Display: Option Type
tmx_mx_sola_multicast_hsvf_v1_14.option_type.display = function(value)
  if value == "A" then
    return "Option Type: American (A)"
  end
  if value == "E" then
    return "Option Type: European (E)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
tmx_mx_sola_multicast_hsvf_v1_14.option_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.option_type.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_type, range, value, display)

  return offset + length, value
end

-- Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.option_instrument_keys_message = {}

-- Calculate size of: Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.option_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strike_price_currency.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_n_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_increment.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_type.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_marker.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_root.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.contract_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_value.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.tick_value_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.currency.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.delivery_type.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime.size

  return index
end

-- Display: Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.option_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.option_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: A
  index, strike_price_currency = tmx_mx_sola_multicast_hsvf_v1_14.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_14.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price: N
  index, maximum_threshold_price = tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price N 7: N
  index, minimum_threshold_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_n_7.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator X 1: X
  index, tick_increment_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.tick_increment_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Option Type: N
  index, option_type = tmx_mx_sola_multicast_hsvf_v1_14.option_type.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_14.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_14.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_14.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_14.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Option Marker: A
  index, option_marker = tmx_mx_sola_multicast_hsvf_v1_14.option_marker.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Root: X
  index, underlying_symbol_root = tmx_mx_sola_multicast_hsvf_v1_14.underlying_symbol_root.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_sola_multicast_hsvf_v1_14.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_sola_multicast_hsvf_v1_14.tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_sola_multicast_hsvf_v1_14.currency.dissect(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_sola_multicast_hsvf_v1_14.delivery_type.dissect(buffer, index, packet, parent)

  -- Last Trading Datetime: N
  index, last_trading_datetime = tmx_mx_sola_multicast_hsvf_v1_14.last_trading_datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_14.option_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.option_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.option_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.option_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.option_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Price N 7
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7 = {}

-- Size: Trade Price N 7
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.size = 7

-- Display: Trade Price N 7
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.display = function(value)
  return "Trade Price N 7: "..value
end

-- Dissect: Trade Price N 7
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_n_7, range, value, display)

  return offset + length, value
end

-- Trade Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_sign = {}

-- Size: Trade Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_sign.size = 1

-- Display: Trade Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_sign.display = function(value)
  return "Trade Price Sign: "..value
end

-- Dissect: Trade Price Sign
tmx_mx_sola_multicast_hsvf_v1_14.trade_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.trade_price_sign, range, value, display)

  return offset + length, value
end

-- Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_cancellation_message = {}

-- Calculate size of: Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_cancellation_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_number.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  return index
end

-- Display: Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_14.symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14.trade_number.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.future_trade_cancellation_message = {}

-- Calculate size of: Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.future_trade_cancellation_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_product.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_number.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  return index
end

-- Display: Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.future_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.future_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14.future_product.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14.trade_number.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.future_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.future_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.future_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.future_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.future_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Indicator Marker A 1
tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1 = {}

-- Size: Price Indicator Marker A 1
tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1.size = 1

-- Display: Price Indicator Marker A 1
tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1.display = function(value)
  return "Price Indicator Marker A 1: "..value
end

-- Dissect: Price Indicator Marker A 1
tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.price_indicator_marker_a_1, range, value, display)

  return offset + length, value
end

-- Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.price_fraction_indicator = {}

-- Size: Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.price_fraction_indicator.size = 1

-- Display: Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.price_fraction_indicator.display = function(value)
  return "Price Fraction Indicator: "..value
end

-- Dissect: Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_14.price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Price
tmx_mx_sola_multicast_hsvf_v1_14.price = {}

-- Size: Price
tmx_mx_sola_multicast_hsvf_v1_14.price.size = 7

-- Display: Price
tmx_mx_sola_multicast_hsvf_v1_14.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
tmx_mx_sola_multicast_hsvf_v1_14.price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.price, range, value, display)

  return offset + length, value
end

-- Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_cancellation_message = {}

-- Calculate size of: Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_cancellation_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_number.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  return index
end

-- Display: Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect(buffer, index, packet, parent)

  -- Price: N
  index, price = tmx_mx_sola_multicast_hsvf_v1_14.price.dissect(buffer, index, packet, parent)

  -- Price Fraction Indicator: X
  index, price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14.trade_number.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.future_options_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.option_trade_cancellation_message = {}

-- Calculate size of: Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.option_trade_cancellation_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_number.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  return index
end

-- Display: Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.option_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.option_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14.trade_number.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_14.option_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.option_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.option_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.option_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.option_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Ask Orders
tmx_mx_sola_multicast_hsvf_v1_14.number_of_ask_orders = {}

-- Size: Number Of Ask Orders
tmx_mx_sola_multicast_hsvf_v1_14.number_of_ask_orders.size = 2

-- Display: Number Of Ask Orders
tmx_mx_sola_multicast_hsvf_v1_14.number_of_ask_orders.display = function(value)
  return "Number Of Ask Orders: "..value
end

-- Dissect: Number Of Ask Orders
tmx_mx_sola_multicast_hsvf_v1_14.number_of_ask_orders.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.number_of_ask_orders.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.number_of_ask_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_ask_orders, range, value, display)

  return offset + length, value
end

-- Number Of Bid Orders
tmx_mx_sola_multicast_hsvf_v1_14.number_of_bid_orders = {}

-- Size: Number Of Bid Orders
tmx_mx_sola_multicast_hsvf_v1_14.number_of_bid_orders.size = 2

-- Display: Number Of Bid Orders
tmx_mx_sola_multicast_hsvf_v1_14.number_of_bid_orders.display = function(value)
  return "Number Of Bid Orders: "..value
end

-- Dissect: Number Of Bid Orders
tmx_mx_sola_multicast_hsvf_v1_14.number_of_bid_orders.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.number_of_bid_orders.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.number_of_bid_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_bid_orders, range, value, display)

  return offset + length, value
end

-- Level Of Market Depth
tmx_mx_sola_multicast_hsvf_v1_14.level_of_market_depth = {}

-- Size: Level Of Market Depth
tmx_mx_sola_multicast_hsvf_v1_14.level_of_market_depth.size = 1

-- Display: Level Of Market Depth
tmx_mx_sola_multicast_hsvf_v1_14.level_of_market_depth.display = function(value)
  return "Level Of Market Depth: "..value
end

-- Dissect: Level Of Market Depth
tmx_mx_sola_multicast_hsvf_v1_14.level_of_market_depth.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.level_of_market_depth.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.level_of_market_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.level_of_market_depth, range, value, display)

  return offset + length, value
end

-- Strategy Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_level = {}

-- Calculate size of: Strategy Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_level.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.level_of_market_depth.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.number_of_bid_orders.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.number_of_ask_orders.size

  return index
end

-- Display: Strategy Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_level.fields = function(buffer, offset, packet, parent, strategy_market_depth_level_index)
  local index = offset

  -- Implicit Strategy Market Depth Level Index
  if strategy_market_depth_level_index ~= nil then
    local iteration = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_market_depth_level_index, strategy_market_depth_level_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_sola_multicast_hsvf_v1_14.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_sola_multicast_hsvf_v1_14.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_sola_multicast_hsvf_v1_14.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_level.dissect = function(buffer, offset, packet, parent, strategy_market_depth_level_index)
  if show.strategy_market_depth_level then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_market_depth_level, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_level.fields(buffer, offset, packet, parent, strategy_market_depth_level_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_level.fields(buffer, offset, packet, parent, strategy_market_depth_level_index)
  end
end

-- Number Of Levels
tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels = {}

-- Size: Number Of Levels
tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels.size = 1

-- Display: Number Of Levels
tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels.display = function(value)
  return "Number Of Levels: "..value
end

-- Dissect: Number Of Levels
tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.number_of_levels, range, value, display)

  return offset + length, value
end

-- Instrument Status Marker
tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker = {}

-- Size: Instrument Status Marker
tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.size = 1

-- Display: Instrument Status Marker
tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.display = function(value)
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
tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_status_marker, range, value, display)

  return offset + length, value
end

-- Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_message = {}

-- Calculate size of: Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels.size

  -- Calculate field size from count
  local strategy_market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + strategy_market_depth_level_count * 33

  return index
end

-- Display: Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_14.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels.dissect(buffer, index, packet, parent)

  -- Repeating: Strategy Market Depth Level
  for strategy_market_depth_level_index = 1, number_of_levels do
    index, strategy_market_depth_level = tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_level.dissect(buffer, index, packet, parent, strategy_market_depth_level_index)
  end

  return index
end

-- Dissect: Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_market_depth_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_market_depth_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_message.fields(buffer, offset, packet, parent)
end

-- Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14.market_depth_level = {}

-- Calculate size of: Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14.market_depth_level.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.level_of_market_depth.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.number_of_bid_orders.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.number_of_ask_orders.size

  return index
end

-- Display: Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14.market_depth_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14.market_depth_level.fields = function(buffer, offset, packet, parent, market_depth_level_index)
  local index = offset

  -- Implicit Market Depth Level Index
  if market_depth_level_index ~= nil then
    local iteration = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.market_depth_level_index, market_depth_level_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_sola_multicast_hsvf_v1_14.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_sola_multicast_hsvf_v1_14.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_sola_multicast_hsvf_v1_14.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Depth Level
tmx_mx_sola_multicast_hsvf_v1_14.market_depth_level.dissect = function(buffer, offset, packet, parent, market_depth_level_index)
  if show.market_depth_level then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.market_depth_level, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.market_depth_level.fields(buffer, offset, packet, parent, market_depth_level_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.market_depth_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.market_depth_level.fields(buffer, offset, packet, parent, market_depth_level_index)
  end
end

-- Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_market_depth_message = {}

-- Calculate size of: Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_product.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels.size

  -- Calculate field size from count
  local market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + market_depth_level_count * 31

  return index
end

-- Display: Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14.future_product.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels.dissect(buffer, index, packet, parent)

  -- Repeating: Market Depth Level
  for market_depth_level_index = 1, number_of_levels do
    index, market_depth_level = tmx_mx_sola_multicast_hsvf_v1_14.market_depth_level.dissect(buffer, index, packet, parent, market_depth_level_index)
  end

  return index
end

-- Dissect: Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_market_depth_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.futures_market_depth_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14.futures_market_depth_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.futures_market_depth_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_market_depth_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14.futures_market_depth_message.fields(buffer, offset, packet, parent)
end

-- Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_market_depth_message = {}

-- Calculate size of: Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels.size

  -- Calculate field size from count
  local market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + market_depth_level_count * 31

  return index
end

-- Display: Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels.dissect(buffer, index, packet, parent)

  -- Repeating: Market Depth Level
  for market_depth_level_index = 1, number_of_levels do
    index, market_depth_level = tmx_mx_sola_multicast_hsvf_v1_14.market_depth_level.dissect(buffer, index, packet, parent, market_depth_level_index)
  end

  return index
end

-- Dissect: Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_market_depth_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.future_options_market_depth_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14.future_options_market_depth_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.future_options_market_depth_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_market_depth_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14.future_options_market_depth_message.fields(buffer, offset, packet, parent)
end

-- Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.option_market_depth_message = {}

-- Calculate size of: Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.option_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels.size

  -- Calculate field size from count
  local market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + market_depth_level_count * 31

  return index
end

-- Display: Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.option_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.option_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = tmx_mx_sola_multicast_hsvf_v1_14.number_of_levels.dissect(buffer, index, packet, parent)

  -- Repeating: Market Depth Level
  for market_depth_level_index = 1, number_of_levels do
    index, market_depth_level = tmx_mx_sola_multicast_hsvf_v1_14.market_depth_level.dissect(buffer, index, packet, parent, market_depth_level_index)
  end

  return index
end

-- Dissect: Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_14.option_market_depth_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.option_market_depth_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_14.option_market_depth_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.option_market_depth_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_market_depth_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_14.option_market_depth_message.fields(buffer, offset, packet, parent)
end

-- Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_quote_message = {}

-- Calculate size of: Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.size

  return index
end

-- Display: Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_14.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.strategy_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_quote_message = {}

-- Calculate size of: Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_product.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.size

  return index
end

-- Display: Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14.future_product.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.futures_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.futures_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.futures_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_quote_message = {}

-- Calculate size of: Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.size

  return index
end

-- Display: Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.future_options_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.future_options_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.future_options_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.option_quote_message = {}

-- Calculate size of: Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.option_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.bid_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.ask_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.size

  return index
end

-- Display: Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.option_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.option_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = tmx_mx_sola_multicast_hsvf_v1_14.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_14.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = tmx_mx_sola_multicast_hsvf_v1_14.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_14.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = tmx_mx_sola_multicast_hsvf_v1_14.instrument_status_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.option_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.option_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.option_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.option_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.option_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Scheduled Status Change Time
tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time = {}

-- Size: Scheduled Status Change Time
tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time.size = 6

-- Display: Scheduled Status Change Time
tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time.display = function(value)
  return "Scheduled Status Change Time: "..value
end

-- Dissect: Scheduled Status Change Time
tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.scheduled_status_change_time, range, value, display)

  return offset + length, value
end

-- Series Status
tmx_mx_sola_multicast_hsvf_v1_14.series_status = {}

-- Size: Series Status
tmx_mx_sola_multicast_hsvf_v1_14.series_status.size = 1

-- Display: Series Status
tmx_mx_sola_multicast_hsvf_v1_14.series_status.display = function(value)
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
tmx_mx_sola_multicast_hsvf_v1_14.series_status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.series_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.series_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.series_status, range, value, display)

  return offset + length, value
end

-- Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_strategy_message = {}

-- Calculate size of: Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_strategy_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.series_status.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time.size

  return index
end

-- Display: Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_strategy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_strategy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_14.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_sola_multicast_hsvf_v1_14.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_strategy_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_schedule_notice_strategy_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_strategy_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_strategy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_strategy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_strategy_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_future_message = {}

-- Calculate size of: Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_future_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_product.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.series_status.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time.size

  return index
end

-- Display: Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_future_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_future_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14.future_product.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_sola_multicast_hsvf_v1_14.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_future_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_schedule_notice_future_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_future_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_future_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_future_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_future_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_futures_option_message = {}

-- Calculate size of: Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_futures_option_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.series_status.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time.size

  return index
end

-- Display: Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_futures_option_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_futures_option_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_sola_multicast_hsvf_v1_14.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_futures_option_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_schedule_notice_futures_option_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_futures_option_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_futures_option_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_futures_option_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_futures_option_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_option_message = {}

-- Calculate size of: Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_option_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.series_status.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time.size

  return index
end

-- Display: Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_option_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_option_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_sola_multicast_hsvf_v1_14.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_sola_multicast_hsvf_v1_14.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_option_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_schedule_notice_option_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.instrument_schedule_notice_option_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_option_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_option_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_option_message.fields(buffer, offset, packet, parent)
  end
end

-- Requested Market Side
tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side = {}

-- Size: Requested Market Side
tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side.size = 1

-- Display: Requested Market Side
tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side.display = function(value)
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
tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.requested_market_side, range, value, display)

  return offset + length, value
end

-- Requested Size
tmx_mx_sola_multicast_hsvf_v1_14.requested_size = {}

-- Size: Requested Size
tmx_mx_sola_multicast_hsvf_v1_14.requested_size.size = 8

-- Display: Requested Size
tmx_mx_sola_multicast_hsvf_v1_14.requested_size.display = function(value)
  return "Requested Size: "..value
end

-- Dissect: Requested Size
tmx_mx_sola_multicast_hsvf_v1_14.requested_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.requested_size.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.requested_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.requested_size, range, value, display)

  return offset + length, value
end

-- Strategy Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_request_for_quote_message = {}

-- Calculate size of: Strategy Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_request_for_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.requested_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side.size

  return index
end

-- Display: Strategy Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_request_for_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_request_for_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_14.symbol.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_sola_multicast_hsvf_v1_14.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_request_for_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_request_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_request_for_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.strategy_request_for_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_request_for_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_request_for_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_request_for_quote_message = {}

-- Calculate size of: Future Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_request_for_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_product.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.requested_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side.size

  return index
end

-- Display: Future Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_request_for_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_request_for_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14.future_product.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_sola_multicast_hsvf_v1_14.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_request_for_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.future_request_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_request_for_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.future_request_for_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.future_request_for_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.future_request_for_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_request_for_quote_message = {}

-- Calculate size of: Future Options Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_request_for_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.requested_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side.size

  return index
end

-- Display: Future Options Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_request_for_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_request_for_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_sola_multicast_hsvf_v1_14.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_request_for_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.future_options_request_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_request_for_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.future_options_request_for_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.future_options_request_for_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_request_for_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.option_request_for_quote_message = {}

-- Calculate size of: Option Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.option_request_for_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.requested_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side.size

  return index
end

-- Display: Option Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.option_request_for_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.option_request_for_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_sola_multicast_hsvf_v1_14.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_sola_multicast_hsvf_v1_14.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Request For Quote Message
tmx_mx_sola_multicast_hsvf_v1_14.option_request_for_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.option_request_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_request_for_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.option_request_for_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.option_request_for_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.option_request_for_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_message = {}

-- Calculate size of: Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_number.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  return index
end

-- Display: Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_14.symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14.trade_number.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.strategy_trade_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_message = {}

-- Calculate size of: Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_product.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_number.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  return index
end

-- Display: Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Product: Struct of 4 fields
  index, future_product = tmx_mx_sola_multicast_hsvf_v1_14.future_product.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_x_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14.trade_number.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.futures_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.futures_trade_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Net Change Fraction Indicator A 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_a_1 = {}

-- Size: Net Change Fraction Indicator A 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_a_1.size = 1

-- Display: Net Change Fraction Indicator A 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_a_1.display = function(value)
  return "Net Change Fraction Indicator A 1: "..value
end

-- Dissect: Net Change Fraction Indicator A 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_a_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_a_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_a_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_fraction_indicator_a_1, range, value, display)

  return offset + length, value
end

-- Net Change Sign A 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_a_1 = {}

-- Size: Net Change Sign A 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_a_1.size = 1

-- Display: Net Change Sign A 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_a_1.display = function(value)
  return "Net Change Sign A 1: "..value
end

-- Dissect: Net Change Sign A 1
tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_a_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_a_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_a_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.net_change_sign_a_1, range, value, display)

  return offset + length, value
end

-- Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_message = {}

-- Calculate size of: Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_number.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  return index
end

-- Display: Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Future Option Symbol: Struct of 7 fields
  index, future_option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.future_option_symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1.dissect(buffer, index, packet, parent)

  -- Net Change Sign A 1: A
  index, net_change_sign_a_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_a_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator A 1: A
  index, net_change_fraction_indicator_a_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_a_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14.trade_number.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.future_options_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.future_options_trade_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.option_trade_message = {}

-- Calculate size of: Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.option_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.size(buffer, offset + index)

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.trade_number.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.auction_id.size

  return index
end

-- Display: Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.option_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.option_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = tmx_mx_sola_multicast_hsvf_v1_14.exchange_id.dissect(buffer, index, packet, parent)

  -- Option Symbol: Struct of 6 fields
  index, option_symbol = tmx_mx_sola_multicast_hsvf_v1_14.option_symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_14.volume.dissect(buffer, index, packet, parent)

  -- Trade Price N 7: N
  index, trade_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_n_7.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_14.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign A 1: A
  index, net_change_sign_a_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_sign_a_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_14.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_14.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_14.price_indicator_marker_a_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_14.trade_number.dissect(buffer, index, packet, parent)

  -- Auction Id: X
  index, auction_id = tmx_mx_sola_multicast_hsvf_v1_14.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_14.option_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.option_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.option_trade_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.option_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.option_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.option_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
tmx_mx_sola_multicast_hsvf_v1_14.message_body = {}

-- Calculate runtime size of: Message Body
tmx_mx_sola_multicast_hsvf_v1_14.message_body.size = function(buffer, offset, message_type)
  -- Size of Option Trade Message
  if message_type == "C" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_trade_message.size(buffer, offset)
  end
  -- Size of Future Options Trade Message
  if message_type == "CB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_message.size(buffer, offset)
  end
  -- Size of Futures Trade Message
  if message_type == "CF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_message.size(buffer, offset)
  end
  -- Size of Strategy Trade Message
  if message_type == "CS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_message.size(buffer, offset)
  end
  -- Size of Option Request For Quote Message
  if message_type == "D" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_request_for_quote_message.size(buffer, offset)
  end
  -- Size of Future Options Request For Quote Message
  if message_type == "DB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_request_for_quote_message.size(buffer, offset)
  end
  -- Size of Future Request For Quote Message
  if message_type == "DF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_request_for_quote_message.size(buffer, offset)
  end
  -- Size of Strategy Request For Quote Message
  if message_type == "DS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_request_for_quote_message.size(buffer, offset)
  end
  -- Size of Instrument Schedule Notice Option Message
  if message_type == "E" then
    return tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_option_message.size(buffer, offset)
  end
  -- Size of Instrument Schedule Notice Futures Option Message
  if message_type == "EB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_futures_option_message.size(buffer, offset)
  end
  -- Size of Instrument Schedule Notice Future Message
  if message_type == "EF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_future_message.size(buffer, offset)
  end
  -- Size of Instrument Schedule Notice Strategy Message
  if message_type == "ES" then
    return tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_strategy_message.size(buffer, offset)
  end
  -- Size of Option Quote Message
  if message_type == "F" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_quote_message.size(buffer, offset)
  end
  -- Size of Future Options Quote Message
  if message_type == "FB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_quote_message.size(buffer, offset)
  end
  -- Size of Futures Quote Message
  if message_type == "FF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_quote_message.size(buffer, offset)
  end
  -- Size of Strategy Quote Message
  if message_type == "FS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_quote_message.size(buffer, offset)
  end
  -- Size of Option Market Depth Message
  if message_type == "H" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_market_depth_message.size(buffer, offset)
  end
  -- Size of Future Options Market Depth Message
  if message_type == "HB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_market_depth_message.size(buffer, offset)
  end
  -- Size of Futures Market Depth Message
  if message_type == "HF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_market_depth_message.size(buffer, offset)
  end
  -- Size of Strategy Market Depth Message
  if message_type == "HS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_message.size(buffer, offset)
  end
  -- Size of Option Trade Cancellation Message
  if message_type == "I" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_trade_cancellation_message.size(buffer, offset)
  end
  -- Size of Future Options Trade Cancellation Message
  if message_type == "IB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_cancellation_message.size(buffer, offset)
  end
  -- Size of Future Trade Cancellation Message
  if message_type == "IF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_trade_cancellation_message.size(buffer, offset)
  end
  -- Size of Strategy Trade Cancellation Message
  if message_type == "IS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_cancellation_message.size(buffer, offset)
  end
  -- Size of Option Instrument Keys Message
  if message_type == "J" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_instrument_keys_message.size(buffer, offset)
  end
  -- Size of Future Options Instrument Keys Message
  if message_type == "JB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_instrument_keys_message.size(buffer, offset)
  end
  -- Size of Underlying Instrument Keys Message
  if message_type == "JE" then
    return tmx_mx_sola_multicast_hsvf_v1_14.underlying_instrument_keys_message.size(buffer, offset)
  end
  -- Size of Futures Instrument Keys Message
  if message_type == "JF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_instrument_keys_message.size(buffer, offset)
  end
  -- Size of Strategy Instrument Keys Message
  if message_type == "JS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_keys_message.size(buffer, offset)
  end
  -- Size of Option Auction Beginning Message
  if message_type == "M" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_auction_beginning_message.size(buffer, offset)
  end
  -- Size of Strategy Auction Beginning Message
  if message_type == "MS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_beginning_message.size(buffer, offset)
  end
  -- Size of Option Summary Message
  if message_type == "N" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_summary_message.size(buffer, offset)
  end
  -- Size of Future Options Summary Message
  if message_type == "NB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_summary_message.size(buffer, offset)
  end
  -- Size of Futures Summary Message
  if message_type == "NF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_summary_message.size(buffer, offset)
  end
  -- Size of Strategy Summary Message
  if message_type == "NS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_summary_message.size(buffer, offset)
  end
  -- Size of Option Initial And Improvement Order Message
  if message_type == "O" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_initial_and_improvement_order_message.size(buffer, offset)
  end
  -- Size of Strategy Initial And Improvement Order Message
  if message_type == "OS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_initial_and_improvement_order_message.size(buffer, offset)
  end
  -- Size of Beginning Of Options Summary Message
  if message_type == "Q" then
    return tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_options_summary_message.size(buffer, offset)
  end
  -- Size of Beginning Of Future Options Summary Message
  if message_type == "QB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_future_options_summary_message.size(buffer, offset)
  end
  -- Size of Beginning Of Futures Summary Message
  if message_type == "QF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_futures_summary_message.size(buffer, offset)
  end
  -- Size of Beginning Of Strategy Summary Message
  if message_type == "QS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_strategy_summary_message.size(buffer, offset)
  end
  -- Size of Option Auction Ending Message
  if message_type == "T" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_auction_ending_message.size(buffer, offset)
  end
  -- Size of Strategy Auction Ending Message
  if message_type == "TS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_ending_message.size(buffer, offset)
  end
  -- Size of Futures Trade Correction Message
  if message_type == "XF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_correction_message.size(buffer, offset)
  end
  -- Size of Group Status Message
  if message_type == "GR" then
    return tmx_mx_sola_multicast_hsvf_v1_14.group_status_message.size(buffer, offset)
  end
  -- Size of Group Status Strategies Message
  if message_type == "GS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.group_status_strategies_message.size(buffer, offset)
  end
  -- Size of Future Deliverables Message
  if message_type == "XF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_deliverables_message.size(buffer, offset)
  end
  -- Size of Bulletins Message
  if message_type == "L" then
    return tmx_mx_sola_multicast_hsvf_v1_14.bulletins_message.size(buffer, offset)
  end
  -- Size of End Of Sales Message
  if message_type == "S" then
    return tmx_mx_sola_multicast_hsvf_v1_14.end_of_sales_message.size(buffer, offset)
  end
  -- Size of Tick Table Message
  if message_type == "TT" then
    return tmx_mx_sola_multicast_hsvf_v1_14.tick_table_message.size(buffer, offset)
  end
  -- Size of End Of Transmission Message
  if message_type == "U" then
    return tmx_mx_sola_multicast_hsvf_v1_14.end_of_transmission_message.size(buffer, offset)
  end
  -- Size of Circuit Assurance Message
  if message_type == "V" then
    return tmx_mx_sola_multicast_hsvf_v1_14.circuit_assurance_message.size(buffer, offset)
  end
  -- Size of Start Of Day Message
  if message_type == "SD" then
    return tmx_mx_sola_multicast_hsvf_v1_14.start_of_day_message.size(buffer, offset)
  end

  return 0
end

-- Display: Message Body
tmx_mx_sola_multicast_hsvf_v1_14.message_body.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Body
tmx_mx_sola_multicast_hsvf_v1_14.message_body.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Option Trade Message
  if message_type == "C" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Message
  if message_type == "CB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Message
  if message_type == "CF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Message
  if message_type == "CS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Request For Quote Message
  if message_type == "D" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_request_for_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Request For Quote Message
  if message_type == "DB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_request_for_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Request For Quote Message
  if message_type == "DF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_request_for_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Request For Quote Message
  if message_type == "DS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_request_for_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Option Message
  if message_type == "E" then
    return tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_option_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Futures Option Message
  if message_type == "EB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_futures_option_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Future Message
  if message_type == "EF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_future_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Strategy Message
  if message_type == "ES" then
    return tmx_mx_sola_multicast_hsvf_v1_14.instrument_schedule_notice_strategy_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Quote Message
  if message_type == "F" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Quote Message
  if message_type == "FB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Quote Message
  if message_type == "FF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Quote Message
  if message_type == "FS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Market Depth Message
  if message_type == "H" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Market Depth Message
  if message_type == "HB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Market Depth Message
  if message_type == "HF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Market Depth Message
  if message_type == "HS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Cancellation Message
  if message_type == "I" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Cancellation Message
  if message_type == "IB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Trade Cancellation Message
  if message_type == "IF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Cancellation Message
  if message_type == "IS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Instrument Keys Message
  if message_type == "J" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Instrument Keys Message
  if message_type == "JB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Instrument Keys Message
  if message_type == "JE" then
    return tmx_mx_sola_multicast_hsvf_v1_14.underlying_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Keys Message
  if message_type == "JF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Instrument Keys Message
  if message_type == "JS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Auction Beginning Message
  if message_type == "M" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_auction_beginning_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Auction Beginning Message
  if message_type == "MS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_beginning_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Summary Message
  if message_type == "N" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Summary Message
  if message_type == "NB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_options_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Summary Message
  if message_type == "NF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Summary Message
  if message_type == "NS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Initial And Improvement Order Message
  if message_type == "O" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_initial_and_improvement_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Initial And Improvement Order Message
  if message_type == "OS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_initial_and_improvement_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Options Summary Message
  if message_type == "Q" then
    return tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_options_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Future Options Summary Message
  if message_type == "QB" then
    return tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_future_options_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Futures Summary Message
  if message_type == "QF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_futures_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Strategy Summary Message
  if message_type == "QS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.beginning_of_strategy_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Auction Ending Message
  if message_type == "T" then
    return tmx_mx_sola_multicast_hsvf_v1_14.option_auction_ending_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Auction Ending Message
  if message_type == "TS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.strategy_auction_ending_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Correction Message
  if message_type == "XF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.futures_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Group Status Message
  if message_type == "GR" then
    return tmx_mx_sola_multicast_hsvf_v1_14.group_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Group Status Strategies Message
  if message_type == "GS" then
    return tmx_mx_sola_multicast_hsvf_v1_14.group_status_strategies_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Deliverables Message
  if message_type == "XF" then
    return tmx_mx_sola_multicast_hsvf_v1_14.future_deliverables_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulletins Message
  if message_type == "L" then
    return tmx_mx_sola_multicast_hsvf_v1_14.bulletins_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Sales Message
  if message_type == "S" then
    return tmx_mx_sola_multicast_hsvf_v1_14.end_of_sales_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Table Message
  if message_type == "TT" then
    return tmx_mx_sola_multicast_hsvf_v1_14.tick_table_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmission Message
  if message_type == "U" then
    return tmx_mx_sola_multicast_hsvf_v1_14.end_of_transmission_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Circuit Assurance Message
  if message_type == "V" then
    return tmx_mx_sola_multicast_hsvf_v1_14.circuit_assurance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Day Message
  if message_type == "SD" then
    return tmx_mx_sola_multicast_hsvf_v1_14.start_of_day_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Body
tmx_mx_sola_multicast_hsvf_v1_14.message_body.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.message_body then
    return tmx_mx_sola_multicast_hsvf_v1_14.message_body.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = tmx_mx_sola_multicast_hsvf_v1_14.message_body.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = tmx_mx_sola_multicast_hsvf_v1_14.message_body.display(buffer, packet, parent)
  local element = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.message_body, range, display)

  return tmx_mx_sola_multicast_hsvf_v1_14.message_body.branches(buffer, offset, packet, parent, message_type)
end

-- Message Timestamp
tmx_mx_sola_multicast_hsvf_v1_14.message_timestamp = {}

-- Size: Message Timestamp
tmx_mx_sola_multicast_hsvf_v1_14.message_timestamp.size = 20

-- Display: Message Timestamp
tmx_mx_sola_multicast_hsvf_v1_14.message_timestamp.display = function(value)
  return "Message Timestamp: "..value
end

-- Dissect: Message Timestamp
tmx_mx_sola_multicast_hsvf_v1_14.message_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.message_timestamp.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.message_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.message_timestamp, range, value, display)

  return offset + length, value
end

-- Message Type
tmx_mx_sola_multicast_hsvf_v1_14.message_type = {}

-- Size: Message Type
tmx_mx_sola_multicast_hsvf_v1_14.message_type.size = 2

-- Display: Message Type
tmx_mx_sola_multicast_hsvf_v1_14.message_type.display = function(value)
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
tmx_mx_sola_multicast_hsvf_v1_14.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.message_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_14.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.message_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
tmx_mx_sola_multicast_hsvf_v1_14.sequence_number = {}

-- Size: Sequence Number
tmx_mx_sola_multicast_hsvf_v1_14.sequence_number.size = 10

-- Display: Sequence Number
tmx_mx_sola_multicast_hsvf_v1_14.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
tmx_mx_sola_multicast_hsvf_v1_14.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_14.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Header
tmx_mx_sola_multicast_hsvf_v1_14.message_header = {}

-- Calculate size of: Message Header
tmx_mx_sola_multicast_hsvf_v1_14.message_header.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.sequence_number.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.message_type.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_14.message_timestamp.size

  return index
end

-- Display: Message Header
tmx_mx_sola_multicast_hsvf_v1_14.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
tmx_mx_sola_multicast_hsvf_v1_14.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 10 Byte Ascii String
  index, sequence_number = tmx_mx_sola_multicast_hsvf_v1_14.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Ascii String Enum with 53 values
  index, message_type = tmx_mx_sola_multicast_hsvf_v1_14.message_type.dissect(buffer, index, packet, parent)

  -- Message Timestamp: 20 Byte Ascii String
  index, message_timestamp = tmx_mx_sola_multicast_hsvf_v1_14.message_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
tmx_mx_sola_multicast_hsvf_v1_14.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.message_header, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_14.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_14.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_14.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Hsvf Stx
tmx_mx_sola_multicast_hsvf_v1_14.hsvf_stx = {}

-- Size: Hsvf Stx
tmx_mx_sola_multicast_hsvf_v1_14.hsvf_stx.size = 1

-- Display: Hsvf Stx
tmx_mx_sola_multicast_hsvf_v1_14.hsvf_stx.display = function(value)
  return "Hsvf Stx: "..value
end

-- Dissect: Hsvf Stx
tmx_mx_sola_multicast_hsvf_v1_14.hsvf_stx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_14.hsvf_stx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_mx_sola_multicast_hsvf_v1_14.hsvf_stx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14.fields.hsvf_stx, range, value, display)

  return offset + length, value
end

-- Packet
tmx_mx_sola_multicast_hsvf_v1_14.packet = {}

-- Dissect Packet
tmx_mx_sola_multicast_hsvf_v1_14.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Hsvf Stx: 1 Byte Fixed Width Integer Static
    index, hsvf_stx = tmx_mx_sola_multicast_hsvf_v1_14.hsvf_stx.dissect(buffer, index, packet, parent)

    -- Message Header: Struct of 3 fields
    index, message_header = tmx_mx_sola_multicast_hsvf_v1_14.message_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = trim_right_spaces(buffer(index - 22, 2):string())

    -- Message Body: Runtime Type with 53 branches
    index = tmx_mx_sola_multicast_hsvf_v1_14.message_body.dissect(buffer, index, packet, parent, message_type)

    -- Hsvf Etx: 1 Byte Fixed Width Integer
    index, hsvf_etx = tmx_mx_sola_multicast_hsvf_v1_14.hsvf_etx.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_mx_sola_multicast_hsvf_v1_14.init()
end

-- Dissector for Tmx Mx Sola Multicast Hsvf 1.14
function omi_tmx_mx_sola_multicast_hsvf_v1_14.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_tmx_mx_sola_multicast_hsvf_v1_14.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_14, buffer(), omi_tmx_mx_sola_multicast_hsvf_v1_14.description, "("..buffer:len().." Bytes)")
  return tmx_mx_sola_multicast_hsvf_v1_14.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_tmx_mx_sola_multicast_hsvf_v1_14)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
tmx_mx_sola_multicast_hsvf_v1_14.packet.requiredsize = function(buffer)

  return true
end

-- Verify Hsvf Stx Field
tmx_mx_sola_multicast_hsvf_v1_14.hsvf_stx.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Tmx Mx Sola Multicast Hsvf 1.14
local function omi_tmx_mx_sola_multicast_hsvf_v1_14_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_mx_sola_multicast_hsvf_v1_14.packet.requiredsize(buffer) then return false end

  -- Verify Hsvf Stx
  if not tmx_mx_sola_multicast_hsvf_v1_14.hsvf_stx.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_mx_sola_multicast_hsvf_v1_14
  omi_tmx_mx_sola_multicast_hsvf_v1_14.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx Mx Sola Multicast Hsvf 1.14
omi_tmx_mx_sola_multicast_hsvf_v1_14:register_heuristic("udp", omi_tmx_mx_sola_multicast_hsvf_v1_14_heuristic)

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
