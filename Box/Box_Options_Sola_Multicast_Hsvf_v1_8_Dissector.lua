-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Box Options Sola Multicast Hsvf 1.8 Protocol
local omi_box_options_sola_multicast_hsvf_v1_8 = Proto("Box.Options.Sola.Multicast.Hsvf.v1.8.Lua", "Box Options Sola Multicast Hsvf 1.8")

-- Protocol table
local box_options_sola_multicast_hsvf_v1_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Box Options Sola Multicast Hsvf 1.8 Fields
omi_box_options_sola_multicast_hsvf_v1_8.fields.ask_price = ProtoField.new("Ask Price", "box.options.sola.multicast.hsvf.v1.8.askprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.ask_price_fraction_indicator = ProtoField.new("Ask Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.askpricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.ask_price_sign = ProtoField.new("Ask Price Sign", "box.options.sola.multicast.hsvf.v1.8.askpricesign", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.ask_size = ProtoField.new("Ask Size", "box.options.sola.multicast.hsvf.v1.8.asksize", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.auction_type = ProtoField.new("Auction Type", "box.options.sola.multicast.hsvf.v1.8.auctiontype", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.bid_price = ProtoField.new("Bid Price", "box.options.sola.multicast.hsvf.v1.8.bidprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.bid_price_fraction_indicator = ProtoField.new("Bid Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.bidpricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.bid_price_sign = ProtoField.new("Bid Price Sign", "box.options.sola.multicast.hsvf.v1.8.bidpricesign", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.bid_size = ProtoField.new("Bid Size", "box.options.sola.multicast.hsvf.v1.8.bidsize", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.bulletin_contents = ProtoField.new("Bulletin Contents", "box.options.sola.multicast.hsvf.v1.8.bulletincontents", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.bulletin_type = ProtoField.new("Bulletin Type", "box.options.sola.multicast.hsvf.v1.8.bulletintype", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.cmta = ProtoField.new("Cmta", "box.options.sola.multicast.hsvf.v1.8.cmta", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_market_depth_level = ProtoField.new("Complex Market Depth Level", "box.options.sola.multicast.hsvf.v1.8.complexmarketdepthlevel", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_instrument_allow_implied = ProtoField.new("Complex Order Instrument Allow Implied", "box.options.sola.multicast.hsvf.v1.8.complexorderinstrumentallowimplied", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_instrument_symbol = ProtoField.new("Complex Order Instrument Symbol", "box.options.sola.multicast.hsvf.v1.8.complexorderinstrumentsymbol", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.continue_marker = ProtoField.new("Continue Marker", "box.options.sola.multicast.hsvf.v1.8.continuemarker", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.deletion_type = ProtoField.new("Deletion Type", "box.options.sola.multicast.hsvf.v1.8.deletiontype", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.delivery_month = ProtoField.new("Delivery Month", "box.options.sola.multicast.hsvf.v1.8.deliverymonth", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.end_of_the_exposition = ProtoField.new("End Of The Exposition", "box.options.sola.multicast.hsvf.v1.8.endoftheexposition", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.exchange_id = ProtoField.new("Exchange Id", "box.options.sola.multicast.hsvf.v1.8.exchangeid", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.expiry_day = ProtoField.new("Expiry Day", "box.options.sola.multicast.hsvf.v1.8.expiryday", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.expiry_month_code = ProtoField.new("Expiry Month Code", "box.options.sola.multicast.hsvf.v1.8.expirymonthcode", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.expiry_year = ProtoField.new("Expiry Year", "box.options.sola.multicast.hsvf.v1.8.expiryyear", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.filler_1 = ProtoField.new("Filler 1", "box.options.sola.multicast.hsvf.v1.8.filler1", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.filler_2 = ProtoField.new("Filler 2", "box.options.sola.multicast.hsvf.v1.8.filler2", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.filler_6 = ProtoField.new("Filler 6", "box.options.sola.multicast.hsvf.v1.8.filler6", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.firm_id = ProtoField.new("Firm Id", "box.options.sola.multicast.hsvf.v1.8.firmid", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.group = ProtoField.new("Group", "box.options.sola.multicast.hsvf.v1.8.group", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.group_instrument = ProtoField.new("Group Instrument", "box.options.sola.multicast.hsvf.v1.8.groupinstrument", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.group_of_the_complex_order_instrument = ProtoField.new("Group Of The Complex Order Instrument", "box.options.sola.multicast.hsvf.v1.8.groupofthecomplexorderinstrument", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.group_status = ProtoField.new("Group Status", "box.options.sola.multicast.hsvf.v1.8.groupstatus", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.high_price = ProtoField.new("High Price", "box.options.sola.multicast.hsvf.v1.8.highprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.high_price_fraction_indicator = ProtoField.new("High Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.highpricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.high_price_sign = ProtoField.new("High Price Sign", "box.options.sola.multicast.hsvf.v1.8.highpricesign", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.hsvf_etx = ProtoField.new("Hsvf Etx", "box.options.sola.multicast.hsvf.v1.8.hsvfetx", ftypes.INT8)
omi_box_options_sola_multicast_hsvf_v1_8.fields.hsvf_stx = ProtoField.new("Hsvf Stx", "box.options.sola.multicast.hsvf.v1.8.hsvfstx", ftypes.INT8)
omi_box_options_sola_multicast_hsvf_v1_8.fields.improvement_order_side = ProtoField.new("Improvement Order Side", "box.options.sola.multicast.hsvf.v1.8.improvementorderside", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.improvement_phase_expiry_time = ProtoField.new("Improvement Phase Expiry Time", "box.options.sola.multicast.hsvf.v1.8.improvementphaseexpirytime", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.improvement_phase_sequential_number = ProtoField.new("Improvement Phase Sequential Number", "box.options.sola.multicast.hsvf.v1.8.improvementphasesequentialnumber", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.improvement_process_expiry_duration = ProtoField.new("Improvement Process Expiry Duration", "box.options.sola.multicast.hsvf.v1.8.improvementprocessexpiryduration", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.initial_order_price = ProtoField.new("Initial Order Price", "box.options.sola.multicast.hsvf.v1.8.initialorderprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.initial_order_price_fraction_indicator = ProtoField.new("Initial Order Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.initialorderpricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.initial_order_price_sign = ProtoField.new("Initial Order Price Sign", "box.options.sola.multicast.hsvf.v1.8.initialorderpricesign", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.initial_order_quantity = ProtoField.new("Initial Order Quantity", "box.options.sola.multicast.hsvf.v1.8.initialorderquantity", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.initial_order_side = ProtoField.new("Initial Order Side", "box.options.sola.multicast.hsvf.v1.8.initialorderside", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.instrument = ProtoField.new("Instrument", "box.options.sola.multicast.hsvf.v1.8.instrument", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.instrument_description = ProtoField.new("Instrument Description", "box.options.sola.multicast.hsvf.v1.8.instrumentdescription", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.instrument_external_code = ProtoField.new("Instrument External Code", "box.options.sola.multicast.hsvf.v1.8.instrumentexternalcode", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.instrument_leg = ProtoField.new("Instrument Leg", "box.options.sola.multicast.hsvf.v1.8.instrumentleg", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.instrument_status_marker = ProtoField.new("Instrument Status Marker", "box.options.sola.multicast.hsvf.v1.8.instrumentstatusmarker", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.last_price = ProtoField.new("Last Price", "box.options.sola.multicast.hsvf.v1.8.lastprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.last_price_fraction_indicator = ProtoField.new("Last Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.lastpricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.last_price_sign = ProtoField.new("Last Price Sign", "box.options.sola.multicast.hsvf.v1.8.lastpricesign", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.leg_ratio = ProtoField.new("Leg Ratio", "box.options.sola.multicast.hsvf.v1.8.legratio", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.leg_ratio_sign = ProtoField.new("Leg Ratio Sign", "box.options.sola.multicast.hsvf.v1.8.legratiosign", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.leg_symbol = ProtoField.new("Leg Symbol", "box.options.sola.multicast.hsvf.v1.8.legsymbol", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.level_of_market_depth = ProtoField.new("Level Of Market Depth", "box.options.sola.multicast.hsvf.v1.8.levelofmarketdepth", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.limit_entered_for_an_order_sign = ProtoField.new("Limit Entered For An Order Sign", "box.options.sola.multicast.hsvf.v1.8.limitenteredforanordersign", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.limit_fraction_indicator = ProtoField.new("Limit Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.limitfractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.low_price = ProtoField.new("Low Price", "box.options.sola.multicast.hsvf.v1.8.lowprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.low_price_fraction_indicator = ProtoField.new("Low Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.lowpricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.low_price_sign = ProtoField.new("Low Price Sign", "box.options.sola.multicast.hsvf.v1.8.lowpricesign", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.market_depth_level = ProtoField.new("Market Depth Level", "box.options.sola.multicast.hsvf.v1.8.marketdepthlevel", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.market_flow_indicator = ProtoField.new("Market Flow Indicator", "box.options.sola.multicast.hsvf.v1.8.marketflowindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.max_number_of_contracts_per_order = ProtoField.new("Max Number Of Contracts Per Order", "box.options.sola.multicast.hsvf.v1.8.maxnumberofcontractsperorder", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.max_threshold_price = ProtoField.new("Max Threshold Price", "box.options.sola.multicast.hsvf.v1.8.maxthresholdprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.max_threshold_price_fraction_indicator = ProtoField.new("Max Threshold Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.maxthresholdpricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.max_threshold_price_sign = ProtoField.new("Max Threshold Price Sign", "box.options.sola.multicast.hsvf.v1.8.maxthresholdpricesign", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.maximum_number_of_contracts_per_order = ProtoField.new("Maximum Number Of Contracts Per Order", "box.options.sola.multicast.hsvf.v1.8.maximumnumberofcontractsperorder", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.maximum_threshold_price = ProtoField.new("Maximum Threshold Price", "box.options.sola.multicast.hsvf.v1.8.maximumthresholdprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.maximum_threshold_price_fraction_indicator = ProtoField.new("Maximum Threshold Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.maximumthresholdpricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.message_body = ProtoField.new("Message Body", "box.options.sola.multicast.hsvf.v1.8.messagebody", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.message_header = ProtoField.new("Message Header", "box.options.sola.multicast.hsvf.v1.8.messageheader", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.message_type = ProtoField.new("Message Type", "box.options.sola.multicast.hsvf.v1.8.messagetype", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.min_number_of_contracts_per_order = ProtoField.new("Min Number Of Contracts Per Order", "box.options.sola.multicast.hsvf.v1.8.minnumberofcontractsperorder", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.min_threshold_price = ProtoField.new("Min Threshold Price", "box.options.sola.multicast.hsvf.v1.8.minthresholdprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.min_threshold_price_fraction_indicator = ProtoField.new("Min Threshold Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.minthresholdpricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.min_threshold_price_sign = ProtoField.new("Min Threshold Price Sign", "box.options.sola.multicast.hsvf.v1.8.minthresholdpricesign", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.minimum_number_of_contracts_per_order = ProtoField.new("Minimum Number Of Contracts Per Order", "box.options.sola.multicast.hsvf.v1.8.minimumnumberofcontractsperorder", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.minimum_quantity_for_improvement_order = ProtoField.new("Minimum Quantity For Improvement Order", "box.options.sola.multicast.hsvf.v1.8.minimumquantityforimprovementorder", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.minimum_threshold_price = ProtoField.new("Minimum Threshold Price", "box.options.sola.multicast.hsvf.v1.8.minimumthresholdprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.minimum_threshold_price_fraction_indicator = ProtoField.new("Minimum Threshold Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.minimumthresholdpricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.net_change = ProtoField.new("Net Change", "box.options.sola.multicast.hsvf.v1.8.netchange", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.net_change_fraction_indicator = ProtoField.new("Net Change Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.netchangefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.net_change_sign = ProtoField.new("Net Change Sign", "box.options.sola.multicast.hsvf.v1.8.netchangesign", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.number_of_ask_orders = ProtoField.new("Number Of Ask Orders", "box.options.sola.multicast.hsvf.v1.8.numberofaskorders", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.number_of_bid_orders = ProtoField.new("Number Of Bid Orders", "box.options.sola.multicast.hsvf.v1.8.numberofbidorders", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.number_of_legs = ProtoField.new("Number Of Legs", "box.options.sola.multicast.hsvf.v1.8.numberoflegs", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.number_of_levels = ProtoField.new("Number Of Levels", "box.options.sola.multicast.hsvf.v1.8.numberoflevels", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.open_interest = ProtoField.new("Open Interest", "box.options.sola.multicast.hsvf.v1.8.openinterest", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.open_price = ProtoField.new("Open Price", "box.options.sola.multicast.hsvf.v1.8.openprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.open_price_fraction_indicator = ProtoField.new("Open Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.openpricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.open_price_sign = ProtoField.new("Open Price Sign", "box.options.sola.multicast.hsvf.v1.8.openpricesign", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.option_marker = ProtoField.new("Option Marker", "box.options.sola.multicast.hsvf.v1.8.optionmarker", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.option_type = ProtoField.new("Option Type", "box.options.sola.multicast.hsvf.v1.8.optiontype", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.order_quantity = ProtoField.new("Order Quantity", "box.options.sola.multicast.hsvf.v1.8.orderquantity", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.order_sequence_number = ProtoField.new("Order Sequence Number", "box.options.sola.multicast.hsvf.v1.8.ordersequencenumber", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.order_side = ProtoField.new("Order Side", "box.options.sola.multicast.hsvf.v1.8.orderside", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.packet = ProtoField.new("Packet", "box.options.sola.multicast.hsvf.v1.8.packet", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.percentage_assured_to_initial_order = ProtoField.new("Percentage Assured To Initial Order", "box.options.sola.multicast.hsvf.v1.8.percentageassuredtoinitialorder", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.price_indicator_marker = ProtoField.new("Price Indicator Marker", "box.options.sola.multicast.hsvf.v1.8.priceindicatormarker", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.public_customer_ask_size = ProtoField.new("Public Customer Ask Size", "box.options.sola.multicast.hsvf.v1.8.publiccustomerasksize", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.public_customer_bid_size = ProtoField.new("Public Customer Bid Size", "box.options.sola.multicast.hsvf.v1.8.publiccustomerbidsize", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.reference_price = ProtoField.new("Reference Price", "box.options.sola.multicast.hsvf.v1.8.referenceprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.reference_price_fraction_indicator = ProtoField.new("Reference Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.referencepricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.requested_size = ProtoField.new("Requested Size", "box.options.sola.multicast.hsvf.v1.8.requestedsize", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.reserved = ProtoField.new("Reserved", "box.options.sola.multicast.hsvf.v1.8.reserved", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.root_symbol = ProtoField.new("Root Symbol", "box.options.sola.multicast.hsvf.v1.8.rootsymbol", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.scheduled_time = ProtoField.new("Scheduled Time", "box.options.sola.multicast.hsvf.v1.8.scheduledtime", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.sequence_number = ProtoField.new("Sequence Number", "box.options.sola.multicast.hsvf.v1.8.sequencenumber", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.strike_price = ProtoField.new("Strike Price", "box.options.sola.multicast.hsvf.v1.8.strikeprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.strike_price_currency = ProtoField.new("Strike Price Currency", "box.options.sola.multicast.hsvf.v1.8.strikepricecurrency", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.strike_price_fraction_indicator = ProtoField.new("Strike Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.strikepricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.tick = ProtoField.new("Tick", "box.options.sola.multicast.hsvf.v1.8.tick", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.tick_increment = ProtoField.new("Tick Increment", "box.options.sola.multicast.hsvf.v1.8.tickincrement", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.tick_increment_fraction_indicator = ProtoField.new("Tick Increment Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.tickincrementfractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.time = ProtoField.new("Time", "box.options.sola.multicast.hsvf.v1.8.time", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.timestamp = ProtoField.new("Timestamp", "box.options.sola.multicast.hsvf.v1.8.timestamp", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.trade_price = ProtoField.new("Trade Price", "box.options.sola.multicast.hsvf.v1.8.tradeprice", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.trade_price_fraction_indicator = ProtoField.new("Trade Price Fraction Indicator", "box.options.sola.multicast.hsvf.v1.8.tradepricefractionindicator", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.trade_price_sign = ProtoField.new("Trade Price Sign", "box.options.sola.multicast.hsvf.v1.8.tradepricesign", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.trading_engine_timestamp = ProtoField.new("Trading Engine Timestamp", "box.options.sola.multicast.hsvf.v1.8.tradingenginetimestamp", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.type_of_clearing_account = ProtoField.new("Type Of Clearing Account", "box.options.sola.multicast.hsvf.v1.8.typeofclearingaccount", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.type_of_instrument = ProtoField.new("Type Of Instrument", "box.options.sola.multicast.hsvf.v1.8.typeofinstrument", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.type_of_market = ProtoField.new("Type Of Market", "box.options.sola.multicast.hsvf.v1.8.typeofmarket", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.type_of_options = ProtoField.new("Type Of Options", "box.options.sola.multicast.hsvf.v1.8.typeofoptions", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.type_of_order = ProtoField.new("Type Of Order", "box.options.sola.multicast.hsvf.v1.8.typeoforder", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.type_of_underlying = ProtoField.new("Type Of Underlying", "box.options.sola.multicast.hsvf.v1.8.typeofunderlying", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "box.options.sola.multicast.hsvf.v1.8.underlyingsymbol", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.underlying_symbol_root = ProtoField.new("Underlying Symbol Root", "box.options.sola.multicast.hsvf.v1.8.underlyingsymbolroot", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.volume = ProtoField.new("Volume", "box.options.sola.multicast.hsvf.v1.8.volume", ftypes.STRING)

-- Box Options Sola Multicast Hsvf 1.8 messages
omi_box_options_sola_multicast_hsvf_v1_8.fields.beginning_of_complex_order_summary_message = ProtoField.new("Beginning Of Complex Order Summary Message", "box.options.sola.multicast.hsvf.v1.8.beginningofcomplexordersummarymessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.beginning_of_options_summary_message = ProtoField.new("Beginning Of Options Summary Message", "box.options.sola.multicast.hsvf.v1.8.beginningofoptionssummarymessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.bulletins_message = ProtoField.new("Bulletins Message", "box.options.sola.multicast.hsvf.v1.8.bulletinsmessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.circuit_assurance_message = ProtoField.new("Circuit Assurance Message", "box.options.sola.multicast.hsvf.v1.8.circuitassurancemessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_improvement_process_beginning_message_message = ProtoField.new("Complex Order Improvement Process Beginning Message Message", "box.options.sola.multicast.hsvf.v1.8.complexorderimprovementprocessbeginningmessagemessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_initial_and_improvement_order_message = ProtoField.new("Complex Order Initial And Improvement Order Message", "box.options.sola.multicast.hsvf.v1.8.complexorderinitialandimprovementordermessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_instrument_keys_message = ProtoField.new("Complex Order Instrument Keys Message", "box.options.sola.multicast.hsvf.v1.8.complexorderinstrumentkeysmessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_instrument_trade_message = ProtoField.new("Complex Order Instrument Trade Message", "box.options.sola.multicast.hsvf.v1.8.complexorderinstrumenttrademessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_market_depth_message = ProtoField.new("Complex Order Market Depth Message", "box.options.sola.multicast.hsvf.v1.8.complexordermarketdepthmessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_market_sheet_initial_and_improvement_order_message = ProtoField.new("Complex Order Market Sheet Initial And Improvement Order Message", "box.options.sola.multicast.hsvf.v1.8.complexordermarketsheetinitialandimprovementordermessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_quote_message = ProtoField.new("Complex Order Quote Message", "box.options.sola.multicast.hsvf.v1.8.complexorderquotemessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_summary_message = ProtoField.new("Complex Order Summary Message", "box.options.sola.multicast.hsvf.v1.8.complexordersummarymessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_trade_cancellation_message = ProtoField.new("Complex Order Trade Cancellation Message", "box.options.sola.multicast.hsvf.v1.8.complexordertradecancellationmessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.end_of_sales_message = ProtoField.new("End Of Sales Message", "box.options.sola.multicast.hsvf.v1.8.endofsalesmessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.end_of_transmission_message = ProtoField.new("End Of Transmission Message", "box.options.sola.multicast.hsvf.v1.8.endoftransmissionmessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.group_opening_time_message = ProtoField.new("Group Opening Time Message", "box.options.sola.multicast.hsvf.v1.8.groupopeningtimemessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.group_status_message = ProtoField.new("Group Status Message", "box.options.sola.multicast.hsvf.v1.8.groupstatusmessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.initial_and_improvement_order_message = ProtoField.new("Initial And Improvement Order Message", "box.options.sola.multicast.hsvf.v1.8.initialandimprovementordermessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.market_sheet_initial_and_improvement_order_message = ProtoField.new("Market Sheet Initial And Improvement Order Message", "box.options.sola.multicast.hsvf.v1.8.marketsheetinitialandimprovementordermessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.option_improvement_process_beginning_message = ProtoField.new("Option Improvement Process Beginning Message", "box.options.sola.multicast.hsvf.v1.8.optionimprovementprocessbeginningmessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.option_instrument_keys_message = ProtoField.new("Option Instrument Keys Message", "box.options.sola.multicast.hsvf.v1.8.optioninstrumentkeysmessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.option_market_depth_message = ProtoField.new("Option Market Depth Message", "box.options.sola.multicast.hsvf.v1.8.optionmarketdepthmessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.option_quote_message = ProtoField.new("Option Quote Message", "box.options.sola.multicast.hsvf.v1.8.optionquotemessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.option_request_for_quote_message = ProtoField.new("Option Request For Quote Message", "box.options.sola.multicast.hsvf.v1.8.optionrequestforquotemessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.option_summary_message = ProtoField.new("Option Summary Message", "box.options.sola.multicast.hsvf.v1.8.optionsummarymessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.option_trade_cancellation_message = ProtoField.new("Option Trade Cancellation Message", "box.options.sola.multicast.hsvf.v1.8.optiontradecancellationmessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.option_trade_message = ProtoField.new("Option Trade Message", "box.options.sola.multicast.hsvf.v1.8.optiontrademessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.strategies_group_status_message = ProtoField.new("Strategies Group Status Message", "box.options.sola.multicast.hsvf.v1.8.strategiesgroupstatusmessage", ftypes.STRING)
omi_box_options_sola_multicast_hsvf_v1_8.fields.system_timestamp_message = ProtoField.new("System Timestamp Message", "box.options.sola.multicast.hsvf.v1.8.systemtimestampmessage", ftypes.STRING)

-- Box Options Sola Multicast Hsvf 1.8 generated fields
omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_market_depth_level_index = ProtoField.new("Complex Market Depth Level Index", "box.options.sola.multicast.hsvf.v1.8.complexmarketdepthlevelindex", ftypes.UINT16)
omi_box_options_sola_multicast_hsvf_v1_8.fields.instrument_leg_index = ProtoField.new("Instrument Leg Index", "box.options.sola.multicast.hsvf.v1.8.instrumentlegindex", ftypes.UINT16)
omi_box_options_sola_multicast_hsvf_v1_8.fields.market_depth_level_index = ProtoField.new("Market Depth Level Index", "box.options.sola.multicast.hsvf.v1.8.marketdepthlevelindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Box Options Sola Multicast Hsvf 1.8 Element Dissection Options
show.beginning_of_complex_order_summary_message = true
show.beginning_of_options_summary_message = true
show.bulletins_message = true
show.circuit_assurance_message = true
show.complex_market_depth_level = true
show.complex_order_improvement_process_beginning_message_message = true
show.complex_order_initial_and_improvement_order_message = true
show.complex_order_instrument_keys_message = true
show.complex_order_instrument_trade_message = true
show.complex_order_market_depth_message = true
show.complex_order_market_sheet_initial_and_improvement_order_message = true
show.complex_order_quote_message = true
show.complex_order_summary_message = true
show.complex_order_trade_cancellation_message = true
show.end_of_sales_message = true
show.end_of_transmission_message = true
show.group_opening_time_message = true
show.group_status_message = true
show.initial_and_improvement_order_message = true
show.instrument_description = true
show.instrument_leg = true
show.market_depth_level = true
show.market_flow_indicator = true
show.market_sheet_initial_and_improvement_order_message = true
show.message_header = true
show.option_improvement_process_beginning_message = true
show.option_instrument_keys_message = true
show.option_marker = true
show.option_market_depth_message = true
show.option_quote_message = true
show.option_request_for_quote_message = true
show.option_summary_message = true
show.option_trade_cancellation_message = true
show.option_trade_message = true
show.packet = true
show.strategies_group_status_message = true
show.system_timestamp_message = true
show.message_body = false

-- Register Box Options Sola Multicast Hsvf 1.8 Show Options
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_beginning_of_complex_order_summary_message = Pref.bool("Show Beginning Of Complex Order Summary Message", show.beginning_of_complex_order_summary_message, "Parse and add Beginning Of Complex Order Summary Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_beginning_of_options_summary_message = Pref.bool("Show Beginning Of Options Summary Message", show.beginning_of_options_summary_message, "Parse and add Beginning Of Options Summary Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_bulletins_message = Pref.bool("Show Bulletins Message", show.bulletins_message, "Parse and add Bulletins Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_circuit_assurance_message = Pref.bool("Show Circuit Assurance Message", show.circuit_assurance_message, "Parse and add Circuit Assurance Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_market_depth_level = Pref.bool("Show Complex Market Depth Level", show.complex_market_depth_level, "Parse and add Complex Market Depth Level to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_improvement_process_beginning_message_message = Pref.bool("Show Complex Order Improvement Process Beginning Message Message", show.complex_order_improvement_process_beginning_message_message, "Parse and add Complex Order Improvement Process Beginning Message Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_initial_and_improvement_order_message = Pref.bool("Show Complex Order Initial And Improvement Order Message", show.complex_order_initial_and_improvement_order_message, "Parse and add Complex Order Initial And Improvement Order Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_instrument_keys_message = Pref.bool("Show Complex Order Instrument Keys Message", show.complex_order_instrument_keys_message, "Parse and add Complex Order Instrument Keys Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_instrument_trade_message = Pref.bool("Show Complex Order Instrument Trade Message", show.complex_order_instrument_trade_message, "Parse and add Complex Order Instrument Trade Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_market_depth_message = Pref.bool("Show Complex Order Market Depth Message", show.complex_order_market_depth_message, "Parse and add Complex Order Market Depth Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_market_sheet_initial_and_improvement_order_message = Pref.bool("Show Complex Order Market Sheet Initial And Improvement Order Message", show.complex_order_market_sheet_initial_and_improvement_order_message, "Parse and add Complex Order Market Sheet Initial And Improvement Order Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_quote_message = Pref.bool("Show Complex Order Quote Message", show.complex_order_quote_message, "Parse and add Complex Order Quote Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_summary_message = Pref.bool("Show Complex Order Summary Message", show.complex_order_summary_message, "Parse and add Complex Order Summary Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_trade_cancellation_message = Pref.bool("Show Complex Order Trade Cancellation Message", show.complex_order_trade_cancellation_message, "Parse and add Complex Order Trade Cancellation Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_end_of_sales_message = Pref.bool("Show End Of Sales Message", show.end_of_sales_message, "Parse and add End Of Sales Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_end_of_transmission_message = Pref.bool("Show End Of Transmission Message", show.end_of_transmission_message, "Parse and add End Of Transmission Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_group_opening_time_message = Pref.bool("Show Group Opening Time Message", show.group_opening_time_message, "Parse and add Group Opening Time Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_group_status_message = Pref.bool("Show Group Status Message", show.group_status_message, "Parse and add Group Status Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_initial_and_improvement_order_message = Pref.bool("Show Initial And Improvement Order Message", show.initial_and_improvement_order_message, "Parse and add Initial And Improvement Order Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_instrument_description = Pref.bool("Show Instrument Description", show.instrument_description, "Parse and add Instrument Description to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_instrument_leg = Pref.bool("Show Instrument Leg", show.instrument_leg, "Parse and add Instrument Leg to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_market_depth_level = Pref.bool("Show Market Depth Level", show.market_depth_level, "Parse and add Market Depth Level to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_market_flow_indicator = Pref.bool("Show Market Flow Indicator", show.market_flow_indicator, "Parse and add Market Flow Indicator to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_market_sheet_initial_and_improvement_order_message = Pref.bool("Show Market Sheet Initial And Improvement Order Message", show.market_sheet_initial_and_improvement_order_message, "Parse and add Market Sheet Initial And Improvement Order Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_improvement_process_beginning_message = Pref.bool("Show Option Improvement Process Beginning Message", show.option_improvement_process_beginning_message, "Parse and add Option Improvement Process Beginning Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_instrument_keys_message = Pref.bool("Show Option Instrument Keys Message", show.option_instrument_keys_message, "Parse and add Option Instrument Keys Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_marker = Pref.bool("Show Option Marker", show.option_marker, "Parse and add Option Marker to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_market_depth_message = Pref.bool("Show Option Market Depth Message", show.option_market_depth_message, "Parse and add Option Market Depth Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_quote_message = Pref.bool("Show Option Quote Message", show.option_quote_message, "Parse and add Option Quote Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_request_for_quote_message = Pref.bool("Show Option Request For Quote Message", show.option_request_for_quote_message, "Parse and add Option Request For Quote Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_summary_message = Pref.bool("Show Option Summary Message", show.option_summary_message, "Parse and add Option Summary Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_trade_cancellation_message = Pref.bool("Show Option Trade Cancellation Message", show.option_trade_cancellation_message, "Parse and add Option Trade Cancellation Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_trade_message = Pref.bool("Show Option Trade Message", show.option_trade_message, "Parse and add Option Trade Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_strategies_group_status_message = Pref.bool("Show Strategies Group Status Message", show.strategies_group_status_message, "Parse and add Strategies Group Status Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_system_timestamp_message = Pref.bool("Show System Timestamp Message", show.system_timestamp_message, "Parse and add System Timestamp Message to protocol tree")
omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_message_body = Pref.bool("Show Message Body", show.message_body, "Parse and add Message Body to protocol tree")

-- Handle changed preferences
function omi_box_options_sola_multicast_hsvf_v1_8.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.beginning_of_complex_order_summary_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_beginning_of_complex_order_summary_message then
    show.beginning_of_complex_order_summary_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_beginning_of_complex_order_summary_message
    changed = true
  end
  if show.beginning_of_options_summary_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_beginning_of_options_summary_message then
    show.beginning_of_options_summary_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_beginning_of_options_summary_message
    changed = true
  end
  if show.bulletins_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_bulletins_message then
    show.bulletins_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_bulletins_message
    changed = true
  end
  if show.circuit_assurance_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_circuit_assurance_message then
    show.circuit_assurance_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_circuit_assurance_message
    changed = true
  end
  if show.complex_market_depth_level ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_market_depth_level then
    show.complex_market_depth_level = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_market_depth_level
    changed = true
  end
  if show.complex_order_improvement_process_beginning_message_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_improvement_process_beginning_message_message then
    show.complex_order_improvement_process_beginning_message_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_improvement_process_beginning_message_message
    changed = true
  end
  if show.complex_order_initial_and_improvement_order_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_initial_and_improvement_order_message then
    show.complex_order_initial_and_improvement_order_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_initial_and_improvement_order_message
    changed = true
  end
  if show.complex_order_instrument_keys_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_instrument_keys_message then
    show.complex_order_instrument_keys_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_instrument_keys_message
    changed = true
  end
  if show.complex_order_instrument_trade_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_instrument_trade_message then
    show.complex_order_instrument_trade_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_instrument_trade_message
    changed = true
  end
  if show.complex_order_market_depth_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_market_depth_message then
    show.complex_order_market_depth_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_market_depth_message
    changed = true
  end
  if show.complex_order_market_sheet_initial_and_improvement_order_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_market_sheet_initial_and_improvement_order_message then
    show.complex_order_market_sheet_initial_and_improvement_order_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_market_sheet_initial_and_improvement_order_message
    changed = true
  end
  if show.complex_order_quote_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_quote_message then
    show.complex_order_quote_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_quote_message
    changed = true
  end
  if show.complex_order_summary_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_summary_message then
    show.complex_order_summary_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_summary_message
    changed = true
  end
  if show.complex_order_trade_cancellation_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_trade_cancellation_message then
    show.complex_order_trade_cancellation_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_complex_order_trade_cancellation_message
    changed = true
  end
  if show.end_of_sales_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_end_of_sales_message then
    show.end_of_sales_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_end_of_sales_message
    changed = true
  end
  if show.end_of_transmission_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_end_of_transmission_message then
    show.end_of_transmission_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_end_of_transmission_message
    changed = true
  end
  if show.group_opening_time_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_group_opening_time_message then
    show.group_opening_time_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_group_opening_time_message
    changed = true
  end
  if show.group_status_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_group_status_message then
    show.group_status_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_group_status_message
    changed = true
  end
  if show.initial_and_improvement_order_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_initial_and_improvement_order_message then
    show.initial_and_improvement_order_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_initial_and_improvement_order_message
    changed = true
  end
  if show.instrument_description ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_instrument_description then
    show.instrument_description = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_instrument_description
    changed = true
  end
  if show.instrument_leg ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_instrument_leg then
    show.instrument_leg = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_instrument_leg
    changed = true
  end
  if show.market_depth_level ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_market_depth_level then
    show.market_depth_level = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_market_depth_level
    changed = true
  end
  if show.market_flow_indicator ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_market_flow_indicator then
    show.market_flow_indicator = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_market_flow_indicator
    changed = true
  end
  if show.market_sheet_initial_and_improvement_order_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_market_sheet_initial_and_improvement_order_message then
    show.market_sheet_initial_and_improvement_order_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_market_sheet_initial_and_improvement_order_message
    changed = true
  end
  if show.message_header ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_message_header then
    show.message_header = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_message_header
    changed = true
  end
  if show.option_improvement_process_beginning_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_improvement_process_beginning_message then
    show.option_improvement_process_beginning_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_improvement_process_beginning_message
    changed = true
  end
  if show.option_instrument_keys_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_instrument_keys_message then
    show.option_instrument_keys_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_instrument_keys_message
    changed = true
  end
  if show.option_marker ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_marker then
    show.option_marker = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_marker
    changed = true
  end
  if show.option_market_depth_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_market_depth_message then
    show.option_market_depth_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_market_depth_message
    changed = true
  end
  if show.option_quote_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_quote_message then
    show.option_quote_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_quote_message
    changed = true
  end
  if show.option_request_for_quote_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_request_for_quote_message then
    show.option_request_for_quote_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_request_for_quote_message
    changed = true
  end
  if show.option_summary_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_summary_message then
    show.option_summary_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_summary_message
    changed = true
  end
  if show.option_trade_cancellation_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_trade_cancellation_message then
    show.option_trade_cancellation_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_trade_cancellation_message
    changed = true
  end
  if show.option_trade_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_trade_message then
    show.option_trade_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_option_trade_message
    changed = true
  end
  if show.packet ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_packet then
    show.packet = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_packet
    changed = true
  end
  if show.strategies_group_status_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_strategies_group_status_message then
    show.strategies_group_status_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_strategies_group_status_message
    changed = true
  end
  if show.system_timestamp_message ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_system_timestamp_message then
    show.system_timestamp_message = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_system_timestamp_message
    changed = true
  end
  if show.message_body ~= omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_message_body then
    show.message_body = omi_box_options_sola_multicast_hsvf_v1_8.prefs.show_message_body
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
-- Dissect Box Options Sola Multicast Hsvf 1.8
-----------------------------------------------------------------------

-- Hsvf Etx
box_options_sola_multicast_hsvf_v1_8.hsvf_etx = {}

-- Size: Hsvf Etx
box_options_sola_multicast_hsvf_v1_8.hsvf_etx.size = 1

-- Display: Hsvf Etx
box_options_sola_multicast_hsvf_v1_8.hsvf_etx.display = function(value)
  return "Hsvf Etx: "..value
end

-- Dissect: Hsvf Etx
box_options_sola_multicast_hsvf_v1_8.hsvf_etx.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.hsvf_etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = box_options_sola_multicast_hsvf_v1_8.hsvf_etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.hsvf_etx, range, value, display)

  return offset + length, value
end

-- Auction Type
box_options_sola_multicast_hsvf_v1_8.auction_type = {}

-- Size: Auction Type
box_options_sola_multicast_hsvf_v1_8.auction_type.size = 1

-- Display: Auction Type
box_options_sola_multicast_hsvf_v1_8.auction_type.display = function(value)
  if value == "G" then
    return "Auction Type: Regular Pip (G)"
  end
  if value == "B" then
    return "Auction Type: Solicitation (B)"
  end
  if value == "C" then
    return "Auction Type: Facilitation (C)"
  end
  if value == "F" then
    return "Auction Type: Exposed Order (F)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
box_options_sola_multicast_hsvf_v1_8.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Improvement Phase Sequential Number
box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number = {}

-- Size: Improvement Phase Sequential Number
box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.size = 6

-- Display: Improvement Phase Sequential Number
box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.display = function(value)
  return "Improvement Phase Sequential Number: "..value
end

-- Dissect: Improvement Phase Sequential Number
box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.improvement_phase_sequential_number, range, value, display)

  return offset + length, value
end

-- Order Side
box_options_sola_multicast_hsvf_v1_8.order_side = {}

-- Size: Order Side
box_options_sola_multicast_hsvf_v1_8.order_side.size = 1

-- Display: Order Side
box_options_sola_multicast_hsvf_v1_8.order_side.display = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
box_options_sola_multicast_hsvf_v1_8.order_side.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.order_side, range, value, display)

  return offset + length, value
end

-- Order Sequence Number
box_options_sola_multicast_hsvf_v1_8.order_sequence_number = {}

-- Size: Order Sequence Number
box_options_sola_multicast_hsvf_v1_8.order_sequence_number.size = 6

-- Display: Order Sequence Number
box_options_sola_multicast_hsvf_v1_8.order_sequence_number.display = function(value)
  return "Order Sequence Number: "..value
end

-- Dissect: Order Sequence Number
box_options_sola_multicast_hsvf_v1_8.order_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.order_sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.order_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.order_sequence_number, range, value, display)

  return offset + length, value
end

-- Deletion Type
box_options_sola_multicast_hsvf_v1_8.deletion_type = {}

-- Size: Deletion Type
box_options_sola_multicast_hsvf_v1_8.deletion_type.size = 1

-- Display: Deletion Type
box_options_sola_multicast_hsvf_v1_8.deletion_type.display = function(value)
  if value == "1" then
    return "Deletion Type: Precise Order (1)"
  end
  if value == "2" then
    return "Deletion Type: All Previous Orders In The Specified Side (2)"
  end
  if value == "3" then
    return "Deletion Type: All Orders (3)"
  end

  return "Deletion Type: Unknown("..value..")"
end

-- Dissect: Deletion Type
box_options_sola_multicast_hsvf_v1_8.deletion_type.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.deletion_type.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.deletion_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.deletion_type, range, value, display)

  return offset + length, value
end

-- Complex Order Instrument Symbol
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol = {}

-- Size: Complex Order Instrument Symbol
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.size = 30

-- Display: Complex Order Instrument Symbol
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.display = function(value)
  return "Complex Order Instrument Symbol: "..value
end

-- Dissect: Complex Order Instrument Symbol
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_instrument_symbol, range, value, display)

  return offset + length, value
end

-- Exchange Id
box_options_sola_multicast_hsvf_v1_8.exchange_id = {}

-- Size: Exchange Id
box_options_sola_multicast_hsvf_v1_8.exchange_id.size = 1

-- Display: Exchange Id
box_options_sola_multicast_hsvf_v1_8.exchange_id.display = function(value)
  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Complex Order Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.complex_order_initial_and_improvement_order_message = {}

-- Calculate size of: Complex Order Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.complex_order_initial_and_improvement_order_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.size

  index = index + box_options_sola_multicast_hsvf_v1_8.deletion_type.size

  index = index + box_options_sola_multicast_hsvf_v1_8.order_sequence_number.size

  index = index + box_options_sola_multicast_hsvf_v1_8.order_side.size

  index = index + box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.size

  index = index + box_options_sola_multicast_hsvf_v1_8.auction_type.size

  return index
end

-- Display: Complex Order Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.complex_order_initial_and_improvement_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.complex_order_initial_and_improvement_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Deletion Type: N
  index, deletion_type = box_options_sola_multicast_hsvf_v1_8.deletion_type.dissect(buffer, index, packet, parent)

  -- Order Sequence Number: N
  index, order_sequence_number = box_options_sola_multicast_hsvf_v1_8.order_sequence_number.dissect(buffer, index, packet, parent)

  -- Order Side: X
  index, order_side = box_options_sola_multicast_hsvf_v1_8.order_side.dissect(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.dissect(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_options_sola_multicast_hsvf_v1_8.auction_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.complex_order_initial_and_improvement_order_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_order_initial_and_improvement_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_initial_and_improvement_order_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.complex_order_initial_and_improvement_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.complex_order_initial_and_improvement_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.complex_order_initial_and_improvement_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Improvement Order Side
box_options_sola_multicast_hsvf_v1_8.improvement_order_side = {}

-- Size: Improvement Order Side
box_options_sola_multicast_hsvf_v1_8.improvement_order_side.size = 1

-- Display: Improvement Order Side
box_options_sola_multicast_hsvf_v1_8.improvement_order_side.display = function(value)
  if value == "B" then
    return "Improvement Order Side: Buy (B)"
  end
  if value == "S" then
    return "Improvement Order Side: Sell (S)"
  end
  if value == " " then
    return "Improvement Order Side: All (<whitespace>)"
  end

  return "Improvement Order Side: Unknown("..value..")"
end

-- Dissect: Improvement Order Side
box_options_sola_multicast_hsvf_v1_8.improvement_order_side.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.improvement_order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.improvement_order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.improvement_order_side, range, value, display)

  return offset + length, value
end

-- Expiry Day
box_options_sola_multicast_hsvf_v1_8.expiry_day = {}

-- Size: Expiry Day
box_options_sola_multicast_hsvf_v1_8.expiry_day.size = 2

-- Display: Expiry Day
box_options_sola_multicast_hsvf_v1_8.expiry_day.display = function(value)
  return "Expiry Day: "..value
end

-- Dissect: Expiry Day
box_options_sola_multicast_hsvf_v1_8.expiry_day.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.expiry_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.expiry_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.expiry_day, range, value, display)

  return offset + length, value
end

-- Expiry Year
box_options_sola_multicast_hsvf_v1_8.expiry_year = {}

-- Size: Expiry Year
box_options_sola_multicast_hsvf_v1_8.expiry_year.size = 2

-- Display: Expiry Year
box_options_sola_multicast_hsvf_v1_8.expiry_year.display = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
box_options_sola_multicast_hsvf_v1_8.expiry_year.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.expiry_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.expiry_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- Strike Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.strike_price_fraction_indicator = {}

-- Size: Strike Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.strike_price_fraction_indicator.size = 1

-- Display: Strike Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.strike_price_fraction_indicator.display = function(value)
  return "Strike Price Fraction Indicator: "..value
end

-- Dissect: Strike Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.strike_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.strike_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.strike_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.strike_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Strike Price
box_options_sola_multicast_hsvf_v1_8.strike_price = {}

-- Size: Strike Price
box_options_sola_multicast_hsvf_v1_8.strike_price.size = 7

-- Display: Strike Price
box_options_sola_multicast_hsvf_v1_8.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
box_options_sola_multicast_hsvf_v1_8.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.strike_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Filler 1
box_options_sola_multicast_hsvf_v1_8.filler_1 = {}

-- Size: Filler 1
box_options_sola_multicast_hsvf_v1_8.filler_1.size = 1

-- Display: Filler 1
box_options_sola_multicast_hsvf_v1_8.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
box_options_sola_multicast_hsvf_v1_8.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.filler_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Expiry Month Code
box_options_sola_multicast_hsvf_v1_8.expiry_month_code = {}

-- Size: Expiry Month Code
box_options_sola_multicast_hsvf_v1_8.expiry_month_code.size = 1

-- Display: Expiry Month Code
box_options_sola_multicast_hsvf_v1_8.expiry_month_code.display = function(value)
  if value == "M" then
    return "Expiry Month Code: January Put (M)"
  end
  if value == "N" then
    return "Expiry Month Code: February Put (N)"
  end
  if value == "O" then
    return "Expiry Month Code: March Put (O)"
  end
  if value == "P" then
    return "Expiry Month Code: April Put (P)"
  end
  if value == "Q" then
    return "Expiry Month Code: May Put (Q)"
  end
  if value == "R" then
    return "Expiry Month Code: June Put (R)"
  end
  if value == "S" then
    return "Expiry Month Code: July Put (S)"
  end
  if value == "T" then
    return "Expiry Month Code: August Put (T)"
  end
  if value == "U" then
    return "Expiry Month Code: September Put (U)"
  end
  if value == "V" then
    return "Expiry Month Code: October Put (V)"
  end
  if value == "W" then
    return "Expiry Month Code: November Put (W)"
  end

  return "Expiry Month Code: Unknown("..value..")"
end

-- Dissect: Expiry Month Code
box_options_sola_multicast_hsvf_v1_8.expiry_month_code.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.expiry_month_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.expiry_month_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.expiry_month_code, range, value, display)

  return offset + length, value
end

-- Root Symbol
box_options_sola_multicast_hsvf_v1_8.root_symbol = {}

-- Size: Root Symbol
box_options_sola_multicast_hsvf_v1_8.root_symbol.size = 6

-- Display: Root Symbol
box_options_sola_multicast_hsvf_v1_8.root_symbol.display = function(value)
  return "Root Symbol: "..value
end

-- Dissect: Root Symbol
box_options_sola_multicast_hsvf_v1_8.root_symbol.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.root_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_multicast_hsvf_v1_8.root_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.root_symbol, range, value, display)

  return offset + length, value
end

-- Instrument Description
box_options_sola_multicast_hsvf_v1_8.instrument_description = {}

-- Calculate size of: Instrument Description
box_options_sola_multicast_hsvf_v1_8.instrument_description.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.root_symbol.size

  index = index + box_options_sola_multicast_hsvf_v1_8.expiry_month_code.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_1.size

  index = index + box_options_sola_multicast_hsvf_v1_8.strike_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.strike_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.expiry_year.size

  index = index + box_options_sola_multicast_hsvf_v1_8.expiry_day.size

  return index
end

-- Display: Instrument Description
box_options_sola_multicast_hsvf_v1_8.instrument_description.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Description
box_options_sola_multicast_hsvf_v1_8.instrument_description.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root Symbol: x
  index, root_symbol = box_options_sola_multicast_hsvf_v1_8.root_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Month Code: A
  index, expiry_month_code = box_options_sola_multicast_hsvf_v1_8.expiry_month_code.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_multicast_hsvf_v1_8.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = box_options_sola_multicast_hsvf_v1_8.strike_price.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = box_options_sola_multicast_hsvf_v1_8.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = box_options_sola_multicast_hsvf_v1_8.expiry_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Description
box_options_sola_multicast_hsvf_v1_8.instrument_description.dissect = function(buffer, offset, packet, parent)
  if show.instrument_description then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.instrument_description, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.instrument_description.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.instrument_description.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.instrument_description.fields(buffer, offset, packet, parent)
  end
end

-- Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.initial_and_improvement_order_message = {}

-- Calculate size of: Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.initial_and_improvement_order_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_description.size(buffer, offset + index)

  index = index + box_options_sola_multicast_hsvf_v1_8.deletion_type.size

  index = index + box_options_sola_multicast_hsvf_v1_8.order_sequence_number.size

  index = index + box_options_sola_multicast_hsvf_v1_8.improvement_order_side.size

  index = index + box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.size

  index = index + box_options_sola_multicast_hsvf_v1_8.auction_type.size

  return index
end

-- Display: Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.initial_and_improvement_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.initial_and_improvement_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_multicast_hsvf_v1_8.instrument_description.dissect(buffer, index, packet, parent)

  -- Deletion Type: N
  index, deletion_type = box_options_sola_multicast_hsvf_v1_8.deletion_type.dissect(buffer, index, packet, parent)

  -- Order Sequence Number: N
  index, order_sequence_number = box_options_sola_multicast_hsvf_v1_8.order_sequence_number.dissect(buffer, index, packet, parent)

  -- Improvement Order Side: X
  index, improvement_order_side = box_options_sola_multicast_hsvf_v1_8.improvement_order_side.dissect(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.dissect(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_options_sola_multicast_hsvf_v1_8.auction_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.initial_and_improvement_order_message.dissect = function(buffer, offset, packet, parent)
  if show.initial_and_improvement_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.initial_and_improvement_order_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.initial_and_improvement_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.initial_and_improvement_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.initial_and_improvement_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Cmta
box_options_sola_multicast_hsvf_v1_8.cmta = {}

-- Size: Cmta
box_options_sola_multicast_hsvf_v1_8.cmta.size = 4

-- Display: Cmta
box_options_sola_multicast_hsvf_v1_8.cmta.display = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
box_options_sola_multicast_hsvf_v1_8.cmta.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.cmta.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.cmta.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.cmta, range, value, display)

  return offset + length, value
end

-- Firm Id
box_options_sola_multicast_hsvf_v1_8.firm_id = {}

-- Size: Firm Id
box_options_sola_multicast_hsvf_v1_8.firm_id.size = 4

-- Display: Firm Id
box_options_sola_multicast_hsvf_v1_8.firm_id.display = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
box_options_sola_multicast_hsvf_v1_8.firm_id.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.firm_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.firm_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.firm_id, range, value, display)

  return offset + length, value
end

-- End Of The Exposition
box_options_sola_multicast_hsvf_v1_8.end_of_the_exposition = {}

-- Size: End Of The Exposition
box_options_sola_multicast_hsvf_v1_8.end_of_the_exposition.size = 8

-- Display: End Of The Exposition
box_options_sola_multicast_hsvf_v1_8.end_of_the_exposition.display = function(value)
  return "End Of The Exposition: "..value
end

-- Dissect: End Of The Exposition
box_options_sola_multicast_hsvf_v1_8.end_of_the_exposition.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.end_of_the_exposition.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.end_of_the_exposition.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.end_of_the_exposition, range, value, display)

  return offset + length, value
end

-- Type Of Clearing Account
box_options_sola_multicast_hsvf_v1_8.type_of_clearing_account = {}

-- Size: Type Of Clearing Account
box_options_sola_multicast_hsvf_v1_8.type_of_clearing_account.size = 1

-- Display: Type Of Clearing Account
box_options_sola_multicast_hsvf_v1_8.type_of_clearing_account.display = function(value)
  if value == "6" then
    return "Type Of Clearing Account: Public Customer (6)"
  end
  if value == "7" then
    return "Type Of Clearing Account: Broker Dealer (7)"
  end
  if value == "8" then
    return "Type Of Clearing Account: Market Maker (8)"
  end
  if value == "T" then
    return "Type Of Clearing Account: Professional Customer (T)"
  end
  if value == "W" then
    return "Type Of Clearing Account: Broker Dealer Cleared As Customer (W)"
  end
  if value == "X" then
    return "Type Of Clearing Account: Away Market Maker (X)"
  end

  return "Type Of Clearing Account: Unknown("..value..")"
end

-- Dissect: Type Of Clearing Account
box_options_sola_multicast_hsvf_v1_8.type_of_clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.type_of_clearing_account.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.type_of_clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.type_of_clearing_account, range, value, display)

  return offset + length, value
end

-- Order Quantity
box_options_sola_multicast_hsvf_v1_8.order_quantity = {}

-- Size: Order Quantity
box_options_sola_multicast_hsvf_v1_8.order_quantity.size = 8

-- Display: Order Quantity
box_options_sola_multicast_hsvf_v1_8.order_quantity.display = function(value)
  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
box_options_sola_multicast_hsvf_v1_8.order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.order_quantity.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Limit Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.limit_fraction_indicator = {}

-- Size: Limit Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.limit_fraction_indicator.size = 1

-- Display: Limit Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.limit_fraction_indicator.display = function(value)
  return "Limit Fraction Indicator: "..value
end

-- Dissect: Limit Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.limit_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.limit_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.limit_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.limit_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Limit Entered For An Order Sign
box_options_sola_multicast_hsvf_v1_8.limit_entered_for_an_order_sign = {}

-- Size: Limit Entered For An Order Sign
box_options_sola_multicast_hsvf_v1_8.limit_entered_for_an_order_sign.size = 1

-- Display: Limit Entered For An Order Sign
box_options_sola_multicast_hsvf_v1_8.limit_entered_for_an_order_sign.display = function(value)
  if value == "+" then
    return "Limit Entered For An Order Sign: Positive (+)"
  end
  if value == "-" then
    return "Limit Entered For An Order Sign: Negative (-)"
  end

  return "Limit Entered For An Order Sign: Unknown("..value..")"
end

-- Dissect: Limit Entered For An Order Sign
box_options_sola_multicast_hsvf_v1_8.limit_entered_for_an_order_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.limit_entered_for_an_order_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.limit_entered_for_an_order_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.limit_entered_for_an_order_sign, range, value, display)

  return offset + length, value
end

-- Type Of Order
box_options_sola_multicast_hsvf_v1_8.type_of_order = {}

-- Size: Type Of Order
box_options_sola_multicast_hsvf_v1_8.type_of_order.size = 1

-- Display: Type Of Order
box_options_sola_multicast_hsvf_v1_8.type_of_order.display = function(value)
  if value == "A" then
    return "Type Of Order: Initial Order (A)"
  end
  if value == "P" then
    return "Type Of Order: Exposed Order (P)"
  end

  return "Type Of Order: Unknown("..value..")"
end

-- Dissect: Type Of Order
box_options_sola_multicast_hsvf_v1_8.type_of_order.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.type_of_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.type_of_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.type_of_order, range, value, display)

  return offset + length, value
end

-- Complex Order Market Sheet Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.complex_order_market_sheet_initial_and_improvement_order_message = {}

-- Calculate size of: Complex Order Market Sheet Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.complex_order_market_sheet_initial_and_improvement_order_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.size

  index = index + box_options_sola_multicast_hsvf_v1_8.order_side.size

  index = index + box_options_sola_multicast_hsvf_v1_8.type_of_order.size

  index = index + box_options_sola_multicast_hsvf_v1_8.limit_entered_for_an_order_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_1.size

  index = index + box_options_sola_multicast_hsvf_v1_8.limit_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.order_quantity.size

  index = index + box_options_sola_multicast_hsvf_v1_8.order_sequence_number.size

  index = index + box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.size

  index = index + box_options_sola_multicast_hsvf_v1_8.type_of_clearing_account.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_1.size

  index = index + box_options_sola_multicast_hsvf_v1_8.end_of_the_exposition.size

  index = index + box_options_sola_multicast_hsvf_v1_8.auction_type.size

  index = index + box_options_sola_multicast_hsvf_v1_8.firm_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.cmta.size

  return index
end

-- Display: Complex Order Market Sheet Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.complex_order_market_sheet_initial_and_improvement_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Market Sheet Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.complex_order_market_sheet_initial_and_improvement_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Order Side: X
  index, order_side = box_options_sola_multicast_hsvf_v1_8.order_side.dissect(buffer, index, packet, parent)

  -- Type Of Order: X
  index, type_of_order = box_options_sola_multicast_hsvf_v1_8.type_of_order.dissect(buffer, index, packet, parent)

  -- Limit Entered For An Order Sign: X
  index, limit_entered_for_an_order_sign = box_options_sola_multicast_hsvf_v1_8.limit_entered_for_an_order_sign.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_multicast_hsvf_v1_8.filler_1.dissect(buffer, index, packet, parent)

  -- Limit Fraction Indicator: X
  index, limit_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.limit_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Order Quantity: n
  index, order_quantity = box_options_sola_multicast_hsvf_v1_8.order_quantity.dissect(buffer, index, packet, parent)

  -- Order Sequence Number: N
  index, order_sequence_number = box_options_sola_multicast_hsvf_v1_8.order_sequence_number.dissect(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.dissect(buffer, index, packet, parent)

  -- Type Of Clearing Account: X
  index, type_of_clearing_account = box_options_sola_multicast_hsvf_v1_8.type_of_clearing_account.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_multicast_hsvf_v1_8.filler_1.dissect(buffer, index, packet, parent)

  -- End Of The Exposition: N
  index, end_of_the_exposition = box_options_sola_multicast_hsvf_v1_8.end_of_the_exposition.dissect(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_options_sola_multicast_hsvf_v1_8.auction_type.dissect(buffer, index, packet, parent)

  -- Firm Id: X
  index, firm_id = box_options_sola_multicast_hsvf_v1_8.firm_id.dissect(buffer, index, packet, parent)

  -- Cmta: X
  index, cmta = box_options_sola_multicast_hsvf_v1_8.cmta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Market Sheet Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.complex_order_market_sheet_initial_and_improvement_order_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_order_market_sheet_initial_and_improvement_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_market_sheet_initial_and_improvement_order_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.complex_order_market_sheet_initial_and_improvement_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.complex_order_market_sheet_initial_and_improvement_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.complex_order_market_sheet_initial_and_improvement_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Sheet Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.market_sheet_initial_and_improvement_order_message = {}

-- Calculate size of: Market Sheet Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.market_sheet_initial_and_improvement_order_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_description.size(buffer, offset + index)

  index = index + box_options_sola_multicast_hsvf_v1_8.order_side.size

  index = index + box_options_sola_multicast_hsvf_v1_8.type_of_order.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_1.size

  index = index + box_options_sola_multicast_hsvf_v1_8.limit_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.order_quantity.size

  index = index + box_options_sola_multicast_hsvf_v1_8.order_sequence_number.size

  index = index + box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.size

  index = index + box_options_sola_multicast_hsvf_v1_8.type_of_clearing_account.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_1.size

  index = index + box_options_sola_multicast_hsvf_v1_8.end_of_the_exposition.size

  index = index + box_options_sola_multicast_hsvf_v1_8.auction_type.size

  index = index + box_options_sola_multicast_hsvf_v1_8.firm_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.cmta.size

  return index
end

-- Display: Market Sheet Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.market_sheet_initial_and_improvement_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Sheet Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.market_sheet_initial_and_improvement_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_multicast_hsvf_v1_8.instrument_description.dissect(buffer, index, packet, parent)

  -- Order Side: X
  index, order_side = box_options_sola_multicast_hsvf_v1_8.order_side.dissect(buffer, index, packet, parent)

  -- Type Of Order: X
  index, type_of_order = box_options_sola_multicast_hsvf_v1_8.type_of_order.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_multicast_hsvf_v1_8.filler_1.dissect(buffer, index, packet, parent)

  -- Limit Fraction Indicator: X
  index, limit_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.limit_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Order Quantity: n
  index, order_quantity = box_options_sola_multicast_hsvf_v1_8.order_quantity.dissect(buffer, index, packet, parent)

  -- Order Sequence Number: N
  index, order_sequence_number = box_options_sola_multicast_hsvf_v1_8.order_sequence_number.dissect(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.dissect(buffer, index, packet, parent)

  -- Type Of Clearing Account: X
  index, type_of_clearing_account = box_options_sola_multicast_hsvf_v1_8.type_of_clearing_account.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_multicast_hsvf_v1_8.filler_1.dissect(buffer, index, packet, parent)

  -- End Of The Exposition: N
  index, end_of_the_exposition = box_options_sola_multicast_hsvf_v1_8.end_of_the_exposition.dissect(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_options_sola_multicast_hsvf_v1_8.auction_type.dissect(buffer, index, packet, parent)

  -- Firm Id: X
  index, firm_id = box_options_sola_multicast_hsvf_v1_8.firm_id.dissect(buffer, index, packet, parent)

  -- Cmta: X
  index, cmta = box_options_sola_multicast_hsvf_v1_8.cmta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Sheet Initial And Improvement Order Message
box_options_sola_multicast_hsvf_v1_8.market_sheet_initial_and_improvement_order_message.dissect = function(buffer, offset, packet, parent)
  if show.market_sheet_initial_and_improvement_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.market_sheet_initial_and_improvement_order_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.market_sheet_initial_and_improvement_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.market_sheet_initial_and_improvement_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.market_sheet_initial_and_improvement_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Percentage Assured To Initial Order
box_options_sola_multicast_hsvf_v1_8.percentage_assured_to_initial_order = {}

-- Size: Percentage Assured To Initial Order
box_options_sola_multicast_hsvf_v1_8.percentage_assured_to_initial_order.size = 8

-- Display: Percentage Assured To Initial Order
box_options_sola_multicast_hsvf_v1_8.percentage_assured_to_initial_order.display = function(value)
  return "Percentage Assured To Initial Order: "..value
end

-- Dissect: Percentage Assured To Initial Order
box_options_sola_multicast_hsvf_v1_8.percentage_assured_to_initial_order.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.percentage_assured_to_initial_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.percentage_assured_to_initial_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.percentage_assured_to_initial_order, range, value, display)

  return offset + length, value
end

-- Minimum Quantity For Improvement Order
box_options_sola_multicast_hsvf_v1_8.minimum_quantity_for_improvement_order = {}

-- Size: Minimum Quantity For Improvement Order
box_options_sola_multicast_hsvf_v1_8.minimum_quantity_for_improvement_order.size = 8

-- Display: Minimum Quantity For Improvement Order
box_options_sola_multicast_hsvf_v1_8.minimum_quantity_for_improvement_order.display = function(value)
  return "Minimum Quantity For Improvement Order: "..value
end

-- Dissect: Minimum Quantity For Improvement Order
box_options_sola_multicast_hsvf_v1_8.minimum_quantity_for_improvement_order.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.minimum_quantity_for_improvement_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.minimum_quantity_for_improvement_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.minimum_quantity_for_improvement_order, range, value, display)

  return offset + length, value
end

-- Improvement Process Expiry Duration
box_options_sola_multicast_hsvf_v1_8.improvement_process_expiry_duration = {}

-- Size: Improvement Process Expiry Duration
box_options_sola_multicast_hsvf_v1_8.improvement_process_expiry_duration.size = 4

-- Display: Improvement Process Expiry Duration
box_options_sola_multicast_hsvf_v1_8.improvement_process_expiry_duration.display = function(value)
  return "Improvement Process Expiry Duration: "..value
end

-- Dissect: Improvement Process Expiry Duration
box_options_sola_multicast_hsvf_v1_8.improvement_process_expiry_duration.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.improvement_process_expiry_duration.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.improvement_process_expiry_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.improvement_process_expiry_duration, range, value, display)

  return offset + length, value
end

-- Improvement Phase Expiry Time
box_options_sola_multicast_hsvf_v1_8.improvement_phase_expiry_time = {}

-- Size: Improvement Phase Expiry Time
box_options_sola_multicast_hsvf_v1_8.improvement_phase_expiry_time.size = 8

-- Display: Improvement Phase Expiry Time
box_options_sola_multicast_hsvf_v1_8.improvement_phase_expiry_time.display = function(value)
  return "Improvement Phase Expiry Time: "..value
end

-- Dissect: Improvement Phase Expiry Time
box_options_sola_multicast_hsvf_v1_8.improvement_phase_expiry_time.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.improvement_phase_expiry_time.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_multicast_hsvf_v1_8.improvement_phase_expiry_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.improvement_phase_expiry_time, range, value, display)

  return offset + length, value
end

-- Initial Order Side
box_options_sola_multicast_hsvf_v1_8.initial_order_side = {}

-- Size: Initial Order Side
box_options_sola_multicast_hsvf_v1_8.initial_order_side.size = 1

-- Display: Initial Order Side
box_options_sola_multicast_hsvf_v1_8.initial_order_side.display = function(value)
  if value == "B" then
    return "Initial Order Side: Buy (B)"
  end
  if value == "S" then
    return "Initial Order Side: Sell (S)"
  end

  return "Initial Order Side: Unknown("..value..")"
end

-- Dissect: Initial Order Side
box_options_sola_multicast_hsvf_v1_8.initial_order_side.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.initial_order_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.initial_order_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.initial_order_side, range, value, display)

  return offset + length, value
end

-- Initial Order Quantity
box_options_sola_multicast_hsvf_v1_8.initial_order_quantity = {}

-- Size: Initial Order Quantity
box_options_sola_multicast_hsvf_v1_8.initial_order_quantity.size = 8

-- Display: Initial Order Quantity
box_options_sola_multicast_hsvf_v1_8.initial_order_quantity.display = function(value)
  return "Initial Order Quantity: "..value
end

-- Dissect: Initial Order Quantity
box_options_sola_multicast_hsvf_v1_8.initial_order_quantity.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.initial_order_quantity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.initial_order_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.initial_order_quantity, range, value, display)

  return offset + length, value
end

-- Initial Order Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.initial_order_price_fraction_indicator = {}

-- Size: Initial Order Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.initial_order_price_fraction_indicator.size = 1

-- Display: Initial Order Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.initial_order_price_fraction_indicator.display = function(value)
  return "Initial Order Price Fraction Indicator: "..value
end

-- Dissect: Initial Order Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.initial_order_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.initial_order_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.initial_order_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.initial_order_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Initial Order Price
box_options_sola_multicast_hsvf_v1_8.initial_order_price = {}

-- Size: Initial Order Price
box_options_sola_multicast_hsvf_v1_8.initial_order_price.size = 6

-- Display: Initial Order Price
box_options_sola_multicast_hsvf_v1_8.initial_order_price.display = function(value)
  return "Initial Order Price: "..value
end

-- Dissect: Initial Order Price
box_options_sola_multicast_hsvf_v1_8.initial_order_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.initial_order_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.initial_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.initial_order_price, range, value, display)

  return offset + length, value
end

-- Initial Order Price Sign
box_options_sola_multicast_hsvf_v1_8.initial_order_price_sign = {}

-- Size: Initial Order Price Sign
box_options_sola_multicast_hsvf_v1_8.initial_order_price_sign.size = 1

-- Display: Initial Order Price Sign
box_options_sola_multicast_hsvf_v1_8.initial_order_price_sign.display = function(value)
  if value == "+" then
    return "Initial Order Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Initial Order Price Sign: Negative (-)"
  end

  return "Initial Order Price Sign: Unknown("..value..")"
end

-- Dissect: Initial Order Price Sign
box_options_sola_multicast_hsvf_v1_8.initial_order_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.initial_order_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.initial_order_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.initial_order_price_sign, range, value, display)

  return offset + length, value
end

-- Complex Order Improvement Process Beginning Message Message
box_options_sola_multicast_hsvf_v1_8.complex_order_improvement_process_beginning_message_message = {}

-- Calculate size of: Complex Order Improvement Process Beginning Message Message
box_options_sola_multicast_hsvf_v1_8.complex_order_improvement_process_beginning_message_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.size

  index = index + box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.size

  index = index + box_options_sola_multicast_hsvf_v1_8.initial_order_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.initial_order_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.initial_order_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.initial_order_quantity.size

  index = index + box_options_sola_multicast_hsvf_v1_8.initial_order_side.size

  index = index + box_options_sola_multicast_hsvf_v1_8.improvement_phase_expiry_time.size

  index = index + box_options_sola_multicast_hsvf_v1_8.improvement_process_expiry_duration.size

  index = index + box_options_sola_multicast_hsvf_v1_8.minimum_quantity_for_improvement_order.size

  index = index + box_options_sola_multicast_hsvf_v1_8.percentage_assured_to_initial_order.size

  index = index + box_options_sola_multicast_hsvf_v1_8.auction_type.size

  return index
end

-- Display: Complex Order Improvement Process Beginning Message Message
box_options_sola_multicast_hsvf_v1_8.complex_order_improvement_process_beginning_message_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Improvement Process Beginning Message Message
box_options_sola_multicast_hsvf_v1_8.complex_order_improvement_process_beginning_message_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.dissect(buffer, index, packet, parent)

  -- Initial Order Price Sign: X
  index, initial_order_price_sign = box_options_sola_multicast_hsvf_v1_8.initial_order_price_sign.dissect(buffer, index, packet, parent)

  -- Initial Order Price: N
  index, initial_order_price = box_options_sola_multicast_hsvf_v1_8.initial_order_price.dissect(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.initial_order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Initial Order Quantity: X
  index, initial_order_quantity = box_options_sola_multicast_hsvf_v1_8.initial_order_quantity.dissect(buffer, index, packet, parent)

  -- Initial Order Side: A
  index, initial_order_side = box_options_sola_multicast_hsvf_v1_8.initial_order_side.dissect(buffer, index, packet, parent)

  -- Improvement Phase Expiry Time: A
  index, improvement_phase_expiry_time = box_options_sola_multicast_hsvf_v1_8.improvement_phase_expiry_time.dissect(buffer, index, packet, parent)

  -- Improvement Process Expiry Duration: N
  index, improvement_process_expiry_duration = box_options_sola_multicast_hsvf_v1_8.improvement_process_expiry_duration.dissect(buffer, index, packet, parent)

  -- Minimum Quantity For Improvement Order: n
  index, minimum_quantity_for_improvement_order = box_options_sola_multicast_hsvf_v1_8.minimum_quantity_for_improvement_order.dissect(buffer, index, packet, parent)

  -- Percentage Assured To Initial Order: X
  index, percentage_assured_to_initial_order = box_options_sola_multicast_hsvf_v1_8.percentage_assured_to_initial_order.dissect(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_options_sola_multicast_hsvf_v1_8.auction_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Improvement Process Beginning Message Message
box_options_sola_multicast_hsvf_v1_8.complex_order_improvement_process_beginning_message_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_order_improvement_process_beginning_message_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_improvement_process_beginning_message_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.complex_order_improvement_process_beginning_message_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.complex_order_improvement_process_beginning_message_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.complex_order_improvement_process_beginning_message_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Improvement Process Beginning Message
box_options_sola_multicast_hsvf_v1_8.option_improvement_process_beginning_message = {}

-- Calculate size of: Option Improvement Process Beginning Message
box_options_sola_multicast_hsvf_v1_8.option_improvement_process_beginning_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_description.size(buffer, offset + index)

  index = index + box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.size

  index = index + box_options_sola_multicast_hsvf_v1_8.initial_order_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.initial_order_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.initial_order_quantity.size

  index = index + box_options_sola_multicast_hsvf_v1_8.initial_order_side.size

  index = index + box_options_sola_multicast_hsvf_v1_8.improvement_phase_expiry_time.size

  index = index + box_options_sola_multicast_hsvf_v1_8.improvement_process_expiry_duration.size

  index = index + box_options_sola_multicast_hsvf_v1_8.minimum_quantity_for_improvement_order.size

  index = index + box_options_sola_multicast_hsvf_v1_8.percentage_assured_to_initial_order.size

  index = index + box_options_sola_multicast_hsvf_v1_8.auction_type.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_1.size

  return index
end

-- Display: Option Improvement Process Beginning Message
box_options_sola_multicast_hsvf_v1_8.option_improvement_process_beginning_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Improvement Process Beginning Message
box_options_sola_multicast_hsvf_v1_8.option_improvement_process_beginning_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_multicast_hsvf_v1_8.instrument_description.dissect(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_options_sola_multicast_hsvf_v1_8.improvement_phase_sequential_number.dissect(buffer, index, packet, parent)

  -- Initial Order Price: N
  index, initial_order_price = box_options_sola_multicast_hsvf_v1_8.initial_order_price.dissect(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.initial_order_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Initial Order Quantity: X
  index, initial_order_quantity = box_options_sola_multicast_hsvf_v1_8.initial_order_quantity.dissect(buffer, index, packet, parent)

  -- Initial Order Side: A
  index, initial_order_side = box_options_sola_multicast_hsvf_v1_8.initial_order_side.dissect(buffer, index, packet, parent)

  -- Improvement Phase Expiry Time: A
  index, improvement_phase_expiry_time = box_options_sola_multicast_hsvf_v1_8.improvement_phase_expiry_time.dissect(buffer, index, packet, parent)

  -- Improvement Process Expiry Duration: N
  index, improvement_process_expiry_duration = box_options_sola_multicast_hsvf_v1_8.improvement_process_expiry_duration.dissect(buffer, index, packet, parent)

  -- Minimum Quantity For Improvement Order: n
  index, minimum_quantity_for_improvement_order = box_options_sola_multicast_hsvf_v1_8.minimum_quantity_for_improvement_order.dissect(buffer, index, packet, parent)

  -- Percentage Assured To Initial Order: X
  index, percentage_assured_to_initial_order = box_options_sola_multicast_hsvf_v1_8.percentage_assured_to_initial_order.dissect(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_options_sola_multicast_hsvf_v1_8.auction_type.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_multicast_hsvf_v1_8.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Improvement Process Beginning Message
box_options_sola_multicast_hsvf_v1_8.option_improvement_process_beginning_message.dissect = function(buffer, offset, packet, parent)
  if show.option_improvement_process_beginning_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.option_improvement_process_beginning_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.option_improvement_process_beginning_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.option_improvement_process_beginning_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.option_improvement_process_beginning_message.fields(buffer, offset, packet, parent)
  end
end

-- Time
box_options_sola_multicast_hsvf_v1_8.time = {}

-- Size: Time
box_options_sola_multicast_hsvf_v1_8.time.size = 6

-- Display: Time
box_options_sola_multicast_hsvf_v1_8.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
box_options_sola_multicast_hsvf_v1_8.time.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.time, range, value, display)

  return offset + length, value
end

-- Reserved
box_options_sola_multicast_hsvf_v1_8.reserved = {}

-- Size: Reserved
box_options_sola_multicast_hsvf_v1_8.reserved.size = 1

-- Display: Reserved
box_options_sola_multicast_hsvf_v1_8.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
box_options_sola_multicast_hsvf_v1_8.reserved.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.reserved, range, value, display)

  return offset + length, value
end

-- End Of Sales Message
box_options_sola_multicast_hsvf_v1_8.end_of_sales_message = {}

-- Calculate size of: End Of Sales Message
box_options_sola_multicast_hsvf_v1_8.end_of_sales_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.reserved.size

  index = index + box_options_sola_multicast_hsvf_v1_8.time.size

  return index
end

-- Display: End Of Sales Message
box_options_sola_multicast_hsvf_v1_8.end_of_sales_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Sales Message
box_options_sola_multicast_hsvf_v1_8.end_of_sales_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: A
  index, reserved = box_options_sola_multicast_hsvf_v1_8.reserved.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = box_options_sola_multicast_hsvf_v1_8.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Sales Message
box_options_sola_multicast_hsvf_v1_8.end_of_sales_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_sales_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.end_of_sales_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.end_of_sales_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.end_of_sales_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.end_of_sales_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Complex Order Summary Message
box_options_sola_multicast_hsvf_v1_8.beginning_of_complex_order_summary_message = {}

-- Calculate size of: Beginning Of Complex Order Summary Message
box_options_sola_multicast_hsvf_v1_8.beginning_of_complex_order_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  return index
end

-- Display: Beginning Of Complex Order Summary Message
box_options_sola_multicast_hsvf_v1_8.beginning_of_complex_order_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Complex Order Summary Message
box_options_sola_multicast_hsvf_v1_8.beginning_of_complex_order_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Complex Order Summary Message
box_options_sola_multicast_hsvf_v1_8.beginning_of_complex_order_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.beginning_of_complex_order_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.beginning_of_complex_order_summary_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.beginning_of_complex_order_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.beginning_of_complex_order_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.beginning_of_complex_order_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Options Summary Message
box_options_sola_multicast_hsvf_v1_8.beginning_of_options_summary_message = {}

-- Calculate size of: Beginning Of Options Summary Message
box_options_sola_multicast_hsvf_v1_8.beginning_of_options_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  return index
end

-- Display: Beginning Of Options Summary Message
box_options_sola_multicast_hsvf_v1_8.beginning_of_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Options Summary Message
box_options_sola_multicast_hsvf_v1_8.beginning_of_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Options Summary Message
box_options_sola_multicast_hsvf_v1_8.beginning_of_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.beginning_of_options_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.beginning_of_options_summary_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.beginning_of_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.beginning_of_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.beginning_of_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Volume
box_options_sola_multicast_hsvf_v1_8.volume = {}

-- Size: Volume
box_options_sola_multicast_hsvf_v1_8.volume.size = 8

-- Display: Volume
box_options_sola_multicast_hsvf_v1_8.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
box_options_sola_multicast_hsvf_v1_8.volume.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.volume, range, value, display)

  return offset + length, value
end

-- Net Change Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator = {}

-- Size: Net Change Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator.size = 1

-- Display: Net Change Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator.display = function(value)
  return "Net Change Fraction Indicator: "..value
end

-- Dissect: Net Change Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.net_change_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Net Change
box_options_sola_multicast_hsvf_v1_8.net_change = {}

-- Size: Net Change
box_options_sola_multicast_hsvf_v1_8.net_change.size = 6

-- Display: Net Change
box_options_sola_multicast_hsvf_v1_8.net_change.display = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
box_options_sola_multicast_hsvf_v1_8.net_change.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.net_change.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.net_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.net_change, range, value, display)

  return offset + length, value
end

-- Net Change Sign
box_options_sola_multicast_hsvf_v1_8.net_change_sign = {}

-- Size: Net Change Sign
box_options_sola_multicast_hsvf_v1_8.net_change_sign.size = 1

-- Display: Net Change Sign
box_options_sola_multicast_hsvf_v1_8.net_change_sign.display = function(value)
  if value == "+" then
    return "Net Change Sign: Positive (+)"
  end
  if value == "-" then
    return "Net Change Sign: Negative (-)"
  end

  return "Net Change Sign: Unknown("..value..")"
end

-- Dissect: Net Change Sign
box_options_sola_multicast_hsvf_v1_8.net_change_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.net_change_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.net_change_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.net_change_sign, range, value, display)

  return offset + length, value
end

-- Low Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.low_price_fraction_indicator = {}

-- Size: Low Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.low_price_fraction_indicator.size = 1

-- Display: Low Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.low_price_fraction_indicator.display = function(value)
  return "Low Price Fraction Indicator: "..value
end

-- Dissect: Low Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.low_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.low_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.low_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.low_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Low Price
box_options_sola_multicast_hsvf_v1_8.low_price = {}

-- Size: Low Price
box_options_sola_multicast_hsvf_v1_8.low_price.size = 6

-- Display: Low Price
box_options_sola_multicast_hsvf_v1_8.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
box_options_sola_multicast_hsvf_v1_8.low_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.low_price, range, value, display)

  return offset + length, value
end

-- Low Price Sign
box_options_sola_multicast_hsvf_v1_8.low_price_sign = {}

-- Size: Low Price Sign
box_options_sola_multicast_hsvf_v1_8.low_price_sign.size = 1

-- Display: Low Price Sign
box_options_sola_multicast_hsvf_v1_8.low_price_sign.display = function(value)
  if value == "+" then
    return "Low Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Low Price Sign: Negative (-)"
  end

  return "Low Price Sign: Unknown("..value..")"
end

-- Dissect: Low Price Sign
box_options_sola_multicast_hsvf_v1_8.low_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.low_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.low_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.low_price_sign, range, value, display)

  return offset + length, value
end

-- High Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.high_price_fraction_indicator = {}

-- Size: High Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.high_price_fraction_indicator.size = 1

-- Display: High Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.high_price_fraction_indicator.display = function(value)
  return "High Price Fraction Indicator: "..value
end

-- Dissect: High Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.high_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.high_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.high_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.high_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- High Price
box_options_sola_multicast_hsvf_v1_8.high_price = {}

-- Size: High Price
box_options_sola_multicast_hsvf_v1_8.high_price.size = 6

-- Display: High Price
box_options_sola_multicast_hsvf_v1_8.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
box_options_sola_multicast_hsvf_v1_8.high_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.high_price, range, value, display)

  return offset + length, value
end

-- High Price Sign
box_options_sola_multicast_hsvf_v1_8.high_price_sign = {}

-- Size: High Price Sign
box_options_sola_multicast_hsvf_v1_8.high_price_sign.size = 1

-- Display: High Price Sign
box_options_sola_multicast_hsvf_v1_8.high_price_sign.display = function(value)
  if value == "+" then
    return "High Price Sign: Positive (+)"
  end
  if value == "-" then
    return "High Price Sign: Negative (-)"
  end

  return "High Price Sign: Unknown("..value..")"
end

-- Dissect: High Price Sign
box_options_sola_multicast_hsvf_v1_8.high_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.high_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.high_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.high_price_sign, range, value, display)

  return offset + length, value
end

-- Open Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.open_price_fraction_indicator = {}

-- Size: Open Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.open_price_fraction_indicator.size = 1

-- Display: Open Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.open_price_fraction_indicator.display = function(value)
  return "Open Price Fraction Indicator: "..value
end

-- Dissect: Open Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.open_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.open_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.open_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.open_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Open Price
box_options_sola_multicast_hsvf_v1_8.open_price = {}

-- Size: Open Price
box_options_sola_multicast_hsvf_v1_8.open_price.size = 6

-- Display: Open Price
box_options_sola_multicast_hsvf_v1_8.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
box_options_sola_multicast_hsvf_v1_8.open_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.open_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.open_price, range, value, display)

  return offset + length, value
end

-- Open Price Sign
box_options_sola_multicast_hsvf_v1_8.open_price_sign = {}

-- Size: Open Price Sign
box_options_sola_multicast_hsvf_v1_8.open_price_sign.size = 1

-- Display: Open Price Sign
box_options_sola_multicast_hsvf_v1_8.open_price_sign.display = function(value)
  if value == "+" then
    return "Open Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Open Price Sign: Negative (-)"
  end

  return "Open Price Sign: Unknown("..value..")"
end

-- Dissect: Open Price Sign
box_options_sola_multicast_hsvf_v1_8.open_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.open_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.open_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.open_price_sign, range, value, display)

  return offset + length, value
end

-- Last Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.last_price_fraction_indicator = {}

-- Size: Last Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.last_price_fraction_indicator.size = 1

-- Display: Last Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.last_price_fraction_indicator.display = function(value)
  return "Last Price Fraction Indicator: "..value
end

-- Dissect: Last Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.last_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.last_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.last_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.last_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Last Price
box_options_sola_multicast_hsvf_v1_8.last_price = {}

-- Size: Last Price
box_options_sola_multicast_hsvf_v1_8.last_price.size = 6

-- Display: Last Price
box_options_sola_multicast_hsvf_v1_8.last_price.display = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
box_options_sola_multicast_hsvf_v1_8.last_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.last_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Price Sign
box_options_sola_multicast_hsvf_v1_8.last_price_sign = {}

-- Size: Last Price Sign
box_options_sola_multicast_hsvf_v1_8.last_price_sign.size = 1

-- Display: Last Price Sign
box_options_sola_multicast_hsvf_v1_8.last_price_sign.display = function(value)
  return "Last Price Sign: "..value
end

-- Dissect: Last Price Sign
box_options_sola_multicast_hsvf_v1_8.last_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.last_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.last_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.last_price_sign, range, value, display)

  return offset + length, value
end

-- Ask Size
box_options_sola_multicast_hsvf_v1_8.ask_size = {}

-- Size: Ask Size
box_options_sola_multicast_hsvf_v1_8.ask_size.size = 5

-- Display: Ask Size
box_options_sola_multicast_hsvf_v1_8.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
box_options_sola_multicast_hsvf_v1_8.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.ask_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator = {}

-- Size: Ask Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.size = 1

-- Display: Ask Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.display = function(value)
  return "Ask Price Fraction Indicator: "..value
end

-- Dissect: Ask Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.ask_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Ask Price
box_options_sola_multicast_hsvf_v1_8.ask_price = {}

-- Size: Ask Price
box_options_sola_multicast_hsvf_v1_8.ask_price.size = 6

-- Display: Ask Price
box_options_sola_multicast_hsvf_v1_8.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
box_options_sola_multicast_hsvf_v1_8.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.ask_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Price Sign
box_options_sola_multicast_hsvf_v1_8.ask_price_sign = {}

-- Size: Ask Price Sign
box_options_sola_multicast_hsvf_v1_8.ask_price_sign.size = 1

-- Display: Ask Price Sign
box_options_sola_multicast_hsvf_v1_8.ask_price_sign.display = function(value)
  if value == "+" then
    return "Ask Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Ask Price Sign: Negative (-)"
  end

  return "Ask Price Sign: Unknown("..value..")"
end

-- Dissect: Ask Price Sign
box_options_sola_multicast_hsvf_v1_8.ask_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.ask_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.ask_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.ask_price_sign, range, value, display)

  return offset + length, value
end

-- Bid Size
box_options_sola_multicast_hsvf_v1_8.bid_size = {}

-- Size: Bid Size
box_options_sola_multicast_hsvf_v1_8.bid_size.size = 5

-- Display: Bid Size
box_options_sola_multicast_hsvf_v1_8.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
box_options_sola_multicast_hsvf_v1_8.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.bid_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator = {}

-- Size: Bid Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.size = 1

-- Display: Bid Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.display = function(value)
  return "Bid Price Fraction Indicator: "..value
end

-- Dissect: Bid Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.bid_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Bid Price
box_options_sola_multicast_hsvf_v1_8.bid_price = {}

-- Size: Bid Price
box_options_sola_multicast_hsvf_v1_8.bid_price.size = 6

-- Display: Bid Price
box_options_sola_multicast_hsvf_v1_8.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
box_options_sola_multicast_hsvf_v1_8.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.bid_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Price Sign
box_options_sola_multicast_hsvf_v1_8.bid_price_sign = {}

-- Size: Bid Price Sign
box_options_sola_multicast_hsvf_v1_8.bid_price_sign.size = 1

-- Display: Bid Price Sign
box_options_sola_multicast_hsvf_v1_8.bid_price_sign.display = function(value)
  return "Bid Price Sign: "..value
end

-- Dissect: Bid Price Sign
box_options_sola_multicast_hsvf_v1_8.bid_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.bid_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.bid_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.bid_price_sign, range, value, display)

  return offset + length, value
end

-- Complex Order Summary Message
box_options_sola_multicast_hsvf_v1_8.complex_order_summary_message = {}

-- Calculate size of: Complex Order Summary Message
box_options_sola_multicast_hsvf_v1_8.complex_order_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.last_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.last_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.last_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.open_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.open_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.open_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.high_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.high_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.high_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.low_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.low_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.low_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.net_change_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.net_change.size

  index = index + box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.volume.size

  return index
end

-- Display: Complex Order Summary Message
box_options_sola_multicast_hsvf_v1_8.complex_order_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Summary Message
box_options_sola_multicast_hsvf_v1_8.complex_order_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = box_options_sola_multicast_hsvf_v1_8.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = box_options_sola_multicast_hsvf_v1_8.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: n
  index, bid_size = box_options_sola_multicast_hsvf_v1_8.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = box_options_sola_multicast_hsvf_v1_8.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = box_options_sola_multicast_hsvf_v1_8.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: N
  index, ask_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: n
  index, ask_size = box_options_sola_multicast_hsvf_v1_8.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price Sign: X
  index, last_price_sign = box_options_sola_multicast_hsvf_v1_8.last_price_sign.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = box_options_sola_multicast_hsvf_v1_8.last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price Sign: X
  index, open_price_sign = box_options_sola_multicast_hsvf_v1_8.open_price_sign.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = box_options_sola_multicast_hsvf_v1_8.open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price Sign: X
  index, high_price_sign = box_options_sola_multicast_hsvf_v1_8.high_price_sign.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = box_options_sola_multicast_hsvf_v1_8.high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price Sign: X
  index, low_price_sign = box_options_sola_multicast_hsvf_v1_8.low_price_sign.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = box_options_sola_multicast_hsvf_v1_8.low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = box_options_sola_multicast_hsvf_v1_8.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = box_options_sola_multicast_hsvf_v1_8.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_options_sola_multicast_hsvf_v1_8.volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Summary Message
box_options_sola_multicast_hsvf_v1_8.complex_order_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_order_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_summary_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.complex_order_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.complex_order_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.complex_order_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Reference Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.reference_price_fraction_indicator = {}

-- Size: Reference Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.reference_price_fraction_indicator.size = 1

-- Display: Reference Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.reference_price_fraction_indicator.display = function(value)
  return "Reference Price Fraction Indicator: "..value
end

-- Dissect: Reference Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.reference_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.reference_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.reference_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.reference_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Reference Price
box_options_sola_multicast_hsvf_v1_8.reference_price = {}

-- Size: Reference Price
box_options_sola_multicast_hsvf_v1_8.reference_price.size = 6

-- Display: Reference Price
box_options_sola_multicast_hsvf_v1_8.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
box_options_sola_multicast_hsvf_v1_8.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.reference_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
box_options_sola_multicast_hsvf_v1_8.underlying_symbol = {}

-- Size: Underlying Symbol
box_options_sola_multicast_hsvf_v1_8.underlying_symbol.size = 10

-- Display: Underlying Symbol
box_options_sola_multicast_hsvf_v1_8.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
box_options_sola_multicast_hsvf_v1_8.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_multicast_hsvf_v1_8.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Type Of Options
box_options_sola_multicast_hsvf_v1_8.type_of_options = {}

-- Size: Type Of Options
box_options_sola_multicast_hsvf_v1_8.type_of_options.size = 1

-- Display: Type Of Options
box_options_sola_multicast_hsvf_v1_8.type_of_options.display = function(value)
  if value == " " then
    return "Type Of Options: Regular (<whitespace>)"
  end

  return "Type Of Options: Unknown("..value..")"
end

-- Dissect: Type Of Options
box_options_sola_multicast_hsvf_v1_8.type_of_options.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.type_of_options.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.type_of_options.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.type_of_options, range, value, display)

  return offset + length, value
end

-- Type Of Market
box_options_sola_multicast_hsvf_v1_8.type_of_market = {}

-- Size: Type Of Market
box_options_sola_multicast_hsvf_v1_8.type_of_market.size = 1

-- Display: Type Of Market
box_options_sola_multicast_hsvf_v1_8.type_of_market.display = function(value)
  return "Type Of Market: "..value
end

-- Dissect: Type Of Market
box_options_sola_multicast_hsvf_v1_8.type_of_market.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.type_of_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.type_of_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.type_of_market, range, value, display)

  return offset + length, value
end

-- Option Marker
box_options_sola_multicast_hsvf_v1_8.option_marker = {}

-- Calculate size of: Option Marker
box_options_sola_multicast_hsvf_v1_8.option_marker.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.type_of_market.size

  index = index + box_options_sola_multicast_hsvf_v1_8.type_of_options.size

  return index
end

-- Display: Option Marker
box_options_sola_multicast_hsvf_v1_8.option_marker.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Marker
box_options_sola_multicast_hsvf_v1_8.option_marker.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Type Of Market: A
  index, type_of_market = box_options_sola_multicast_hsvf_v1_8.type_of_market.dissect(buffer, index, packet, parent)

  -- Type Of Options: A
  index, type_of_options = box_options_sola_multicast_hsvf_v1_8.type_of_options.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Marker
box_options_sola_multicast_hsvf_v1_8.option_marker.dissect = function(buffer, offset, packet, parent)
  if show.option_marker then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.option_marker, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.option_marker.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.option_marker.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.option_marker.fields(buffer, offset, packet, parent)
  end
end

-- Tick
box_options_sola_multicast_hsvf_v1_8.tick = {}

-- Size: Tick
box_options_sola_multicast_hsvf_v1_8.tick.size = 1

-- Display: Tick
box_options_sola_multicast_hsvf_v1_8.tick.display = function(value)
  if value == "+" then
    return "Tick: Uptick (+)"
  end
  if value == "-" then
    return "Tick: Downtick (-)"
  end

  return "Tick: Unknown("..value..")"
end

-- Dissect: Tick
box_options_sola_multicast_hsvf_v1_8.tick.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.tick.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.tick, range, value, display)

  return offset + length, value
end

-- Open Interest
box_options_sola_multicast_hsvf_v1_8.open_interest = {}

-- Size: Open Interest
box_options_sola_multicast_hsvf_v1_8.open_interest.size = 7

-- Display: Open Interest
box_options_sola_multicast_hsvf_v1_8.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
box_options_sola_multicast_hsvf_v1_8.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.open_interest.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Option Summary Message
box_options_sola_multicast_hsvf_v1_8.option_summary_message = {}

-- Calculate size of: Option Summary Message
box_options_sola_multicast_hsvf_v1_8.option_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_description.size(buffer, offset + index)

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.last_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.last_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.open_interest.size

  index = index + box_options_sola_multicast_hsvf_v1_8.tick.size

  index = index + box_options_sola_multicast_hsvf_v1_8.volume.size

  index = index + box_options_sola_multicast_hsvf_v1_8.net_change_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.net_change.size

  index = index + box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.open_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.open_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.high_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.high_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.low_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.low_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.option_marker.size(buffer, offset + index)

  index = index + box_options_sola_multicast_hsvf_v1_8.underlying_symbol.size

  index = index + box_options_sola_multicast_hsvf_v1_8.reference_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.reference_price_fraction_indicator.size

  return index
end

-- Display: Option Summary Message
box_options_sola_multicast_hsvf_v1_8.option_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Summary Message
box_options_sola_multicast_hsvf_v1_8.option_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_multicast_hsvf_v1_8.instrument_description.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = box_options_sola_multicast_hsvf_v1_8.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: n
  index, bid_size = box_options_sola_multicast_hsvf_v1_8.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = box_options_sola_multicast_hsvf_v1_8.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: N
  index, ask_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: n
  index, ask_size = box_options_sola_multicast_hsvf_v1_8.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = box_options_sola_multicast_hsvf_v1_8.last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: n
  index, open_interest = box_options_sola_multicast_hsvf_v1_8.open_interest.dissect(buffer, index, packet, parent)

  -- Tick: X
  index, tick = box_options_sola_multicast_hsvf_v1_8.tick.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_options_sola_multicast_hsvf_v1_8.volume.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = box_options_sola_multicast_hsvf_v1_8.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = box_options_sola_multicast_hsvf_v1_8.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = box_options_sola_multicast_hsvf_v1_8.open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = box_options_sola_multicast_hsvf_v1_8.high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = box_options_sola_multicast_hsvf_v1_8.low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Marker: Struct of 2 fields
  index, option_marker = box_options_sola_multicast_hsvf_v1_8.option_marker.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: x
  index, underlying_symbol = box_options_sola_multicast_hsvf_v1_8.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Reference Price: N
  index, reference_price = box_options_sola_multicast_hsvf_v1_8.reference_price.dissect(buffer, index, packet, parent)

  -- Reference Price Fraction Indicator: X
  index, reference_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.reference_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Summary Message
box_options_sola_multicast_hsvf_v1_8.option_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.option_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.option_summary_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.option_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.option_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.option_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Continue Marker
box_options_sola_multicast_hsvf_v1_8.continue_marker = {}

-- Size: Continue Marker
box_options_sola_multicast_hsvf_v1_8.continue_marker.size = 1

-- Display: Continue Marker
box_options_sola_multicast_hsvf_v1_8.continue_marker.display = function(value)
  if value == "0" then
    return "Continue Marker: Bulletin Continues In Next Record (0)"
  end
  if value == "1" then
    return "Continue Marker: Bulletin Ended (1)"
  end

  return "Continue Marker: Unknown("..value..")"
end

-- Dissect: Continue Marker
box_options_sola_multicast_hsvf_v1_8.continue_marker.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.continue_marker.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.continue_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.continue_marker, range, value, display)

  return offset + length, value
end

-- Bulletin Contents
box_options_sola_multicast_hsvf_v1_8.bulletin_contents = {}

-- Size: Bulletin Contents
box_options_sola_multicast_hsvf_v1_8.bulletin_contents.size = 79

-- Display: Bulletin Contents
box_options_sola_multicast_hsvf_v1_8.bulletin_contents.display = function(value)
  return "Bulletin Contents: "..value
end

-- Dissect: Bulletin Contents
box_options_sola_multicast_hsvf_v1_8.bulletin_contents.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.bulletin_contents.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_multicast_hsvf_v1_8.bulletin_contents.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.bulletin_contents, range, value, display)

  return offset + length, value
end

-- Bulletin Type
box_options_sola_multicast_hsvf_v1_8.bulletin_type = {}

-- Size: Bulletin Type
box_options_sola_multicast_hsvf_v1_8.bulletin_type.size = 1

-- Display: Bulletin Type
box_options_sola_multicast_hsvf_v1_8.bulletin_type.display = function(value)
  if value == "1" then
    return "Bulletin Type: Regular (1)"
  end
  if value == "2" then
    return "Bulletin Type: Special (2)"
  end

  return "Bulletin Type: Unknown("..value..")"
end

-- Dissect: Bulletin Type
box_options_sola_multicast_hsvf_v1_8.bulletin_type.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.bulletin_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.bulletin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.bulletin_type, range, value, display)

  return offset + length, value
end

-- Bulletins Message
box_options_sola_multicast_hsvf_v1_8.bulletins_message = {}

-- Calculate size of: Bulletins Message
box_options_sola_multicast_hsvf_v1_8.bulletins_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_1.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bulletin_type.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bulletin_contents.size

  index = index + box_options_sola_multicast_hsvf_v1_8.continue_marker.size

  return index
end

-- Display: Bulletins Message
box_options_sola_multicast_hsvf_v1_8.bulletins_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulletins Message
box_options_sola_multicast_hsvf_v1_8.bulletins_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_multicast_hsvf_v1_8.filler_1.dissect(buffer, index, packet, parent)

  -- Bulletin Type: X
  index, bulletin_type = box_options_sola_multicast_hsvf_v1_8.bulletin_type.dissect(buffer, index, packet, parent)

  -- Bulletin Contents: x
  index, bulletin_contents = box_options_sola_multicast_hsvf_v1_8.bulletin_contents.dissect(buffer, index, packet, parent)

  -- Continue Marker: N
  index, continue_marker = box_options_sola_multicast_hsvf_v1_8.continue_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulletins Message
box_options_sola_multicast_hsvf_v1_8.bulletins_message.dissect = function(buffer, offset, packet, parent)
  if show.bulletins_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.bulletins_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.bulletins_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.bulletins_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.bulletins_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Symbol
box_options_sola_multicast_hsvf_v1_8.leg_symbol = {}

-- Size: Leg Symbol
box_options_sola_multicast_hsvf_v1_8.leg_symbol.size = 30

-- Display: Leg Symbol
box_options_sola_multicast_hsvf_v1_8.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
box_options_sola_multicast_hsvf_v1_8.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.leg_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_multicast_hsvf_v1_8.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Leg Ratio
box_options_sola_multicast_hsvf_v1_8.leg_ratio = {}

-- Size: Leg Ratio
box_options_sola_multicast_hsvf_v1_8.leg_ratio.size = 8

-- Display: Leg Ratio
box_options_sola_multicast_hsvf_v1_8.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
box_options_sola_multicast_hsvf_v1_8.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.leg_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Ratio Sign
box_options_sola_multicast_hsvf_v1_8.leg_ratio_sign = {}

-- Size: Leg Ratio Sign
box_options_sola_multicast_hsvf_v1_8.leg_ratio_sign.size = 1

-- Display: Leg Ratio Sign
box_options_sola_multicast_hsvf_v1_8.leg_ratio_sign.display = function(value)
  if value == "+" then
    return "Leg Ratio Sign: Positive (+)"
  end
  if value == "-" then
    return "Leg Ratio Sign: Negative (-)"
  end

  return "Leg Ratio Sign: Unknown("..value..")"
end

-- Dissect: Leg Ratio Sign
box_options_sola_multicast_hsvf_v1_8.leg_ratio_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.leg_ratio_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.leg_ratio_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.leg_ratio_sign, range, value, display)

  return offset + length, value
end

-- Instrument Leg
box_options_sola_multicast_hsvf_v1_8.instrument_leg = {}

-- Calculate size of: Instrument Leg
box_options_sola_multicast_hsvf_v1_8.instrument_leg.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.leg_ratio_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.leg_ratio.size

  index = index + box_options_sola_multicast_hsvf_v1_8.leg_symbol.size

  return index
end

-- Display: Instrument Leg
box_options_sola_multicast_hsvf_v1_8.instrument_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Leg
box_options_sola_multicast_hsvf_v1_8.instrument_leg.fields = function(buffer, offset, packet, parent, instrument_leg_index)
  local index = offset

  -- Implicit Instrument Leg Index
  if instrument_leg_index ~= nil then
    local iteration = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.instrument_leg_index, instrument_leg_index)
    iteration:set_generated()
  end

  -- Leg Ratio Sign: X
  index, leg_ratio_sign = box_options_sola_multicast_hsvf_v1_8.leg_ratio_sign.dissect(buffer, index, packet, parent)

  -- Leg Ratio: N
  index, leg_ratio = box_options_sola_multicast_hsvf_v1_8.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Symbol: x
  index, leg_symbol = box_options_sola_multicast_hsvf_v1_8.leg_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Leg
box_options_sola_multicast_hsvf_v1_8.instrument_leg.dissect = function(buffer, offset, packet, parent, instrument_leg_index)
  if show.instrument_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.instrument_leg, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.instrument_leg.fields(buffer, offset, packet, parent, instrument_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.instrument_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.instrument_leg.fields(buffer, offset, packet, parent, instrument_leg_index)
  end
end

-- Number Of Legs
box_options_sola_multicast_hsvf_v1_8.number_of_legs = {}

-- Size: Number Of Legs
box_options_sola_multicast_hsvf_v1_8.number_of_legs.size = 2

-- Display: Number Of Legs
box_options_sola_multicast_hsvf_v1_8.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
box_options_sola_multicast_hsvf_v1_8.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.number_of_legs.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Complex Order Instrument Allow Implied
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_allow_implied = {}

-- Size: Complex Order Instrument Allow Implied
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_allow_implied.size = 1

-- Display: Complex Order Instrument Allow Implied
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_allow_implied.display = function(value)
  if value == "N" then
    return "Complex Order Instrument Allow Implied: No (N)"
  end
  if value == "C" then
    return "Complex Order Instrument Allow Implied: Continuous Implied (C)"
  end
  if value == "S" then
    return "Complex Order Instrument Allow Implied: Snapshot Implied (S)"
  end

  return "Complex Order Instrument Allow Implied: Unknown("..value..")"
end

-- Dissect: Complex Order Instrument Allow Implied
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_allow_implied.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_allow_implied.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_allow_implied.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_instrument_allow_implied, range, value, display)

  return offset + length, value
end

-- Instrument External Code
box_options_sola_multicast_hsvf_v1_8.instrument_external_code = {}

-- Size: Instrument External Code
box_options_sola_multicast_hsvf_v1_8.instrument_external_code.size = 30

-- Display: Instrument External Code
box_options_sola_multicast_hsvf_v1_8.instrument_external_code.display = function(value)
  return "Instrument External Code: "..value
end

-- Dissect: Instrument External Code
box_options_sola_multicast_hsvf_v1_8.instrument_external_code.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.instrument_external_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_multicast_hsvf_v1_8.instrument_external_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.instrument_external_code, range, value, display)

  return offset + length, value
end

-- Instrument
box_options_sola_multicast_hsvf_v1_8.instrument = {}

-- Size: Instrument
box_options_sola_multicast_hsvf_v1_8.instrument.size = 4

-- Display: Instrument
box_options_sola_multicast_hsvf_v1_8.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
box_options_sola_multicast_hsvf_v1_8.instrument.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.instrument, range, value, display)

  return offset + length, value
end

-- Group
box_options_sola_multicast_hsvf_v1_8.group = {}

-- Size: Group
box_options_sola_multicast_hsvf_v1_8.group.size = 2

-- Display: Group
box_options_sola_multicast_hsvf_v1_8.group.display = function(value)
  return "Group: "..value
end

-- Dissect: Group
box_options_sola_multicast_hsvf_v1_8.group.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.group.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.group, range, value, display)

  return offset + length, value
end

-- Filler 2
box_options_sola_multicast_hsvf_v1_8.filler_2 = {}

-- Size: Filler 2
box_options_sola_multicast_hsvf_v1_8.filler_2.size = 2

-- Display: Filler 2
box_options_sola_multicast_hsvf_v1_8.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
box_options_sola_multicast_hsvf_v1_8.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.filler_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Tick Increment Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.tick_increment_fraction_indicator = {}

-- Size: Tick Increment Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.tick_increment_fraction_indicator.size = 1

-- Display: Tick Increment Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.tick_increment_fraction_indicator.display = function(value)
  return "Tick Increment Fraction Indicator: "..value
end

-- Dissect: Tick Increment Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.tick_increment_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.tick_increment_fraction_indicator.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.tick_increment_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.tick_increment_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Tick Increment
box_options_sola_multicast_hsvf_v1_8.tick_increment = {}

-- Size: Tick Increment
box_options_sola_multicast_hsvf_v1_8.tick_increment.size = 6

-- Display: Tick Increment
box_options_sola_multicast_hsvf_v1_8.tick_increment.display = function(value)
  return "Tick Increment: "..value
end

-- Dissect: Tick Increment
box_options_sola_multicast_hsvf_v1_8.tick_increment.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.tick_increment.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.tick_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.tick_increment, range, value, display)

  return offset + length, value
end

-- Min Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.min_threshold_price_fraction_indicator = {}

-- Size: Min Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.min_threshold_price_fraction_indicator.size = 1

-- Display: Min Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.min_threshold_price_fraction_indicator.display = function(value)
  return "Min Threshold Price Fraction Indicator: "..value
end

-- Dissect: Min Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.min_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.min_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.min_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.min_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Min Threshold Price
box_options_sola_multicast_hsvf_v1_8.min_threshold_price = {}

-- Size: Min Threshold Price
box_options_sola_multicast_hsvf_v1_8.min_threshold_price.size = 6

-- Display: Min Threshold Price
box_options_sola_multicast_hsvf_v1_8.min_threshold_price.display = function(value)
  return "Min Threshold Price: "..value
end

-- Dissect: Min Threshold Price
box_options_sola_multicast_hsvf_v1_8.min_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.min_threshold_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.min_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.min_threshold_price, range, value, display)

  return offset + length, value
end

-- Min Threshold Price Sign
box_options_sola_multicast_hsvf_v1_8.min_threshold_price_sign = {}

-- Size: Min Threshold Price Sign
box_options_sola_multicast_hsvf_v1_8.min_threshold_price_sign.size = 1

-- Display: Min Threshold Price Sign
box_options_sola_multicast_hsvf_v1_8.min_threshold_price_sign.display = function(value)
  if value == "+" then
    return "Min Threshold Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Min Threshold Price Sign: Negative (-)"
  end

  return "Min Threshold Price Sign: Unknown("..value..")"
end

-- Dissect: Min Threshold Price Sign
box_options_sola_multicast_hsvf_v1_8.min_threshold_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.min_threshold_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.min_threshold_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.min_threshold_price_sign, range, value, display)

  return offset + length, value
end

-- Max Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.max_threshold_price_fraction_indicator = {}

-- Size: Max Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.max_threshold_price_fraction_indicator.size = 1

-- Display: Max Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.max_threshold_price_fraction_indicator.display = function(value)
  return "Max Threshold Price Fraction Indicator: "..value
end

-- Dissect: Max Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.max_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.max_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.max_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.max_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Max Threshold Price
box_options_sola_multicast_hsvf_v1_8.max_threshold_price = {}

-- Size: Max Threshold Price
box_options_sola_multicast_hsvf_v1_8.max_threshold_price.size = 6

-- Display: Max Threshold Price
box_options_sola_multicast_hsvf_v1_8.max_threshold_price.display = function(value)
  return "Max Threshold Price: "..value
end

-- Dissect: Max Threshold Price
box_options_sola_multicast_hsvf_v1_8.max_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.max_threshold_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.max_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.max_threshold_price, range, value, display)

  return offset + length, value
end

-- Max Threshold Price Sign
box_options_sola_multicast_hsvf_v1_8.max_threshold_price_sign = {}

-- Size: Max Threshold Price Sign
box_options_sola_multicast_hsvf_v1_8.max_threshold_price_sign.size = 1

-- Display: Max Threshold Price Sign
box_options_sola_multicast_hsvf_v1_8.max_threshold_price_sign.display = function(value)
  if value == "+" then
    return "Max Threshold Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Max Threshold Price Sign: Negative (-)"
  end

  return "Max Threshold Price Sign: Unknown("..value..")"
end

-- Dissect: Max Threshold Price Sign
box_options_sola_multicast_hsvf_v1_8.max_threshold_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.max_threshold_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.max_threshold_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.max_threshold_price_sign, range, value, display)

  return offset + length, value
end

-- Min Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.min_number_of_contracts_per_order = {}

-- Size: Min Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.min_number_of_contracts_per_order.size = 6

-- Display: Min Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.min_number_of_contracts_per_order.display = function(value)
  return "Min Number Of Contracts Per Order: "..value
end

-- Dissect: Min Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.min_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.min_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.min_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.min_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Max Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.max_number_of_contracts_per_order = {}

-- Size: Max Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.max_number_of_contracts_per_order.size = 6

-- Display: Max Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.max_number_of_contracts_per_order.display = function(value)
  return "Max Number Of Contracts Per Order: "..value
end

-- Dissect: Max Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.max_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.max_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.max_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.max_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Delivery Month
box_options_sola_multicast_hsvf_v1_8.delivery_month = {}

-- Size: Delivery Month
box_options_sola_multicast_hsvf_v1_8.delivery_month.size = 1

-- Display: Delivery Month
box_options_sola_multicast_hsvf_v1_8.delivery_month.display = function(value)
  if value == "M" then
    return "Delivery Month: January Put (M)"
  end
  if value == "N" then
    return "Delivery Month: February Put (N)"
  end
  if value == "O" then
    return "Delivery Month: March Put (O)"
  end
  if value == "P" then
    return "Delivery Month: April Put (P)"
  end
  if value == "Q" then
    return "Delivery Month: May Put (Q)"
  end
  if value == "R" then
    return "Delivery Month: June Put (R)"
  end
  if value == "S" then
    return "Delivery Month: July Put (S)"
  end
  if value == "T" then
    return "Delivery Month: August Put (T)"
  end
  if value == "U" then
    return "Delivery Month: September Put (U)"
  end
  if value == "V" then
    return "Delivery Month: October Put (V)"
  end
  if value == "W" then
    return "Delivery Month: November Put (W)"
  end

  return "Delivery Month: Unknown("..value..")"
end

-- Dissect: Delivery Month
box_options_sola_multicast_hsvf_v1_8.delivery_month.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.delivery_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.delivery_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.delivery_month, range, value, display)

  return offset + length, value
end

-- Complex Order Instrument Keys Message
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_keys_message = {}

-- Calculate size of: Complex Order Instrument Keys Message
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.size

  index = index + box_options_sola_multicast_hsvf_v1_8.expiry_year.size

  index = index + box_options_sola_multicast_hsvf_v1_8.delivery_month.size

  index = index + box_options_sola_multicast_hsvf_v1_8.expiry_day.size

  index = index + box_options_sola_multicast_hsvf_v1_8.max_number_of_contracts_per_order.size

  index = index + box_options_sola_multicast_hsvf_v1_8.min_number_of_contracts_per_order.size

  index = index + box_options_sola_multicast_hsvf_v1_8.max_threshold_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.max_threshold_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.max_threshold_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.min_threshold_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.min_threshold_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.min_threshold_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.tick_increment.size

  index = index + box_options_sola_multicast_hsvf_v1_8.tick_increment_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_2.size

  index = index + box_options_sola_multicast_hsvf_v1_8.group.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_external_code.size

  index = index + box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_allow_implied.size

  index = index + box_options_sola_multicast_hsvf_v1_8.number_of_legs.size

  -- Calculate field size from count
  local instrument_leg_count = buffer(offset + index - 2, 2):string()
  index = index + instrument_leg_count * 39

  return index
end

-- Display: Complex Order Instrument Keys Message
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Instrument Keys Message
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = box_options_sola_multicast_hsvf_v1_8.expiry_year.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = box_options_sola_multicast_hsvf_v1_8.delivery_month.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = box_options_sola_multicast_hsvf_v1_8.expiry_day.dissect(buffer, index, packet, parent)

  -- Max Number Of Contracts Per Order: n
  index, max_number_of_contracts_per_order = box_options_sola_multicast_hsvf_v1_8.max_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Min Number Of Contracts Per Order: n
  index, min_number_of_contracts_per_order = box_options_sola_multicast_hsvf_v1_8.min_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Max Threshold Price Sign: X
  index, max_threshold_price_sign = box_options_sola_multicast_hsvf_v1_8.max_threshold_price_sign.dissect(buffer, index, packet, parent)

  -- Max Threshold Price: n
  index, max_threshold_price = box_options_sola_multicast_hsvf_v1_8.max_threshold_price.dissect(buffer, index, packet, parent)

  -- Max Threshold Price Fraction Indicator: X
  index, max_threshold_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.max_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Min Threshold Price Sign: X
  index, min_threshold_price_sign = box_options_sola_multicast_hsvf_v1_8.min_threshold_price_sign.dissect(buffer, index, packet, parent)

  -- Min Threshold Price: n
  index, min_threshold_price = box_options_sola_multicast_hsvf_v1_8.min_threshold_price.dissect(buffer, index, packet, parent)

  -- Min Threshold Price Fraction Indicator: X
  index, min_threshold_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.min_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = box_options_sola_multicast_hsvf_v1_8.tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 2: X
  index, filler_2 = box_options_sola_multicast_hsvf_v1_8.filler_2.dissect(buffer, index, packet, parent)

  -- Group: X
  index, group = box_options_sola_multicast_hsvf_v1_8.group.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = box_options_sola_multicast_hsvf_v1_8.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: x
  index, instrument_external_code = box_options_sola_multicast_hsvf_v1_8.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Allow Implied: A
  index, complex_order_instrument_allow_implied = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_allow_implied.dissect(buffer, index, packet, parent)

  -- Number Of Legs: N
  index, number_of_legs = box_options_sola_multicast_hsvf_v1_8.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Instrument Leg
  for instrument_leg_index = 1, number_of_legs do
    index, instrument_leg = box_options_sola_multicast_hsvf_v1_8.instrument_leg.dissect(buffer, index, packet, parent, instrument_leg_index)
  end

  return index
end

-- Dissect: Complex Order Instrument Keys Message
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_order_instrument_keys_message then
    local length = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_keys_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_keys_message.display(buffer, packet, parent)
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_instrument_keys_message, range, display)
  end

  return box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_keys_message.fields(buffer, offset, packet, parent)
end

-- Underlying Symbol Root
box_options_sola_multicast_hsvf_v1_8.underlying_symbol_root = {}

-- Size: Underlying Symbol Root
box_options_sola_multicast_hsvf_v1_8.underlying_symbol_root.size = 10

-- Display: Underlying Symbol Root
box_options_sola_multicast_hsvf_v1_8.underlying_symbol_root.display = function(value)
  return "Underlying Symbol Root: "..value
end

-- Dissect: Underlying Symbol Root
box_options_sola_multicast_hsvf_v1_8.underlying_symbol_root.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.underlying_symbol_root.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_multicast_hsvf_v1_8.underlying_symbol_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.underlying_symbol_root, range, value, display)

  return offset + length, value
end

-- Group Instrument
box_options_sola_multicast_hsvf_v1_8.group_instrument = {}

-- Size: Group Instrument
box_options_sola_multicast_hsvf_v1_8.group_instrument.size = 2

-- Display: Group Instrument
box_options_sola_multicast_hsvf_v1_8.group_instrument.display = function(value)
  return "Group Instrument: "..value
end

-- Dissect: Group Instrument
box_options_sola_multicast_hsvf_v1_8.group_instrument.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.group_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.group_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.group_instrument, range, value, display)

  return offset + length, value
end

-- Type Of Underlying
box_options_sola_multicast_hsvf_v1_8.type_of_underlying = {}

-- Size: Type Of Underlying
box_options_sola_multicast_hsvf_v1_8.type_of_underlying.size = 1

-- Display: Type Of Underlying
box_options_sola_multicast_hsvf_v1_8.type_of_underlying.display = function(value)
  if value == "X" then
    return "Type Of Underlying: Index (X)"
  end
  if value == "E" then
    return "Type Of Underlying: Equities (E)"
  end

  return "Type Of Underlying: Unknown("..value..")"
end

-- Dissect: Type Of Underlying
box_options_sola_multicast_hsvf_v1_8.type_of_underlying.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.type_of_underlying.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.type_of_underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.type_of_underlying, range, value, display)

  return offset + length, value
end

-- Type Of Instrument
box_options_sola_multicast_hsvf_v1_8.type_of_instrument = {}

-- Size: Type Of Instrument
box_options_sola_multicast_hsvf_v1_8.type_of_instrument.size = 1

-- Display: Type Of Instrument
box_options_sola_multicast_hsvf_v1_8.type_of_instrument.display = function(value)
  if value == "O" then
    return "Type Of Instrument: Options (O)"
  end
  if value == "L" then
    return "Type Of Instrument: Long Term (L)"
  end

  return "Type Of Instrument: Unknown("..value..")"
end

-- Dissect: Type Of Instrument
box_options_sola_multicast_hsvf_v1_8.type_of_instrument.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.type_of_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.type_of_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.type_of_instrument, range, value, display)

  return offset + length, value
end

-- Market Flow Indicator
box_options_sola_multicast_hsvf_v1_8.market_flow_indicator = {}

-- Calculate size of: Market Flow Indicator
box_options_sola_multicast_hsvf_v1_8.market_flow_indicator.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.type_of_instrument.size

  index = index + box_options_sola_multicast_hsvf_v1_8.type_of_underlying.size

  return index
end

-- Display: Market Flow Indicator
box_options_sola_multicast_hsvf_v1_8.market_flow_indicator.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Flow Indicator
box_options_sola_multicast_hsvf_v1_8.market_flow_indicator.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Type Of Instrument: X
  index, type_of_instrument = box_options_sola_multicast_hsvf_v1_8.type_of_instrument.dissect(buffer, index, packet, parent)

  -- Type Of Underlying: X
  index, type_of_underlying = box_options_sola_multicast_hsvf_v1_8.type_of_underlying.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Flow Indicator
box_options_sola_multicast_hsvf_v1_8.market_flow_indicator.dissect = function(buffer, offset, packet, parent)
  if show.market_flow_indicator then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.market_flow_indicator, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.market_flow_indicator.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.market_flow_indicator.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.market_flow_indicator.fields(buffer, offset, packet, parent)
  end
end

-- Option Type
box_options_sola_multicast_hsvf_v1_8.option_type = {}

-- Size: Option Type
box_options_sola_multicast_hsvf_v1_8.option_type.size = 1

-- Display: Option Type
box_options_sola_multicast_hsvf_v1_8.option_type.display = function(value)
  if value == "A" then
    return "Option Type: American (A)"
  end
  if value == "E" then
    return "Option Type: European (E)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
box_options_sola_multicast_hsvf_v1_8.option_type.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.option_type, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price_fraction_indicator = {}

-- Size: Minimum Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price_fraction_indicator.size = 1

-- Display: Minimum Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price_fraction_indicator.display = function(value)
  return "Minimum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Minimum Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.minimum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price
box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price = {}

-- Size: Minimum Threshold Price
box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price.size = 6

-- Display: Minimum Threshold Price
box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price.display = function(value)
  return "Minimum Threshold Price: "..value
end

-- Dissect: Minimum Threshold Price
box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.minimum_threshold_price, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price_fraction_indicator = {}

-- Size: Maximum Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price_fraction_indicator.size = 1

-- Display: Maximum Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price_fraction_indicator.display = function(value)
  return "Maximum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Maximum Threshold Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.maximum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price
box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price = {}

-- Size: Maximum Threshold Price
box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price.size = 6

-- Display: Maximum Threshold Price
box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price.display = function(value)
  return "Maximum Threshold Price: "..value
end

-- Dissect: Maximum Threshold Price
box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.maximum_threshold_price, range, value, display)

  return offset + length, value
end

-- Minimum Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.minimum_number_of_contracts_per_order = {}

-- Size: Minimum Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.minimum_number_of_contracts_per_order.size = 6

-- Display: Minimum Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.minimum_number_of_contracts_per_order.display = function(value)
  return "Minimum Number Of Contracts Per Order: "..value
end

-- Dissect: Minimum Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.minimum_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.minimum_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.minimum_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.minimum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Maximum Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.maximum_number_of_contracts_per_order = {}

-- Size: Maximum Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.maximum_number_of_contracts_per_order.size = 6

-- Display: Maximum Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.maximum_number_of_contracts_per_order.display = function(value)
  return "Maximum Number Of Contracts Per Order: "..value
end

-- Dissect: Maximum Number Of Contracts Per Order
box_options_sola_multicast_hsvf_v1_8.maximum_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.maximum_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.maximum_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.maximum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Strike Price Currency
box_options_sola_multicast_hsvf_v1_8.strike_price_currency = {}

-- Size: Strike Price Currency
box_options_sola_multicast_hsvf_v1_8.strike_price_currency.size = 3

-- Display: Strike Price Currency
box_options_sola_multicast_hsvf_v1_8.strike_price_currency.display = function(value)
  if value == "USD" then
    return "Strike Price Currency: Us Dollars (USD)"
  end
  if value == "CAD" then
    return "Strike Price Currency: Canadian Dollars (CAD)"
  end

  return "Strike Price Currency: Unknown("..value..")"
end

-- Dissect: Strike Price Currency
box_options_sola_multicast_hsvf_v1_8.strike_price_currency.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.strike_price_currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.strike_price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.strike_price_currency, range, value, display)

  return offset + length, value
end

-- Option Instrument Keys Message
box_options_sola_multicast_hsvf_v1_8.option_instrument_keys_message = {}

-- Calculate size of: Option Instrument Keys Message
box_options_sola_multicast_hsvf_v1_8.option_instrument_keys_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_description.size(buffer, offset + index)

  index = index + box_options_sola_multicast_hsvf_v1_8.strike_price_currency.size

  index = index + box_options_sola_multicast_hsvf_v1_8.maximum_number_of_contracts_per_order.size

  index = index + box_options_sola_multicast_hsvf_v1_8.minimum_number_of_contracts_per_order.size

  index = index + box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.tick_increment.size

  index = index + box_options_sola_multicast_hsvf_v1_8.tick_increment_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.option_type.size

  index = index + box_options_sola_multicast_hsvf_v1_8.market_flow_indicator.size(buffer, offset + index)

  index = index + box_options_sola_multicast_hsvf_v1_8.group_instrument.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_external_code.size

  index = index + box_options_sola_multicast_hsvf_v1_8.option_marker.size(buffer, offset + index)

  index = index + box_options_sola_multicast_hsvf_v1_8.underlying_symbol_root.size

  return index
end

-- Display: Option Instrument Keys Message
box_options_sola_multicast_hsvf_v1_8.option_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Instrument Keys Message
box_options_sola_multicast_hsvf_v1_8.option_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_multicast_hsvf_v1_8.instrument_description.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: X
  index, strike_price_currency = box_options_sola_multicast_hsvf_v1_8.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: n
  index, maximum_number_of_contracts_per_order = box_options_sola_multicast_hsvf_v1_8.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: n
  index, minimum_number_of_contracts_per_order = box_options_sola_multicast_hsvf_v1_8.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price: n
  index, maximum_threshold_price = box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price: n
  index, minimum_threshold_price = box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = box_options_sola_multicast_hsvf_v1_8.tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Type: X
  index, option_type = box_options_sola_multicast_hsvf_v1_8.option_type.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: Struct of 2 fields
  index, market_flow_indicator = box_options_sola_multicast_hsvf_v1_8.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = box_options_sola_multicast_hsvf_v1_8.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = box_options_sola_multicast_hsvf_v1_8.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: x
  index, instrument_external_code = box_options_sola_multicast_hsvf_v1_8.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Option Marker: Struct of 2 fields
  index, option_marker = box_options_sola_multicast_hsvf_v1_8.option_marker.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Root: x
  index, underlying_symbol_root = box_options_sola_multicast_hsvf_v1_8.underlying_symbol_root.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Instrument Keys Message
box_options_sola_multicast_hsvf_v1_8.option_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.option_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.option_instrument_keys_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.option_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.option_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.option_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Indicator Marker
box_options_sola_multicast_hsvf_v1_8.price_indicator_marker = {}

-- Size: Price Indicator Marker
box_options_sola_multicast_hsvf_v1_8.price_indicator_marker.size = 1

-- Display: Price Indicator Marker
box_options_sola_multicast_hsvf_v1_8.price_indicator_marker.display = function(value)
  if value == "A" then
    return "Price Indicator Marker: As Of Trade (A)"
  end
  if value == "C" then
    return "Price Indicator Marker: Trades Performed At The End Of A Pip Allocation Phase (C)"
  end
  if value == "L" then
    return "Price Indicator Marker: Late Trade (L)"
  end
  if value == "O" then
    return "Price Indicator Marker: Trades Performed During The Opening (O)"
  end
  if value == "S" then
    return "Price Indicator Marker: Reference Price (S)"
  end
  if value == "W" then
    return "Price Indicator Marker: Trades Resulting From The Transmission Of An Iso Inbound Order (W)"
  end
  if value == "X" then
    return "Price Indicator Marker: Trades Performed When The Market Is Crossed (X)"
  end
  if value == "G" then
    return "Price Indicator Marker: Contingent Trade Price Of The Trade Was Not Controlled Against The Nbbo (G)"
  end
  if value == "I" then
    return "Price Indicator Marker: Trade Involving An Implied Order Or Leg Trade Of A Complex Order Instrument (I)"
  end
  if value == "P" then
    return "Price Indicator Marker: Trade Done On A Complex Order Instrument (P)"
  end
  if value == " " then
    return "Price Indicator Marker: Actual Transaction Took Place (<whitespace>)"
  end

  return "Price Indicator Marker: Unknown("..value..")"
end

-- Dissect: Price Indicator Marker
box_options_sola_multicast_hsvf_v1_8.price_indicator_marker.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.price_indicator_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.price_indicator_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.price_indicator_marker, range, value, display)

  return offset + length, value
end

-- Timestamp
box_options_sola_multicast_hsvf_v1_8.timestamp = {}

-- Size: Timestamp
box_options_sola_multicast_hsvf_v1_8.timestamp.size = 6

-- Display: Timestamp
box_options_sola_multicast_hsvf_v1_8.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
box_options_sola_multicast_hsvf_v1_8.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Filler 6
box_options_sola_multicast_hsvf_v1_8.filler_6 = {}

-- Size: Filler 6
box_options_sola_multicast_hsvf_v1_8.filler_6.size = 6

-- Display: Filler 6
box_options_sola_multicast_hsvf_v1_8.filler_6.display = function(value)
  return "Filler 6: "..value
end

-- Dissect: Filler 6
box_options_sola_multicast_hsvf_v1_8.filler_6.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.filler_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.filler_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.filler_6, range, value, display)

  return offset + length, value
end

-- Trade Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator = {}

-- Size: Trade Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator.size = 1

-- Display: Trade Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator.display = function(value)
  return "Trade Price Fraction Indicator: "..value
end

-- Dissect: Trade Price Fraction Indicator
box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.trade_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Trade Price
box_options_sola_multicast_hsvf_v1_8.trade_price = {}

-- Size: Trade Price
box_options_sola_multicast_hsvf_v1_8.trade_price.size = 6

-- Display: Trade Price
box_options_sola_multicast_hsvf_v1_8.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
box_options_sola_multicast_hsvf_v1_8.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.trade_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Price Sign
box_options_sola_multicast_hsvf_v1_8.trade_price_sign = {}

-- Size: Trade Price Sign
box_options_sola_multicast_hsvf_v1_8.trade_price_sign.size = 1

-- Display: Trade Price Sign
box_options_sola_multicast_hsvf_v1_8.trade_price_sign.display = function(value)
  return "Trade Price Sign: "..value
end

-- Dissect: Trade Price Sign
box_options_sola_multicast_hsvf_v1_8.trade_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.trade_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.trade_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.trade_price_sign, range, value, display)

  return offset + length, value
end

-- Complex Order Trade Cancellation Message
box_options_sola_multicast_hsvf_v1_8.complex_order_trade_cancellation_message = {}

-- Calculate size of: Complex Order Trade Cancellation Message
box_options_sola_multicast_hsvf_v1_8.complex_order_trade_cancellation_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.size

  index = index + box_options_sola_multicast_hsvf_v1_8.volume.size

  index = index + box_options_sola_multicast_hsvf_v1_8.trade_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.trade_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_6.size

  index = index + box_options_sola_multicast_hsvf_v1_8.timestamp.size

  index = index + box_options_sola_multicast_hsvf_v1_8.price_indicator_marker.size

  return index
end

-- Display: Complex Order Trade Cancellation Message
box_options_sola_multicast_hsvf_v1_8.complex_order_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Trade Cancellation Message
box_options_sola_multicast_hsvf_v1_8.complex_order_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_options_sola_multicast_hsvf_v1_8.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = box_options_sola_multicast_hsvf_v1_8.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = box_options_sola_multicast_hsvf_v1_8.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: 6 Byte Ascii String
  index, filler_6 = box_options_sola_multicast_hsvf_v1_8.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = box_options_sola_multicast_hsvf_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = box_options_sola_multicast_hsvf_v1_8.price_indicator_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Trade Cancellation Message
box_options_sola_multicast_hsvf_v1_8.complex_order_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_order_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_trade_cancellation_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.complex_order_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.complex_order_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.complex_order_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Trade Cancellation Message
box_options_sola_multicast_hsvf_v1_8.option_trade_cancellation_message = {}

-- Calculate size of: Option Trade Cancellation Message
box_options_sola_multicast_hsvf_v1_8.option_trade_cancellation_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_description.size(buffer, offset + index)

  index = index + box_options_sola_multicast_hsvf_v1_8.volume.size

  index = index + box_options_sola_multicast_hsvf_v1_8.trade_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_6.size

  index = index + box_options_sola_multicast_hsvf_v1_8.timestamp.size

  index = index + box_options_sola_multicast_hsvf_v1_8.open_interest.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_1.size

  index = index + box_options_sola_multicast_hsvf_v1_8.price_indicator_marker.size

  return index
end

-- Display: Option Trade Cancellation Message
box_options_sola_multicast_hsvf_v1_8.option_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Cancellation Message
box_options_sola_multicast_hsvf_v1_8.option_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_multicast_hsvf_v1_8.instrument_description.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_options_sola_multicast_hsvf_v1_8.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = box_options_sola_multicast_hsvf_v1_8.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: 6 Byte Ascii String
  index, filler_6 = box_options_sola_multicast_hsvf_v1_8.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = box_options_sola_multicast_hsvf_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: n
  index, open_interest = box_options_sola_multicast_hsvf_v1_8.open_interest.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_multicast_hsvf_v1_8.filler_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = box_options_sola_multicast_hsvf_v1_8.price_indicator_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Cancellation Message
box_options_sola_multicast_hsvf_v1_8.option_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.option_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.option_trade_cancellation_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.option_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.option_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.option_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Ask Orders
box_options_sola_multicast_hsvf_v1_8.number_of_ask_orders = {}

-- Size: Number Of Ask Orders
box_options_sola_multicast_hsvf_v1_8.number_of_ask_orders.size = 2

-- Display: Number Of Ask Orders
box_options_sola_multicast_hsvf_v1_8.number_of_ask_orders.display = function(value)
  return "Number Of Ask Orders: "..value
end

-- Dissect: Number Of Ask Orders
box_options_sola_multicast_hsvf_v1_8.number_of_ask_orders.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.number_of_ask_orders.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.number_of_ask_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.number_of_ask_orders, range, value, display)

  return offset + length, value
end

-- Number Of Bid Orders
box_options_sola_multicast_hsvf_v1_8.number_of_bid_orders = {}

-- Size: Number Of Bid Orders
box_options_sola_multicast_hsvf_v1_8.number_of_bid_orders.size = 2

-- Display: Number Of Bid Orders
box_options_sola_multicast_hsvf_v1_8.number_of_bid_orders.display = function(value)
  return "Number Of Bid Orders: "..value
end

-- Dissect: Number Of Bid Orders
box_options_sola_multicast_hsvf_v1_8.number_of_bid_orders.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.number_of_bid_orders.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.number_of_bid_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.number_of_bid_orders, range, value, display)

  return offset + length, value
end

-- Level Of Market Depth
box_options_sola_multicast_hsvf_v1_8.level_of_market_depth = {}

-- Size: Level Of Market Depth
box_options_sola_multicast_hsvf_v1_8.level_of_market_depth.size = 1

-- Display: Level Of Market Depth
box_options_sola_multicast_hsvf_v1_8.level_of_market_depth.display = function(value)
  if value == "1" then
    return "Level Of Market Depth: Level 1 (1)"
  end
  if value == "2" then
    return "Level Of Market Depth: Level 2 (2)"
  end
  if value == "3" then
    return "Level Of Market Depth: Level 3 (3)"
  end
  if value == "4" then
    return "Level Of Market Depth: Level 4 (4)"
  end
  if value == "5" then
    return "Level Of Market Depth: Level 5 (5)"
  end
  if value == "6" then
    return "Level Of Market Depth: Level 6 (6)"
  end
  if value == "A" then
    return "Level Of Market Depth: Implied Price (A)"
  end
  if value == "P" then
    return "Level Of Market Depth: Public Customer Volume (P)"
  end

  return "Level Of Market Depth: Unknown("..value..")"
end

-- Dissect: Level Of Market Depth
box_options_sola_multicast_hsvf_v1_8.level_of_market_depth.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.level_of_market_depth.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.level_of_market_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.level_of_market_depth, range, value, display)

  return offset + length, value
end

-- Complex Market Depth Level
box_options_sola_multicast_hsvf_v1_8.complex_market_depth_level = {}

-- Calculate size of: Complex Market Depth Level
box_options_sola_multicast_hsvf_v1_8.complex_market_depth_level.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.level_of_market_depth.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.number_of_bid_orders.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.number_of_ask_orders.size

  return index
end

-- Display: Complex Market Depth Level
box_options_sola_multicast_hsvf_v1_8.complex_market_depth_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Market Depth Level
box_options_sola_multicast_hsvf_v1_8.complex_market_depth_level.fields = function(buffer, offset, packet, parent, complex_market_depth_level_index)
  local index = offset

  -- Implicit Complex Market Depth Level Index
  if complex_market_depth_level_index ~= nil then
    local iteration = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_market_depth_level_index, complex_market_depth_level_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = box_options_sola_multicast_hsvf_v1_8.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = box_options_sola_multicast_hsvf_v1_8.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = box_options_sola_multicast_hsvf_v1_8.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: n
  index, bid_size = box_options_sola_multicast_hsvf_v1_8.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = box_options_sola_multicast_hsvf_v1_8.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = box_options_sola_multicast_hsvf_v1_8.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = box_options_sola_multicast_hsvf_v1_8.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: N
  index, ask_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: n
  index, ask_size = box_options_sola_multicast_hsvf_v1_8.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = box_options_sola_multicast_hsvf_v1_8.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Market Depth Level
box_options_sola_multicast_hsvf_v1_8.complex_market_depth_level.dissect = function(buffer, offset, packet, parent, complex_market_depth_level_index)
  if show.complex_market_depth_level then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_market_depth_level, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.complex_market_depth_level.fields(buffer, offset, packet, parent, complex_market_depth_level_index)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.complex_market_depth_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.complex_market_depth_level.fields(buffer, offset, packet, parent, complex_market_depth_level_index)
  end
end

-- Number Of Levels
box_options_sola_multicast_hsvf_v1_8.number_of_levels = {}

-- Size: Number Of Levels
box_options_sola_multicast_hsvf_v1_8.number_of_levels.size = 1

-- Display: Number Of Levels
box_options_sola_multicast_hsvf_v1_8.number_of_levels.display = function(value)
  return "Number Of Levels: "..value
end

-- Dissect: Number Of Levels
box_options_sola_multicast_hsvf_v1_8.number_of_levels.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.number_of_levels.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.number_of_levels.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.number_of_levels, range, value, display)

  return offset + length, value
end

-- Instrument Status Marker
box_options_sola_multicast_hsvf_v1_8.instrument_status_marker = {}

-- Size: Instrument Status Marker
box_options_sola_multicast_hsvf_v1_8.instrument_status_marker.size = 1

-- Display: Instrument Status Marker
box_options_sola_multicast_hsvf_v1_8.instrument_status_marker.display = function(value)
  if value == "Y" then
    return "Instrument Status Marker: Preopening Phase (Y)"
  end
  if value == "O" then
    return "Instrument Status Marker: Opening Phase (O)"
  end
  if value == "T" then
    return "Instrument Status Marker: Opened For Trading (T)"
  end
  if value == "F" then
    return "Instrument Status Marker: Forbidden Phase (F)"
  end
  if value == "H" then
    return "Instrument Status Marker: Trading Halted (H)"
  end
  if value == "R" then
    return "Instrument Status Marker: Reserved Phase (R)"
  end
  if value == "S" then
    return "Instrument Status Marker: Suspended Phase (S)"
  end
  if value == "Z" then
    return "Instrument Status Marker: Frozen (Z)"
  end
  if value == "A" then
    return "Instrument Status Marker: Surveillance Intervention Phase (A)"
  end
  if value == "C" then
    return "Instrument Status Marker: Closed (C)"
  end
  if value == "C" then
    return "Instrument Status Marker: Beginning Of Day Inquiries (C)"
  end

  return "Instrument Status Marker: Unknown("..value..")"
end

-- Dissect: Instrument Status Marker
box_options_sola_multicast_hsvf_v1_8.instrument_status_marker.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.instrument_status_marker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.instrument_status_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.instrument_status_marker, range, value, display)

  return offset + length, value
end

-- Complex Order Market Depth Message
box_options_sola_multicast_hsvf_v1_8.complex_order_market_depth_message = {}

-- Calculate size of: Complex Order Market Depth Message
box_options_sola_multicast_hsvf_v1_8.complex_order_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_status_marker.size

  index = index + box_options_sola_multicast_hsvf_v1_8.number_of_levels.size

  -- Calculate field size from count
  local complex_market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + complex_market_depth_level_count * 31

  return index
end

-- Display: Complex Order Market Depth Message
box_options_sola_multicast_hsvf_v1_8.complex_order_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Market Depth Message
box_options_sola_multicast_hsvf_v1_8.complex_order_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = box_options_sola_multicast_hsvf_v1_8.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = box_options_sola_multicast_hsvf_v1_8.number_of_levels.dissect(buffer, index, packet, parent)

  -- Repeating: Complex Market Depth Level
  for complex_market_depth_level_index = 1, number_of_levels do
    index, complex_market_depth_level = box_options_sola_multicast_hsvf_v1_8.complex_market_depth_level.dissect(buffer, index, packet, parent, complex_market_depth_level_index)
  end

  return index
end

-- Dissect: Complex Order Market Depth Message
box_options_sola_multicast_hsvf_v1_8.complex_order_market_depth_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_order_market_depth_message then
    local length = box_options_sola_multicast_hsvf_v1_8.complex_order_market_depth_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = box_options_sola_multicast_hsvf_v1_8.complex_order_market_depth_message.display(buffer, packet, parent)
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_market_depth_message, range, display)
  end

  return box_options_sola_multicast_hsvf_v1_8.complex_order_market_depth_message.fields(buffer, offset, packet, parent)
end

-- Market Depth Level
box_options_sola_multicast_hsvf_v1_8.market_depth_level = {}

-- Calculate size of: Market Depth Level
box_options_sola_multicast_hsvf_v1_8.market_depth_level.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.level_of_market_depth.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.number_of_bid_orders.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.number_of_ask_orders.size

  return index
end

-- Display: Market Depth Level
box_options_sola_multicast_hsvf_v1_8.market_depth_level.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Depth Level
box_options_sola_multicast_hsvf_v1_8.market_depth_level.fields = function(buffer, offset, packet, parent, market_depth_level_index)
  local index = offset

  -- Implicit Market Depth Level Index
  if market_depth_level_index ~= nil then
    local iteration = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.market_depth_level_index, market_depth_level_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = box_options_sola_multicast_hsvf_v1_8.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = box_options_sola_multicast_hsvf_v1_8.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: n
  index, bid_size = box_options_sola_multicast_hsvf_v1_8.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = box_options_sola_multicast_hsvf_v1_8.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = box_options_sola_multicast_hsvf_v1_8.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: N
  index, ask_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: n
  index, ask_size = box_options_sola_multicast_hsvf_v1_8.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = box_options_sola_multicast_hsvf_v1_8.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Depth Level
box_options_sola_multicast_hsvf_v1_8.market_depth_level.dissect = function(buffer, offset, packet, parent, market_depth_level_index)
  if show.market_depth_level then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.market_depth_level, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.market_depth_level.fields(buffer, offset, packet, parent, market_depth_level_index)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.market_depth_level.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.market_depth_level.fields(buffer, offset, packet, parent, market_depth_level_index)
  end
end

-- Option Market Depth Message
box_options_sola_multicast_hsvf_v1_8.option_market_depth_message = {}

-- Calculate size of: Option Market Depth Message
box_options_sola_multicast_hsvf_v1_8.option_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_description.size(buffer, offset + index)

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_status_marker.size

  index = index + box_options_sola_multicast_hsvf_v1_8.number_of_levels.size

  -- Calculate field size from count
  local market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + market_depth_level_count * 29

  return index
end

-- Display: Option Market Depth Message
box_options_sola_multicast_hsvf_v1_8.option_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Market Depth Message
box_options_sola_multicast_hsvf_v1_8.option_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_multicast_hsvf_v1_8.instrument_description.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = box_options_sola_multicast_hsvf_v1_8.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = box_options_sola_multicast_hsvf_v1_8.number_of_levels.dissect(buffer, index, packet, parent)

  -- Repeating: Market Depth Level
  for market_depth_level_index = 1, number_of_levels do
    index, market_depth_level = box_options_sola_multicast_hsvf_v1_8.market_depth_level.dissect(buffer, index, packet, parent, market_depth_level_index)
  end

  return index
end

-- Dissect: Option Market Depth Message
box_options_sola_multicast_hsvf_v1_8.option_market_depth_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.option_market_depth_message then
    local length = box_options_sola_multicast_hsvf_v1_8.option_market_depth_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = box_options_sola_multicast_hsvf_v1_8.option_market_depth_message.display(buffer, packet, parent)
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.option_market_depth_message, range, display)
  end

  return box_options_sola_multicast_hsvf_v1_8.option_market_depth_message.fields(buffer, offset, packet, parent)
end

-- Group Status
box_options_sola_multicast_hsvf_v1_8.group_status = {}

-- Size: Group Status
box_options_sola_multicast_hsvf_v1_8.group_status.size = 1

-- Display: Group Status
box_options_sola_multicast_hsvf_v1_8.group_status.display = function(value)
  if value == "Y" then
    return "Group Status: Preopening Phase (Y)"
  end
  if value == "O" then
    return "Group Status: Opening Phase (O)"
  end
  if value == "T" then
    return "Group Status: Opened For Trading (T)"
  end
  if value == "F" then
    return "Group Status: Forbidden Phase (F)"
  end
  if value == "H" then
    return "Group Status: Trading Halted (H)"
  end
  if value == "A" then
    return "Group Status: Surveillance Intervention Phase (A)"
  end
  if value == "C" then
    return "Group Status: Closed (C)"
  end
  if value == "C" then
    return "Group Status: Beginning Of Day Inquiries (C)"
  end

  return "Group Status: Unknown("..value..")"
end

-- Dissect: Group Status
box_options_sola_multicast_hsvf_v1_8.group_status.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.group_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.group_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.group_status, range, value, display)

  return offset + length, value
end

-- Group Of The Complex Order Instrument
box_options_sola_multicast_hsvf_v1_8.group_of_the_complex_order_instrument = {}

-- Size: Group Of The Complex Order Instrument
box_options_sola_multicast_hsvf_v1_8.group_of_the_complex_order_instrument.size = 2

-- Display: Group Of The Complex Order Instrument
box_options_sola_multicast_hsvf_v1_8.group_of_the_complex_order_instrument.display = function(value)
  return "Group Of The Complex Order Instrument: "..value
end

-- Dissect: Group Of The Complex Order Instrument
box_options_sola_multicast_hsvf_v1_8.group_of_the_complex_order_instrument.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.group_of_the_complex_order_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_multicast_hsvf_v1_8.group_of_the_complex_order_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.group_of_the_complex_order_instrument, range, value, display)

  return offset + length, value
end

-- Strategies Group Status Message
box_options_sola_multicast_hsvf_v1_8.strategies_group_status_message = {}

-- Calculate size of: Strategies Group Status Message
box_options_sola_multicast_hsvf_v1_8.strategies_group_status_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.group_of_the_complex_order_instrument.size

  index = index + box_options_sola_multicast_hsvf_v1_8.group_status.size

  return index
end

-- Display: Strategies Group Status Message
box_options_sola_multicast_hsvf_v1_8.strategies_group_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategies Group Status Message
box_options_sola_multicast_hsvf_v1_8.strategies_group_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Group Of The Complex Order Instrument: X
  index, group_of_the_complex_order_instrument = box_options_sola_multicast_hsvf_v1_8.group_of_the_complex_order_instrument.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = box_options_sola_multicast_hsvf_v1_8.group_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategies Group Status Message
box_options_sola_multicast_hsvf_v1_8.strategies_group_status_message.dissect = function(buffer, offset, packet, parent)
  if show.strategies_group_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.strategies_group_status_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.strategies_group_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.strategies_group_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.strategies_group_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Group Status Message
box_options_sola_multicast_hsvf_v1_8.group_status_message = {}

-- Calculate size of: Group Status Message
box_options_sola_multicast_hsvf_v1_8.group_status_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.root_symbol.size

  index = index + box_options_sola_multicast_hsvf_v1_8.group_status.size

  return index
end

-- Display: Group Status Message
box_options_sola_multicast_hsvf_v1_8.group_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Status Message
box_options_sola_multicast_hsvf_v1_8.group_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: x
  index, root_symbol = box_options_sola_multicast_hsvf_v1_8.root_symbol.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = box_options_sola_multicast_hsvf_v1_8.group_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Message
box_options_sola_multicast_hsvf_v1_8.group_status_message.dissect = function(buffer, offset, packet, parent)
  if show.group_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.group_status_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.group_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.group_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.group_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Scheduled Time
box_options_sola_multicast_hsvf_v1_8.scheduled_time = {}

-- Size: Scheduled Time
box_options_sola_multicast_hsvf_v1_8.scheduled_time.size = 6

-- Display: Scheduled Time
box_options_sola_multicast_hsvf_v1_8.scheduled_time.display = function(value)
  return "Scheduled Time: "..value
end

-- Dissect: Scheduled Time
box_options_sola_multicast_hsvf_v1_8.scheduled_time.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.scheduled_time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.scheduled_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.scheduled_time, range, value, display)

  return offset + length, value
end

-- Group Opening Time Message
box_options_sola_multicast_hsvf_v1_8.group_opening_time_message = {}

-- Calculate size of: Group Opening Time Message
box_options_sola_multicast_hsvf_v1_8.group_opening_time_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.root_symbol.size

  index = index + box_options_sola_multicast_hsvf_v1_8.group_status.size

  index = index + box_options_sola_multicast_hsvf_v1_8.scheduled_time.size

  return index
end

-- Display: Group Opening Time Message
box_options_sola_multicast_hsvf_v1_8.group_opening_time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Opening Time Message
box_options_sola_multicast_hsvf_v1_8.group_opening_time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Root Symbol: x
  index, root_symbol = box_options_sola_multicast_hsvf_v1_8.root_symbol.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = box_options_sola_multicast_hsvf_v1_8.group_status.dissect(buffer, index, packet, parent)

  -- Scheduled Time: N
  index, scheduled_time = box_options_sola_multicast_hsvf_v1_8.scheduled_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Opening Time Message
box_options_sola_multicast_hsvf_v1_8.group_opening_time_message.dissect = function(buffer, offset, packet, parent)
  if show.group_opening_time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.group_opening_time_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.group_opening_time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.group_opening_time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.group_opening_time_message.fields(buffer, offset, packet, parent)
  end
end

-- Public Customer Ask Size
box_options_sola_multicast_hsvf_v1_8.public_customer_ask_size = {}

-- Size: Public Customer Ask Size
box_options_sola_multicast_hsvf_v1_8.public_customer_ask_size.size = 5

-- Display: Public Customer Ask Size
box_options_sola_multicast_hsvf_v1_8.public_customer_ask_size.display = function(value)
  return "Public Customer Ask Size: "..value
end

-- Dissect: Public Customer Ask Size
box_options_sola_multicast_hsvf_v1_8.public_customer_ask_size.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.public_customer_ask_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.public_customer_ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.public_customer_ask_size, range, value, display)

  return offset + length, value
end

-- Public Customer Bid Size
box_options_sola_multicast_hsvf_v1_8.public_customer_bid_size = {}

-- Size: Public Customer Bid Size
box_options_sola_multicast_hsvf_v1_8.public_customer_bid_size.size = 5

-- Display: Public Customer Bid Size
box_options_sola_multicast_hsvf_v1_8.public_customer_bid_size.display = function(value)
  return "Public Customer Bid Size: "..value
end

-- Dissect: Public Customer Bid Size
box_options_sola_multicast_hsvf_v1_8.public_customer_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.public_customer_bid_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.public_customer_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.public_customer_bid_size, range, value, display)

  return offset + length, value
end

-- Complex Order Quote Message
box_options_sola_multicast_hsvf_v1_8.complex_order_quote_message = {}

-- Calculate size of: Complex Order Quote Message
box_options_sola_multicast_hsvf_v1_8.complex_order_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_status_marker.size

  index = index + box_options_sola_multicast_hsvf_v1_8.public_customer_bid_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.public_customer_ask_size.size

  return index
end

-- Display: Complex Order Quote Message
box_options_sola_multicast_hsvf_v1_8.complex_order_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Quote Message
box_options_sola_multicast_hsvf_v1_8.complex_order_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = box_options_sola_multicast_hsvf_v1_8.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = box_options_sola_multicast_hsvf_v1_8.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: n
  index, bid_size = box_options_sola_multicast_hsvf_v1_8.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = box_options_sola_multicast_hsvf_v1_8.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = box_options_sola_multicast_hsvf_v1_8.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: N
  index, ask_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: n
  index, ask_size = box_options_sola_multicast_hsvf_v1_8.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = box_options_sola_multicast_hsvf_v1_8.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Public Customer Bid Size: n
  index, public_customer_bid_size = box_options_sola_multicast_hsvf_v1_8.public_customer_bid_size.dissect(buffer, index, packet, parent)

  -- Public Customer Ask Size: n
  index, public_customer_ask_size = box_options_sola_multicast_hsvf_v1_8.public_customer_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Quote Message
box_options_sola_multicast_hsvf_v1_8.complex_order_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_order_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_quote_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.complex_order_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.complex_order_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.complex_order_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Quote Message
box_options_sola_multicast_hsvf_v1_8.option_quote_message = {}

-- Calculate size of: Option Quote Message
box_options_sola_multicast_hsvf_v1_8.option_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_description.size(buffer, offset + index)

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.bid_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.ask_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_1.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_status_marker.size

  index = index + box_options_sola_multicast_hsvf_v1_8.public_customer_bid_size.size

  index = index + box_options_sola_multicast_hsvf_v1_8.public_customer_ask_size.size

  return index
end

-- Display: Option Quote Message
box_options_sola_multicast_hsvf_v1_8.option_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Quote Message
box_options_sola_multicast_hsvf_v1_8.option_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_multicast_hsvf_v1_8.instrument_description.dissect(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = box_options_sola_multicast_hsvf_v1_8.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: n
  index, bid_size = box_options_sola_multicast_hsvf_v1_8.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = box_options_sola_multicast_hsvf_v1_8.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: N
  index, ask_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: n
  index, ask_size = box_options_sola_multicast_hsvf_v1_8.ask_size.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_multicast_hsvf_v1_8.filler_1.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = box_options_sola_multicast_hsvf_v1_8.instrument_status_marker.dissect(buffer, index, packet, parent)

  -- Public Customer Bid Size: n
  index, public_customer_bid_size = box_options_sola_multicast_hsvf_v1_8.public_customer_bid_size.dissect(buffer, index, packet, parent)

  -- Public Customer Ask Size: n
  index, public_customer_ask_size = box_options_sola_multicast_hsvf_v1_8.public_customer_ask_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Quote Message
box_options_sola_multicast_hsvf_v1_8.option_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.option_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.option_quote_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.option_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.option_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.option_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Requested Size
box_options_sola_multicast_hsvf_v1_8.requested_size = {}

-- Size: Requested Size
box_options_sola_multicast_hsvf_v1_8.requested_size.size = 8

-- Display: Requested Size
box_options_sola_multicast_hsvf_v1_8.requested_size.display = function(value)
  return "Requested Size: "..value
end

-- Dissect: Requested Size
box_options_sola_multicast_hsvf_v1_8.requested_size.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.requested_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.requested_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.requested_size, range, value, display)

  return offset + length, value
end

-- Option Request For Quote Message
box_options_sola_multicast_hsvf_v1_8.option_request_for_quote_message = {}

-- Calculate size of: Option Request For Quote Message
box_options_sola_multicast_hsvf_v1_8.option_request_for_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_description.size(buffer, offset + index)

  index = index + box_options_sola_multicast_hsvf_v1_8.requested_size.size

  return index
end

-- Display: Option Request For Quote Message
box_options_sola_multicast_hsvf_v1_8.option_request_for_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Request For Quote Message
box_options_sola_multicast_hsvf_v1_8.option_request_for_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_multicast_hsvf_v1_8.instrument_description.dissect(buffer, index, packet, parent)

  -- Requested Size: n
  index, requested_size = box_options_sola_multicast_hsvf_v1_8.requested_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Request For Quote Message
box_options_sola_multicast_hsvf_v1_8.option_request_for_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.option_request_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.option_request_for_quote_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.option_request_for_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.option_request_for_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.option_request_for_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Complex Order Instrument Trade Message
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_trade_message = {}

-- Calculate size of: Complex Order Instrument Trade Message
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.size

  index = index + box_options_sola_multicast_hsvf_v1_8.volume.size

  index = index + box_options_sola_multicast_hsvf_v1_8.trade_price_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.trade_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.net_change_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.net_change.size

  index = index + box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_6.size

  index = index + box_options_sola_multicast_hsvf_v1_8.timestamp.size

  index = index + box_options_sola_multicast_hsvf_v1_8.price_indicator_marker.size

  return index
end

-- Display: Complex Order Instrument Trade Message
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Instrument Trade Message
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_options_sola_multicast_hsvf_v1_8.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = box_options_sola_multicast_hsvf_v1_8.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = box_options_sola_multicast_hsvf_v1_8.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = box_options_sola_multicast_hsvf_v1_8.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = box_options_sola_multicast_hsvf_v1_8.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: 6 Byte Ascii String
  index, filler_6 = box_options_sola_multicast_hsvf_v1_8.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = box_options_sola_multicast_hsvf_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = box_options_sola_multicast_hsvf_v1_8.price_indicator_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Instrument Trade Message
box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.complex_order_instrument_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.complex_order_instrument_trade_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Trade Message
box_options_sola_multicast_hsvf_v1_8.option_trade_message = {}

-- Calculate size of: Option Trade Message
box_options_sola_multicast_hsvf_v1_8.option_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.instrument_description.size(buffer, offset + index)

  index = index + box_options_sola_multicast_hsvf_v1_8.volume.size

  index = index + box_options_sola_multicast_hsvf_v1_8.trade_price.size

  index = index + box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.net_change_sign.size

  index = index + box_options_sola_multicast_hsvf_v1_8.net_change.size

  index = index + box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_6.size

  index = index + box_options_sola_multicast_hsvf_v1_8.timestamp.size

  index = index + box_options_sola_multicast_hsvf_v1_8.open_interest.size

  index = index + box_options_sola_multicast_hsvf_v1_8.filler_1.size

  index = index + box_options_sola_multicast_hsvf_v1_8.price_indicator_marker.size

  return index
end

-- Display: Option Trade Message
box_options_sola_multicast_hsvf_v1_8.option_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Message
box_options_sola_multicast_hsvf_v1_8.option_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_multicast_hsvf_v1_8.instrument_description.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_options_sola_multicast_hsvf_v1_8.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = box_options_sola_multicast_hsvf_v1_8.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = box_options_sola_multicast_hsvf_v1_8.net_change_sign.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = box_options_sola_multicast_hsvf_v1_8.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_options_sola_multicast_hsvf_v1_8.net_change_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: 6 Byte Ascii String
  index, filler_6 = box_options_sola_multicast_hsvf_v1_8.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = box_options_sola_multicast_hsvf_v1_8.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: n
  index, open_interest = box_options_sola_multicast_hsvf_v1_8.open_interest.dissect(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_multicast_hsvf_v1_8.filler_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = box_options_sola_multicast_hsvf_v1_8.price_indicator_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Message
box_options_sola_multicast_hsvf_v1_8.option_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.option_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.option_trade_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.option_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.option_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.option_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Engine Timestamp
box_options_sola_multicast_hsvf_v1_8.trading_engine_timestamp = {}

-- Size: Trading Engine Timestamp
box_options_sola_multicast_hsvf_v1_8.trading_engine_timestamp.size = 9

-- Display: Trading Engine Timestamp
box_options_sola_multicast_hsvf_v1_8.trading_engine_timestamp.display = function(value)
  return "Trading Engine Timestamp: "..value
end

-- Dissect: Trading Engine Timestamp
box_options_sola_multicast_hsvf_v1_8.trading_engine_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.trading_engine_timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.trading_engine_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.trading_engine_timestamp, range, value, display)

  return offset + length, value
end

-- System Timestamp Message
box_options_sola_multicast_hsvf_v1_8.system_timestamp_message = {}

-- Calculate size of: System Timestamp Message
box_options_sola_multicast_hsvf_v1_8.system_timestamp_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.trading_engine_timestamp.size

  return index
end

-- Display: System Timestamp Message
box_options_sola_multicast_hsvf_v1_8.system_timestamp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Timestamp Message
box_options_sola_multicast_hsvf_v1_8.system_timestamp_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Engine Timestamp: N
  index, trading_engine_timestamp = box_options_sola_multicast_hsvf_v1_8.trading_engine_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Timestamp Message
box_options_sola_multicast_hsvf_v1_8.system_timestamp_message.dissect = function(buffer, offset, packet, parent)
  if show.system_timestamp_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.system_timestamp_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.system_timestamp_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.system_timestamp_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.system_timestamp_message.fields(buffer, offset, packet, parent)
  end
end

-- Circuit Assurance Message
box_options_sola_multicast_hsvf_v1_8.circuit_assurance_message = {}

-- Calculate size of: Circuit Assurance Message
box_options_sola_multicast_hsvf_v1_8.circuit_assurance_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.time.size

  return index
end

-- Display: Circuit Assurance Message
box_options_sola_multicast_hsvf_v1_8.circuit_assurance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Circuit Assurance Message
box_options_sola_multicast_hsvf_v1_8.circuit_assurance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: N
  index, time = box_options_sola_multicast_hsvf_v1_8.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Circuit Assurance Message
box_options_sola_multicast_hsvf_v1_8.circuit_assurance_message.dissect = function(buffer, offset, packet, parent)
  if show.circuit_assurance_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.circuit_assurance_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.circuit_assurance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.circuit_assurance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.circuit_assurance_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Transmission Message
box_options_sola_multicast_hsvf_v1_8.end_of_transmission_message = {}

-- Calculate size of: End Of Transmission Message
box_options_sola_multicast_hsvf_v1_8.end_of_transmission_message.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.exchange_id.size

  index = index + box_options_sola_multicast_hsvf_v1_8.time.size

  return index
end

-- Display: End Of Transmission Message
box_options_sola_multicast_hsvf_v1_8.end_of_transmission_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmission Message
box_options_sola_multicast_hsvf_v1_8.end_of_transmission_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_multicast_hsvf_v1_8.exchange_id.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = box_options_sola_multicast_hsvf_v1_8.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmission Message
box_options_sola_multicast_hsvf_v1_8.end_of_transmission_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_transmission_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.end_of_transmission_message, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.end_of_transmission_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.end_of_transmission_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.end_of_transmission_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
box_options_sola_multicast_hsvf_v1_8.message_body = {}

-- Calculate runtime size of: Message Body
box_options_sola_multicast_hsvf_v1_8.message_body.size = function(buffer, offset, message_type)
  -- Size of End Of Transmission Message
  if message_type == "U" then
    return box_options_sola_multicast_hsvf_v1_8.end_of_transmission_message.size(buffer, offset)
  end
  -- Size of Circuit Assurance Message
  if message_type == "V" then
    return box_options_sola_multicast_hsvf_v1_8.circuit_assurance_message.size(buffer, offset)
  end
  -- Size of System Timestamp Message
  if message_type == "Z" then
    return box_options_sola_multicast_hsvf_v1_8.system_timestamp_message.size(buffer, offset)
  end
  -- Size of Option Trade Message
  if message_type == "C" then
    return box_options_sola_multicast_hsvf_v1_8.option_trade_message.size(buffer, offset)
  end
  -- Size of Complex Order Instrument Trade Message
  if message_type == "CS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_trade_message.size(buffer, offset)
  end
  -- Size of Option Request For Quote Message
  if message_type == "D" then
    return box_options_sola_multicast_hsvf_v1_8.option_request_for_quote_message.size(buffer, offset)
  end
  -- Size of Option Quote Message
  if message_type == "F" then
    return box_options_sola_multicast_hsvf_v1_8.option_quote_message.size(buffer, offset)
  end
  -- Size of Complex Order Quote Message
  if message_type == "FS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_quote_message.size(buffer, offset)
  end
  -- Size of Group Opening Time Message
  if message_type == "GC" then
    return box_options_sola_multicast_hsvf_v1_8.group_opening_time_message.size(buffer, offset)
  end
  -- Size of Group Status Message
  if message_type == "GR" then
    return box_options_sola_multicast_hsvf_v1_8.group_status_message.size(buffer, offset)
  end
  -- Size of Strategies Group Status Message
  if message_type == "GS" then
    return box_options_sola_multicast_hsvf_v1_8.strategies_group_status_message.size(buffer, offset)
  end
  -- Size of Option Market Depth Message
  if message_type == "H" then
    return box_options_sola_multicast_hsvf_v1_8.option_market_depth_message.size(buffer, offset)
  end
  -- Size of Complex Order Market Depth Message
  if message_type == "HS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_market_depth_message.size(buffer, offset)
  end
  -- Size of Option Trade Cancellation Message
  if message_type == "I" then
    return box_options_sola_multicast_hsvf_v1_8.option_trade_cancellation_message.size(buffer, offset)
  end
  -- Size of Complex Order Trade Cancellation Message
  if message_type == "IS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_trade_cancellation_message.size(buffer, offset)
  end
  -- Size of Option Instrument Keys Message
  if message_type == "J" then
    return box_options_sola_multicast_hsvf_v1_8.option_instrument_keys_message.size(buffer, offset)
  end
  -- Size of Complex Order Instrument Keys Message
  if message_type == "JS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_keys_message.size(buffer, offset)
  end
  -- Size of Bulletins Message
  if message_type == "L" then
    return box_options_sola_multicast_hsvf_v1_8.bulletins_message.size(buffer, offset)
  end
  -- Size of Option Summary Message
  if message_type == "N" then
    return box_options_sola_multicast_hsvf_v1_8.option_summary_message.size(buffer, offset)
  end
  -- Size of Complex Order Summary Message
  if message_type == "NS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_summary_message.size(buffer, offset)
  end
  -- Size of Beginning Of Options Summary Message
  if message_type == "Q" then
    return box_options_sola_multicast_hsvf_v1_8.beginning_of_options_summary_message.size(buffer, offset)
  end
  -- Size of Beginning Of Complex Order Summary Message
  if message_type == "QS" then
    return box_options_sola_multicast_hsvf_v1_8.beginning_of_complex_order_summary_message.size(buffer, offset)
  end
  -- Size of End Of Sales Message
  if message_type == "S" then
    return box_options_sola_multicast_hsvf_v1_8.end_of_sales_message.size(buffer, offset)
  end
  -- Size of Option Improvement Process Beginning Message
  if message_type == "M" then
    return box_options_sola_multicast_hsvf_v1_8.option_improvement_process_beginning_message.size(buffer, offset)
  end
  -- Size of Complex Order Improvement Process Beginning Message Message
  if message_type == "MS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_improvement_process_beginning_message_message.size(buffer, offset)
  end
  -- Size of Market Sheet Initial And Improvement Order Message
  if message_type == "O" then
    return box_options_sola_multicast_hsvf_v1_8.market_sheet_initial_and_improvement_order_message.size(buffer, offset)
  end
  -- Size of Complex Order Market Sheet Initial And Improvement Order Message
  if message_type == "OS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_market_sheet_initial_and_improvement_order_message.size(buffer, offset)
  end
  -- Size of Initial And Improvement Order Message
  if message_type == "T" then
    return box_options_sola_multicast_hsvf_v1_8.initial_and_improvement_order_message.size(buffer, offset)
  end
  -- Size of Complex Order Initial And Improvement Order Message
  if message_type == "TS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_initial_and_improvement_order_message.size(buffer, offset)
  end

  return 0
end

-- Display: Message Body
box_options_sola_multicast_hsvf_v1_8.message_body.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Body
box_options_sola_multicast_hsvf_v1_8.message_body.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect End Of Transmission Message
  if message_type == "U" then
    return box_options_sola_multicast_hsvf_v1_8.end_of_transmission_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Circuit Assurance Message
  if message_type == "V" then
    return box_options_sola_multicast_hsvf_v1_8.circuit_assurance_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Timestamp Message
  if message_type == "Z" then
    return box_options_sola_multicast_hsvf_v1_8.system_timestamp_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Message
  if message_type == "C" then
    return box_options_sola_multicast_hsvf_v1_8.option_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Instrument Trade Message
  if message_type == "CS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Request For Quote Message
  if message_type == "D" then
    return box_options_sola_multicast_hsvf_v1_8.option_request_for_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Quote Message
  if message_type == "F" then
    return box_options_sola_multicast_hsvf_v1_8.option_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Quote Message
  if message_type == "FS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Group Opening Time Message
  if message_type == "GC" then
    return box_options_sola_multicast_hsvf_v1_8.group_opening_time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Group Status Message
  if message_type == "GR" then
    return box_options_sola_multicast_hsvf_v1_8.group_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategies Group Status Message
  if message_type == "GS" then
    return box_options_sola_multicast_hsvf_v1_8.strategies_group_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Market Depth Message
  if message_type == "H" then
    return box_options_sola_multicast_hsvf_v1_8.option_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Market Depth Message
  if message_type == "HS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Cancellation Message
  if message_type == "I" then
    return box_options_sola_multicast_hsvf_v1_8.option_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Trade Cancellation Message
  if message_type == "IS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Instrument Keys Message
  if message_type == "J" then
    return box_options_sola_multicast_hsvf_v1_8.option_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Instrument Keys Message
  if message_type == "JS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulletins Message
  if message_type == "L" then
    return box_options_sola_multicast_hsvf_v1_8.bulletins_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Summary Message
  if message_type == "N" then
    return box_options_sola_multicast_hsvf_v1_8.option_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Summary Message
  if message_type == "NS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Options Summary Message
  if message_type == "Q" then
    return box_options_sola_multicast_hsvf_v1_8.beginning_of_options_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Complex Order Summary Message
  if message_type == "QS" then
    return box_options_sola_multicast_hsvf_v1_8.beginning_of_complex_order_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Sales Message
  if message_type == "S" then
    return box_options_sola_multicast_hsvf_v1_8.end_of_sales_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Improvement Process Beginning Message
  if message_type == "M" then
    return box_options_sola_multicast_hsvf_v1_8.option_improvement_process_beginning_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Improvement Process Beginning Message Message
  if message_type == "MS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_improvement_process_beginning_message_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Sheet Initial And Improvement Order Message
  if message_type == "O" then
    return box_options_sola_multicast_hsvf_v1_8.market_sheet_initial_and_improvement_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Market Sheet Initial And Improvement Order Message
  if message_type == "OS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_market_sheet_initial_and_improvement_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Initial And Improvement Order Message
  if message_type == "T" then
    return box_options_sola_multicast_hsvf_v1_8.initial_and_improvement_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Initial And Improvement Order Message
  if message_type == "TS" then
    return box_options_sola_multicast_hsvf_v1_8.complex_order_initial_and_improvement_order_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Body
box_options_sola_multicast_hsvf_v1_8.message_body.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.message_body then
    return box_options_sola_multicast_hsvf_v1_8.message_body.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = box_options_sola_multicast_hsvf_v1_8.message_body.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = box_options_sola_multicast_hsvf_v1_8.message_body.display(buffer, packet, parent)
  local element = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.message_body, range, display)

  return box_options_sola_multicast_hsvf_v1_8.message_body.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
box_options_sola_multicast_hsvf_v1_8.message_type = {}

-- Size: Message Type
box_options_sola_multicast_hsvf_v1_8.message_type.size = 2

-- Display: Message Type
box_options_sola_multicast_hsvf_v1_8.message_type.display = function(value)
  if value == "U" then
    return "Message Type: End Of Transmission Message (U)"
  end
  if value == "V" then
    return "Message Type: Circuit Assurance Message (V)"
  end
  if value == "Z" then
    return "Message Type: System Timestamp Message (Z)"
  end
  if value == "C" then
    return "Message Type: Option Trade Message (C)"
  end
  if value == "CS" then
    return "Message Type: Complex Order Instrument Trade Message (CS)"
  end
  if value == "D" then
    return "Message Type: Option Request For Quote Message (D)"
  end
  if value == "F" then
    return "Message Type: Option Quote Message (F)"
  end
  if value == "FS" then
    return "Message Type: Complex Order Quote Message (FS)"
  end
  if value == "GC" then
    return "Message Type: Group Opening Time Message (GC)"
  end
  if value == "GR" then
    return "Message Type: Group Status Message (GR)"
  end
  if value == "GS" then
    return "Message Type: Strategies Group Status Message (GS)"
  end
  if value == "H" then
    return "Message Type: Option Market Depth Message (H)"
  end
  if value == "HS" then
    return "Message Type: Complex Order Market Depth Message (HS)"
  end
  if value == "I" then
    return "Message Type: Option Trade Cancellation Message (I)"
  end
  if value == "IS" then
    return "Message Type: Complex Order Trade Cancellation Message (IS)"
  end
  if value == "J" then
    return "Message Type: Option Instrument Keys Message (J)"
  end
  if value == "JS" then
    return "Message Type: Complex Order Instrument Keys Message (JS)"
  end
  if value == "L" then
    return "Message Type: Bulletins Message (L)"
  end
  if value == "N" then
    return "Message Type: Option Summary Message (N)"
  end
  if value == "NS" then
    return "Message Type: Complex Order Summary Message (NS)"
  end
  if value == "Q" then
    return "Message Type: Beginning Of Options Summary Message (Q)"
  end
  if value == "QS" then
    return "Message Type: Beginning Of Complex Order Summary Message (QS)"
  end
  if value == "S" then
    return "Message Type: End Of Sales Message (S)"
  end
  if value == "M" then
    return "Message Type: Option Improvement Process Beginning Message (M)"
  end
  if value == "MS" then
    return "Message Type: Complex Order Improvement Process Beginning Message Message (MS)"
  end
  if value == "O" then
    return "Message Type: Market Sheet Initial And Improvement Order Message (O)"
  end
  if value == "OS" then
    return "Message Type: Complex Order Market Sheet Initial And Improvement Order Message (OS)"
  end
  if value == "T" then
    return "Message Type: Initial And Improvement Order Message (T)"
  end
  if value == "TS" then
    return "Message Type: Complex Order Initial And Improvement Order Message (TS)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
box_options_sola_multicast_hsvf_v1_8.message_type.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.message_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_multicast_hsvf_v1_8.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.message_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
box_options_sola_multicast_hsvf_v1_8.sequence_number = {}

-- Size: Sequence Number
box_options_sola_multicast_hsvf_v1_8.sequence_number.size = 9

-- Display: Sequence Number
box_options_sola_multicast_hsvf_v1_8.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
box_options_sola_multicast_hsvf_v1_8.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_multicast_hsvf_v1_8.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Header
box_options_sola_multicast_hsvf_v1_8.message_header = {}

-- Calculate size of: Message Header
box_options_sola_multicast_hsvf_v1_8.message_header.size = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_multicast_hsvf_v1_8.sequence_number.size

  index = index + box_options_sola_multicast_hsvf_v1_8.message_type.size

  return index
end

-- Display: Message Header
box_options_sola_multicast_hsvf_v1_8.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
box_options_sola_multicast_hsvf_v1_8.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 9 Byte Ascii String
  index, sequence_number = box_options_sola_multicast_hsvf_v1_8.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Ascii String Enum with 29 values
  index, message_type = box_options_sola_multicast_hsvf_v1_8.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
box_options_sola_multicast_hsvf_v1_8.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.message_header, buffer(offset, 0))
    local index = box_options_sola_multicast_hsvf_v1_8.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_multicast_hsvf_v1_8.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return box_options_sola_multicast_hsvf_v1_8.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Hsvf Stx
box_options_sola_multicast_hsvf_v1_8.hsvf_stx = {}

-- Size: Hsvf Stx
box_options_sola_multicast_hsvf_v1_8.hsvf_stx.size = 1

-- Display: Hsvf Stx
box_options_sola_multicast_hsvf_v1_8.hsvf_stx.display = function(value)
  return "Hsvf Stx: "..value
end

-- Dissect: Hsvf Stx
box_options_sola_multicast_hsvf_v1_8.hsvf_stx.dissect = function(buffer, offset, packet, parent)
  local length = box_options_sola_multicast_hsvf_v1_8.hsvf_stx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = box_options_sola_multicast_hsvf_v1_8.hsvf_stx.display(value, buffer, offset, packet, parent)

  parent:add(omi_box_options_sola_multicast_hsvf_v1_8.fields.hsvf_stx, range, value, display)

  return offset + length, value
end

-- Packet
box_options_sola_multicast_hsvf_v1_8.packet = {}

-- Dissect Packet
box_options_sola_multicast_hsvf_v1_8.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Hsvf Stx: 1 Byte Fixed Width Integer Static
    index, hsvf_stx = box_options_sola_multicast_hsvf_v1_8.hsvf_stx.dissect(buffer, index, packet, parent)

    -- Message Header: Struct of 2 fields
    index, message_header = box_options_sola_multicast_hsvf_v1_8.message_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = trim_right_spaces(buffer(index - 2, 2):string())

    -- Message Body: Runtime Type with 29 branches
    index = box_options_sola_multicast_hsvf_v1_8.message_body.dissect(buffer, index, packet, parent, message_type)

    -- Hsvf Etx: 1 Byte Fixed Width Integer
    index, hsvf_etx = box_options_sola_multicast_hsvf_v1_8.hsvf_etx.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_box_options_sola_multicast_hsvf_v1_8.init()
end

-- Dissector for Box Options Sola Multicast Hsvf 1.8
function omi_box_options_sola_multicast_hsvf_v1_8.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_box_options_sola_multicast_hsvf_v1_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_box_options_sola_multicast_hsvf_v1_8, buffer(), omi_box_options_sola_multicast_hsvf_v1_8.description, "("..buffer:len().." Bytes)")
  return box_options_sola_multicast_hsvf_v1_8.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_box_options_sola_multicast_hsvf_v1_8)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
box_options_sola_multicast_hsvf_v1_8.packet.requiredsize = function(buffer)

  return true
end

-- Verify Hsvf Stx Field
box_options_sola_multicast_hsvf_v1_8.hsvf_stx.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Box Options Sola Multicast Hsvf 1.8
local function omi_box_options_sola_multicast_hsvf_v1_8_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not box_options_sola_multicast_hsvf_v1_8.packet.requiredsize(buffer) then return false end

  -- Verify Hsvf Stx
  if not box_options_sola_multicast_hsvf_v1_8.hsvf_stx.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_box_options_sola_multicast_hsvf_v1_8
  omi_box_options_sola_multicast_hsvf_v1_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Box Options Sola Multicast Hsvf 1.8
omi_box_options_sola_multicast_hsvf_v1_8:register_heuristic("udp", omi_box_options_sola_multicast_hsvf_v1_8_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Boston Options Exchange
--   Version: 1.8
--   Date: Tuesday, October 17, 2023
--   Specification: HSVF-BX-002E-BOX-SOLA-HSVF-Multicast-Specifications-Guide-v1.8-.pdf
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
