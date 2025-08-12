-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Box Options Sola Unicast Hsvf 4.5.1 Protocol
local box_options_sola_unicast_hsvf_v4_5_1 = Proto("Box.Options.Sola.Unicast.Hsvf.v4.5.1.Lua", "Box Options Sola Unicast Hsvf 4.5.1")

-- Component Tables
local show = {}
local format = {}
local box_options_sola_unicast_hsvf_v4_5_1_display = {}
local box_options_sola_unicast_hsvf_v4_5_1_dissect = {}
local box_options_sola_unicast_hsvf_v4_5_1_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Box Options Sola Unicast Hsvf 4.5.1 Fields
box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price = ProtoField.new("Ask Price", "box.options.sola.unicast.hsvf.v4.5.1.askprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_fraction_indicator = ProtoField.new("Ask Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.askpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_sign = ProtoField.new("Ask Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.askpricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.ask_size = ProtoField.new("Ask Size", "box.options.sola.unicast.hsvf.v4.5.1.asksize", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.auction_type = ProtoField.new("Auction Type", "box.options.sola.unicast.hsvf.v4.5.1.auctiontype", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.beginning_of_complex_order_summary_message = ProtoField.new("Beginning Of Complex Order Summary Message", "box.options.sola.unicast.hsvf.v4.5.1.beginningofcomplexordersummarymessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.beginning_of_options_summary_message = ProtoField.new("Beginning Of Options Summary Message", "box.options.sola.unicast.hsvf.v4.5.1.beginningofoptionssummarymessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price = ProtoField.new("Bid Price", "box.options.sola.unicast.hsvf.v4.5.1.bidprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price_fraction_indicator = ProtoField.new("Bid Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.bidpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price_sign = ProtoField.new("Bid Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.bidpricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bid_size = ProtoField.new("Bid Size", "box.options.sola.unicast.hsvf.v4.5.1.bidsize", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bulletin_contents = ProtoField.new("Bulletin Contents", "box.options.sola.unicast.hsvf.v4.5.1.bulletincontents", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bulletin_type = ProtoField.new("Bulletin Type", "box.options.sola.unicast.hsvf.v4.5.1.bulletintype", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bulletins_message = ProtoField.new("Bulletins Message", "box.options.sola.unicast.hsvf.v4.5.1.bulletinsmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.circuit_assurance_message = ProtoField.new("Circuit Assurance Message", "box.options.sola.unicast.hsvf.v4.5.1.circuitassurancemessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.cmta = ProtoField.new("Cmta", "box.options.sola.unicast.hsvf.v4.5.1.cmta", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_market_depth_level = ProtoField.new("Complex Market Depth Level", "box.options.sola.unicast.hsvf.v4.5.1.complexmarketdepthlevel", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order = ProtoField.new("Complex Order", "box.options.sola.unicast.hsvf.v4.5.1.complexorder", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_group_status_message = ProtoField.new("Complex Order Group Status Message", "box.options.sola.unicast.hsvf.v4.5.1.complexordergroupstatusmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_improvement_process_beginning_message_message = ProtoField.new("Complex Order Improvement Process Beginning Message Message", "box.options.sola.unicast.hsvf.v4.5.1.complexorderimprovementprocessbeginningmessagemessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_initial_and_improvement_order_message = ProtoField.new("Complex Order Initial And Improvement Order Message", "box.options.sola.unicast.hsvf.v4.5.1.complexorderinitialandimprovementordermessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_instrument_allow_implied = ProtoField.new("Complex Order Instrument Allow Implied", "box.options.sola.unicast.hsvf.v4.5.1.complexorderinstrumentallowimplied", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_instrument_keys_message = ProtoField.new("Complex Order Instrument Keys Message", "box.options.sola.unicast.hsvf.v4.5.1.complexorderinstrumentkeysmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_instrument_symbol = ProtoField.new("Complex Order Instrument Symbol", "box.options.sola.unicast.hsvf.v4.5.1.complexorderinstrumentsymbol", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_instrument_trade_message = ProtoField.new("Complex Order Instrument Trade Message", "box.options.sola.unicast.hsvf.v4.5.1.complexorderinstrumenttrademessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_market_depth_message = ProtoField.new("Complex Order Market Depth Message", "box.options.sola.unicast.hsvf.v4.5.1.complexordermarketdepthmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_market_sheet_initial_and_improvement_order_message = ProtoField.new("Complex Order Market Sheet Initial And Improvement Order Message", "box.options.sola.unicast.hsvf.v4.5.1.complexordermarketsheetinitialandimprovementordermessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_quote_message = ProtoField.new("Complex Order Quote Message", "box.options.sola.unicast.hsvf.v4.5.1.complexorderquotemessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_summary_message = ProtoField.new("Complex Order Summary Message", "box.options.sola.unicast.hsvf.v4.5.1.complexordersummarymessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_trade_cancellation_message = ProtoField.new("Complex Order Trade Cancellation Message", "box.options.sola.unicast.hsvf.v4.5.1.complexordertradecancellationmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.connection_message = ProtoField.new("Connection Message", "box.options.sola.unicast.hsvf.v4.5.1.connectionmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.continue_marker = ProtoField.new("Continue Marker", "box.options.sola.unicast.hsvf.v4.5.1.continuemarker", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.deletion_type = ProtoField.new("Deletion Type", "box.options.sola.unicast.hsvf.v4.5.1.deletiontype", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.delivery_month = ProtoField.new("Delivery Month", "box.options.sola.unicast.hsvf.v4.5.1.deliverymonth", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.end_of_sales_message = ProtoField.new("End Of Sales Message", "box.options.sola.unicast.hsvf.v4.5.1.endofsalesmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.end_of_the_exposition = ProtoField.new("End Of The Exposition", "box.options.sola.unicast.hsvf.v4.5.1.endoftheexposition", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.end_of_transmission_message = ProtoField.new("End Of Transmission Message", "box.options.sola.unicast.hsvf.v4.5.1.endoftransmissionmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.exchange_id = ProtoField.new("Exchange Id", "box.options.sola.unicast.hsvf.v4.5.1.exchangeid", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.expiry_day = ProtoField.new("Expiry Day", "box.options.sola.unicast.hsvf.v4.5.1.expiryday", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.expiry_month_code = ProtoField.new("Expiry Month Code", "box.options.sola.unicast.hsvf.v4.5.1.expirymonthcode", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.expiry_year = ProtoField.new("Expiry Year", "box.options.sola.unicast.hsvf.v4.5.1.expiryyear", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.filler_1 = ProtoField.new("Filler 1", "box.options.sola.unicast.hsvf.v4.5.1.filler1", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.filler_2 = ProtoField.new("Filler 2", "box.options.sola.unicast.hsvf.v4.5.1.filler2", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.filler_6 = ProtoField.new("Filler 6", "box.options.sola.unicast.hsvf.v4.5.1.filler6", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.firm_id = ProtoField.new("Firm Id", "box.options.sola.unicast.hsvf.v4.5.1.firmid", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.gap_control = ProtoField.new("Gap Control", "box.options.sola.unicast.hsvf.v4.5.1.gapcontrol", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.gap_sequence_message = ProtoField.new("Gap Sequence Message", "box.options.sola.unicast.hsvf.v4.5.1.gapsequencemessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.group = ProtoField.new("Group", "box.options.sola.unicast.hsvf.v4.5.1.group", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.group_instrument = ProtoField.new("Group Instrument", "box.options.sola.unicast.hsvf.v4.5.1.groupinstrument", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.group_of_the_complex_order_instrument = ProtoField.new("Group Of The Complex Order Instrument", "box.options.sola.unicast.hsvf.v4.5.1.groupofthecomplexorderinstrument", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.group_opening_time_message = ProtoField.new("Group Opening Time Message", "box.options.sola.unicast.hsvf.v4.5.1.groupopeningtimemessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.group_status = ProtoField.new("Group Status", "box.options.sola.unicast.hsvf.v4.5.1.groupstatus", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.group_status_message = ProtoField.new("Group Status Message", "box.options.sola.unicast.hsvf.v4.5.1.groupstatusmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.high_price = ProtoField.new("High Price", "box.options.sola.unicast.hsvf.v4.5.1.highprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.high_price_fraction_indicator = ProtoField.new("High Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.highpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.high_price_sign = ProtoField.new("High Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.highpricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.hsvf_etx = ProtoField.new("Hsvf Etx", "box.options.sola.unicast.hsvf.v4.5.1.hsvfetx", ftypes.INT8)
box_options_sola_unicast_hsvf_v4_5_1.fields.hsvf_protocol = ProtoField.new("Hsvf Protocol", "box.options.sola.unicast.hsvf.v4.5.1.hsvfprotocol", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.hsvf_stx = ProtoField.new("Hsvf Stx", "box.options.sola.unicast.hsvf.v4.5.1.hsvfstx", ftypes.INT8)
box_options_sola_unicast_hsvf_v4_5_1.fields.improvement_order_side = ProtoField.new("Improvement Order Side", "box.options.sola.unicast.hsvf.v4.5.1.improvementorderside", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.improvement_phase_expiry_time = ProtoField.new("Improvement Phase Expiry Time", "box.options.sola.unicast.hsvf.v4.5.1.improvementphaseexpirytime", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.improvement_phase_sequential_number = ProtoField.new("Improvement Phase Sequential Number", "box.options.sola.unicast.hsvf.v4.5.1.improvementphasesequentialnumber", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.improvement_process_expiry_duration = ProtoField.new("Improvement Process Expiry Duration", "box.options.sola.unicast.hsvf.v4.5.1.improvementprocessexpiryduration", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.initial_and_improvement_order_message = ProtoField.new("Initial And Improvement Order Message", "box.options.sola.unicast.hsvf.v4.5.1.initialandimprovementordermessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_price = ProtoField.new("Initial Order Price", "box.options.sola.unicast.hsvf.v4.5.1.initialorderprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_price_fraction_indicator = ProtoField.new("Initial Order Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.initialorderpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_price_sign = ProtoField.new("Initial Order Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.initialorderpricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_quantity = ProtoField.new("Initial Order Quantity", "box.options.sola.unicast.hsvf.v4.5.1.initialorderquantity", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_side = ProtoField.new("Initial Order Side", "box.options.sola.unicast.hsvf.v4.5.1.initialorderside", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.instrument = ProtoField.new("Instrument", "box.options.sola.unicast.hsvf.v4.5.1.instrument", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.instrument_description = ProtoField.new("Instrument Description", "box.options.sola.unicast.hsvf.v4.5.1.instrumentdescription", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.instrument_external_code = ProtoField.new("Instrument External Code", "box.options.sola.unicast.hsvf.v4.5.1.instrumentexternalcode", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.instrument_leg = ProtoField.new("Instrument Leg", "box.options.sola.unicast.hsvf.v4.5.1.instrumentleg", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.instrument_status_marker = ProtoField.new("Instrument Status Marker", "box.options.sola.unicast.hsvf.v4.5.1.instrumentstatusmarker", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.last_price = ProtoField.new("Last Price", "box.options.sola.unicast.hsvf.v4.5.1.lastprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.last_price_fraction_indicator = ProtoField.new("Last Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.lastpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.last_price_sign = ProtoField.new("Last Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.lastpricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.leg_ratio = ProtoField.new("Leg Ratio", "box.options.sola.unicast.hsvf.v4.5.1.legratio", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.leg_ratio_sign = ProtoField.new("Leg Ratio Sign", "box.options.sola.unicast.hsvf.v4.5.1.legratiosign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.leg_symbol = ProtoField.new("Leg Symbol", "box.options.sola.unicast.hsvf.v4.5.1.legsymbol", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.level_of_market_depth = ProtoField.new("Level Of Market Depth", "box.options.sola.unicast.hsvf.v4.5.1.levelofmarketdepth", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.limit_entered_for_an_order_sign = ProtoField.new("Limit Entered For An Order Sign", "box.options.sola.unicast.hsvf.v4.5.1.limitenteredforanordersign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.limit_fraction_indicator = ProtoField.new("Limit Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.limitfractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.low_price = ProtoField.new("Low Price", "box.options.sola.unicast.hsvf.v4.5.1.lowprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.low_price_fraction_indicator = ProtoField.new("Low Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.lowpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.low_price_sign = ProtoField.new("Low Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.lowpricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.market_depth_level = ProtoField.new("Market Depth Level", "box.options.sola.unicast.hsvf.v4.5.1.marketdepthlevel", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.market_flow_indicator = ProtoField.new("Market Flow Indicator", "box.options.sola.unicast.hsvf.v4.5.1.marketflowindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.market_sheet_initial_and_improvement_order_message = ProtoField.new("Market Sheet Initial And Improvement Order Message", "box.options.sola.unicast.hsvf.v4.5.1.marketsheetinitialandimprovementordermessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.market_summaries = ProtoField.new("Market Summaries", "box.options.sola.unicast.hsvf.v4.5.1.marketsummaries", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.max_number_of_contracts_per_order = ProtoField.new("Max Number Of Contracts Per Order", "box.options.sola.unicast.hsvf.v4.5.1.maxnumberofcontractsperorder", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.max_threshold_price = ProtoField.new("Max Threshold Price", "box.options.sola.unicast.hsvf.v4.5.1.maxthresholdprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.max_threshold_price_fraction_indicator = ProtoField.new("Max Threshold Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.maxthresholdpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.max_threshold_price_sign = ProtoField.new("Max Threshold Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.maxthresholdpricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.maximum_number_of_contracts_per_order = ProtoField.new("Maximum Number Of Contracts Per Order", "box.options.sola.unicast.hsvf.v4.5.1.maximumnumberofcontractsperorder", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.maximum_threshold_price = ProtoField.new("Maximum Threshold Price", "box.options.sola.unicast.hsvf.v4.5.1.maximumthresholdprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.maximum_threshold_price_fraction_indicator = ProtoField.new("Maximum Threshold Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.maximumthresholdpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.message_body = ProtoField.new("Message Body", "box.options.sola.unicast.hsvf.v4.5.1.messagebody", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.message_header = ProtoField.new("Message Header", "box.options.sola.unicast.hsvf.v4.5.1.messageheader", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.message_type = ProtoField.new("Message Type", "box.options.sola.unicast.hsvf.v4.5.1.messagetype", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.min_number_of_contracts_per_order = ProtoField.new("Min Number Of Contracts Per Order", "box.options.sola.unicast.hsvf.v4.5.1.minnumberofcontractsperorder", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.min_threshold_price = ProtoField.new("Min Threshold Price", "box.options.sola.unicast.hsvf.v4.5.1.minthresholdprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.min_threshold_price_fraction_indicator = ProtoField.new("Min Threshold Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.minthresholdpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.min_threshold_price_sign = ProtoField.new("Min Threshold Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.minthresholdpricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.minimum_number_of_contracts_per_order = ProtoField.new("Minimum Number Of Contracts Per Order", "box.options.sola.unicast.hsvf.v4.5.1.minimumnumberofcontractsperorder", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.minimum_quantity_for_improvement_order = ProtoField.new("Minimum Quantity For Improvement Order", "box.options.sola.unicast.hsvf.v4.5.1.minimumquantityforimprovementorder", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.minimum_threshold_price = ProtoField.new("Minimum Threshold Price", "box.options.sola.unicast.hsvf.v4.5.1.minimumthresholdprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.minimum_threshold_price_fraction_indicator = ProtoField.new("Minimum Threshold Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.minimumthresholdpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.net_change = ProtoField.new("Net Change", "box.options.sola.unicast.hsvf.v4.5.1.netchange", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.net_change_fraction_indicator = ProtoField.new("Net Change Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.netchangefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.net_change_sign = ProtoField.new("Net Change Sign", "box.options.sola.unicast.hsvf.v4.5.1.netchangesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_ask_orders = ProtoField.new("Number Of Ask Orders", "box.options.sola.unicast.hsvf.v4.5.1.numberofaskorders", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_bid_orders = ProtoField.new("Number Of Bid Orders", "box.options.sola.unicast.hsvf.v4.5.1.numberofbidorders", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_legs = ProtoField.new("Number Of Legs", "box.options.sola.unicast.hsvf.v4.5.1.numberoflegs", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_levels = ProtoField.new("Number Of Levels", "box.options.sola.unicast.hsvf.v4.5.1.numberoflevels", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_option_classes_requested = ProtoField.new("Number Of Option Classes Requested", "box.options.sola.unicast.hsvf.v4.5.1.numberofoptionclassesrequested", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.open_interest = ProtoField.new("Open Interest", "box.options.sola.unicast.hsvf.v4.5.1.openinterest", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.open_price = ProtoField.new("Open Price", "box.options.sola.unicast.hsvf.v4.5.1.openprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.open_price_fraction_indicator = ProtoField.new("Open Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.openpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.open_price_sign = ProtoField.new("Open Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.openpricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_classes_requested = ProtoField.new("Option Classes Requested", "box.options.sola.unicast.hsvf.v4.5.1.optionclassesrequested", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_improvement_process_beginning_message = ProtoField.new("Option Improvement Process Beginning Message", "box.options.sola.unicast.hsvf.v4.5.1.optionimprovementprocessbeginningmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_instrument_keys_message = ProtoField.new("Option Instrument Keys Message", "box.options.sola.unicast.hsvf.v4.5.1.optioninstrumentkeysmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_marker = ProtoField.new("Option Marker", "box.options.sola.unicast.hsvf.v4.5.1.optionmarker", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_market_depth_message = ProtoField.new("Option Market Depth Message", "box.options.sola.unicast.hsvf.v4.5.1.optionmarketdepthmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_quote_message = ProtoField.new("Option Quote Message", "box.options.sola.unicast.hsvf.v4.5.1.optionquotemessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_request_for_quote_message = ProtoField.new("Option Request For Quote Message", "box.options.sola.unicast.hsvf.v4.5.1.optionrequestforquotemessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_summary_message = ProtoField.new("Option Summary Message", "box.options.sola.unicast.hsvf.v4.5.1.optionsummarymessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_trade_cancellation_message = ProtoField.new("Option Trade Cancellation Message", "box.options.sola.unicast.hsvf.v4.5.1.optiontradecancellationmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_trade_message = ProtoField.new("Option Trade Message", "box.options.sola.unicast.hsvf.v4.5.1.optiontrademessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_type = ProtoField.new("Option Type", "box.options.sola.unicast.hsvf.v4.5.1.optiontype", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.order_quantity = ProtoField.new("Order Quantity", "box.options.sola.unicast.hsvf.v4.5.1.orderquantity", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.order_sequence_number = ProtoField.new("Order Sequence Number", "box.options.sola.unicast.hsvf.v4.5.1.ordersequencenumber", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.order_side = ProtoField.new("Order Side", "box.options.sola.unicast.hsvf.v4.5.1.orderside", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.packet = ProtoField.new("Packet", "box.options.sola.unicast.hsvf.v4.5.1.packet", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.percentage_assured_to_initial_order = ProtoField.new("Percentage Assured To Initial Order", "box.options.sola.unicast.hsvf.v4.5.1.percentageassuredtoinitialorder", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.price_indicator_marker = ProtoField.new("Price Indicator Marker", "box.options.sola.unicast.hsvf.v4.5.1.priceindicatormarker", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.public_customer_ask_size = ProtoField.new("Public Customer Ask Size", "box.options.sola.unicast.hsvf.v4.5.1.publiccustomerasksize", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.public_customer_bid_size = ProtoField.new("Public Customer Bid Size", "box.options.sola.unicast.hsvf.v4.5.1.publiccustomerbidsize", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.reference_price = ProtoField.new("Reference Price", "box.options.sola.unicast.hsvf.v4.5.1.referenceprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.reference_price_fraction_indicator = ProtoField.new("Reference Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.referencepricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.requested_size = ProtoField.new("Requested Size", "box.options.sola.unicast.hsvf.v4.5.1.requestedsize", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.reserved = ProtoField.new("Reserved", "box.options.sola.unicast.hsvf.v4.5.1.reserved", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.reset_sequence = ProtoField.new("Reset Sequence", "box.options.sola.unicast.hsvf.v4.5.1.resetsequence", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.root_symbol = ProtoField.new("Root Symbol", "box.options.sola.unicast.hsvf.v4.5.1.rootsymbol", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.scheduled_time = ProtoField.new("Scheduled Time", "box.options.sola.unicast.hsvf.v4.5.1.scheduledtime", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.sequence_number = ProtoField.new("Sequence Number", "box.options.sola.unicast.hsvf.v4.5.1.sequencenumber", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.sequence_numbers_skipped = ProtoField.new("Sequence Numbers Skipped", "box.options.sola.unicast.hsvf.v4.5.1.sequencenumbersskipped", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.strike_price = ProtoField.new("Strike Price", "box.options.sola.unicast.hsvf.v4.5.1.strikeprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.strike_price_currency = ProtoField.new("Strike Price Currency", "box.options.sola.unicast.hsvf.v4.5.1.strikepricecurrency", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.strike_price_fraction_indicator = ProtoField.new("Strike Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.strikepricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.system_default = ProtoField.new("System Default", "box.options.sola.unicast.hsvf.v4.5.1.systemdefault", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.system_timestamp_message = ProtoField.new("System Timestamp Message", "box.options.sola.unicast.hsvf.v4.5.1.systemtimestampmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.system_value = ProtoField.new("System Value", "box.options.sola.unicast.hsvf.v4.5.1.systemvalue", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.tick = ProtoField.new("Tick", "box.options.sola.unicast.hsvf.v4.5.1.tick", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.tick_increment = ProtoField.new("Tick Increment", "box.options.sola.unicast.hsvf.v4.5.1.tickincrement", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.tick_increment_fraction_indicator = ProtoField.new("Tick Increment Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.tickincrementfractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.time = ProtoField.new("Time", "box.options.sola.unicast.hsvf.v4.5.1.time", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.timestamp = ProtoField.new("Timestamp", "box.options.sola.unicast.hsvf.v4.5.1.timestamp", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.trade_price = ProtoField.new("Trade Price", "box.options.sola.unicast.hsvf.v4.5.1.tradeprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.trade_price_fraction_indicator = ProtoField.new("Trade Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.tradepricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.trade_price_sign = ProtoField.new("Trade Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.tradepricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.trading_engine_timestamp = ProtoField.new("Trading Engine Timestamp", "box.options.sola.unicast.hsvf.v4.5.1.tradingenginetimestamp", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_clearing_account = ProtoField.new("Type Of Clearing Account", "box.options.sola.unicast.hsvf.v4.5.1.typeofclearingaccount", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_instrument = ProtoField.new("Type Of Instrument", "box.options.sola.unicast.hsvf.v4.5.1.typeofinstrument", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_market = ProtoField.new("Type Of Market", "box.options.sola.unicast.hsvf.v4.5.1.typeofmarket", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_market_data = ProtoField.new("Type Of Market Data", "box.options.sola.unicast.hsvf.v4.5.1.typeofmarketdata", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_options = ProtoField.new("Type Of Options", "box.options.sola.unicast.hsvf.v4.5.1.typeofoptions", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_order = ProtoField.new("Type Of Order", "box.options.sola.unicast.hsvf.v4.5.1.typeoforder", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_underlying = ProtoField.new("Type Of Underlying", "box.options.sola.unicast.hsvf.v4.5.1.typeofunderlying", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "box.options.sola.unicast.hsvf.v4.5.1.underlyingsymbol", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.underlying_symbol_root = ProtoField.new("Underlying Symbol Root", "box.options.sola.unicast.hsvf.v4.5.1.underlyingsymbolroot", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.volume = ProtoField.new("Volume", "box.options.sola.unicast.hsvf.v4.5.1.volume", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Box Options Sola Unicast Hsvf 4.5.1 Element Dissection Options
show.beginning_of_complex_order_summary_message = true
show.beginning_of_options_summary_message = true
show.bulletins_message = true
show.circuit_assurance_message = true
show.complex_market_depth_level = true
show.complex_order_group_status_message = true
show.complex_order_improvement_process_beginning_message_message = true
show.complex_order_initial_and_improvement_order_message = true
show.complex_order_instrument_keys_message = true
show.complex_order_instrument_trade_message = true
show.complex_order_market_depth_message = true
show.complex_order_market_sheet_initial_and_improvement_order_message = true
show.complex_order_quote_message = true
show.complex_order_summary_message = true
show.complex_order_trade_cancellation_message = true
show.connection_message = true
show.end_of_sales_message = true
show.end_of_transmission_message = true
show.gap_sequence_message = true
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
show.system_timestamp_message = true
show.message_body = false

-- Register Box Options Sola Unicast Hsvf 4.5.1 Show Options
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_beginning_of_complex_order_summary_message = Pref.bool("Show Beginning Of Complex Order Summary Message", show.beginning_of_complex_order_summary_message, "Parse and add Beginning Of Complex Order Summary Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_beginning_of_options_summary_message = Pref.bool("Show Beginning Of Options Summary Message", show.beginning_of_options_summary_message, "Parse and add Beginning Of Options Summary Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_bulletins_message = Pref.bool("Show Bulletins Message", show.bulletins_message, "Parse and add Bulletins Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_circuit_assurance_message = Pref.bool("Show Circuit Assurance Message", show.circuit_assurance_message, "Parse and add Circuit Assurance Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_market_depth_level = Pref.bool("Show Complex Market Depth Level", show.complex_market_depth_level, "Parse and add Complex Market Depth Level to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_group_status_message = Pref.bool("Show Complex Order Group Status Message", show.complex_order_group_status_message, "Parse and add Complex Order Group Status Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_improvement_process_beginning_message_message = Pref.bool("Show Complex Order Improvement Process Beginning Message Message", show.complex_order_improvement_process_beginning_message_message, "Parse and add Complex Order Improvement Process Beginning Message Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_initial_and_improvement_order_message = Pref.bool("Show Complex Order Initial And Improvement Order Message", show.complex_order_initial_and_improvement_order_message, "Parse and add Complex Order Initial And Improvement Order Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_instrument_keys_message = Pref.bool("Show Complex Order Instrument Keys Message", show.complex_order_instrument_keys_message, "Parse and add Complex Order Instrument Keys Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_instrument_trade_message = Pref.bool("Show Complex Order Instrument Trade Message", show.complex_order_instrument_trade_message, "Parse and add Complex Order Instrument Trade Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_market_depth_message = Pref.bool("Show Complex Order Market Depth Message", show.complex_order_market_depth_message, "Parse and add Complex Order Market Depth Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_market_sheet_initial_and_improvement_order_message = Pref.bool("Show Complex Order Market Sheet Initial And Improvement Order Message", show.complex_order_market_sheet_initial_and_improvement_order_message, "Parse and add Complex Order Market Sheet Initial And Improvement Order Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_quote_message = Pref.bool("Show Complex Order Quote Message", show.complex_order_quote_message, "Parse and add Complex Order Quote Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_summary_message = Pref.bool("Show Complex Order Summary Message", show.complex_order_summary_message, "Parse and add Complex Order Summary Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_trade_cancellation_message = Pref.bool("Show Complex Order Trade Cancellation Message", show.complex_order_trade_cancellation_message, "Parse and add Complex Order Trade Cancellation Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_connection_message = Pref.bool("Show Connection Message", show.connection_message, "Parse and add Connection Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_end_of_sales_message = Pref.bool("Show End Of Sales Message", show.end_of_sales_message, "Parse and add End Of Sales Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_end_of_transmission_message = Pref.bool("Show End Of Transmission Message", show.end_of_transmission_message, "Parse and add End Of Transmission Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_gap_sequence_message = Pref.bool("Show Gap Sequence Message", show.gap_sequence_message, "Parse and add Gap Sequence Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_group_opening_time_message = Pref.bool("Show Group Opening Time Message", show.group_opening_time_message, "Parse and add Group Opening Time Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_group_status_message = Pref.bool("Show Group Status Message", show.group_status_message, "Parse and add Group Status Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_initial_and_improvement_order_message = Pref.bool("Show Initial And Improvement Order Message", show.initial_and_improvement_order_message, "Parse and add Initial And Improvement Order Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_instrument_description = Pref.bool("Show Instrument Description", show.instrument_description, "Parse and add Instrument Description to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_instrument_leg = Pref.bool("Show Instrument Leg", show.instrument_leg, "Parse and add Instrument Leg to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_market_depth_level = Pref.bool("Show Market Depth Level", show.market_depth_level, "Parse and add Market Depth Level to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_market_flow_indicator = Pref.bool("Show Market Flow Indicator", show.market_flow_indicator, "Parse and add Market Flow Indicator to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_market_sheet_initial_and_improvement_order_message = Pref.bool("Show Market Sheet Initial And Improvement Order Message", show.market_sheet_initial_and_improvement_order_message, "Parse and add Market Sheet Initial And Improvement Order Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_improvement_process_beginning_message = Pref.bool("Show Option Improvement Process Beginning Message", show.option_improvement_process_beginning_message, "Parse and add Option Improvement Process Beginning Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_instrument_keys_message = Pref.bool("Show Option Instrument Keys Message", show.option_instrument_keys_message, "Parse and add Option Instrument Keys Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_marker = Pref.bool("Show Option Marker", show.option_marker, "Parse and add Option Marker to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_market_depth_message = Pref.bool("Show Option Market Depth Message", show.option_market_depth_message, "Parse and add Option Market Depth Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_quote_message = Pref.bool("Show Option Quote Message", show.option_quote_message, "Parse and add Option Quote Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_request_for_quote_message = Pref.bool("Show Option Request For Quote Message", show.option_request_for_quote_message, "Parse and add Option Request For Quote Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_summary_message = Pref.bool("Show Option Summary Message", show.option_summary_message, "Parse and add Option Summary Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_trade_cancellation_message = Pref.bool("Show Option Trade Cancellation Message", show.option_trade_cancellation_message, "Parse and add Option Trade Cancellation Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_trade_message = Pref.bool("Show Option Trade Message", show.option_trade_message, "Parse and add Option Trade Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_system_timestamp_message = Pref.bool("Show System Timestamp Message", show.system_timestamp_message, "Parse and add System Timestamp Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_message_body = Pref.bool("Show Message Body", show.message_body, "Parse and add Message Body to protocol tree")

-- Handle changed preferences
function box_options_sola_unicast_hsvf_v4_5_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.beginning_of_complex_order_summary_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_beginning_of_complex_order_summary_message then
    show.beginning_of_complex_order_summary_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_beginning_of_complex_order_summary_message
    changed = true
  end
  if show.beginning_of_options_summary_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_beginning_of_options_summary_message then
    show.beginning_of_options_summary_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_beginning_of_options_summary_message
    changed = true
  end
  if show.bulletins_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_bulletins_message then
    show.bulletins_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_bulletins_message
    changed = true
  end
  if show.circuit_assurance_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_circuit_assurance_message then
    show.circuit_assurance_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_circuit_assurance_message
    changed = true
  end
  if show.complex_market_depth_level ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_market_depth_level then
    show.complex_market_depth_level = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_market_depth_level
    changed = true
  end
  if show.complex_order_group_status_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_group_status_message then
    show.complex_order_group_status_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_group_status_message
    changed = true
  end
  if show.complex_order_improvement_process_beginning_message_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_improvement_process_beginning_message_message then
    show.complex_order_improvement_process_beginning_message_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_improvement_process_beginning_message_message
    changed = true
  end
  if show.complex_order_initial_and_improvement_order_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_initial_and_improvement_order_message then
    show.complex_order_initial_and_improvement_order_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_initial_and_improvement_order_message
    changed = true
  end
  if show.complex_order_instrument_keys_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_instrument_keys_message then
    show.complex_order_instrument_keys_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_instrument_keys_message
    changed = true
  end
  if show.complex_order_instrument_trade_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_instrument_trade_message then
    show.complex_order_instrument_trade_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_instrument_trade_message
    changed = true
  end
  if show.complex_order_market_depth_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_market_depth_message then
    show.complex_order_market_depth_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_market_depth_message
    changed = true
  end
  if show.complex_order_market_sheet_initial_and_improvement_order_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_market_sheet_initial_and_improvement_order_message then
    show.complex_order_market_sheet_initial_and_improvement_order_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_market_sheet_initial_and_improvement_order_message
    changed = true
  end
  if show.complex_order_quote_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_quote_message then
    show.complex_order_quote_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_quote_message
    changed = true
  end
  if show.complex_order_summary_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_summary_message then
    show.complex_order_summary_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_summary_message
    changed = true
  end
  if show.complex_order_trade_cancellation_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_trade_cancellation_message then
    show.complex_order_trade_cancellation_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_complex_order_trade_cancellation_message
    changed = true
  end
  if show.connection_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_connection_message then
    show.connection_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_connection_message
    changed = true
  end
  if show.end_of_sales_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_end_of_sales_message then
    show.end_of_sales_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_end_of_sales_message
    changed = true
  end
  if show.end_of_transmission_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_end_of_transmission_message then
    show.end_of_transmission_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_end_of_transmission_message
    changed = true
  end
  if show.gap_sequence_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_gap_sequence_message then
    show.gap_sequence_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_gap_sequence_message
    changed = true
  end
  if show.group_opening_time_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_group_opening_time_message then
    show.group_opening_time_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_group_opening_time_message
    changed = true
  end
  if show.group_status_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_group_status_message then
    show.group_status_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_group_status_message
    changed = true
  end
  if show.initial_and_improvement_order_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_initial_and_improvement_order_message then
    show.initial_and_improvement_order_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_initial_and_improvement_order_message
    changed = true
  end
  if show.instrument_description ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_instrument_description then
    show.instrument_description = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_instrument_description
    changed = true
  end
  if show.instrument_leg ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_instrument_leg then
    show.instrument_leg = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_instrument_leg
    changed = true
  end
  if show.market_depth_level ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_market_depth_level then
    show.market_depth_level = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_market_depth_level
    changed = true
  end
  if show.market_flow_indicator ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_market_flow_indicator then
    show.market_flow_indicator = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_market_flow_indicator
    changed = true
  end
  if show.market_sheet_initial_and_improvement_order_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_market_sheet_initial_and_improvement_order_message then
    show.market_sheet_initial_and_improvement_order_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_market_sheet_initial_and_improvement_order_message
    changed = true
  end
  if show.message_header ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_message_header then
    show.message_header = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_message_header
    changed = true
  end
  if show.option_improvement_process_beginning_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_improvement_process_beginning_message then
    show.option_improvement_process_beginning_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_improvement_process_beginning_message
    changed = true
  end
  if show.option_instrument_keys_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_instrument_keys_message then
    show.option_instrument_keys_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_instrument_keys_message
    changed = true
  end
  if show.option_marker ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_marker then
    show.option_marker = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_marker
    changed = true
  end
  if show.option_market_depth_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_market_depth_message then
    show.option_market_depth_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_market_depth_message
    changed = true
  end
  if show.option_quote_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_quote_message then
    show.option_quote_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_quote_message
    changed = true
  end
  if show.option_request_for_quote_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_request_for_quote_message then
    show.option_request_for_quote_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_request_for_quote_message
    changed = true
  end
  if show.option_summary_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_summary_message then
    show.option_summary_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_summary_message
    changed = true
  end
  if show.option_trade_cancellation_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_trade_cancellation_message then
    show.option_trade_cancellation_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_trade_cancellation_message
    changed = true
  end
  if show.option_trade_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_trade_message then
    show.option_trade_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_trade_message
    changed = true
  end
  if show.packet ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_packet then
    show.packet = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_packet
    changed = true
  end
  if show.system_timestamp_message ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_system_timestamp_message then
    show.system_timestamp_message = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_system_timestamp_message
    changed = true
  end
  if show.message_body ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_message_body then
    show.message_body = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_message_body
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
-- Dissect Box Options Sola Unicast Hsvf 4.5.1
-----------------------------------------------------------------------

-- Size: Hsvf Etx
box_options_sola_unicast_hsvf_v4_5_1_size_of.hsvf_etx = 1

-- Display: Hsvf Etx
box_options_sola_unicast_hsvf_v4_5_1_display.hsvf_etx = function(value)
  return "Hsvf Etx: "..value
end

-- Dissect: Hsvf Etx
box_options_sola_unicast_hsvf_v4_5_1_dissect.hsvf_etx = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.hsvf_etx
  local range = buffer(offset, length)
  local value = range:int()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.hsvf_etx(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.hsvf_etx, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
box_options_sola_unicast_hsvf_v4_5_1_size_of.auction_type = 1

-- Display: Auction Type
box_options_sola_unicast_hsvf_v4_5_1_display.auction_type = function(value)
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
box_options_sola_unicast_hsvf_v4_5_1_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Improvement Phase Sequential Number
box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_phase_sequential_number = 6

-- Display: Improvement Phase Sequential Number
box_options_sola_unicast_hsvf_v4_5_1_display.improvement_phase_sequential_number = function(value)
  return "Improvement Phase Sequential Number: "..value
end

-- Dissect: Improvement Phase Sequential Number
box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_phase_sequential_number = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_phase_sequential_number
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.improvement_phase_sequential_number(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.improvement_phase_sequential_number, range, value, display)

  return offset + length, value
end

-- Size: Order Side
box_options_sola_unicast_hsvf_v4_5_1_size_of.order_side = 1

-- Display: Order Side
box_options_sola_unicast_hsvf_v4_5_1_display.order_side = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
box_options_sola_unicast_hsvf_v4_5_1_dissect.order_side = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.order_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.order_side(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.order_side, range, value, display)

  return offset + length, value
end

-- Size: Order Sequence Number
box_options_sola_unicast_hsvf_v4_5_1_size_of.order_sequence_number = 6

-- Display: Order Sequence Number
box_options_sola_unicast_hsvf_v4_5_1_display.order_sequence_number = function(value)
  return "Order Sequence Number: "..value
end

-- Dissect: Order Sequence Number
box_options_sola_unicast_hsvf_v4_5_1_dissect.order_sequence_number = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.order_sequence_number
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.order_sequence_number(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.order_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Deletion Type
box_options_sola_unicast_hsvf_v4_5_1_size_of.deletion_type = 1

-- Display: Deletion Type
box_options_sola_unicast_hsvf_v4_5_1_display.deletion_type = function(value)
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
box_options_sola_unicast_hsvf_v4_5_1_dissect.deletion_type = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.deletion_type
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.deletion_type(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.deletion_type, range, value, display)

  return offset + length, value
end

-- Size: Complex Order Instrument Symbol
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_symbol = 30

-- Display: Complex Order Instrument Symbol
box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_instrument_symbol = function(value)
  return "Complex Order Instrument Symbol: "..value
end

-- Dissect: Complex Order Instrument Symbol
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_symbol = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_instrument_symbol(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_instrument_symbol, range, value, display)

  return offset + length, value
end

-- Size: Exchange Id
box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id = 1

-- Display: Exchange Id
box_options_sola_unicast_hsvf_v4_5_1_display.exchange_id = function(value)
  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.exchange_id(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_initial_and_improvement_order_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_symbol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.deletion_type

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.order_sequence_number

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.order_side

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_phase_sequential_number

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.auction_type

  return index
end

-- Display: Complex Order Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_initial_and_improvement_order_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_initial_and_improvement_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Deletion Type: N
  index, deletion_type = box_options_sola_unicast_hsvf_v4_5_1_dissect.deletion_type(buffer, index, packet, parent)

  -- Order Sequence Number: N
  index, order_sequence_number = box_options_sola_unicast_hsvf_v4_5_1_dissect.order_sequence_number(buffer, index, packet, parent)

  -- Order Side: X
  index, order_side = box_options_sola_unicast_hsvf_v4_5_1_dissect.order_side(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_phase_sequential_number(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_options_sola_unicast_hsvf_v4_5_1_dissect.auction_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_initial_and_improvement_order_message = function(buffer, offset, packet, parent)
  if show.complex_order_initial_and_improvement_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_initial_and_improvement_order_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_initial_and_improvement_order_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Improvement Order Side
box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_order_side = 1

-- Display: Improvement Order Side
box_options_sola_unicast_hsvf_v4_5_1_display.improvement_order_side = function(value)
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
box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_order_side = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_order_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.improvement_order_side(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.improvement_order_side, range, value, display)

  return offset + length, value
end

-- Size: Expiry Day
box_options_sola_unicast_hsvf_v4_5_1_size_of.expiry_day = 2

-- Display: Expiry Day
box_options_sola_unicast_hsvf_v4_5_1_display.expiry_day = function(value)
  return "Expiry Day: "..value
end

-- Dissect: Expiry Day
box_options_sola_unicast_hsvf_v4_5_1_dissect.expiry_day = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.expiry_day
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.expiry_day(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.expiry_day, range, value, display)

  return offset + length, value
end

-- Size: Expiry Year
box_options_sola_unicast_hsvf_v4_5_1_size_of.expiry_year = 2

-- Display: Expiry Year
box_options_sola_unicast_hsvf_v4_5_1_display.expiry_year = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
box_options_sola_unicast_hsvf_v4_5_1_dissect.expiry_year = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.expiry_year
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.expiry_year(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.strike_price_fraction_indicator = 1

-- Display: Strike Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.strike_price_fraction_indicator = function(value)
  return "Strike Price Fraction Indicator: "..value
end

-- Dissect: Strike Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.strike_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.strike_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.strike_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.strike_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.strike_price = 7

-- Display: Strike Price
box_options_sola_unicast_hsvf_v4_5_1_display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.strike_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Filler 1
box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_1 = 1

-- Display: Filler 1
box_options_sola_unicast_hsvf_v4_5_1_display.filler_1 = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_1 = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.filler_1(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Size: Expiry Month Code
box_options_sola_unicast_hsvf_v4_5_1_size_of.expiry_month_code = 1

-- Display: Expiry Month Code
box_options_sola_unicast_hsvf_v4_5_1_display.expiry_month_code = function(value)
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
box_options_sola_unicast_hsvf_v4_5_1_dissect.expiry_month_code = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.expiry_month_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.expiry_month_code(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.expiry_month_code, range, value, display)

  return offset + length, value
end

-- Size: Root Symbol
box_options_sola_unicast_hsvf_v4_5_1_size_of.root_symbol = 6

-- Display: Root Symbol
box_options_sola_unicast_hsvf_v4_5_1_display.root_symbol = function(value)
  return "Root Symbol: "..value
end

-- Dissect: Root Symbol
box_options_sola_unicast_hsvf_v4_5_1_dissect.root_symbol = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.root_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.root_symbol(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.root_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Description
box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_description = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.root_symbol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.expiry_month_code

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_1

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.strike_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.strike_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.expiry_year

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.expiry_day

  return index
end

-- Display: Instrument Description
box_options_sola_unicast_hsvf_v4_5_1_display.instrument_description = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Description
box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Root Symbol: x
  index, root_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.root_symbol(buffer, index, packet, parent)

  -- Expiry Month Code: A
  index, expiry_month_code = box_options_sola_unicast_hsvf_v4_5_1_dissect.expiry_month_code(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_1(buffer, index, packet, parent)

  -- Strike Price: N
  index, strike_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.strike_price(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = box_options_sola_unicast_hsvf_v4_5_1_dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = box_options_sola_unicast_hsvf_v4_5_1_dissect.expiry_day(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Description
box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description = function(buffer, offset, packet, parent)
  if show.instrument_description then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.instrument_description, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.instrument_description(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_and_improvement_order_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_description(buffer, offset + index)

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.deletion_type

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.order_sequence_number

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_order_side

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_phase_sequential_number

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.auction_type

  return index
end

-- Display: Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_display.initial_and_improvement_order_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_and_improvement_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description(buffer, index, packet, parent)

  -- Deletion Type: N
  index, deletion_type = box_options_sola_unicast_hsvf_v4_5_1_dissect.deletion_type(buffer, index, packet, parent)

  -- Order Sequence Number: N
  index, order_sequence_number = box_options_sola_unicast_hsvf_v4_5_1_dissect.order_sequence_number(buffer, index, packet, parent)

  -- Improvement Order Side: X
  index, improvement_order_side = box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_order_side(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_phase_sequential_number(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_options_sola_unicast_hsvf_v4_5_1_dissect.auction_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_and_improvement_order_message = function(buffer, offset, packet, parent)
  if show.initial_and_improvement_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.initial_and_improvement_order_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.initial_and_improvement_order_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Cmta
box_options_sola_unicast_hsvf_v4_5_1_size_of.cmta = 4

-- Display: Cmta
box_options_sola_unicast_hsvf_v4_5_1_display.cmta = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
box_options_sola_unicast_hsvf_v4_5_1_dissect.cmta = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.cmta
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.cmta(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.cmta, range, value, display)

  return offset + length, value
end

-- Size: Firm Id
box_options_sola_unicast_hsvf_v4_5_1_size_of.firm_id = 4

-- Display: Firm Id
box_options_sola_unicast_hsvf_v4_5_1_display.firm_id = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
box_options_sola_unicast_hsvf_v4_5_1_dissect.firm_id = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.firm_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.firm_id(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Size: End Of The Exposition
box_options_sola_unicast_hsvf_v4_5_1_size_of.end_of_the_exposition = 8

-- Display: End Of The Exposition
box_options_sola_unicast_hsvf_v4_5_1_display.end_of_the_exposition = function(value)
  return "End Of The Exposition: "..value
end

-- Dissect: End Of The Exposition
box_options_sola_unicast_hsvf_v4_5_1_dissect.end_of_the_exposition = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.end_of_the_exposition
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.end_of_the_exposition(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.end_of_the_exposition, range, value, display)

  return offset + length, value
end

-- Size: Type Of Clearing Account
box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_clearing_account = 1

-- Display: Type Of Clearing Account
box_options_sola_unicast_hsvf_v4_5_1_display.type_of_clearing_account = function(value)
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
box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_clearing_account = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_clearing_account
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.type_of_clearing_account(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_clearing_account, range, value, display)

  return offset + length, value
end

-- Size: Order Quantity
box_options_sola_unicast_hsvf_v4_5_1_size_of.order_quantity = 8

-- Display: Order Quantity
box_options_sola_unicast_hsvf_v4_5_1_display.order_quantity = function(value)
  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
box_options_sola_unicast_hsvf_v4_5_1_dissect.order_quantity = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.order_quantity
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.order_quantity(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Size: Limit Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.limit_fraction_indicator = 1

-- Display: Limit Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.limit_fraction_indicator = function(value)
  return "Limit Fraction Indicator: "..value
end

-- Dissect: Limit Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.limit_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.limit_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.limit_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.limit_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Limit Entered For An Order Sign
box_options_sola_unicast_hsvf_v4_5_1_size_of.limit_entered_for_an_order_sign = 1

-- Display: Limit Entered For An Order Sign
box_options_sola_unicast_hsvf_v4_5_1_display.limit_entered_for_an_order_sign = function(value)
  if value == "+" then
    return "Limit Entered For An Order Sign: Positive (+)"
  end
  if value == "-" then
    return "Limit Entered For An Order Sign: Negative (-)"
  end

  return "Limit Entered For An Order Sign: Unknown("..value..")"
end

-- Dissect: Limit Entered For An Order Sign
box_options_sola_unicast_hsvf_v4_5_1_dissect.limit_entered_for_an_order_sign = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.limit_entered_for_an_order_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.limit_entered_for_an_order_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.limit_entered_for_an_order_sign, range, value, display)

  return offset + length, value
end

-- Size: Type Of Order
box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_order = 1

-- Display: Type Of Order
box_options_sola_unicast_hsvf_v4_5_1_display.type_of_order = function(value)
  if value == "A" then
    return "Type Of Order: Initial Order (A)"
  end
  if value == "P" then
    return "Type Of Order: Exposed Order (P)"
  end

  return "Type Of Order: Unknown("..value..")"
end

-- Dissect: Type Of Order
box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_order = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.type_of_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_order, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Market Sheet Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_market_sheet_initial_and_improvement_order_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_symbol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.order_side

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_order

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.limit_entered_for_an_order_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_1

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.limit_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.order_quantity

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.order_sequence_number

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_phase_sequential_number

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_clearing_account

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_1

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.end_of_the_exposition

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.auction_type

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.firm_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.cmta

  return index
end

-- Display: Complex Order Market Sheet Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_market_sheet_initial_and_improvement_order_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Market Sheet Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_market_sheet_initial_and_improvement_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Order Side: X
  index, order_side = box_options_sola_unicast_hsvf_v4_5_1_dissect.order_side(buffer, index, packet, parent)

  -- Type Of Order: X
  index, type_of_order = box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_order(buffer, index, packet, parent)

  -- Limit Entered For An Order Sign: X
  index, limit_entered_for_an_order_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.limit_entered_for_an_order_sign(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_1(buffer, index, packet, parent)

  -- Limit Fraction Indicator: X
  index, limit_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.limit_fraction_indicator(buffer, index, packet, parent)

  -- Order Quantity: n
  index, order_quantity = box_options_sola_unicast_hsvf_v4_5_1_dissect.order_quantity(buffer, index, packet, parent)

  -- Order Sequence Number: N
  index, order_sequence_number = box_options_sola_unicast_hsvf_v4_5_1_dissect.order_sequence_number(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_phase_sequential_number(buffer, index, packet, parent)

  -- Type Of Clearing Account: X
  index, type_of_clearing_account = box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_clearing_account(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_1(buffer, index, packet, parent)

  -- End Of The Exposition: N
  index, end_of_the_exposition = box_options_sola_unicast_hsvf_v4_5_1_dissect.end_of_the_exposition(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_options_sola_unicast_hsvf_v4_5_1_dissect.auction_type(buffer, index, packet, parent)

  -- Firm Id: X
  index, firm_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.firm_id(buffer, index, packet, parent)

  -- Cmta: X
  index, cmta = box_options_sola_unicast_hsvf_v4_5_1_dissect.cmta(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Market Sheet Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_market_sheet_initial_and_improvement_order_message = function(buffer, offset, packet, parent)
  if show.complex_order_market_sheet_initial_and_improvement_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_market_sheet_initial_and_improvement_order_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_market_sheet_initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_market_sheet_initial_and_improvement_order_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_market_sheet_initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Market Sheet Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.market_sheet_initial_and_improvement_order_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_description(buffer, offset + index)

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.order_side

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_order

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_1

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.limit_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.order_quantity

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.order_sequence_number

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_phase_sequential_number

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_clearing_account

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_1

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.end_of_the_exposition

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.auction_type

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.firm_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.cmta

  return index
end

-- Display: Market Sheet Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_display.market_sheet_initial_and_improvement_order_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Sheet Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.market_sheet_initial_and_improvement_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description(buffer, index, packet, parent)

  -- Order Side: X
  index, order_side = box_options_sola_unicast_hsvf_v4_5_1_dissect.order_side(buffer, index, packet, parent)

  -- Type Of Order: X
  index, type_of_order = box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_order(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_1(buffer, index, packet, parent)

  -- Limit Fraction Indicator: X
  index, limit_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.limit_fraction_indicator(buffer, index, packet, parent)

  -- Order Quantity: n
  index, order_quantity = box_options_sola_unicast_hsvf_v4_5_1_dissect.order_quantity(buffer, index, packet, parent)

  -- Order Sequence Number: N
  index, order_sequence_number = box_options_sola_unicast_hsvf_v4_5_1_dissect.order_sequence_number(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_phase_sequential_number(buffer, index, packet, parent)

  -- Type Of Clearing Account: X
  index, type_of_clearing_account = box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_clearing_account(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_1(buffer, index, packet, parent)

  -- End Of The Exposition: N
  index, end_of_the_exposition = box_options_sola_unicast_hsvf_v4_5_1_dissect.end_of_the_exposition(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_options_sola_unicast_hsvf_v4_5_1_dissect.auction_type(buffer, index, packet, parent)

  -- Firm Id: X
  index, firm_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.firm_id(buffer, index, packet, parent)

  -- Cmta: X
  index, cmta = box_options_sola_unicast_hsvf_v4_5_1_dissect.cmta(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Sheet Initial And Improvement Order Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.market_sheet_initial_and_improvement_order_message = function(buffer, offset, packet, parent)
  if show.market_sheet_initial_and_improvement_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.market_sheet_initial_and_improvement_order_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.market_sheet_initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.market_sheet_initial_and_improvement_order_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.market_sheet_initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Percentage Assured To Initial Order
box_options_sola_unicast_hsvf_v4_5_1_size_of.percentage_assured_to_initial_order = 8

-- Display: Percentage Assured To Initial Order
box_options_sola_unicast_hsvf_v4_5_1_display.percentage_assured_to_initial_order = function(value)
  return "Percentage Assured To Initial Order: "..value
end

-- Dissect: Percentage Assured To Initial Order
box_options_sola_unicast_hsvf_v4_5_1_dissect.percentage_assured_to_initial_order = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.percentage_assured_to_initial_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.percentage_assured_to_initial_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.percentage_assured_to_initial_order, range, value, display)

  return offset + length, value
end

-- Size: Minimum Quantity For Improvement Order
box_options_sola_unicast_hsvf_v4_5_1_size_of.minimum_quantity_for_improvement_order = 8

-- Display: Minimum Quantity For Improvement Order
box_options_sola_unicast_hsvf_v4_5_1_display.minimum_quantity_for_improvement_order = function(value)
  return "Minimum Quantity For Improvement Order: "..value
end

-- Dissect: Minimum Quantity For Improvement Order
box_options_sola_unicast_hsvf_v4_5_1_dissect.minimum_quantity_for_improvement_order = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.minimum_quantity_for_improvement_order
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.minimum_quantity_for_improvement_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.minimum_quantity_for_improvement_order, range, value, display)

  return offset + length, value
end

-- Size: Improvement Process Expiry Duration
box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_process_expiry_duration = 4

-- Display: Improvement Process Expiry Duration
box_options_sola_unicast_hsvf_v4_5_1_display.improvement_process_expiry_duration = function(value)
  return "Improvement Process Expiry Duration: "..value
end

-- Dissect: Improvement Process Expiry Duration
box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_process_expiry_duration = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_process_expiry_duration
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.improvement_process_expiry_duration(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.improvement_process_expiry_duration, range, value, display)

  return offset + length, value
end

-- Size: Improvement Phase Expiry Time
box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_phase_expiry_time = 8

-- Display: Improvement Phase Expiry Time
box_options_sola_unicast_hsvf_v4_5_1_display.improvement_phase_expiry_time = function(value)
  return "Improvement Phase Expiry Time: "..value
end

-- Dissect: Improvement Phase Expiry Time
box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_phase_expiry_time = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_phase_expiry_time
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.improvement_phase_expiry_time(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.improvement_phase_expiry_time, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Side
box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_side = 1

-- Display: Initial Order Side
box_options_sola_unicast_hsvf_v4_5_1_display.initial_order_side = function(value)
  if value == "B" then
    return "Initial Order Side: Buy (B)"
  end
  if value == "S" then
    return "Initial Order Side: Sell (S)"
  end

  return "Initial Order Side: Unknown("..value..")"
end

-- Dissect: Initial Order Side
box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_side = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.initial_order_side(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_side, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Quantity
box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_quantity = 8

-- Display: Initial Order Quantity
box_options_sola_unicast_hsvf_v4_5_1_display.initial_order_quantity = function(value)
  return "Initial Order Quantity: "..value
end

-- Dissect: Initial Order Quantity
box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_quantity = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_quantity
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.initial_order_quantity(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_quantity, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_price_fraction_indicator = 1

-- Display: Initial Order Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.initial_order_price_fraction_indicator = function(value)
  return "Initial Order Price Fraction Indicator: "..value
end

-- Dissect: Initial Order Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.initial_order_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_price = 6

-- Display: Initial Order Price
box_options_sola_unicast_hsvf_v4_5_1_display.initial_order_price = function(value)
  return "Initial Order Price: "..value
end

-- Dissect: Initial Order Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.initial_order_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_price, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Price Sign
box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_price_sign = 1

-- Display: Initial Order Price Sign
box_options_sola_unicast_hsvf_v4_5_1_display.initial_order_price_sign = function(value)
  if value == "+" then
    return "Initial Order Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Initial Order Price Sign: Negative (-)"
  end

  return "Initial Order Price Sign: Unknown("..value..")"
end

-- Dissect: Initial Order Price Sign
box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_price_sign = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.initial_order_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_price_sign, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Improvement Process Beginning Message Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_improvement_process_beginning_message_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_symbol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_phase_sequential_number

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_quantity

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_side

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_phase_expiry_time

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_process_expiry_duration

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.minimum_quantity_for_improvement_order

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.percentage_assured_to_initial_order

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.auction_type

  return index
end

-- Display: Complex Order Improvement Process Beginning Message Message
box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_improvement_process_beginning_message_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Improvement Process Beginning Message Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_improvement_process_beginning_message_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_phase_sequential_number(buffer, index, packet, parent)

  -- Initial Order Price Sign: X
  index, initial_order_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_price_sign(buffer, index, packet, parent)

  -- Initial Order Price: N
  index, initial_order_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_price(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_price_fraction_indicator(buffer, index, packet, parent)

  -- Initial Order Quantity: X
  index, initial_order_quantity = box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_quantity(buffer, index, packet, parent)

  -- Initial Order Side: A
  index, initial_order_side = box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_side(buffer, index, packet, parent)

  -- Improvement Phase Expiry Time: A
  index, improvement_phase_expiry_time = box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_phase_expiry_time(buffer, index, packet, parent)

  -- Improvement Process Expiry Duration: N
  index, improvement_process_expiry_duration = box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_process_expiry_duration(buffer, index, packet, parent)

  -- Minimum Quantity For Improvement Order: n
  index, minimum_quantity_for_improvement_order = box_options_sola_unicast_hsvf_v4_5_1_dissect.minimum_quantity_for_improvement_order(buffer, index, packet, parent)

  -- Percentage Assured To Initial Order: X
  index, percentage_assured_to_initial_order = box_options_sola_unicast_hsvf_v4_5_1_dissect.percentage_assured_to_initial_order(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_options_sola_unicast_hsvf_v4_5_1_dissect.auction_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Improvement Process Beginning Message Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_improvement_process_beginning_message_message = function(buffer, offset, packet, parent)
  if show.complex_order_improvement_process_beginning_message_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_improvement_process_beginning_message_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_improvement_process_beginning_message_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_improvement_process_beginning_message_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_improvement_process_beginning_message_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Option Improvement Process Beginning Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.option_improvement_process_beginning_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_description(buffer, offset + index)

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_phase_sequential_number

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_quantity

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_order_side

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_phase_expiry_time

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.improvement_process_expiry_duration

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.minimum_quantity_for_improvement_order

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.percentage_assured_to_initial_order

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.auction_type

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_1

  return index
end

-- Display: Option Improvement Process Beginning Message
box_options_sola_unicast_hsvf_v4_5_1_display.option_improvement_process_beginning_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Improvement Process Beginning Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_improvement_process_beginning_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: N
  index, improvement_phase_sequential_number = box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_phase_sequential_number(buffer, index, packet, parent)

  -- Initial Order Price: N
  index, initial_order_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_price(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: X
  index, initial_order_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_price_fraction_indicator(buffer, index, packet, parent)

  -- Initial Order Quantity: X
  index, initial_order_quantity = box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_quantity(buffer, index, packet, parent)

  -- Initial Order Side: A
  index, initial_order_side = box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_order_side(buffer, index, packet, parent)

  -- Improvement Phase Expiry Time: A
  index, improvement_phase_expiry_time = box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_phase_expiry_time(buffer, index, packet, parent)

  -- Improvement Process Expiry Duration: N
  index, improvement_process_expiry_duration = box_options_sola_unicast_hsvf_v4_5_1_dissect.improvement_process_expiry_duration(buffer, index, packet, parent)

  -- Minimum Quantity For Improvement Order: n
  index, minimum_quantity_for_improvement_order = box_options_sola_unicast_hsvf_v4_5_1_dissect.minimum_quantity_for_improvement_order(buffer, index, packet, parent)

  -- Percentage Assured To Initial Order: X
  index, percentage_assured_to_initial_order = box_options_sola_unicast_hsvf_v4_5_1_dissect.percentage_assured_to_initial_order(buffer, index, packet, parent)

  -- Auction Type: X
  index, auction_type = box_options_sola_unicast_hsvf_v4_5_1_dissect.auction_type(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Improvement Process Beginning Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_improvement_process_beginning_message = function(buffer, offset, packet, parent)
  if show.option_improvement_process_beginning_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_improvement_process_beginning_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.option_improvement_process_beginning_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.option_improvement_process_beginning_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_improvement_process_beginning_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Time
box_options_sola_unicast_hsvf_v4_5_1_size_of.time = 6

-- Display: Time
box_options_sola_unicast_hsvf_v4_5_1_display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
box_options_sola_unicast_hsvf_v4_5_1_dissect.time = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.time
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.time(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.time, range, value, display)

  return offset + length, value
end

-- Size: Reserved
box_options_sola_unicast_hsvf_v4_5_1_size_of.reserved = 1

-- Display: Reserved
box_options_sola_unicast_hsvf_v4_5_1_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
box_options_sola_unicast_hsvf_v4_5_1_dissect.reserved = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.reserved
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.reserved(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.reserved, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Sales Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.end_of_sales_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.reserved

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.time

  return index
end

-- Display: End Of Sales Message
box_options_sola_unicast_hsvf_v4_5_1_display.end_of_sales_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Sales Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.end_of_sales_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: A
  index, reserved = box_options_sola_unicast_hsvf_v4_5_1_dissect.reserved(buffer, index, packet, parent)

  -- Time: N
  index, time = box_options_sola_unicast_hsvf_v4_5_1_dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Sales Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.end_of_sales_message = function(buffer, offset, packet, parent)
  if show.end_of_sales_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.end_of_sales_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.end_of_sales_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.end_of_sales_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.end_of_sales_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Continue Marker
box_options_sola_unicast_hsvf_v4_5_1_size_of.continue_marker = 1

-- Display: Continue Marker
box_options_sola_unicast_hsvf_v4_5_1_display.continue_marker = function(value)
  if value == "0" then
    return "Continue Marker: Bulletin Continues In Next Record (0)"
  end
  if value == "1" then
    return "Continue Marker: Bulletin Ended (1)"
  end

  return "Continue Marker: Unknown("..value..")"
end

-- Dissect: Continue Marker
box_options_sola_unicast_hsvf_v4_5_1_dissect.continue_marker = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.continue_marker
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.continue_marker(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.continue_marker, range, value, display)

  return offset + length, value
end

-- Size: Bulletin Contents
box_options_sola_unicast_hsvf_v4_5_1_size_of.bulletin_contents = 79

-- Display: Bulletin Contents
box_options_sola_unicast_hsvf_v4_5_1_display.bulletin_contents = function(value)
  return "Bulletin Contents: "..value
end

-- Dissect: Bulletin Contents
box_options_sola_unicast_hsvf_v4_5_1_dissect.bulletin_contents = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.bulletin_contents
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.bulletin_contents(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bulletin_contents, range, value, display)

  return offset + length, value
end

-- Size: Bulletin Type
box_options_sola_unicast_hsvf_v4_5_1_size_of.bulletin_type = 1

-- Display: Bulletin Type
box_options_sola_unicast_hsvf_v4_5_1_display.bulletin_type = function(value)
  if value == "1" then
    return "Bulletin Type: Regular (1)"
  end
  if value == "2" then
    return "Bulletin Type: Special (2)"
  end

  return "Bulletin Type: Unknown("..value..")"
end

-- Dissect: Bulletin Type
box_options_sola_unicast_hsvf_v4_5_1_dissect.bulletin_type = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.bulletin_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.bulletin_type(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bulletin_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bulletins Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.bulletins_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_1

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bulletin_type

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bulletin_contents

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.continue_marker

  return index
end

-- Display: Bulletins Message
box_options_sola_unicast_hsvf_v4_5_1_display.bulletins_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulletins Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.bulletins_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_1(buffer, index, packet, parent)

  -- Bulletin Type: X
  index, bulletin_type = box_options_sola_unicast_hsvf_v4_5_1_dissect.bulletin_type(buffer, index, packet, parent)

  -- Bulletin Contents: x
  index, bulletin_contents = box_options_sola_unicast_hsvf_v4_5_1_dissect.bulletin_contents(buffer, index, packet, parent)

  -- Continue Marker: N
  index, continue_marker = box_options_sola_unicast_hsvf_v4_5_1_dissect.continue_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulletins Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.bulletins_message = function(buffer, offset, packet, parent)
  if show.bulletins_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bulletins_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.bulletins_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.bulletins_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.bulletins_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Group Status
box_options_sola_unicast_hsvf_v4_5_1_size_of.group_status = 1

-- Display: Group Status
box_options_sola_unicast_hsvf_v4_5_1_display.group_status = function(value)
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
box_options_sola_unicast_hsvf_v4_5_1_dissect.group_status = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.group_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.group_status(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.group_status, range, value, display)

  return offset + length, value
end

-- Size: Group Of The Complex Order Instrument
box_options_sola_unicast_hsvf_v4_5_1_size_of.group_of_the_complex_order_instrument = 2

-- Display: Group Of The Complex Order Instrument
box_options_sola_unicast_hsvf_v4_5_1_display.group_of_the_complex_order_instrument = function(value)
  return "Group Of The Complex Order Instrument: "..value
end

-- Dissect: Group Of The Complex Order Instrument
box_options_sola_unicast_hsvf_v4_5_1_dissect.group_of_the_complex_order_instrument = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.group_of_the_complex_order_instrument
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.group_of_the_complex_order_instrument(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.group_of_the_complex_order_instrument, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Group Status Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_group_status_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.group_of_the_complex_order_instrument

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.group_status

  return index
end

-- Display: Complex Order Group Status Message
box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_group_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Group Status Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_group_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Group Of The Complex Order Instrument: X
  index, group_of_the_complex_order_instrument = box_options_sola_unicast_hsvf_v4_5_1_dissect.group_of_the_complex_order_instrument(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = box_options_sola_unicast_hsvf_v4_5_1_dissect.group_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Group Status Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_group_status_message = function(buffer, offset, packet, parent)
  if show.complex_order_group_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_group_status_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_group_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_group_status_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_group_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Group Status Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.group_status_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.root_symbol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.group_status

  return index
end

-- Display: Group Status Message
box_options_sola_unicast_hsvf_v4_5_1_display.group_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Status Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.group_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Root Symbol: x
  index, root_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.root_symbol(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = box_options_sola_unicast_hsvf_v4_5_1_dissect.group_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.group_status_message = function(buffer, offset, packet, parent)
  if show.group_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.group_status_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.group_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.group_status_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.group_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Scheduled Time
box_options_sola_unicast_hsvf_v4_5_1_size_of.scheduled_time = 6

-- Display: Scheduled Time
box_options_sola_unicast_hsvf_v4_5_1_display.scheduled_time = function(value)
  return "Scheduled Time: "..value
end

-- Dissect: Scheduled Time
box_options_sola_unicast_hsvf_v4_5_1_dissect.scheduled_time = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.scheduled_time
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.scheduled_time(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.scheduled_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Opening Time Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.group_opening_time_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.root_symbol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.group_status

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.scheduled_time

  return index
end

-- Display: Group Opening Time Message
box_options_sola_unicast_hsvf_v4_5_1_display.group_opening_time_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Opening Time Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.group_opening_time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Root Symbol: x
  index, root_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.root_symbol(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = box_options_sola_unicast_hsvf_v4_5_1_dissect.group_status(buffer, index, packet, parent)

  -- Scheduled Time: N
  index, scheduled_time = box_options_sola_unicast_hsvf_v4_5_1_dissect.scheduled_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Opening Time Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.group_opening_time_message = function(buffer, offset, packet, parent)
  if show.group_opening_time_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.group_opening_time_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.group_opening_time_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.group_opening_time_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.group_opening_time_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Beginning Of Complex Order Summary Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.beginning_of_complex_order_summary_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  return index
end

-- Display: Beginning Of Complex Order Summary Message
box_options_sola_unicast_hsvf_v4_5_1_display.beginning_of_complex_order_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Complex Order Summary Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.beginning_of_complex_order_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Complex Order Summary Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.beginning_of_complex_order_summary_message = function(buffer, offset, packet, parent)
  if show.beginning_of_complex_order_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.beginning_of_complex_order_summary_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.beginning_of_complex_order_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.beginning_of_complex_order_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.beginning_of_complex_order_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Beginning Of Options Summary Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.beginning_of_options_summary_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  return index
end

-- Display: Beginning Of Options Summary Message
box_options_sola_unicast_hsvf_v4_5_1_display.beginning_of_options_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Options Summary Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.beginning_of_options_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Options Summary Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.beginning_of_options_summary_message = function(buffer, offset, packet, parent)
  if show.beginning_of_options_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.beginning_of_options_summary_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.beginning_of_options_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.beginning_of_options_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.beginning_of_options_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Volume
box_options_sola_unicast_hsvf_v4_5_1_size_of.volume = 8

-- Display: Volume
box_options_sola_unicast_hsvf_v4_5_1_display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
box_options_sola_unicast_hsvf_v4_5_1_dissect.volume = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.volume
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.volume(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.volume, range, value, display)

  return offset + length, value
end

-- Size: Net Change Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change_fraction_indicator = 1

-- Display: Net Change Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.net_change_fraction_indicator = function(value)
  return "Net Change Fraction Indicator: "..value
end

-- Dissect: Net Change Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.net_change_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.net_change_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Net Change
box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change = 6

-- Display: Net Change
box_options_sola_unicast_hsvf_v4_5_1_display.net_change = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.net_change(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.net_change, range, value, display)

  return offset + length, value
end

-- Size: Net Change Sign
box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change_sign = 1

-- Display: Net Change Sign
box_options_sola_unicast_hsvf_v4_5_1_display.net_change_sign = function(value)
  if value == "+" then
    return "Net Change Sign: Positive (+)"
  end
  if value == "-" then
    return "Net Change Sign: Negative (-)"
  end

  return "Net Change Sign: Unknown("..value..")"
end

-- Dissect: Net Change Sign
box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change_sign = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.net_change_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.net_change_sign, range, value, display)

  return offset + length, value
end

-- Size: Low Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.low_price_fraction_indicator = 1

-- Display: Low Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.low_price_fraction_indicator = function(value)
  return "Low Price Fraction Indicator: "..value
end

-- Dissect: Low Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.low_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.low_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.low_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.low_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Low Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.low_price = 6

-- Display: Low Price
box_options_sola_unicast_hsvf_v4_5_1_display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.low_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.low_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.low_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: Low Price Sign
box_options_sola_unicast_hsvf_v4_5_1_size_of.low_price_sign = 1

-- Display: Low Price Sign
box_options_sola_unicast_hsvf_v4_5_1_display.low_price_sign = function(value)
  if value == "+" then
    return "Low Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Low Price Sign: Negative (-)"
  end

  return "Low Price Sign: Unknown("..value..")"
end

-- Dissect: Low Price Sign
box_options_sola_unicast_hsvf_v4_5_1_dissect.low_price_sign = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.low_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.low_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.low_price_sign, range, value, display)

  return offset + length, value
end

-- Size: High Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.high_price_fraction_indicator = 1

-- Display: High Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.high_price_fraction_indicator = function(value)
  return "High Price Fraction Indicator: "..value
end

-- Dissect: High Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.high_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.high_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.high_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.high_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: High Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.high_price = 6

-- Display: High Price
box_options_sola_unicast_hsvf_v4_5_1_display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.high_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.high_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.high_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: High Price Sign
box_options_sola_unicast_hsvf_v4_5_1_size_of.high_price_sign = 1

-- Display: High Price Sign
box_options_sola_unicast_hsvf_v4_5_1_display.high_price_sign = function(value)
  if value == "+" then
    return "High Price Sign: Positive (+)"
  end
  if value == "-" then
    return "High Price Sign: Negative (-)"
  end

  return "High Price Sign: Unknown("..value..")"
end

-- Dissect: High Price Sign
box_options_sola_unicast_hsvf_v4_5_1_dissect.high_price_sign = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.high_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.high_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.high_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Open Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.open_price_fraction_indicator = 1

-- Display: Open Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.open_price_fraction_indicator = function(value)
  return "Open Price Fraction Indicator: "..value
end

-- Dissect: Open Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.open_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.open_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.open_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.open_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Open Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.open_price = 6

-- Display: Open Price
box_options_sola_unicast_hsvf_v4_5_1_display.open_price = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.open_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.open_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.open_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.open_price, range, value, display)

  return offset + length, value
end

-- Size: Open Price Sign
box_options_sola_unicast_hsvf_v4_5_1_size_of.open_price_sign = 1

-- Display: Open Price Sign
box_options_sola_unicast_hsvf_v4_5_1_display.open_price_sign = function(value)
  if value == "+" then
    return "Open Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Open Price Sign: Negative (-)"
  end

  return "Open Price Sign: Unknown("..value..")"
end

-- Dissect: Open Price Sign
box_options_sola_unicast_hsvf_v4_5_1_dissect.open_price_sign = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.open_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.open_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.open_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Last Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.last_price_fraction_indicator = 1

-- Display: Last Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.last_price_fraction_indicator = function(value)
  return "Last Price Fraction Indicator: "..value
end

-- Dissect: Last Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.last_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.last_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.last_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.last_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Last Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.last_price = 6

-- Display: Last Price
box_options_sola_unicast_hsvf_v4_5_1_display.last_price = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.last_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.last_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.last_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.last_price, range, value, display)

  return offset + length, value
end

-- Size: Last Price Sign
box_options_sola_unicast_hsvf_v4_5_1_size_of.last_price_sign = 1

-- Display: Last Price Sign
box_options_sola_unicast_hsvf_v4_5_1_display.last_price_sign = function(value)
  return "Last Price Sign: "..value
end

-- Dissect: Last Price Sign
box_options_sola_unicast_hsvf_v4_5_1_dissect.last_price_sign = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.last_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.last_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.last_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Ask Size
box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_size = 5

-- Display: Ask Size
box_options_sola_unicast_hsvf_v4_5_1_display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_size = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.ask_size(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price_fraction_indicator = 1

-- Display: Ask Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.ask_price_fraction_indicator = function(value)
  return "Ask Price Fraction Indicator: "..value
end

-- Dissect: Ask Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price_fraction_indicator
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.ask_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price = 6

-- Display: Ask Price
box_options_sola_unicast_hsvf_v4_5_1_display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.ask_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Sign
box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price_sign = 1

-- Display: Ask Price Sign
box_options_sola_unicast_hsvf_v4_5_1_display.ask_price_sign = function(value)
  if value == "+" then
    return "Ask Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Ask Price Sign: Negative (-)"
  end

  return "Ask Price Sign: Unknown("..value..")"
end

-- Dissect: Ask Price Sign
box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price_sign = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.ask_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_size = 5

-- Display: Bid Size
box_options_sola_unicast_hsvf_v4_5_1_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price_fraction_indicator = 1

-- Display: Bid Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.bid_price_fraction_indicator = function(value)
  return "Bid Price Fraction Indicator: "..value
end

-- Dissect: Bid Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.bid_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price = 6

-- Display: Bid Price
box_options_sola_unicast_hsvf_v4_5_1_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Sign
box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price_sign = 1

-- Display: Bid Price Sign
box_options_sola_unicast_hsvf_v4_5_1_display.bid_price_sign = function(value)
  return "Bid Price Sign: "..value
end

-- Dissect: Bid Price Sign
box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price_sign = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.bid_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price_sign, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Summary Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_summary_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_symbol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.last_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.last_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.last_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.open_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.open_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.open_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.high_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.high_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.high_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.low_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.low_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.low_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.volume

  return index
end

-- Display: Complex Order Summary Message
box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Summary Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price_sign(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: n
  index, bid_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price_sign(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: N
  index, ask_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: n
  index, ask_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_size(buffer, index, packet, parent)

  -- Last Price Sign: X
  index, last_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.last_price_sign(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.last_price(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.last_price_fraction_indicator(buffer, index, packet, parent)

  -- Open Price Sign: X
  index, open_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.open_price_sign(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.open_price(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.open_price_fraction_indicator(buffer, index, packet, parent)

  -- High Price Sign: X
  index, high_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.high_price_sign(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.high_price(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.high_price_fraction_indicator(buffer, index, packet, parent)

  -- Low Price Sign: X
  index, low_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.low_price_sign(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.low_price(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.low_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change_sign(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change_fraction_indicator(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_options_sola_unicast_hsvf_v4_5_1_dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Summary Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_summary_message = function(buffer, offset, packet, parent)
  if show.complex_order_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_summary_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Reference Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.reference_price_fraction_indicator = 1

-- Display: Reference Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.reference_price_fraction_indicator = function(value)
  return "Reference Price Fraction Indicator: "..value
end

-- Dissect: Reference Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.reference_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.reference_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.reference_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.reference_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.reference_price = 6

-- Display: Reference Price
box_options_sola_unicast_hsvf_v4_5_1_display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.reference_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.reference_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.reference_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
box_options_sola_unicast_hsvf_v4_5_1_size_of.underlying_symbol = 10

-- Display: Underlying Symbol
box_options_sola_unicast_hsvf_v4_5_1_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
box_options_sola_unicast_hsvf_v4_5_1_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Type Of Options
box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_options = 1

-- Display: Type Of Options
box_options_sola_unicast_hsvf_v4_5_1_display.type_of_options = function(value)
  if value == " " then
    return "Type Of Options: Regular (<whitespace>)"
  end

  return "Type Of Options: Unknown("..value..")"
end

-- Dissect: Type Of Options
box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_options = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_options
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.type_of_options(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_options, range, value, display)

  return offset + length, value
end

-- Size: Type Of Market
box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_market = 1

-- Display: Type Of Market
box_options_sola_unicast_hsvf_v4_5_1_display.type_of_market = function(value)
  return "Type Of Market: "..value
end

-- Dissect: Type Of Market
box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_market = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_market
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.type_of_market(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_market, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Marker
box_options_sola_unicast_hsvf_v4_5_1_size_of.option_marker = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_market

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_options

  return index
end

-- Display: Option Marker
box_options_sola_unicast_hsvf_v4_5_1_display.option_marker = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Marker
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_marker_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Type Of Market: A
  index, type_of_market = box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_market(buffer, index, packet, parent)

  -- Type Of Options: A
  index, type_of_options = box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_options(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Marker
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_marker = function(buffer, offset, packet, parent)
  if show.option_marker then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_marker, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.option_marker_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.option_marker(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_marker_fields(buffer, offset, packet, parent)
  end
end

-- Size: Tick
box_options_sola_unicast_hsvf_v4_5_1_size_of.tick = 1

-- Display: Tick
box_options_sola_unicast_hsvf_v4_5_1_display.tick = function(value)
  if value == "+" then
    return "Tick: Uptick (+)"
  end
  if value == "-" then
    return "Tick: Downtick (-)"
  end

  return "Tick: Unknown("..value..")"
end

-- Dissect: Tick
box_options_sola_unicast_hsvf_v4_5_1_dissect.tick = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.tick
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.tick(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.tick, range, value, display)

  return offset + length, value
end

-- Size: Open Interest
box_options_sola_unicast_hsvf_v4_5_1_size_of.open_interest = 7

-- Display: Open Interest
box_options_sola_unicast_hsvf_v4_5_1_display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
box_options_sola_unicast_hsvf_v4_5_1_dissect.open_interest = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.open_interest
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.open_interest(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Summary Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.option_summary_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_description(buffer, offset + index)

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.last_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.last_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.open_interest

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.tick

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.volume

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.open_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.open_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.high_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.high_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.low_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.low_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.option_marker(buffer, offset + index)

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.underlying_symbol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.reference_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.reference_price_fraction_indicator

  return index
end

-- Display: Option Summary Message
box_options_sola_unicast_hsvf_v4_5_1_display.option_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Summary Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: n
  index, bid_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: N
  index, ask_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: n
  index, ask_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_size(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.last_price(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.last_price_fraction_indicator(buffer, index, packet, parent)

  -- Open Interest: n
  index, open_interest = box_options_sola_unicast_hsvf_v4_5_1_dissect.open_interest(buffer, index, packet, parent)

  -- Tick: X
  index, tick = box_options_sola_unicast_hsvf_v4_5_1_dissect.tick(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_options_sola_unicast_hsvf_v4_5_1_dissect.volume(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change_sign(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change_fraction_indicator(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.open_price(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.open_price_fraction_indicator(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.high_price(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.high_price_fraction_indicator(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.low_price(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.low_price_fraction_indicator(buffer, index, packet, parent)

  -- Option Marker: Struct of 2 fields
  index, option_marker = box_options_sola_unicast_hsvf_v4_5_1_dissect.option_marker(buffer, index, packet, parent)

  -- Underlying Symbol: x
  index, underlying_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Reference Price: N
  index, reference_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.reference_price(buffer, index, packet, parent)

  -- Reference Price Fraction Indicator: X
  index, reference_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.reference_price_fraction_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Summary Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_summary_message = function(buffer, offset, packet, parent)
  if show.option_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_summary_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.option_summary_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.option_summary_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_summary_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Leg Symbol
box_options_sola_unicast_hsvf_v4_5_1_size_of.leg_symbol = 30

-- Display: Leg Symbol
box_options_sola_unicast_hsvf_v4_5_1_display.leg_symbol = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
box_options_sola_unicast_hsvf_v4_5_1_dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.leg_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio
box_options_sola_unicast_hsvf_v4_5_1_size_of.leg_ratio = 8

-- Display: Leg Ratio
box_options_sola_unicast_hsvf_v4_5_1_display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
box_options_sola_unicast_hsvf_v4_5_1_dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.leg_ratio
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Sign
box_options_sola_unicast_hsvf_v4_5_1_size_of.leg_ratio_sign = 1

-- Display: Leg Ratio Sign
box_options_sola_unicast_hsvf_v4_5_1_display.leg_ratio_sign = function(value)
  if value == "+" then
    return "Leg Ratio Sign: Positive (+)"
  end
  if value == "-" then
    return "Leg Ratio Sign: Negative (-)"
  end

  return "Leg Ratio Sign: Unknown("..value..")"
end

-- Dissect: Leg Ratio Sign
box_options_sola_unicast_hsvf_v4_5_1_dissect.leg_ratio_sign = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.leg_ratio_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.leg_ratio_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.leg_ratio_sign, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Leg
box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_leg = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.leg_ratio_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.leg_ratio

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.leg_symbol

  return index
end

-- Display: Instrument Leg
box_options_sola_unicast_hsvf_v4_5_1_display.instrument_leg = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Leg
box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Ratio Sign: X
  index, leg_ratio_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.leg_ratio_sign(buffer, index, packet, parent)

  -- Leg Ratio: N
  index, leg_ratio = box_options_sola_unicast_hsvf_v4_5_1_dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Symbol: x
  index, leg_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.leg_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Leg
box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_leg = function(buffer, offset, packet, parent)
  if show.instrument_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.instrument_leg, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_leg_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.instrument_leg(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_leg_fields(buffer, offset, packet, parent)
  end
end

-- Size: Number Of Legs
box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_legs = 2

-- Display: Number Of Legs
box_options_sola_unicast_hsvf_v4_5_1_display.number_of_legs = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
box_options_sola_unicast_hsvf_v4_5_1_dissect.number_of_legs = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_legs
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.number_of_legs(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Size: Complex Order Instrument Allow Implied
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_allow_implied = 1

-- Display: Complex Order Instrument Allow Implied
box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_instrument_allow_implied = function(value)
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
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_allow_implied = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_allow_implied
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_instrument_allow_implied(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_instrument_allow_implied, range, value, display)

  return offset + length, value
end

-- Size: Instrument External Code
box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_external_code = 30

-- Display: Instrument External Code
box_options_sola_unicast_hsvf_v4_5_1_display.instrument_external_code = function(value)
  return "Instrument External Code: "..value
end

-- Dissect: Instrument External Code
box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_external_code = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_external_code
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.instrument_external_code(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.instrument_external_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument
box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument = 4

-- Display: Instrument
box_options_sola_unicast_hsvf_v4_5_1_display.instrument = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.instrument(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.instrument, range, value, display)

  return offset + length, value
end

-- Size: Group
box_options_sola_unicast_hsvf_v4_5_1_size_of.group = 2

-- Display: Group
box_options_sola_unicast_hsvf_v4_5_1_display.group = function(value)
  return "Group: "..value
end

-- Dissect: Group
box_options_sola_unicast_hsvf_v4_5_1_dissect.group = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.group
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.group(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.group, range, value, display)

  return offset + length, value
end

-- Size: Filler 2
box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_2 = 2

-- Display: Filler 2
box_options_sola_unicast_hsvf_v4_5_1_display.filler_2 = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_2 = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.filler_2(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Size: Tick Increment Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.tick_increment_fraction_indicator = 1

-- Display: Tick Increment Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.tick_increment_fraction_indicator = function(value)
  return "Tick Increment Fraction Indicator: "..value
end

-- Dissect: Tick Increment Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.tick_increment_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.tick_increment_fraction_indicator
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.tick_increment_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.tick_increment_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Tick Increment
box_options_sola_unicast_hsvf_v4_5_1_size_of.tick_increment = 6

-- Display: Tick Increment
box_options_sola_unicast_hsvf_v4_5_1_display.tick_increment = function(value)
  return "Tick Increment: "..value
end

-- Dissect: Tick Increment
box_options_sola_unicast_hsvf_v4_5_1_dissect.tick_increment = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.tick_increment
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.tick_increment(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.tick_increment, range, value, display)

  return offset + length, value
end

-- Size: Min Threshold Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.min_threshold_price_fraction_indicator = 1

-- Display: Min Threshold Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.min_threshold_price_fraction_indicator = function(value)
  return "Min Threshold Price Fraction Indicator: "..value
end

-- Dissect: Min Threshold Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.min_threshold_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.min_threshold_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.min_threshold_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.min_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Min Threshold Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.min_threshold_price = 6

-- Display: Min Threshold Price
box_options_sola_unicast_hsvf_v4_5_1_display.min_threshold_price = function(value)
  return "Min Threshold Price: "..value
end

-- Dissect: Min Threshold Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.min_threshold_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.min_threshold_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.min_threshold_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.min_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Min Threshold Price Sign
box_options_sola_unicast_hsvf_v4_5_1_size_of.min_threshold_price_sign = 1

-- Display: Min Threshold Price Sign
box_options_sola_unicast_hsvf_v4_5_1_display.min_threshold_price_sign = function(value)
  if value == "+" then
    return "Min Threshold Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Min Threshold Price Sign: Negative (-)"
  end

  return "Min Threshold Price Sign: Unknown("..value..")"
end

-- Dissect: Min Threshold Price Sign
box_options_sola_unicast_hsvf_v4_5_1_dissect.min_threshold_price_sign = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.min_threshold_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.min_threshold_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.min_threshold_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Max Threshold Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.max_threshold_price_fraction_indicator = 1

-- Display: Max Threshold Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.max_threshold_price_fraction_indicator = function(value)
  return "Max Threshold Price Fraction Indicator: "..value
end

-- Dissect: Max Threshold Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.max_threshold_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.max_threshold_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.max_threshold_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.max_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Max Threshold Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.max_threshold_price = 6

-- Display: Max Threshold Price
box_options_sola_unicast_hsvf_v4_5_1_display.max_threshold_price = function(value)
  return "Max Threshold Price: "..value
end

-- Dissect: Max Threshold Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.max_threshold_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.max_threshold_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.max_threshold_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.max_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Max Threshold Price Sign
box_options_sola_unicast_hsvf_v4_5_1_size_of.max_threshold_price_sign = 1

-- Display: Max Threshold Price Sign
box_options_sola_unicast_hsvf_v4_5_1_display.max_threshold_price_sign = function(value)
  if value == "+" then
    return "Max Threshold Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Max Threshold Price Sign: Negative (-)"
  end

  return "Max Threshold Price Sign: Unknown("..value..")"
end

-- Dissect: Max Threshold Price Sign
box_options_sola_unicast_hsvf_v4_5_1_dissect.max_threshold_price_sign = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.max_threshold_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.max_threshold_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.max_threshold_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Min Number Of Contracts Per Order
box_options_sola_unicast_hsvf_v4_5_1_size_of.min_number_of_contracts_per_order = 6

-- Display: Min Number Of Contracts Per Order
box_options_sola_unicast_hsvf_v4_5_1_display.min_number_of_contracts_per_order = function(value)
  return "Min Number Of Contracts Per Order: "..value
end

-- Dissect: Min Number Of Contracts Per Order
box_options_sola_unicast_hsvf_v4_5_1_dissect.min_number_of_contracts_per_order = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.min_number_of_contracts_per_order
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.min_number_of_contracts_per_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.min_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Size: Max Number Of Contracts Per Order
box_options_sola_unicast_hsvf_v4_5_1_size_of.max_number_of_contracts_per_order = 6

-- Display: Max Number Of Contracts Per Order
box_options_sola_unicast_hsvf_v4_5_1_display.max_number_of_contracts_per_order = function(value)
  return "Max Number Of Contracts Per Order: "..value
end

-- Dissect: Max Number Of Contracts Per Order
box_options_sola_unicast_hsvf_v4_5_1_dissect.max_number_of_contracts_per_order = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.max_number_of_contracts_per_order
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.max_number_of_contracts_per_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.max_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Size: Delivery Month
box_options_sola_unicast_hsvf_v4_5_1_size_of.delivery_month = 1

-- Display: Delivery Month
box_options_sola_unicast_hsvf_v4_5_1_display.delivery_month = function(value)
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
box_options_sola_unicast_hsvf_v4_5_1_dissect.delivery_month = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.delivery_month
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.delivery_month(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.delivery_month, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Instrument Keys Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_symbol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.expiry_year

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.delivery_month

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.expiry_day

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.max_number_of_contracts_per_order

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.min_number_of_contracts_per_order

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.max_threshold_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.max_threshold_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.max_threshold_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.min_threshold_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.min_threshold_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.min_threshold_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.tick_increment

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.tick_increment_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_2

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.group

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_external_code

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_allow_implied

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_legs

  -- Calculate field size from count
  local instrument_leg_count = buffer(offset + index - 2, 2):string()
  index = index + instrument_leg_count * 39

  return index
end

-- Display: Complex Order Instrument Keys Message
box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_instrument_keys_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Instrument Keys Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = box_options_sola_unicast_hsvf_v4_5_1_dissect.expiry_year(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = box_options_sola_unicast_hsvf_v4_5_1_dissect.delivery_month(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = box_options_sola_unicast_hsvf_v4_5_1_dissect.expiry_day(buffer, index, packet, parent)

  -- Max Number Of Contracts Per Order: n
  index, max_number_of_contracts_per_order = box_options_sola_unicast_hsvf_v4_5_1_dissect.max_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Min Number Of Contracts Per Order: n
  index, min_number_of_contracts_per_order = box_options_sola_unicast_hsvf_v4_5_1_dissect.min_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Max Threshold Price Sign: X
  index, max_threshold_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.max_threshold_price_sign(buffer, index, packet, parent)

  -- Max Threshold Price: n
  index, max_threshold_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.max_threshold_price(buffer, index, packet, parent)

  -- Max Threshold Price Fraction Indicator: X
  index, max_threshold_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.max_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Min Threshold Price Sign: X
  index, min_threshold_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.min_threshold_price_sign(buffer, index, packet, parent)

  -- Min Threshold Price: n
  index, min_threshold_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.min_threshold_price(buffer, index, packet, parent)

  -- Min Threshold Price Fraction Indicator: X
  index, min_threshold_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.min_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = box_options_sola_unicast_hsvf_v4_5_1_dissect.tick_increment(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.tick_increment_fraction_indicator(buffer, index, packet, parent)

  -- Filler 2: X
  index, filler_2 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_2(buffer, index, packet, parent)

  -- Group: X
  index, group = box_options_sola_unicast_hsvf_v4_5_1_dissect.group(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: x
  index, instrument_external_code = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_external_code(buffer, index, packet, parent)

  -- Complex Order Instrument Allow Implied: A
  index, complex_order_instrument_allow_implied = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_allow_implied(buffer, index, packet, parent)

  -- Number Of Legs: N
  index, number_of_legs = box_options_sola_unicast_hsvf_v4_5_1_dissect.number_of_legs(buffer, index, packet, parent)

  -- Instrument Leg: Struct of 3 fields
  for i = 1, number_of_legs do
    index = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Complex Order Instrument Keys Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_keys_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_order_instrument_keys_message then
    local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_keys_message(buffer, offset)
    local range = buffer(offset, length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_instrument_keys_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_instrument_keys_message, range, display)
  end

  return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_keys_message_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Symbol Root
box_options_sola_unicast_hsvf_v4_5_1_size_of.underlying_symbol_root = 10

-- Display: Underlying Symbol Root
box_options_sola_unicast_hsvf_v4_5_1_display.underlying_symbol_root = function(value)
  return "Underlying Symbol Root: "..value
end

-- Dissect: Underlying Symbol Root
box_options_sola_unicast_hsvf_v4_5_1_dissect.underlying_symbol_root = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.underlying_symbol_root
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.underlying_symbol_root(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.underlying_symbol_root, range, value, display)

  return offset + length, value
end

-- Size: Group Instrument
box_options_sola_unicast_hsvf_v4_5_1_size_of.group_instrument = 2

-- Display: Group Instrument
box_options_sola_unicast_hsvf_v4_5_1_display.group_instrument = function(value)
  return "Group Instrument: "..value
end

-- Dissect: Group Instrument
box_options_sola_unicast_hsvf_v4_5_1_dissect.group_instrument = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.group_instrument
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.group_instrument(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.group_instrument, range, value, display)

  return offset + length, value
end

-- Size: Type Of Underlying
box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_underlying = 1

-- Display: Type Of Underlying
box_options_sola_unicast_hsvf_v4_5_1_display.type_of_underlying = function(value)
  if value == "X" then
    return "Type Of Underlying: Index (X)"
  end
  if value == "E" then
    return "Type Of Underlying: Equities (E)"
  end

  return "Type Of Underlying: Unknown("..value..")"
end

-- Dissect: Type Of Underlying
box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_underlying = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_underlying
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.type_of_underlying(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_underlying, range, value, display)

  return offset + length, value
end

-- Size: Type Of Instrument
box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_instrument = 1

-- Display: Type Of Instrument
box_options_sola_unicast_hsvf_v4_5_1_display.type_of_instrument = function(value)
  if value == "O" then
    return "Type Of Instrument: Options (O)"
  end
  if value == "L" then
    return "Type Of Instrument: Long Term (L)"
  end

  return "Type Of Instrument: Unknown("..value..")"
end

-- Dissect: Type Of Instrument
box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_instrument = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_instrument
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.type_of_instrument(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_instrument, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Flow Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.market_flow_indicator = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_instrument

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_underlying

  return index
end

-- Display: Market Flow Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.market_flow_indicator = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Flow Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.market_flow_indicator_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Type Of Instrument: X
  index, type_of_instrument = box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_instrument(buffer, index, packet, parent)

  -- Type Of Underlying: X
  index, type_of_underlying = box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_underlying(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Flow Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.market_flow_indicator = function(buffer, offset, packet, parent)
  if show.market_flow_indicator then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.market_flow_indicator, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.market_flow_indicator_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.market_flow_indicator(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.market_flow_indicator_fields(buffer, offset, packet, parent)
  end
end

-- Size: Option Type
box_options_sola_unicast_hsvf_v4_5_1_size_of.option_type = 1

-- Display: Option Type
box_options_sola_unicast_hsvf_v4_5_1_display.option_type = function(value)
  if value == "A" then
    return "Option Type: American (A)"
  end
  if value == "E" then
    return "Option Type: European (E)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_type = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.option_type(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Minimum Threshold Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.minimum_threshold_price_fraction_indicator = 1

-- Display: Minimum Threshold Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.minimum_threshold_price_fraction_indicator = function(value)
  return "Minimum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Minimum Threshold Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.minimum_threshold_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.minimum_threshold_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.minimum_threshold_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.minimum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Minimum Threshold Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.minimum_threshold_price = 6

-- Display: Minimum Threshold Price
box_options_sola_unicast_hsvf_v4_5_1_display.minimum_threshold_price = function(value)
  return "Minimum Threshold Price: "..value
end

-- Dissect: Minimum Threshold Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.minimum_threshold_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.minimum_threshold_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.minimum_threshold_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.minimum_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Maximum Threshold Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.maximum_threshold_price_fraction_indicator = 1

-- Display: Maximum Threshold Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.maximum_threshold_price_fraction_indicator = function(value)
  return "Maximum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Maximum Threshold Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.maximum_threshold_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.maximum_threshold_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.maximum_threshold_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.maximum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Maximum Threshold Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.maximum_threshold_price = 6

-- Display: Maximum Threshold Price
box_options_sola_unicast_hsvf_v4_5_1_display.maximum_threshold_price = function(value)
  return "Maximum Threshold Price: "..value
end

-- Dissect: Maximum Threshold Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.maximum_threshold_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.maximum_threshold_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.maximum_threshold_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.maximum_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Minimum Number Of Contracts Per Order
box_options_sola_unicast_hsvf_v4_5_1_size_of.minimum_number_of_contracts_per_order = 6

-- Display: Minimum Number Of Contracts Per Order
box_options_sola_unicast_hsvf_v4_5_1_display.minimum_number_of_contracts_per_order = function(value)
  return "Minimum Number Of Contracts Per Order: "..value
end

-- Dissect: Minimum Number Of Contracts Per Order
box_options_sola_unicast_hsvf_v4_5_1_dissect.minimum_number_of_contracts_per_order = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.minimum_number_of_contracts_per_order
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.minimum_number_of_contracts_per_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.minimum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Size: Maximum Number Of Contracts Per Order
box_options_sola_unicast_hsvf_v4_5_1_size_of.maximum_number_of_contracts_per_order = 6

-- Display: Maximum Number Of Contracts Per Order
box_options_sola_unicast_hsvf_v4_5_1_display.maximum_number_of_contracts_per_order = function(value)
  return "Maximum Number Of Contracts Per Order: "..value
end

-- Dissect: Maximum Number Of Contracts Per Order
box_options_sola_unicast_hsvf_v4_5_1_dissect.maximum_number_of_contracts_per_order = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.maximum_number_of_contracts_per_order
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.maximum_number_of_contracts_per_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.maximum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Currency
box_options_sola_unicast_hsvf_v4_5_1_size_of.strike_price_currency = 3

-- Display: Strike Price Currency
box_options_sola_unicast_hsvf_v4_5_1_display.strike_price_currency = function(value)
  if value == "USD" then
    return "Strike Price Currency: Us Dollars (USD)"
  end
  if value == "CAD" then
    return "Strike Price Currency: Canadian Dollars (CAD)"
  end

  return "Strike Price Currency: Unknown("..value..")"
end

-- Dissect: Strike Price Currency
box_options_sola_unicast_hsvf_v4_5_1_dissect.strike_price_currency = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.strike_price_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.strike_price_currency(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.strike_price_currency, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Instrument Keys Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.option_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_description(buffer, offset + index)

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.strike_price_currency

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.maximum_number_of_contracts_per_order

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.minimum_number_of_contracts_per_order

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.maximum_threshold_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.maximum_threshold_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.minimum_threshold_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.minimum_threshold_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.tick_increment

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.tick_increment_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.option_type

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.market_flow_indicator(buffer, offset + index)

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.group_instrument

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_external_code

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.option_marker(buffer, offset + index)

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.underlying_symbol_root

  return index
end

-- Display: Option Instrument Keys Message
box_options_sola_unicast_hsvf_v4_5_1_display.option_instrument_keys_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Instrument Keys Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description(buffer, index, packet, parent)

  -- Strike Price Currency: X
  index, strike_price_currency = box_options_sola_unicast_hsvf_v4_5_1_dissect.strike_price_currency(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: n
  index, maximum_number_of_contracts_per_order = box_options_sola_unicast_hsvf_v4_5_1_dissect.maximum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: n
  index, minimum_number_of_contracts_per_order = box_options_sola_unicast_hsvf_v4_5_1_dissect.minimum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Maximum Threshold Price: n
  index, maximum_threshold_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.maximum_threshold_price(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.maximum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Minimum Threshold Price: n
  index, minimum_threshold_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.minimum_threshold_price(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.minimum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = box_options_sola_unicast_hsvf_v4_5_1_dissect.tick_increment(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: N
  index, tick_increment_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.tick_increment_fraction_indicator(buffer, index, packet, parent)

  -- Option Type: X
  index, option_type = box_options_sola_unicast_hsvf_v4_5_1_dissect.option_type(buffer, index, packet, parent)

  -- Market Flow Indicator: Struct of 2 fields
  index, market_flow_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.market_flow_indicator(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = box_options_sola_unicast_hsvf_v4_5_1_dissect.group_instrument(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: x
  index, instrument_external_code = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_external_code(buffer, index, packet, parent)

  -- Option Marker: Struct of 2 fields
  index, option_marker = box_options_sola_unicast_hsvf_v4_5_1_dissect.option_marker(buffer, index, packet, parent)

  -- Underlying Symbol Root: x
  index, underlying_symbol_root = box_options_sola_unicast_hsvf_v4_5_1_dissect.underlying_symbol_root(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Instrument Keys Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_instrument_keys_message = function(buffer, offset, packet, parent)
  if show.option_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_instrument_keys_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.option_instrument_keys_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.option_instrument_keys_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_instrument_keys_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Price Indicator Marker
box_options_sola_unicast_hsvf_v4_5_1_size_of.price_indicator_marker = 1

-- Display: Price Indicator Marker
box_options_sola_unicast_hsvf_v4_5_1_display.price_indicator_marker = function(value)
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
box_options_sola_unicast_hsvf_v4_5_1_dissect.price_indicator_marker = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.price_indicator_marker
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.price_indicator_marker(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.price_indicator_marker, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
box_options_sola_unicast_hsvf_v4_5_1_size_of.timestamp = 6

-- Display: Timestamp
box_options_sola_unicast_hsvf_v4_5_1_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
box_options_sola_unicast_hsvf_v4_5_1_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.timestamp
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Filler 6
box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_6 = 6

-- Display: Filler 6
box_options_sola_unicast_hsvf_v4_5_1_display.filler_6 = function(value)
  return "Filler 6: "..value
end

-- Dissect: Filler 6
box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_6 = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.filler_6(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.filler_6, range, value, display)

  return offset + length, value
end

-- Size: Trade Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price_fraction_indicator = 1

-- Display: Trade Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_display.trade_price_fraction_indicator = function(value)
  return "Trade Price Fraction Indicator: "..value
end

-- Dissect: Trade Price Fraction Indicator
box_options_sola_unicast_hsvf_v4_5_1_dissect.trade_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.trade_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.trade_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price = 6

-- Display: Trade Price
box_options_sola_unicast_hsvf_v4_5_1_display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
box_options_sola_unicast_hsvf_v4_5_1_dissect.trade_price = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.trade_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Price Sign
box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price_sign = 1

-- Display: Trade Price Sign
box_options_sola_unicast_hsvf_v4_5_1_display.trade_price_sign = function(value)
  return "Trade Price Sign: "..value
end

-- Dissect: Trade Price Sign
box_options_sola_unicast_hsvf_v4_5_1_dissect.trade_price_sign = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.trade_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.trade_price_sign, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Trade Cancellation Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_symbol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.volume

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_6

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.timestamp

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.price_indicator_marker

  return index
end

-- Display: Complex Order Trade Cancellation Message
box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_trade_cancellation_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Trade Cancellation Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_options_sola_unicast_hsvf_v4_5_1_dissect.volume(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.trade_price_sign(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Filler 6: 6 Byte Ascii String
  index, filler_6 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_6(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = box_options_sola_unicast_hsvf_v4_5_1_dissect.timestamp(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = box_options_sola_unicast_hsvf_v4_5_1_dissect.price_indicator_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Trade Cancellation Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_trade_cancellation_message = function(buffer, offset, packet, parent)
  if show.complex_order_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_trade_cancellation_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_trade_cancellation_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_trade_cancellation_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_trade_cancellation_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Option Trade Cancellation Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.option_trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_description(buffer, offset + index)

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.volume

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_6

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.timestamp

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.open_interest

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_1

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.price_indicator_marker

  return index
end

-- Display: Option Trade Cancellation Message
box_options_sola_unicast_hsvf_v4_5_1_display.option_trade_cancellation_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Cancellation Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_options_sola_unicast_hsvf_v4_5_1_dissect.volume(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Filler 6: 6 Byte Ascii String
  index, filler_6 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_6(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = box_options_sola_unicast_hsvf_v4_5_1_dissect.timestamp(buffer, index, packet, parent)

  -- Open Interest: n
  index, open_interest = box_options_sola_unicast_hsvf_v4_5_1_dissect.open_interest(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_1(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = box_options_sola_unicast_hsvf_v4_5_1_dissect.price_indicator_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Cancellation Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_trade_cancellation_message = function(buffer, offset, packet, parent)
  if show.option_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_trade_cancellation_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.option_trade_cancellation_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.option_trade_cancellation_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_trade_cancellation_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Number Of Ask Orders
box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_ask_orders = 2

-- Display: Number Of Ask Orders
box_options_sola_unicast_hsvf_v4_5_1_display.number_of_ask_orders = function(value)
  return "Number Of Ask Orders: "..value
end

-- Dissect: Number Of Ask Orders
box_options_sola_unicast_hsvf_v4_5_1_dissect.number_of_ask_orders = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_ask_orders
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.number_of_ask_orders(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_ask_orders, range, value, display)

  return offset + length, value
end

-- Size: Number Of Bid Orders
box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_bid_orders = 2

-- Display: Number Of Bid Orders
box_options_sola_unicast_hsvf_v4_5_1_display.number_of_bid_orders = function(value)
  return "Number Of Bid Orders: "..value
end

-- Dissect: Number Of Bid Orders
box_options_sola_unicast_hsvf_v4_5_1_dissect.number_of_bid_orders = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_bid_orders
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.number_of_bid_orders(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_bid_orders, range, value, display)

  return offset + length, value
end

-- Size: Level Of Market Depth
box_options_sola_unicast_hsvf_v4_5_1_size_of.level_of_market_depth = 1

-- Display: Level Of Market Depth
box_options_sola_unicast_hsvf_v4_5_1_display.level_of_market_depth = function(value)
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
box_options_sola_unicast_hsvf_v4_5_1_dissect.level_of_market_depth = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.level_of_market_depth
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.level_of_market_depth(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.level_of_market_depth, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Market Depth Level
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_market_depth_level = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.level_of_market_depth

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_bid_orders

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_ask_orders

  return index
end

-- Display: Complex Market Depth Level
box_options_sola_unicast_hsvf_v4_5_1_display.complex_market_depth_level = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Market Depth Level
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_market_depth_level_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level Of Market Depth: X
  index, level_of_market_depth = box_options_sola_unicast_hsvf_v4_5_1_dissect.level_of_market_depth(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price_sign(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: n
  index, bid_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_size(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = box_options_sola_unicast_hsvf_v4_5_1_dissect.number_of_bid_orders(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price_sign(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: N
  index, ask_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: n
  index, ask_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_size(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = box_options_sola_unicast_hsvf_v4_5_1_dissect.number_of_ask_orders(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Market Depth Level
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_market_depth_level = function(buffer, offset, packet, parent)
  if show.complex_market_depth_level then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_market_depth_level, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_market_depth_level_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_market_depth_level(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_market_depth_level_fields(buffer, offset, packet, parent)
  end
end

-- Size: Number Of Levels
box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_levels = 1

-- Display: Number Of Levels
box_options_sola_unicast_hsvf_v4_5_1_display.number_of_levels = function(value)
  return "Number Of Levels: "..value
end

-- Dissect: Number Of Levels
box_options_sola_unicast_hsvf_v4_5_1_dissect.number_of_levels = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_levels
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.number_of_levels(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_levels, range, value, display)

  return offset + length, value
end

-- Size: Instrument Status Marker
box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_status_marker = 1

-- Display: Instrument Status Marker
box_options_sola_unicast_hsvf_v4_5_1_display.instrument_status_marker = function(value)
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
box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_status_marker = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_status_marker
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.instrument_status_marker(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.instrument_status_marker, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Market Depth Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_market_depth_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_symbol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_status_marker

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_levels

  -- Calculate field size from count
  local complex_market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + complex_market_depth_level_count * 31

  return index
end

-- Display: Complex Order Market Depth Message
box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_market_depth_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Market Depth Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_market_depth_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_status_marker(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = box_options_sola_unicast_hsvf_v4_5_1_dissect.number_of_levels(buffer, index, packet, parent)

  -- Complex Market Depth Level: Struct of 11 fields
  for i = 1, number_of_levels do
    index = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_market_depth_level(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Complex Order Market Depth Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_market_depth_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_order_market_depth_message then
    local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_market_depth_message(buffer, offset)
    local range = buffer(offset, length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_market_depth_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_market_depth_message, range, display)
  end

  return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_market_depth_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Market Depth Level
box_options_sola_unicast_hsvf_v4_5_1_size_of.market_depth_level = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.level_of_market_depth

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_bid_orders

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_ask_orders

  return index
end

-- Display: Market Depth Level
box_options_sola_unicast_hsvf_v4_5_1_display.market_depth_level = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Depth Level
box_options_sola_unicast_hsvf_v4_5_1_dissect.market_depth_level_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level Of Market Depth: X
  index, level_of_market_depth = box_options_sola_unicast_hsvf_v4_5_1_dissect.level_of_market_depth(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: n
  index, bid_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_size(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = box_options_sola_unicast_hsvf_v4_5_1_dissect.number_of_bid_orders(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: N
  index, ask_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: n
  index, ask_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_size(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = box_options_sola_unicast_hsvf_v4_5_1_dissect.number_of_ask_orders(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Depth Level
box_options_sola_unicast_hsvf_v4_5_1_dissect.market_depth_level = function(buffer, offset, packet, parent)
  if show.market_depth_level then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.market_depth_level, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.market_depth_level_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.market_depth_level(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.market_depth_level_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Option Market Depth Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.option_market_depth_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_description(buffer, offset + index)

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_status_marker

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_levels

  -- Calculate field size from count
  local market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + market_depth_level_count * 29

  return index
end

-- Display: Option Market Depth Message
box_options_sola_unicast_hsvf_v4_5_1_display.option_market_depth_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Market Depth Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_market_depth_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_status_marker(buffer, index, packet, parent)

  -- Number Of Levels: N
  index, number_of_levels = box_options_sola_unicast_hsvf_v4_5_1_dissect.number_of_levels(buffer, index, packet, parent)

  -- Market Depth Level: Struct of 9 fields
  for i = 1, number_of_levels do
    index = box_options_sola_unicast_hsvf_v4_5_1_dissect.market_depth_level(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Option Market Depth Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_market_depth_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.option_market_depth_message then
    local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.option_market_depth_message(buffer, offset)
    local range = buffer(offset, length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.option_market_depth_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_market_depth_message, range, display)
  end

  return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_market_depth_message_fields(buffer, offset, packet, parent)
end

-- Size: Public Customer Ask Size
box_options_sola_unicast_hsvf_v4_5_1_size_of.public_customer_ask_size = 5

-- Display: Public Customer Ask Size
box_options_sola_unicast_hsvf_v4_5_1_display.public_customer_ask_size = function(value)
  return "Public Customer Ask Size: "..value
end

-- Dissect: Public Customer Ask Size
box_options_sola_unicast_hsvf_v4_5_1_dissect.public_customer_ask_size = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.public_customer_ask_size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.public_customer_ask_size(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.public_customer_ask_size, range, value, display)

  return offset + length, value
end

-- Size: Public Customer Bid Size
box_options_sola_unicast_hsvf_v4_5_1_size_of.public_customer_bid_size = 5

-- Display: Public Customer Bid Size
box_options_sola_unicast_hsvf_v4_5_1_display.public_customer_bid_size = function(value)
  return "Public Customer Bid Size: "..value
end

-- Dissect: Public Customer Bid Size
box_options_sola_unicast_hsvf_v4_5_1_dissect.public_customer_bid_size = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.public_customer_bid_size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.public_customer_bid_size(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.public_customer_bid_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Quote Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_quote_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_symbol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_status_marker

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.public_customer_bid_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.public_customer_ask_size

  return index
end

-- Display: Complex Order Quote Message
box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Quote Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price_sign(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: n
  index, bid_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price_sign(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: N
  index, ask_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: n
  index, ask_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_size(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_status_marker(buffer, index, packet, parent)

  -- Public Customer Bid Size: n
  index, public_customer_bid_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.public_customer_bid_size(buffer, index, packet, parent)

  -- Public Customer Ask Size: n
  index, public_customer_ask_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.public_customer_ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Quote Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_quote_message = function(buffer, offset, packet, parent)
  if show.complex_order_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_quote_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_quote_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_quote_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_quote_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Option Quote Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.option_quote_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_description(buffer, offset + index)

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.bid_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.ask_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_1

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_status_marker

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.public_customer_bid_size

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.public_customer_ask_size

  return index
end

-- Display: Option Quote Message
box_options_sola_unicast_hsvf_v4_5_1_display.option_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Quote Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description(buffer, index, packet, parent)

  -- Bid Price: N
  index, bid_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: n
  index, bid_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: N
  index, ask_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: N
  index, ask_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: n
  index, ask_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.ask_size(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_1(buffer, index, packet, parent)

  -- Instrument Status Marker: A
  index, instrument_status_marker = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_status_marker(buffer, index, packet, parent)

  -- Public Customer Bid Size: n
  index, public_customer_bid_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.public_customer_bid_size(buffer, index, packet, parent)

  -- Public Customer Ask Size: n
  index, public_customer_ask_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.public_customer_ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Quote Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_quote_message = function(buffer, offset, packet, parent)
  if show.option_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_quote_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.option_quote_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.option_quote_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_quote_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Requested Size
box_options_sola_unicast_hsvf_v4_5_1_size_of.requested_size = 8

-- Display: Requested Size
box_options_sola_unicast_hsvf_v4_5_1_display.requested_size = function(value)
  return "Requested Size: "..value
end

-- Dissect: Requested Size
box_options_sola_unicast_hsvf_v4_5_1_dissect.requested_size = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.requested_size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.requested_size(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.requested_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Request For Quote Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.option_request_for_quote_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_description(buffer, offset + index)

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.requested_size

  return index
end

-- Display: Option Request For Quote Message
box_options_sola_unicast_hsvf_v4_5_1_display.option_request_for_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Request For Quote Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_request_for_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description(buffer, index, packet, parent)

  -- Requested Size: n
  index, requested_size = box_options_sola_unicast_hsvf_v4_5_1_dissect.requested_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Request For Quote Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_request_for_quote_message = function(buffer, offset, packet, parent)
  if show.option_request_for_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_request_for_quote_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.option_request_for_quote_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.option_request_for_quote_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_request_for_quote_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Complex Order Instrument Trade Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_trade_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_symbol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.volume

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_6

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.timestamp

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.price_indicator_marker

  return index
end

-- Display: Complex Order Instrument Trade Message
box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_instrument_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Order Instrument Trade Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: x
  index, complex_order_instrument_symbol = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_options_sola_unicast_hsvf_v4_5_1_dissect.volume(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.trade_price_sign(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change_sign(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change_fraction_indicator(buffer, index, packet, parent)

  -- Filler 6: 6 Byte Ascii String
  index, filler_6 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_6(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = box_options_sola_unicast_hsvf_v4_5_1_dissect.timestamp(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = box_options_sola_unicast_hsvf_v4_5_1_dissect.price_indicator_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Instrument Trade Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_trade_message = function(buffer, offset, packet, parent)
  if show.complex_order_instrument_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_instrument_trade_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_order_instrument_trade_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Option Trade Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.option_trade_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.instrument_description(buffer, offset + index)

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.volume

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.trade_price_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change_sign

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.net_change_fraction_indicator

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_6

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.timestamp

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.open_interest

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.filler_1

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.price_indicator_marker

  return index
end

-- Display: Option Trade Message
box_options_sola_unicast_hsvf_v4_5_1_display.option_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description: Struct of 7 fields
  index, instrument_description = box_options_sola_unicast_hsvf_v4_5_1_dissect.instrument_description(buffer, index, packet, parent)

  -- Volume: N
  index, volume = box_options_sola_unicast_hsvf_v4_5_1_dissect.volume(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = box_options_sola_unicast_hsvf_v4_5_1_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign: X
  index, net_change_sign = box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change_sign(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: X
  index, net_change_fraction_indicator = box_options_sola_unicast_hsvf_v4_5_1_dissect.net_change_fraction_indicator(buffer, index, packet, parent)

  -- Filler 6: 6 Byte Ascii String
  index, filler_6 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_6(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = box_options_sola_unicast_hsvf_v4_5_1_dissect.timestamp(buffer, index, packet, parent)

  -- Open Interest: n
  index, open_interest = box_options_sola_unicast_hsvf_v4_5_1_dissect.open_interest(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = box_options_sola_unicast_hsvf_v4_5_1_dissect.filler_1(buffer, index, packet, parent)

  -- Price Indicator Marker: A
  index, price_indicator_marker = box_options_sola_unicast_hsvf_v4_5_1_dissect.price_indicator_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_trade_message = function(buffer, offset, packet, parent)
  if show.option_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_trade_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.option_trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.option_trade_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trading Engine Timestamp
box_options_sola_unicast_hsvf_v4_5_1_size_of.trading_engine_timestamp = 9

-- Display: Trading Engine Timestamp
box_options_sola_unicast_hsvf_v4_5_1_display.trading_engine_timestamp = function(value)
  return "Trading Engine Timestamp: "..value
end

-- Dissect: Trading Engine Timestamp
box_options_sola_unicast_hsvf_v4_5_1_dissect.trading_engine_timestamp = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.trading_engine_timestamp
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.trading_engine_timestamp(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.trading_engine_timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Timestamp Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.system_timestamp_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.trading_engine_timestamp

  return index
end

-- Display: System Timestamp Message
box_options_sola_unicast_hsvf_v4_5_1_display.system_timestamp_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Timestamp Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.system_timestamp_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Engine Timestamp: N
  index, trading_engine_timestamp = box_options_sola_unicast_hsvf_v4_5_1_dissect.trading_engine_timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: System Timestamp Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.system_timestamp_message = function(buffer, offset, packet, parent)
  if show.system_timestamp_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.system_timestamp_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.system_timestamp_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.system_timestamp_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.system_timestamp_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Sequence Numbers Skipped
box_options_sola_unicast_hsvf_v4_5_1_size_of.sequence_numbers_skipped = 9

-- Display: Sequence Numbers Skipped
box_options_sola_unicast_hsvf_v4_5_1_display.sequence_numbers_skipped = function(value)
  return "Sequence Numbers Skipped: "..value
end

-- Dissect: Sequence Numbers Skipped
box_options_sola_unicast_hsvf_v4_5_1_dissect.sequence_numbers_skipped = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.sequence_numbers_skipped
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.sequence_numbers_skipped(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.sequence_numbers_skipped, range, value, display)

  return offset + length, value
end

-- Calculate size of: Gap Sequence Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.gap_sequence_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.sequence_numbers_skipped

  return index
end

-- Display: Gap Sequence Message
box_options_sola_unicast_hsvf_v4_5_1_display.gap_sequence_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gap Sequence Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.gap_sequence_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Numbers Skipped: 9 Byte Ascii String
  index, sequence_numbers_skipped = box_options_sola_unicast_hsvf_v4_5_1_dissect.sequence_numbers_skipped(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Sequence Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.gap_sequence_message = function(buffer, offset, packet, parent)
  if show.gap_sequence_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.gap_sequence_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.gap_sequence_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.gap_sequence_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.gap_sequence_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Circuit Assurance Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.circuit_assurance_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.time

  return index
end

-- Display: Circuit Assurance Message
box_options_sola_unicast_hsvf_v4_5_1_display.circuit_assurance_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Circuit Assurance Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.circuit_assurance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: N
  index, time = box_options_sola_unicast_hsvf_v4_5_1_dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Circuit Assurance Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.circuit_assurance_message = function(buffer, offset, packet, parent)
  if show.circuit_assurance_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.circuit_assurance_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.circuit_assurance_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.circuit_assurance_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.circuit_assurance_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: End Of Transmission Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.end_of_transmission_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.exchange_id

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.time

  return index
end

-- Display: End Of Transmission Message
box_options_sola_unicast_hsvf_v4_5_1_display.end_of_transmission_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmission Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.end_of_transmission_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: A
  index, exchange_id = box_options_sola_unicast_hsvf_v4_5_1_dissect.exchange_id(buffer, index, packet, parent)

  -- Time: N
  index, time = box_options_sola_unicast_hsvf_v4_5_1_dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmission Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.end_of_transmission_message = function(buffer, offset, packet, parent)
  if show.end_of_transmission_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.end_of_transmission_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.end_of_transmission_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.end_of_transmission_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.end_of_transmission_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Option Classes Requested
box_options_sola_unicast_hsvf_v4_5_1_size_of.option_classes_requested = 0

-- Display: Option Classes Requested
box_options_sola_unicast_hsvf_v4_5_1_display.option_classes_requested = function(value)
  return "Option Classes Requested: "..value
end

-- Dissect: Option Classes Requested
box_options_sola_unicast_hsvf_v4_5_1_dissect.option_classes_requested = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.option_classes_requested
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.option_classes_requested(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_classes_requested, range, value, display)

  return offset + length, value
end

-- Size: Number Of Option Classes Requested
box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_option_classes_requested = 3

-- Display: Number Of Option Classes Requested
box_options_sola_unicast_hsvf_v4_5_1_display.number_of_option_classes_requested = function(value)
  return "Number Of Option Classes Requested: "..value
end

-- Dissect: Number Of Option Classes Requested
box_options_sola_unicast_hsvf_v4_5_1_dissect.number_of_option_classes_requested = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_option_classes_requested
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.number_of_option_classes_requested(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_option_classes_requested, range, value, display)

  return offset + length, value
end

-- Size: Hsvf Protocol
box_options_sola_unicast_hsvf_v4_5_1_size_of.hsvf_protocol = 2

-- Display: Hsvf Protocol
box_options_sola_unicast_hsvf_v4_5_1_display.hsvf_protocol = function(value)
  return "Hsvf Protocol: "..value
end

-- Dissect: Hsvf Protocol
box_options_sola_unicast_hsvf_v4_5_1_dissect.hsvf_protocol = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.hsvf_protocol
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.hsvf_protocol(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.hsvf_protocol, range, value, display)

  return offset + length, value
end

-- Size: Gap Control
box_options_sola_unicast_hsvf_v4_5_1_size_of.gap_control = 1

-- Display: Gap Control
box_options_sola_unicast_hsvf_v4_5_1_display.gap_control = function(value)
  if value == "0" then
    return "Gap Control: Will Receive Gap Messages (0)"
  end
  if value == "1" then
    return "Gap Control: Will Not Receive Gap Messages (1)"
  end

  return "Gap Control: Unknown("..value..")"
end

-- Dissect: Gap Control
box_options_sola_unicast_hsvf_v4_5_1_dissect.gap_control = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.gap_control
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.gap_control(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.gap_control, range, value, display)

  return offset + length, value
end

-- Size: Market Summaries
box_options_sola_unicast_hsvf_v4_5_1_size_of.market_summaries = 1

-- Display: Market Summaries
box_options_sola_unicast_hsvf_v4_5_1_display.market_summaries = function(value)
  if value == "Y" then
    return "Market Summaries: Yes (Y)"
  end
  if value == "N" then
    return "Market Summaries: No (N)"
  end

  return "Market Summaries: Unknown("..value..")"
end

-- Dissect: Market Summaries
box_options_sola_unicast_hsvf_v4_5_1_dissect.market_summaries = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.market_summaries
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.market_summaries(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.market_summaries, range, value, display)

  return offset + length, value
end

-- Size: Complex Order
box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order = 1

-- Display: Complex Order
box_options_sola_unicast_hsvf_v4_5_1_display.complex_order = function(value)
  return "Complex Order: "..value
end

-- Dissect: Complex Order
box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.complex_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order, range, value, display)

  return offset + length, value
end

-- Size: Type Of Market Data
box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_market_data = 1

-- Display: Type Of Market Data
box_options_sola_unicast_hsvf_v4_5_1_display.type_of_market_data = function(value)
  if value == "Y" then
    return "Type Of Market Data: Market Depth Messages On The Top 5 Bidsasks For The Type Of Trading Instruments Chosen (Y)"
  end
  if value == "N" then
    return "Type Of Market Data: Best (N)"
  end
  if value == "T" then
    return "Type Of Market Data: Trade (T)"
  end
  if value == "P" then
    return "Type Of Market Data: Price Improvement And Exposed Order Messages (P)"
  end
  if value == "I" then
    return "Type Of Market Data: Market Depth Messages On The Top 5 And The Calculated Implied Best Limit (I)"
  end
  if value == "G" then
    return "Type Of Market Data: Quote Message On The First Level And The Calculated Implied Best Limit (G)"
  end

  return "Type Of Market Data: Unknown("..value..")"
end

-- Dissect: Type Of Market Data
box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_market_data = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_market_data
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.type_of_market_data(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_market_data, range, value, display)

  return offset + length, value
end

-- Size: System Value
box_options_sola_unicast_hsvf_v4_5_1_size_of.system_value = 1

-- Display: System Value
box_options_sola_unicast_hsvf_v4_5_1_display.system_value = function(value)
  return "System Value: "..value
end

-- Dissect: System Value
box_options_sola_unicast_hsvf_v4_5_1_dissect.system_value = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.system_value
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.system_value(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.system_value, range, value, display)

  return offset + length, value
end

-- Size: System Default
box_options_sola_unicast_hsvf_v4_5_1_size_of.system_default = 1

-- Display: System Default
box_options_sola_unicast_hsvf_v4_5_1_display.system_default = function(value)
  return "System Default: "..value
end

-- Dissect: System Default
box_options_sola_unicast_hsvf_v4_5_1_dissect.system_default = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.system_default
  local range = buffer(offset, length)
  local value = range:string()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.system_default(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.system_default, range, value, display)

  return offset + length, value
end

-- Size: Reset Sequence
box_options_sola_unicast_hsvf_v4_5_1_size_of.reset_sequence = 10

-- Display: Reset Sequence
box_options_sola_unicast_hsvf_v4_5_1_display.reset_sequence = function(value)
  return "Reset Sequence: "..value
end

-- Dissect: Reset Sequence
box_options_sola_unicast_hsvf_v4_5_1_dissect.reset_sequence = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.reset_sequence
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.reset_sequence(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.reset_sequence, range, value, display)

  return offset + length, value
end

-- Calculate size of: Connection Message
box_options_sola_unicast_hsvf_v4_5_1_size_of.connection_message = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.reset_sequence

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.system_default

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.system_value

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.type_of_market_data

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.market_summaries

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.gap_control

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.hsvf_protocol

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.number_of_option_classes_requested

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.option_classes_requested

  return index
end

-- Display: Connection Message
box_options_sola_unicast_hsvf_v4_5_1_display.connection_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Connection Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.connection_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reset Sequence: N
  index, reset_sequence = box_options_sola_unicast_hsvf_v4_5_1_dissect.reset_sequence(buffer, index, packet, parent)

  -- System Default: A
  index, system_default = box_options_sola_unicast_hsvf_v4_5_1_dissect.system_default(buffer, index, packet, parent)

  -- System Value: A
  index, system_value = box_options_sola_unicast_hsvf_v4_5_1_dissect.system_value(buffer, index, packet, parent)

  -- Type Of Market Data: A
  index, type_of_market_data = box_options_sola_unicast_hsvf_v4_5_1_dissect.type_of_market_data(buffer, index, packet, parent)

  -- Complex Order: A
  index, complex_order = box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order(buffer, index, packet, parent)

  -- Market Summaries: A
  index, market_summaries = box_options_sola_unicast_hsvf_v4_5_1_dissect.market_summaries(buffer, index, packet, parent)

  -- Gap Control: N
  index, gap_control = box_options_sola_unicast_hsvf_v4_5_1_dissect.gap_control(buffer, index, packet, parent)

  -- Hsvf Protocol: X
  index, hsvf_protocol = box_options_sola_unicast_hsvf_v4_5_1_dissect.hsvf_protocol(buffer, index, packet, parent)

  -- Number Of Option Classes Requested: N
  index, number_of_option_classes_requested = box_options_sola_unicast_hsvf_v4_5_1_dissect.number_of_option_classes_requested(buffer, index, packet, parent)

  -- Option Classes Requested: 0 Byte Ascii String
  index, option_classes_requested = box_options_sola_unicast_hsvf_v4_5_1_dissect.option_classes_requested(buffer, index, packet, parent)

  return index
end

-- Dissect: Connection Message
box_options_sola_unicast_hsvf_v4_5_1_dissect.connection_message = function(buffer, offset, packet, parent)
  if show.connection_message then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.connection_message, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.connection_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.connection_message(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.connection_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Message Body
box_options_sola_unicast_hsvf_v4_5_1_size_of.message_body = function(buffer, offset, message_type)
  -- Size of Connection Message
  if message_type == "RS" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.connection_message(buffer, offset)
  end
  -- Size of End Of Transmission Message
  if message_type == "U" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.end_of_transmission_message(buffer, offset)
  end
  -- Size of Circuit Assurance Message
  if message_type == "V" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.circuit_assurance_message(buffer, offset)
  end
  -- Size of Gap Sequence Message
  if message_type == "W" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.gap_sequence_message(buffer, offset)
  end
  -- Size of System Timestamp Message
  if message_type == "Z" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.system_timestamp_message(buffer, offset)
  end
  -- Size of Option Trade Message
  if message_type == "C" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.option_trade_message(buffer, offset)
  end
  -- Size of Complex Order Instrument Trade Message
  if message_type == "CS" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_trade_message(buffer, offset)
  end
  -- Size of Option Request For Quote Message
  if message_type == "D" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.option_request_for_quote_message(buffer, offset)
  end
  -- Size of Option Quote Message
  if message_type == "F" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.option_quote_message(buffer, offset)
  end
  -- Size of Complex Order Quote Message
  if message_type == "FS" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_quote_message(buffer, offset)
  end
  -- Size of Option Market Depth Message
  if message_type == "H" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.option_market_depth_message(buffer, offset)
  end
  -- Size of Complex Order Market Depth Message
  if message_type == "HS" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_market_depth_message(buffer, offset)
  end
  -- Size of Option Trade Cancellation Message
  if message_type == "I" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.option_trade_cancellation_message(buffer, offset)
  end
  -- Size of Complex Order Trade Cancellation Message
  if message_type == "IS" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_trade_cancellation_message(buffer, offset)
  end
  -- Size of Option Instrument Keys Message
  if message_type == "J" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.option_instrument_keys_message(buffer, offset)
  end
  -- Size of Complex Order Instrument Keys Message
  if message_type == "JS" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_instrument_keys_message(buffer, offset)
  end
  -- Size of Option Summary Message
  if message_type == "N" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.option_summary_message(buffer, offset)
  end
  -- Size of Complex Order Summary Message
  if message_type == "NS" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_summary_message(buffer, offset)
  end
  -- Size of Beginning Of Options Summary Message
  if message_type == "Q" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.beginning_of_options_summary_message(buffer, offset)
  end
  -- Size of Beginning Of Complex Order Summary Message
  if message_type == "QS" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.beginning_of_complex_order_summary_message(buffer, offset)
  end
  -- Size of Group Opening Time Message
  if message_type == "GC" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.group_opening_time_message(buffer, offset)
  end
  -- Size of Group Status Message
  if message_type == "GR" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.group_status_message(buffer, offset)
  end
  -- Size of Complex Order Group Status Message
  if message_type == "GS" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_group_status_message(buffer, offset)
  end
  -- Size of Bulletins Message
  if message_type == "L" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.bulletins_message(buffer, offset)
  end
  -- Size of End Of Sales Message
  if message_type == "S" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.end_of_sales_message(buffer, offset)
  end
  -- Size of Option Improvement Process Beginning Message
  if message_type == "M" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.option_improvement_process_beginning_message(buffer, offset)
  end
  -- Size of Complex Order Improvement Process Beginning Message Message
  if message_type == "MS" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_improvement_process_beginning_message_message(buffer, offset)
  end
  -- Size of Market Sheet Initial And Improvement Order Message
  if message_type == "O" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.market_sheet_initial_and_improvement_order_message(buffer, offset)
  end
  -- Size of Complex Order Market Sheet Initial And Improvement Order Message
  if message_type == "OS" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_market_sheet_initial_and_improvement_order_message(buffer, offset)
  end
  -- Size of Initial And Improvement Order Message
  if message_type == "T" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.initial_and_improvement_order_message(buffer, offset)
  end
  -- Size of Complex Order Initial And Improvement Order Message
  if message_type == "TS" then
    return box_options_sola_unicast_hsvf_v4_5_1_size_of.complex_order_initial_and_improvement_order_message(buffer, offset)
  end

  return 0
end

-- Display: Message Body
box_options_sola_unicast_hsvf_v4_5_1_display.message_body = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Body
box_options_sola_unicast_hsvf_v4_5_1_dissect.message_body_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Connection Message
  if message_type == "RS" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.connection_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmission Message
  if message_type == "U" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.end_of_transmission_message(buffer, offset, packet, parent)
  end
  -- Dissect Circuit Assurance Message
  if message_type == "V" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.circuit_assurance_message(buffer, offset, packet, parent)
  end
  -- Dissect Gap Sequence Message
  if message_type == "W" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.gap_sequence_message(buffer, offset, packet, parent)
  end
  -- Dissect System Timestamp Message
  if message_type == "Z" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.system_timestamp_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Message
  if message_type == "C" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Instrument Trade Message
  if message_type == "CS" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Request For Quote Message
  if message_type == "D" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_request_for_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Quote Message
  if message_type == "F" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Quote Message
  if message_type == "FS" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Market Depth Message
  if message_type == "H" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_market_depth_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Market Depth Message
  if message_type == "HS" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_market_depth_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Cancellation Message
  if message_type == "I" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Trade Cancellation Message
  if message_type == "IS" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Instrument Keys Message
  if message_type == "J" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Instrument Keys Message
  if message_type == "JS" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Summary Message
  if message_type == "N" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Summary Message
  if message_type == "NS" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Options Summary Message
  if message_type == "Q" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.beginning_of_options_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Complex Order Summary Message
  if message_type == "QS" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.beginning_of_complex_order_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Group Opening Time Message
  if message_type == "GC" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.group_opening_time_message(buffer, offset, packet, parent)
  end
  -- Dissect Group Status Message
  if message_type == "GR" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.group_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Group Status Message
  if message_type == "GS" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_group_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Bulletins Message
  if message_type == "L" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.bulletins_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Sales Message
  if message_type == "S" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.end_of_sales_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Improvement Process Beginning Message
  if message_type == "M" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.option_improvement_process_beginning_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Improvement Process Beginning Message Message
  if message_type == "MS" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_improvement_process_beginning_message_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Sheet Initial And Improvement Order Message
  if message_type == "O" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.market_sheet_initial_and_improvement_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Market Sheet Initial And Improvement Order Message
  if message_type == "OS" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_market_sheet_initial_and_improvement_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Initial And Improvement Order Message
  if message_type == "T" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.initial_and_improvement_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Initial And Improvement Order Message
  if message_type == "TS" then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.complex_order_initial_and_improvement_order_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Body
box_options_sola_unicast_hsvf_v4_5_1_dissect.message_body = function(buffer, offset, packet, parent, message_type)
  if not show.message_body then
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.message_body_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = box_options_sola_unicast_hsvf_v4_5_1_size_of.message_body(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.message_body(buffer, packet, parent)
  local element = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.message_body, range, display)

  return box_options_sola_unicast_hsvf_v4_5_1_dissect.message_body_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
box_options_sola_unicast_hsvf_v4_5_1_size_of.message_type = 2

-- Display: Message Type
box_options_sola_unicast_hsvf_v4_5_1_display.message_type = function(value)
  if value == "RS" then
    return "Message Type: Connection Message (RS)"
  end
  if value == "U" then
    return "Message Type: End Of Transmission Message (U)"
  end
  if value == "V" then
    return "Message Type: Circuit Assurance Message (V)"
  end
  if value == "W" then
    return "Message Type: Gap Sequence Message (W)"
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
  if value == "GC" then
    return "Message Type: Group Opening Time Message (GC)"
  end
  if value == "GR" then
    return "Message Type: Group Status Message (GR)"
  end
  if value == "GS" then
    return "Message Type: Complex Order Group Status Message (GS)"
  end
  if value == "L" then
    return "Message Type: Bulletins Message (L)"
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
box_options_sola_unicast_hsvf_v4_5_1_dissect.message_type = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.message_type
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.message_type(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
box_options_sola_unicast_hsvf_v4_5_1_size_of.sequence_number = 9

-- Display: Sequence Number
box_options_sola_unicast_hsvf_v4_5_1_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
box_options_sola_unicast_hsvf_v4_5_1_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.sequence_number
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = box_options_sola_unicast_hsvf_v4_5_1_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
box_options_sola_unicast_hsvf_v4_5_1_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.sequence_number

  index = index + box_options_sola_unicast_hsvf_v4_5_1_size_of.message_type

  return index
end

-- Display: Message Header
box_options_sola_unicast_hsvf_v4_5_1_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
box_options_sola_unicast_hsvf_v4_5_1_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 9 Byte Ascii String
  index, sequence_number = box_options_sola_unicast_hsvf_v4_5_1_dissect.sequence_number(buffer, index, packet, parent)

  -- Message Type: 2 Byte Ascii String Enum with 31 values
  index, message_type = box_options_sola_unicast_hsvf_v4_5_1_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
box_options_sola_unicast_hsvf_v4_5_1_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.message_header, buffer(offset, 0))
    local index = box_options_sola_unicast_hsvf_v4_5_1_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = box_options_sola_unicast_hsvf_v4_5_1_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index
  else
    -- Skip element, add fields directly
    return box_options_sola_unicast_hsvf_v4_5_1_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Size: Hsvf Stx
box_options_sola_unicast_hsvf_v4_5_1_size_of.hsvf_stx = 1

-- Display: Hsvf Stx
box_options_sola_unicast_hsvf_v4_5_1_display.hsvf_stx = function(value)
  return "Hsvf Stx: "..value
end

-- Dissect: Hsvf Stx
box_options_sola_unicast_hsvf_v4_5_1_dissect.hsvf_stx = function(buffer, offset, packet, parent)
  local length = box_options_sola_unicast_hsvf_v4_5_1_size_of.hsvf_stx
  local range = buffer(offset, length)
  local value = range:int()
  local display = box_options_sola_unicast_hsvf_v4_5_1_display.hsvf_stx(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.hsvf_stx, range, value, display)

  return offset + length, value
end

-- Dissect Packet
box_options_sola_unicast_hsvf_v4_5_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Hsvf Stx: 1 Byte Fixed Width Integer Static
    index, hsvf_stx = box_options_sola_unicast_hsvf_v4_5_1_dissect.hsvf_stx(buffer, index, packet, parent)

    -- Message Header: Struct of 2 fields
    index, message_header = box_options_sola_unicast_hsvf_v4_5_1_dissect.message_header(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = trim_right_spaces(buffer(index - 2, 2):string())

    -- Message Body: Runtime Type with 31 branches
    index = box_options_sola_unicast_hsvf_v4_5_1_dissect.message_body(buffer, index, packet, parent, message_type)

    -- Hsvf Etx: 1 Byte Fixed Width Integer
    index, hsvf_etx = box_options_sola_unicast_hsvf_v4_5_1_dissect.hsvf_etx(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function box_options_sola_unicast_hsvf_v4_5_1.init()
end

-- Dissector for Box Options Sola Unicast Hsvf 4.5.1
function box_options_sola_unicast_hsvf_v4_5_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = box_options_sola_unicast_hsvf_v4_5_1.name

  -- Dissect protocol
  local protocol = parent:add(box_options_sola_unicast_hsvf_v4_5_1, buffer(), box_options_sola_unicast_hsvf_v4_5_1.description, "("..buffer:len().." Bytes)")
  return box_options_sola_unicast_hsvf_v4_5_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, box_options_sola_unicast_hsvf_v4_5_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.box_options_sola_unicast_hsvf_v4_5_1_packet_size = function(buffer)

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

-- Dissector Heuristic for Box Options Sola Unicast Hsvf 4.5.1
local function box_options_sola_unicast_hsvf_v4_5_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.box_options_sola_unicast_hsvf_v4_5_1_packet_size(buffer) then return false end

  -- Verify Hsvf Stx
  if not verify.hsvf_stx(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = box_options_sola_unicast_hsvf_v4_5_1
  box_options_sola_unicast_hsvf_v4_5_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Box Options Sola Unicast Hsvf 4.5.1
box_options_sola_unicast_hsvf_v4_5_1:register_heuristic("udp", box_options_sola_unicast_hsvf_v4_5_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Boston Options Exchange
--   Version: 4.5.1
--   Date: Monday, March 15, 2021
--   Specification: HSVF-BX-001E-BOX-SOLA-HSVF-Unicast-Specifications-Guide-v4.51.pdf
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
