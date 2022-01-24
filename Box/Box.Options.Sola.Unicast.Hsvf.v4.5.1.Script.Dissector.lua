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
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Box Options Sola Unicast Hsvf 4.5.1 Fields
box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_fraction_indicator_n_1 = ProtoField.new("Ask Price Fraction Indicator N 1", "box.options.sola.unicast.hsvf.v4.5.1.askpricefractionindicatorn1", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_fraction_indicator_x_1 = ProtoField.new("Ask Price Fraction Indicator X 1", "box.options.sola.unicast.hsvf.v4.5.1.askpricefractionindicatorx1", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_n_6 = ProtoField.new("Ask Price N 6", "box.options.sola.unicast.hsvf.v4.5.1.askpricen6", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_sign = ProtoField.new("Ask Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.askpricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_x_6 = ProtoField.new("Ask Price X 6", "box.options.sola.unicast.hsvf.v4.5.1.askpricex6", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.ask_size = ProtoField.new("Ask Size", "box.options.sola.unicast.hsvf.v4.5.1.asksize", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.auction_type = ProtoField.new("Auction Type", "box.options.sola.unicast.hsvf.v4.5.1.auctiontype", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.beginning_of_complex_order_summary_message = ProtoField.new("Beginning Of Complex Order Summary Message", "box.options.sola.unicast.hsvf.v4.5.1.beginningofcomplexordersummarymessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.beginning_of_options_summary_message = ProtoField.new("Beginning Of Options Summary Message", "box.options.sola.unicast.hsvf.v4.5.1.beginningofoptionssummarymessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price_fraction_indicator = ProtoField.new("Bid Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.bidpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price_n_6 = ProtoField.new("Bid Price N 6", "box.options.sola.unicast.hsvf.v4.5.1.bidpricen6", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price_sign = ProtoField.new("Bid Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.bidpricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price_x_6 = ProtoField.new("Bid Price X 6", "box.options.sola.unicast.hsvf.v4.5.1.bidpricex6", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bid_size = ProtoField.new("Bid Size", "box.options.sola.unicast.hsvf.v4.5.1.bidsize", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bulletin_contents = ProtoField.new("Bulletin Contents", "box.options.sola.unicast.hsvf.v4.5.1.bulletincontents", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bulletin_type = ProtoField.new("Bulletin Type", "box.options.sola.unicast.hsvf.v4.5.1.bulletintype", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.bulletins_message = ProtoField.new("Bulletins Message", "box.options.sola.unicast.hsvf.v4.5.1.bulletinsmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.circuit_assurance_message = ProtoField.new("Circuit Assurance Message", "box.options.sola.unicast.hsvf.v4.5.1.circuitassurancemessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.cmta = ProtoField.new("Cmta", "box.options.sola.unicast.hsvf.v4.5.1.cmta", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.complex_market_depth_level_n_1 = ProtoField.new("Complex Market Depth Level N 1", "box.options.sola.unicast.hsvf.v4.5.1.complexmarketdepthleveln1", ftypes.STRING)
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
box_options_sola_unicast_hsvf_v4_5_1.fields.expiry_year = ProtoField.new("Expiry Year", "box.options.sola.unicast.hsvf.v4.5.1.expiryyear", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.filler_1 = ProtoField.new("Filler 1", "box.options.sola.unicast.hsvf.v4.5.1.filler1", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.filler_6 = ProtoField.new("Filler 6", "box.options.sola.unicast.hsvf.v4.5.1.filler6", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.filler_a_1 = ProtoField.new("Filler A 1", "box.options.sola.unicast.hsvf.v4.5.1.fillera1", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.filler_x_2 = ProtoField.new("Filler X 2", "box.options.sola.unicast.hsvf.v4.5.1.fillerx2", ftypes.STRING)
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
box_options_sola_unicast_hsvf_v4_5_1.fields.instrument_description_x_20 = ProtoField.new("Instrument Description X 20", "box.options.sola.unicast.hsvf.v4.5.1.instrumentdescriptionx20", ftypes.STRING)
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
box_options_sola_unicast_hsvf_v4_5_1.fields.limit_entered_for_an_order_n_6 = ProtoField.new("Limit Entered For An Order N 6", "box.options.sola.unicast.hsvf.v4.5.1.limitenteredforanordern6", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.limit_entered_for_an_order_sign = ProtoField.new("Limit Entered For An Order Sign", "box.options.sola.unicast.hsvf.v4.5.1.limitenteredforanordersign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.limit_entered_for_an_order_x_6 = ProtoField.new("Limit Entered For An Order X 6", "box.options.sola.unicast.hsvf.v4.5.1.limitenteredforanorderx6", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.limit_fraction_indicator = ProtoField.new("Limit Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.limitfractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.low_price = ProtoField.new("Low Price", "box.options.sola.unicast.hsvf.v4.5.1.lowprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.low_price_fraction_indicator = ProtoField.new("Low Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.lowpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.low_price_sign = ProtoField.new("Low Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.lowpricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.market_depth_level = ProtoField.new("Market Depth Level", "box.options.sola.unicast.hsvf.v4.5.1.marketdepthlevel", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.market_flow_indicator_x_2 = ProtoField.new("Market Flow Indicator X 2", "box.options.sola.unicast.hsvf.v4.5.1.marketflowindicatorx2", ftypes.STRING)
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
box_options_sola_unicast_hsvf_v4_5_1.fields.open_interest_n_7 = ProtoField.new("Open Interest N 7", "box.options.sola.unicast.hsvf.v4.5.1.openinterestn7", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.open_interest_x_7 = ProtoField.new("Open Interest X 7", "box.options.sola.unicast.hsvf.v4.5.1.openinterestx7", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.open_price = ProtoField.new("Open Price", "box.options.sola.unicast.hsvf.v4.5.1.openprice", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.open_price_fraction_indicator = ProtoField.new("Open Price Fraction Indicator", "box.options.sola.unicast.hsvf.v4.5.1.openpricefractionindicator", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.open_price_sign = ProtoField.new("Open Price Sign", "box.options.sola.unicast.hsvf.v4.5.1.openpricesign", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_improvement_process_beginning_message = ProtoField.new("Option Improvement Process Beginning Message", "box.options.sola.unicast.hsvf.v4.5.1.optionimprovementprocessbeginningmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_instrument_keys_message = ProtoField.new("Option Instrument Keys Message", "box.options.sola.unicast.hsvf.v4.5.1.optioninstrumentkeysmessage", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.option_marker_a_2 = ProtoField.new("Option Marker A 2", "box.options.sola.unicast.hsvf.v4.5.1.optionmarkera2", ftypes.STRING)
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
box_options_sola_unicast_hsvf_v4_5_1.fields.price_indicator_marker_a_1 = ProtoField.new("Price Indicator Marker A 1", "box.options.sola.unicast.hsvf.v4.5.1.priceindicatormarkera1", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.price_indicator_marker_x_1 = ProtoField.new("Price Indicator Marker X 1", "box.options.sola.unicast.hsvf.v4.5.1.priceindicatormarkerx1", ftypes.STRING)
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
box_options_sola_unicast_hsvf_v4_5_1.fields.strike_price_currency = ProtoField.new("Strike Price Currency", "box.options.sola.unicast.hsvf.v4.5.1.strikepricecurrency", ftypes.STRING)
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
box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_market_data = ProtoField.new("Type Of Market Data", "box.options.sola.unicast.hsvf.v4.5.1.typeofmarketdata", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_order = ProtoField.new("Type Of Order", "box.options.sola.unicast.hsvf.v4.5.1.typeoforder", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "box.options.sola.unicast.hsvf.v4.5.1.underlyingsymbol", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.underlying_symbol_root = ProtoField.new("Underlying Symbol Root", "box.options.sola.unicast.hsvf.v4.5.1.underlyingsymbolroot", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.volume_n_8 = ProtoField.new("Volume N 8", "box.options.sola.unicast.hsvf.v4.5.1.volumen8", ftypes.STRING)
box_options_sola_unicast_hsvf_v4_5_1.fields.volume_x_8 = ProtoField.new("Volume X 8", "box.options.sola.unicast.hsvf.v4.5.1.volumex8", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Box Options Sola Unicast Hsvf 4.5.1 Element Dissection Options
show.beginning_of_complex_order_summary_message = true
show.beginning_of_options_summary_message = true
show.bulletins_message = true
show.circuit_assurance_message = true
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
show.instrument_leg = true
show.market_depth_level = true
show.market_sheet_initial_and_improvement_order_message = true
show.message_header = true
show.option_improvement_process_beginning_message = true
show.option_instrument_keys_message = true
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
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_instrument_leg = Pref.bool("Show Instrument Leg", show.instrument_leg, "Parse and add Instrument Leg to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_market_depth_level = Pref.bool("Show Market Depth Level", show.market_depth_level, "Parse and add Market Depth Level to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_market_sheet_initial_and_improvement_order_message = Pref.bool("Show Market Sheet Initial And Improvement Order Message", show.market_sheet_initial_and_improvement_order_message, "Parse and add Market Sheet Initial And Improvement Order Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_improvement_process_beginning_message = Pref.bool("Show Option Improvement Process Beginning Message", show.option_improvement_process_beginning_message, "Parse and add Option Improvement Process Beginning Message to protocol tree")
box_options_sola_unicast_hsvf_v4_5_1.prefs.show_option_instrument_keys_message = Pref.bool("Show Option Instrument Keys Message", show.option_instrument_keys_message, "Parse and add Option Instrument Keys Message to protocol tree")
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
  if show.instrument_leg ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_instrument_leg then
    show.instrument_leg = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_instrument_leg
    changed = true
  end
  if show.market_depth_level ~= box_options_sola_unicast_hsvf_v4_5_1.prefs.show_market_depth_level then
    show.market_depth_level = box_options_sola_unicast_hsvf_v4_5_1.prefs.show_market_depth_level
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
-- Dissect Box Options Sola Unicast Hsvf 4.5.1
-----------------------------------------------------------------------

-- Size: Hsvf Etx
size_of.hsvf_etx = 1

-- Display: Hsvf Etx
display.hsvf_etx = function(value)
  return "Hsvf Etx: "..value
end

-- Dissect: Hsvf Etx
dissect.hsvf_etx = function(buffer, offset, packet, parent)
  local length = size_of.hsvf_etx
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.hsvf_etx(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.hsvf_etx, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
size_of.auction_type = 1

-- Display: Auction Type
display.auction_type = function(value)
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
dissect.auction_type = function(buffer, offset, packet, parent)
  local length = size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.auction_type(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Improvement Phase Sequential Number
size_of.improvement_phase_sequential_number = 6

-- Display: Improvement Phase Sequential Number
display.improvement_phase_sequential_number = function(value)
  return "Improvement Phase Sequential Number: "..value
end

-- Dissect: Improvement Phase Sequential Number
dissect.improvement_phase_sequential_number = function(buffer, offset, packet, parent)
  local length = size_of.improvement_phase_sequential_number
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.improvement_phase_sequential_number(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.improvement_phase_sequential_number, range, value, display)

  return offset + length, value
end

-- Size: Order Side
size_of.order_side = 1

-- Display: Order Side
display.order_side = function(value)
  if value == "B" then
    return "Order Side: Buy (B)"
  end
  if value == "S" then
    return "Order Side: Sell (S)"
  end

  return "Order Side: Unknown("..value..")"
end

-- Dissect: Order Side
dissect.order_side = function(buffer, offset, packet, parent)
  local length = size_of.order_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.order_side(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.order_side, range, value, display)

  return offset + length, value
end

-- Size: Order Sequence Number
size_of.order_sequence_number = 6

-- Display: Order Sequence Number
display.order_sequence_number = function(value)
  return "Order Sequence Number: "..value
end

-- Dissect: Order Sequence Number
dissect.order_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.order_sequence_number
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.order_sequence_number(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.order_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Deletion Type
size_of.deletion_type = 1

-- Display: Deletion Type
display.deletion_type = function(value)
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
dissect.deletion_type = function(buffer, offset, packet, parent)
  local length = size_of.deletion_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.deletion_type(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.deletion_type, range, value, display)

  return offset + length, value
end

-- Size: Complex Order Instrument Symbol
size_of.complex_order_instrument_symbol = 30

-- Display: Complex Order Instrument Symbol
display.complex_order_instrument_symbol = function(value)
  return "Complex Order Instrument Symbol: "..value
end

-- Dissect: Complex Order Instrument Symbol
dissect.complex_order_instrument_symbol = function(buffer, offset, packet, parent)
  local length = size_of.complex_order_instrument_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.complex_order_instrument_symbol(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_instrument_symbol, range, value, display)

  return offset + length, value
end

-- Size: Exchange Id
size_of.exchange_id = 1

-- Display: Exchange Id
display.exchange_id = function(value)
  return "Exchange Id: "..value
end

-- Dissect: Exchange Id
dissect.exchange_id = function(buffer, offset, packet, parent)
  local length = size_of.exchange_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.exchange_id(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.exchange_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Initial And Improvement Order Message
size_of.complex_order_initial_and_improvement_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.complex_order_instrument_symbol

  index = index + size_of.deletion_type

  index = index + size_of.order_sequence_number

  index = index + size_of.order_side

  index = index + size_of.improvement_phase_sequential_number

  index = index + size_of.auction_type

  return index
end

-- Display: Complex Order Initial And Improvement Order Message
display.complex_order_initial_and_improvement_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Order Initial And Improvement Order Message
dissect.complex_order_initial_and_improvement_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: 30 Byte Ascii String
  index, complex_order_instrument_symbol = dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Deletion Type: 1 Byte Ascii String Enum with 3 values
  index, deletion_type = dissect.deletion_type(buffer, index, packet, parent)

  -- Order Sequence Number: 6 Byte Ascii String
  index, order_sequence_number = dissect.order_sequence_number(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: 6 Byte Ascii String
  index, improvement_phase_sequential_number = dissect.improvement_phase_sequential_number(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index, auction_type = dissect.auction_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Initial And Improvement Order Message
dissect.complex_order_initial_and_improvement_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_order_initial_and_improvement_order_message then
    local length = size_of.complex_order_initial_and_improvement_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_order_initial_and_improvement_order_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_initial_and_improvement_order_message, range, display)
  end

  return dissect.complex_order_initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Improvement Order Side
size_of.improvement_order_side = 1

-- Display: Improvement Order Side
display.improvement_order_side = function(value)
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
dissect.improvement_order_side = function(buffer, offset, packet, parent)
  local length = size_of.improvement_order_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.improvement_order_side(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.improvement_order_side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Initial And Improvement Order Message
size_of.initial_and_improvement_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.instrument_description_struct_20

  index = index + size_of.deletion_type

  index = index + size_of.order_sequence_number

  index = index + size_of.improvement_order_side

  index = index + size_of.improvement_phase_sequential_number

  index = index + size_of.auction_type

  return index
end

-- Display: Initial And Improvement Order Message
display.initial_and_improvement_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Initial And Improvement Order Message
dissect.initial_and_improvement_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description Struct 20
  index, instrument_description_struct_20 = dissect.instrument_description_struct_20(buffer, index, packet, parent)

  -- Deletion Type: 1 Byte Ascii String Enum with 3 values
  index, deletion_type = dissect.deletion_type(buffer, index, packet, parent)

  -- Order Sequence Number: 6 Byte Ascii String
  index, order_sequence_number = dissect.order_sequence_number(buffer, index, packet, parent)

  -- Improvement Order Side: 1 Byte Ascii String Enum with 3 values
  index, improvement_order_side = dissect.improvement_order_side(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: 6 Byte Ascii String
  index, improvement_phase_sequential_number = dissect.improvement_phase_sequential_number(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index, auction_type = dissect.auction_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Initial And Improvement Order Message
dissect.initial_and_improvement_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.initial_and_improvement_order_message then
    local length = size_of.initial_and_improvement_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.initial_and_improvement_order_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.initial_and_improvement_order_message, range, display)
  end

  return dissect.initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Cmta
size_of.cmta = 4

-- Display: Cmta
display.cmta = function(value)
  return "Cmta: "..value
end

-- Dissect: Cmta
dissect.cmta = function(buffer, offset, packet, parent)
  local length = size_of.cmta
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cmta(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.cmta, range, value, display)

  return offset + length, value
end

-- Size: Firm Id
size_of.firm_id = 4

-- Display: Firm Id
display.firm_id = function(value)
  return "Firm Id: "..value
end

-- Dissect: Firm Id
dissect.firm_id = function(buffer, offset, packet, parent)
  local length = size_of.firm_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.firm_id(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.firm_id, range, value, display)

  return offset + length, value
end

-- Size: End Of The Exposition
size_of.end_of_the_exposition = 8

-- Display: End Of The Exposition
display.end_of_the_exposition = function(value)
  return "End Of The Exposition: "..value
end

-- Dissect: End Of The Exposition
dissect.end_of_the_exposition = function(buffer, offset, packet, parent)
  local length = size_of.end_of_the_exposition
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.end_of_the_exposition(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.end_of_the_exposition, range, value, display)

  return offset + length, value
end

-- Size: Filler A 1
size_of.filler_a_1 = 1

-- Display: Filler A 1
display.filler_a_1 = function(value)
  return "Filler A 1: "..value
end

-- Dissect: Filler A 1
dissect.filler_a_1 = function(buffer, offset, packet, parent)
  local length = size_of.filler_a_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.filler_a_1(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.filler_a_1, range, value, display)

  return offset + length, value
end

-- Size: Type Of Clearing Account
size_of.type_of_clearing_account = 1

-- Display: Type Of Clearing Account
display.type_of_clearing_account = function(value)
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
dissect.type_of_clearing_account = function(buffer, offset, packet, parent)
  local length = size_of.type_of_clearing_account
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.type_of_clearing_account(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_clearing_account, range, value, display)

  return offset + length, value
end

-- Size: Order Quantity
size_of.order_quantity = 8

-- Display: Order Quantity
display.order_quantity = function(value)
  return "Order Quantity: "..value
end

-- Dissect: Order Quantity
dissect.order_quantity = function(buffer, offset, packet, parent)
  local length = size_of.order_quantity
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.order_quantity(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.order_quantity, range, value, display)

  return offset + length, value
end

-- Size: Limit Fraction Indicator
size_of.limit_fraction_indicator = 1

-- Display: Limit Fraction Indicator
display.limit_fraction_indicator = function(value)
  return "Limit Fraction Indicator: "..value
end

-- Dissect: Limit Fraction Indicator
dissect.limit_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.limit_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.limit_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.limit_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Limit Entered For An Order N 6
size_of.limit_entered_for_an_order_n_6 = 6

-- Display: Limit Entered For An Order N 6
display.limit_entered_for_an_order_n_6 = function(value)
  return "Limit Entered For An Order N 6: "..value
end

-- Dissect: Limit Entered For An Order N 6
dissect.limit_entered_for_an_order_n_6 = function(buffer, offset, packet, parent)
  local length = size_of.limit_entered_for_an_order_n_6
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.limit_entered_for_an_order_n_6(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.limit_entered_for_an_order_n_6, range, value, display)

  return offset + length, value
end

-- Size: Limit Entered For An Order Sign
size_of.limit_entered_for_an_order_sign = 1

-- Display: Limit Entered For An Order Sign
display.limit_entered_for_an_order_sign = function(value)
  if value == "+" then
    return "Limit Entered For An Order Sign: Positive (+)"
  end
  if value == "-" then
    return "Limit Entered For An Order Sign: Negative (-)"
  end

  return "Limit Entered For An Order Sign: Unknown("..value..")"
end

-- Dissect: Limit Entered For An Order Sign
dissect.limit_entered_for_an_order_sign = function(buffer, offset, packet, parent)
  local length = size_of.limit_entered_for_an_order_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.limit_entered_for_an_order_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.limit_entered_for_an_order_sign, range, value, display)

  return offset + length, value
end

-- Size: Type Of Order
size_of.type_of_order = 1

-- Display: Type Of Order
display.type_of_order = function(value)
  if value == "A" then
    return "Type Of Order: Initial Order (A)"
  end
  if value == "P" then
    return "Type Of Order: Exposed Order (P)"
  end

  return "Type Of Order: Unknown("..value..")"
end

-- Dissect: Type Of Order
dissect.type_of_order = function(buffer, offset, packet, parent)
  local length = size_of.type_of_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.type_of_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_order, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Market Sheet Initial And Improvement Order Message
size_of.complex_order_market_sheet_initial_and_improvement_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.complex_order_instrument_symbol

  index = index + size_of.order_side

  index = index + size_of.type_of_order

  index = index + size_of.limit_entered_for_an_order_sign

  index = index + size_of.limit_entered_for_an_order_n_6

  index = index + size_of.limit_fraction_indicator

  index = index + size_of.order_quantity

  index = index + size_of.order_sequence_number

  index = index + size_of.improvement_phase_sequential_number

  index = index + size_of.type_of_clearing_account

  index = index + size_of.filler_a_1

  index = index + size_of.end_of_the_exposition

  index = index + size_of.auction_type

  index = index + size_of.firm_id

  index = index + size_of.cmta

  return index
end

-- Display: Complex Order Market Sheet Initial And Improvement Order Message
display.complex_order_market_sheet_initial_and_improvement_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Order Market Sheet Initial And Improvement Order Message
dissect.complex_order_market_sheet_initial_and_improvement_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: 30 Byte Ascii String
  index, complex_order_instrument_symbol = dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Type Of Order: 1 Byte Ascii String Enum with 2 values
  index, type_of_order = dissect.type_of_order(buffer, index, packet, parent)

  -- Limit Entered For An Order Sign: 1 Byte Ascii String Enum with 2 values
  index, limit_entered_for_an_order_sign = dissect.limit_entered_for_an_order_sign(buffer, index, packet, parent)

  -- Limit Entered For An Order N 6: 6 Byte Ascii String
  index, limit_entered_for_an_order_n_6 = dissect.limit_entered_for_an_order_n_6(buffer, index, packet, parent)

  -- Limit Fraction Indicator: 1 Byte Ascii String
  index, limit_fraction_indicator = dissect.limit_fraction_indicator(buffer, index, packet, parent)

  -- Order Quantity: 8 Byte Ascii String
  index, order_quantity = dissect.order_quantity(buffer, index, packet, parent)

  -- Order Sequence Number: 6 Byte Ascii String
  index, order_sequence_number = dissect.order_sequence_number(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: 6 Byte Ascii String
  index, improvement_phase_sequential_number = dissect.improvement_phase_sequential_number(buffer, index, packet, parent)

  -- Type Of Clearing Account: 1 Byte Ascii String Enum with 6 values
  index, type_of_clearing_account = dissect.type_of_clearing_account(buffer, index, packet, parent)

  -- Filler A 1: 1 Byte Ascii String
  index, filler_a_1 = dissect.filler_a_1(buffer, index, packet, parent)

  -- End Of The Exposition: 8 Byte Ascii String
  index, end_of_the_exposition = dissect.end_of_the_exposition(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index, auction_type = dissect.auction_type(buffer, index, packet, parent)

  -- Firm Id: 4 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Cmta: 4 Byte Ascii String
  index, cmta = dissect.cmta(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Market Sheet Initial And Improvement Order Message
dissect.complex_order_market_sheet_initial_and_improvement_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_order_market_sheet_initial_and_improvement_order_message then
    local length = size_of.complex_order_market_sheet_initial_and_improvement_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_order_market_sheet_initial_and_improvement_order_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_market_sheet_initial_and_improvement_order_message, range, display)
  end

  return dissect.complex_order_market_sheet_initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Limit Entered For An Order X 6
size_of.limit_entered_for_an_order_x_6 = 6

-- Display: Limit Entered For An Order X 6
display.limit_entered_for_an_order_x_6 = function(value)
  return "Limit Entered For An Order X 6: "..value
end

-- Dissect: Limit Entered For An Order X 6
dissect.limit_entered_for_an_order_x_6 = function(buffer, offset, packet, parent)
  local length = size_of.limit_entered_for_an_order_x_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.limit_entered_for_an_order_x_6(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.limit_entered_for_an_order_x_6, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Sheet Initial And Improvement Order Message
size_of.market_sheet_initial_and_improvement_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.instrument_description_struct_20

  index = index + size_of.order_side

  index = index + size_of.type_of_order

  index = index + size_of.limit_entered_for_an_order_x_6

  index = index + size_of.limit_fraction_indicator

  index = index + size_of.order_quantity

  index = index + size_of.order_sequence_number

  index = index + size_of.improvement_phase_sequential_number

  index = index + size_of.type_of_clearing_account

  index = index + size_of.filler_a_1

  index = index + size_of.end_of_the_exposition

  index = index + size_of.auction_type

  index = index + size_of.firm_id

  index = index + size_of.cmta

  return index
end

-- Display: Market Sheet Initial And Improvement Order Message
display.market_sheet_initial_and_improvement_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Sheet Initial And Improvement Order Message
dissect.market_sheet_initial_and_improvement_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description Struct 20
  index, instrument_description_struct_20 = dissect.instrument_description_struct_20(buffer, index, packet, parent)

  -- Order Side: 1 Byte Ascii String Enum with 2 values
  index, order_side = dissect.order_side(buffer, index, packet, parent)

  -- Type Of Order: 1 Byte Ascii String Enum with 2 values
  index, type_of_order = dissect.type_of_order(buffer, index, packet, parent)

  -- Limit Entered For An Order X 6: 6 Byte Ascii String
  index, limit_entered_for_an_order_x_6 = dissect.limit_entered_for_an_order_x_6(buffer, index, packet, parent)

  -- Limit Fraction Indicator: 1 Byte Ascii String
  index, limit_fraction_indicator = dissect.limit_fraction_indicator(buffer, index, packet, parent)

  -- Order Quantity: 8 Byte Ascii String
  index, order_quantity = dissect.order_quantity(buffer, index, packet, parent)

  -- Order Sequence Number: 6 Byte Ascii String
  index, order_sequence_number = dissect.order_sequence_number(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: 6 Byte Ascii String
  index, improvement_phase_sequential_number = dissect.improvement_phase_sequential_number(buffer, index, packet, parent)

  -- Type Of Clearing Account: 1 Byte Ascii String Enum with 6 values
  index, type_of_clearing_account = dissect.type_of_clearing_account(buffer, index, packet, parent)

  -- Filler A 1: 1 Byte Ascii String
  index, filler_a_1 = dissect.filler_a_1(buffer, index, packet, parent)

  -- End Of The Exposition: 8 Byte Ascii String
  index, end_of_the_exposition = dissect.end_of_the_exposition(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index, auction_type = dissect.auction_type(buffer, index, packet, parent)

  -- Firm Id: 4 Byte Ascii String
  index, firm_id = dissect.firm_id(buffer, index, packet, parent)

  -- Cmta: 4 Byte Ascii String
  index, cmta = dissect.cmta(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Sheet Initial And Improvement Order Message
dissect.market_sheet_initial_and_improvement_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_sheet_initial_and_improvement_order_message then
    local length = size_of.market_sheet_initial_and_improvement_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_sheet_initial_and_improvement_order_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.market_sheet_initial_and_improvement_order_message, range, display)
  end

  return dissect.market_sheet_initial_and_improvement_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Percentage Assured To Initial Order
size_of.percentage_assured_to_initial_order = 8

-- Display: Percentage Assured To Initial Order
display.percentage_assured_to_initial_order = function(value)
  return "Percentage Assured To Initial Order: "..value
end

-- Dissect: Percentage Assured To Initial Order
dissect.percentage_assured_to_initial_order = function(buffer, offset, packet, parent)
  local length = size_of.percentage_assured_to_initial_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.percentage_assured_to_initial_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.percentage_assured_to_initial_order, range, value, display)

  return offset + length, value
end

-- Size: Minimum Quantity For Improvement Order
size_of.minimum_quantity_for_improvement_order = 8

-- Display: Minimum Quantity For Improvement Order
display.minimum_quantity_for_improvement_order = function(value)
  return "Minimum Quantity For Improvement Order: "..value
end

-- Dissect: Minimum Quantity For Improvement Order
dissect.minimum_quantity_for_improvement_order = function(buffer, offset, packet, parent)
  local length = size_of.minimum_quantity_for_improvement_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.minimum_quantity_for_improvement_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.minimum_quantity_for_improvement_order, range, value, display)

  return offset + length, value
end

-- Size: Improvement Process Expiry Duration
size_of.improvement_process_expiry_duration = 4

-- Display: Improvement Process Expiry Duration
display.improvement_process_expiry_duration = function(value)
  return "Improvement Process Expiry Duration: "..value
end

-- Dissect: Improvement Process Expiry Duration
dissect.improvement_process_expiry_duration = function(buffer, offset, packet, parent)
  local length = size_of.improvement_process_expiry_duration
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.improvement_process_expiry_duration(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.improvement_process_expiry_duration, range, value, display)

  return offset + length, value
end

-- Size: Improvement Phase Expiry Time
size_of.improvement_phase_expiry_time = 8

-- Display: Improvement Phase Expiry Time
display.improvement_phase_expiry_time = function(value)
  return "Improvement Phase Expiry Time: "..value
end

-- Dissect: Improvement Phase Expiry Time
dissect.improvement_phase_expiry_time = function(buffer, offset, packet, parent)
  local length = size_of.improvement_phase_expiry_time
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.improvement_phase_expiry_time(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.improvement_phase_expiry_time, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Side
size_of.initial_order_side = 1

-- Display: Initial Order Side
display.initial_order_side = function(value)
  if value == "B" then
    return "Initial Order Side: Buy (B)"
  end
  if value == "S" then
    return "Initial Order Side: Sell (S)"
  end

  return "Initial Order Side: Unknown("..value..")"
end

-- Dissect: Initial Order Side
dissect.initial_order_side = function(buffer, offset, packet, parent)
  local length = size_of.initial_order_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.initial_order_side(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_side, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Quantity
size_of.initial_order_quantity = 8

-- Display: Initial Order Quantity
display.initial_order_quantity = function(value)
  return "Initial Order Quantity: "..value
end

-- Dissect: Initial Order Quantity
dissect.initial_order_quantity = function(buffer, offset, packet, parent)
  local length = size_of.initial_order_quantity
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.initial_order_quantity(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_quantity, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Price Fraction Indicator
size_of.initial_order_price_fraction_indicator = 1

-- Display: Initial Order Price Fraction Indicator
display.initial_order_price_fraction_indicator = function(value)
  return "Initial Order Price Fraction Indicator: "..value
end

-- Dissect: Initial Order Price Fraction Indicator
dissect.initial_order_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.initial_order_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.initial_order_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Price
size_of.initial_order_price = 6

-- Display: Initial Order Price
display.initial_order_price = function(value)
  return "Initial Order Price: "..value
end

-- Dissect: Initial Order Price
dissect.initial_order_price = function(buffer, offset, packet, parent)
  local length = size_of.initial_order_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.initial_order_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_price, range, value, display)

  return offset + length, value
end

-- Size: Initial Order Price Sign
size_of.initial_order_price_sign = 1

-- Display: Initial Order Price Sign
display.initial_order_price_sign = function(value)
  if value == "+" then
    return "Initial Order Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Initial Order Price Sign: Negative (-)"
  end

  return "Initial Order Price Sign: Unknown("..value..")"
end

-- Dissect: Initial Order Price Sign
dissect.initial_order_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.initial_order_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.initial_order_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.initial_order_price_sign, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Improvement Process Beginning Message Message
size_of.complex_order_improvement_process_beginning_message_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.complex_order_instrument_symbol

  index = index + size_of.improvement_phase_sequential_number

  index = index + size_of.initial_order_price_sign

  index = index + size_of.initial_order_price

  index = index + size_of.initial_order_price_fraction_indicator

  index = index + size_of.initial_order_quantity

  index = index + size_of.initial_order_side

  index = index + size_of.improvement_phase_expiry_time

  index = index + size_of.improvement_process_expiry_duration

  index = index + size_of.minimum_quantity_for_improvement_order

  index = index + size_of.percentage_assured_to_initial_order

  index = index + size_of.auction_type

  return index
end

-- Display: Complex Order Improvement Process Beginning Message Message
display.complex_order_improvement_process_beginning_message_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Order Improvement Process Beginning Message Message
dissect.complex_order_improvement_process_beginning_message_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: 30 Byte Ascii String
  index, complex_order_instrument_symbol = dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: 6 Byte Ascii String
  index, improvement_phase_sequential_number = dissect.improvement_phase_sequential_number(buffer, index, packet, parent)

  -- Initial Order Price Sign: 1 Byte Ascii String Enum with 2 values
  index, initial_order_price_sign = dissect.initial_order_price_sign(buffer, index, packet, parent)

  -- Initial Order Price: 6 Byte Ascii String
  index, initial_order_price = dissect.initial_order_price(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: 1 Byte Ascii String
  index, initial_order_price_fraction_indicator = dissect.initial_order_price_fraction_indicator(buffer, index, packet, parent)

  -- Initial Order Quantity: 8 Byte Ascii String
  index, initial_order_quantity = dissect.initial_order_quantity(buffer, index, packet, parent)

  -- Initial Order Side: 1 Byte Ascii String Enum with 2 values
  index, initial_order_side = dissect.initial_order_side(buffer, index, packet, parent)

  -- Improvement Phase Expiry Time: 8 Byte Ascii String
  index, improvement_phase_expiry_time = dissect.improvement_phase_expiry_time(buffer, index, packet, parent)

  -- Improvement Process Expiry Duration: 4 Byte Ascii String
  index, improvement_process_expiry_duration = dissect.improvement_process_expiry_duration(buffer, index, packet, parent)

  -- Minimum Quantity For Improvement Order: 8 Byte Ascii String
  index, minimum_quantity_for_improvement_order = dissect.minimum_quantity_for_improvement_order(buffer, index, packet, parent)

  -- Percentage Assured To Initial Order: 8 Byte Ascii String
  index, percentage_assured_to_initial_order = dissect.percentage_assured_to_initial_order(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index, auction_type = dissect.auction_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Improvement Process Beginning Message Message
dissect.complex_order_improvement_process_beginning_message_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_order_improvement_process_beginning_message_message then
    local length = size_of.complex_order_improvement_process_beginning_message_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_order_improvement_process_beginning_message_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_improvement_process_beginning_message_message, range, display)
  end

  return dissect.complex_order_improvement_process_beginning_message_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Option Improvement Process Beginning Message
size_of.option_improvement_process_beginning_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.instrument_description_struct_20

  index = index + size_of.improvement_phase_sequential_number

  index = index + size_of.initial_order_price

  index = index + size_of.initial_order_price_fraction_indicator

  index = index + size_of.initial_order_quantity

  index = index + size_of.initial_order_side

  index = index + size_of.improvement_phase_expiry_time

  index = index + size_of.improvement_process_expiry_duration

  index = index + size_of.minimum_quantity_for_improvement_order

  index = index + size_of.percentage_assured_to_initial_order

  index = index + size_of.auction_type

  index = index + size_of.filler_a_1

  return index
end

-- Display: Option Improvement Process Beginning Message
display.option_improvement_process_beginning_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Improvement Process Beginning Message
dissect.option_improvement_process_beginning_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description Struct 20
  index, instrument_description_struct_20 = dissect.instrument_description_struct_20(buffer, index, packet, parent)

  -- Improvement Phase Sequential Number: 6 Byte Ascii String
  index, improvement_phase_sequential_number = dissect.improvement_phase_sequential_number(buffer, index, packet, parent)

  -- Initial Order Price: 6 Byte Ascii String
  index, initial_order_price = dissect.initial_order_price(buffer, index, packet, parent)

  -- Initial Order Price Fraction Indicator: 1 Byte Ascii String
  index, initial_order_price_fraction_indicator = dissect.initial_order_price_fraction_indicator(buffer, index, packet, parent)

  -- Initial Order Quantity: 8 Byte Ascii String
  index, initial_order_quantity = dissect.initial_order_quantity(buffer, index, packet, parent)

  -- Initial Order Side: 1 Byte Ascii String Enum with 2 values
  index, initial_order_side = dissect.initial_order_side(buffer, index, packet, parent)

  -- Improvement Phase Expiry Time: 8 Byte Ascii String
  index, improvement_phase_expiry_time = dissect.improvement_phase_expiry_time(buffer, index, packet, parent)

  -- Improvement Process Expiry Duration: 4 Byte Ascii String
  index, improvement_process_expiry_duration = dissect.improvement_process_expiry_duration(buffer, index, packet, parent)

  -- Minimum Quantity For Improvement Order: 8 Byte Ascii String
  index, minimum_quantity_for_improvement_order = dissect.minimum_quantity_for_improvement_order(buffer, index, packet, parent)

  -- Percentage Assured To Initial Order: 8 Byte Ascii String
  index, percentage_assured_to_initial_order = dissect.percentage_assured_to_initial_order(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 4 values
  index, auction_type = dissect.auction_type(buffer, index, packet, parent)

  -- Filler A 1: 1 Byte Ascii String
  index, filler_a_1 = dissect.filler_a_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Improvement Process Beginning Message
dissect.option_improvement_process_beginning_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_improvement_process_beginning_message then
    local length = size_of.option_improvement_process_beginning_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_improvement_process_beginning_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_improvement_process_beginning_message, range, display)
  end

  return dissect.option_improvement_process_beginning_message_fields(buffer, offset, packet, parent)
end

-- Size: Time
size_of.time = 6

-- Display: Time
display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
dissect.time = function(buffer, offset, packet, parent)
  local length = size_of.time
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.time(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.time, range, value, display)

  return offset + length, value
end

-- Size: Reserved
size_of.reserved = 1

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local length = size_of.reserved
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.reserved, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Sales Message
size_of.end_of_sales_message = function(buffer, offset)
  local index = 0

  index = index + size_of.reserved

  index = index + size_of.time

  return index
end

-- Display: End Of Sales Message
display.end_of_sales_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Sales Message
dissect.end_of_sales_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: 1 Byte Ascii String
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  -- Time: 6 Byte Ascii String
  index, time = dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Sales Message
dissect.end_of_sales_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_sales_message then
    local length = size_of.end_of_sales_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.end_of_sales_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.end_of_sales_message, range, display)
  end

  return dissect.end_of_sales_message_fields(buffer, offset, packet, parent)
end

-- Size: Continue Marker
size_of.continue_marker = 1

-- Display: Continue Marker
display.continue_marker = function(value)
  if value == "0" then
    return "Continue Marker: Bulletin Continues In Next Record (0)"
  end
  if value == "1" then
    return "Continue Marker: Bulletin Ended (1)"
  end

  return "Continue Marker: Unknown("..value..")"
end

-- Dissect: Continue Marker
dissect.continue_marker = function(buffer, offset, packet, parent)
  local length = size_of.continue_marker
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.continue_marker(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.continue_marker, range, value, display)

  return offset + length, value
end

-- Size: Bulletin Contents
size_of.bulletin_contents = 79

-- Display: Bulletin Contents
display.bulletin_contents = function(value)
  return "Bulletin Contents: "..value
end

-- Dissect: Bulletin Contents
dissect.bulletin_contents = function(buffer, offset, packet, parent)
  local length = size_of.bulletin_contents
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bulletin_contents(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bulletin_contents, range, value, display)

  return offset + length, value
end

-- Size: Bulletin Type
size_of.bulletin_type = 1

-- Display: Bulletin Type
display.bulletin_type = function(value)
  if value == "1" then
    return "Bulletin Type: Regular (1)"
  end
  if value == "2" then
    return "Bulletin Type: Special (2)"
  end

  return "Bulletin Type: Unknown("..value..")"
end

-- Dissect: Bulletin Type
dissect.bulletin_type = function(buffer, offset, packet, parent)
  local length = size_of.bulletin_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bulletin_type(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bulletin_type, range, value, display)

  return offset + length, value
end

-- Size: Filler 1
size_of.filler_1 = 1

-- Display: Filler 1
display.filler_1 = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
dissect.filler_1 = function(buffer, offset, packet, parent)
  local length = size_of.filler_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.filler_1(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bulletins Message
size_of.bulletins_message = function(buffer, offset)
  local index = 0

  index = index + size_of.filler_1

  index = index + size_of.bulletin_type

  index = index + size_of.bulletin_contents

  index = index + size_of.continue_marker

  return index
end

-- Display: Bulletins Message
display.bulletins_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Bulletins Message
dissect.bulletins_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = dissect.filler_1(buffer, index, packet, parent)

  -- Bulletin Type: 1 Byte Ascii String Enum with 2 values
  index, bulletin_type = dissect.bulletin_type(buffer, index, packet, parent)

  -- Bulletin Contents: 79 Byte Ascii String
  index, bulletin_contents = dissect.bulletin_contents(buffer, index, packet, parent)

  -- Continue Marker: 1 Byte Ascii String Enum with 2 values
  index, continue_marker = dissect.continue_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Bulletins Message
dissect.bulletins_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.bulletins_message then
    local length = size_of.bulletins_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.bulletins_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bulletins_message, range, display)
  end

  return dissect.bulletins_message_fields(buffer, offset, packet, parent)
end

-- Size: Group Status
size_of.group_status = 1

-- Display: Group Status
display.group_status = function(value)
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
dissect.group_status = function(buffer, offset, packet, parent)
  local length = size_of.group_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.group_status(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.group_status, range, value, display)

  return offset + length, value
end

-- Size: Group Of The Complex Order Instrument
size_of.group_of_the_complex_order_instrument = 2

-- Display: Group Of The Complex Order Instrument
display.group_of_the_complex_order_instrument = function(value)
  return "Group Of The Complex Order Instrument: "..value
end

-- Dissect: Group Of The Complex Order Instrument
dissect.group_of_the_complex_order_instrument = function(buffer, offset, packet, parent)
  local length = size_of.group_of_the_complex_order_instrument
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.group_of_the_complex_order_instrument(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.group_of_the_complex_order_instrument, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Group Status Message
size_of.complex_order_group_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.group_of_the_complex_order_instrument

  index = index + size_of.group_status

  return index
end

-- Display: Complex Order Group Status Message
display.complex_order_group_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Order Group Status Message
dissect.complex_order_group_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Group Of The Complex Order Instrument: 2 Byte Ascii String
  index, group_of_the_complex_order_instrument = dissect.group_of_the_complex_order_instrument(buffer, index, packet, parent)

  -- Group Status: 1 Byte Ascii String Enum with 8 values
  index, group_status = dissect.group_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Group Status Message
dissect.complex_order_group_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_order_group_status_message then
    local length = size_of.complex_order_group_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_order_group_status_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_group_status_message, range, display)
  end

  return dissect.complex_order_group_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Root Symbol
size_of.root_symbol = 6

-- Display: Root Symbol
display.root_symbol = function(value)
  return "Root Symbol: "..value
end

-- Dissect: Root Symbol
dissect.root_symbol = function(buffer, offset, packet, parent)
  local length = size_of.root_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_symbol(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.root_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Status Message
size_of.group_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.root_symbol

  index = index + size_of.group_status

  return index
end

-- Display: Group Status Message
display.group_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Status Message
dissect.group_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Root Symbol: 6 Byte Ascii String
  index, root_symbol = dissect.root_symbol(buffer, index, packet, parent)

  -- Group Status: 1 Byte Ascii String Enum with 8 values
  index, group_status = dissect.group_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Message
dissect.group_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_status_message then
    local length = size_of.group_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.group_status_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.group_status_message, range, display)
  end

  return dissect.group_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Scheduled Time
size_of.scheduled_time = 6

-- Display: Scheduled Time
display.scheduled_time = function(value)
  return "Scheduled Time: "..value
end

-- Dissect: Scheduled Time
dissect.scheduled_time = function(buffer, offset, packet, parent)
  local length = size_of.scheduled_time
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.scheduled_time(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.scheduled_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Opening Time Message
size_of.group_opening_time_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.root_symbol

  index = index + size_of.group_status

  index = index + size_of.scheduled_time

  return index
end

-- Display: Group Opening Time Message
display.group_opening_time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Opening Time Message
dissect.group_opening_time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Root Symbol: 6 Byte Ascii String
  index, root_symbol = dissect.root_symbol(buffer, index, packet, parent)

  -- Group Status: 1 Byte Ascii String Enum with 8 values
  index, group_status = dissect.group_status(buffer, index, packet, parent)

  -- Scheduled Time: 6 Byte Ascii String
  index, scheduled_time = dissect.scheduled_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Opening Time Message
dissect.group_opening_time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_opening_time_message then
    local length = size_of.group_opening_time_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.group_opening_time_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.group_opening_time_message, range, display)
  end

  return dissect.group_opening_time_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Beginning Of Complex Order Summary Message
size_of.beginning_of_complex_order_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  return index
end

-- Display: Beginning Of Complex Order Summary Message
display.beginning_of_complex_order_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Beginning Of Complex Order Summary Message
dissect.beginning_of_complex_order_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Complex Order Summary Message
dissect.beginning_of_complex_order_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.beginning_of_complex_order_summary_message then
    local length = size_of.beginning_of_complex_order_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.beginning_of_complex_order_summary_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.beginning_of_complex_order_summary_message, range, display)
  end

  return dissect.beginning_of_complex_order_summary_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Beginning Of Options Summary Message
size_of.beginning_of_options_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  return index
end

-- Display: Beginning Of Options Summary Message
display.beginning_of_options_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Beginning Of Options Summary Message
dissect.beginning_of_options_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Options Summary Message
dissect.beginning_of_options_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.beginning_of_options_summary_message then
    local length = size_of.beginning_of_options_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.beginning_of_options_summary_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.beginning_of_options_summary_message, range, display)
  end

  return dissect.beginning_of_options_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Volume X 8
size_of.volume_x_8 = 8

-- Display: Volume X 8
display.volume_x_8 = function(value)
  return "Volume X 8: "..value
end

-- Dissect: Volume X 8
dissect.volume_x_8 = function(buffer, offset, packet, parent)
  local length = size_of.volume_x_8
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.volume_x_8(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.volume_x_8, range, value, display)

  return offset + length, value
end

-- Size: Net Change Fraction Indicator
size_of.net_change_fraction_indicator = 1

-- Display: Net Change Fraction Indicator
display.net_change_fraction_indicator = function(value)
  return "Net Change Fraction Indicator: "..value
end

-- Dissect: Net Change Fraction Indicator
dissect.net_change_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.net_change_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.net_change_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.net_change_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Net Change
size_of.net_change = 6

-- Display: Net Change
display.net_change = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
dissect.net_change = function(buffer, offset, packet, parent)
  local length = size_of.net_change
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.net_change(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.net_change, range, value, display)

  return offset + length, value
end

-- Size: Net Change Sign
size_of.net_change_sign = 1

-- Display: Net Change Sign
display.net_change_sign = function(value)
  if value == "+" then
    return "Net Change Sign: Positive (+)"
  end
  if value == "-" then
    return "Net Change Sign: Negative (-)"
  end

  return "Net Change Sign: Unknown("..value..")"
end

-- Dissect: Net Change Sign
dissect.net_change_sign = function(buffer, offset, packet, parent)
  local length = size_of.net_change_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.net_change_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.net_change_sign, range, value, display)

  return offset + length, value
end

-- Size: Low Price Fraction Indicator
size_of.low_price_fraction_indicator = 1

-- Display: Low Price Fraction Indicator
display.low_price_fraction_indicator = function(value)
  return "Low Price Fraction Indicator: "..value
end

-- Dissect: Low Price Fraction Indicator
dissect.low_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.low_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.low_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.low_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Low Price
size_of.low_price = 6

-- Display: Low Price
display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
dissect.low_price = function(buffer, offset, packet, parent)
  local length = size_of.low_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.low_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: Low Price Sign
size_of.low_price_sign = 1

-- Display: Low Price Sign
display.low_price_sign = function(value)
  if value == "+" then
    return "Low Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Low Price Sign: Negative (-)"
  end

  return "Low Price Sign: Unknown("..value..")"
end

-- Dissect: Low Price Sign
dissect.low_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.low_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.low_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.low_price_sign, range, value, display)

  return offset + length, value
end

-- Size: High Price Fraction Indicator
size_of.high_price_fraction_indicator = 1

-- Display: High Price Fraction Indicator
display.high_price_fraction_indicator = function(value)
  return "High Price Fraction Indicator: "..value
end

-- Dissect: High Price Fraction Indicator
dissect.high_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.high_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.high_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.high_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: High Price
size_of.high_price = 6

-- Display: High Price
display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
dissect.high_price = function(buffer, offset, packet, parent)
  local length = size_of.high_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.high_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: High Price Sign
size_of.high_price_sign = 1

-- Display: High Price Sign
display.high_price_sign = function(value)
  if value == "+" then
    return "High Price Sign: Positive (+)"
  end
  if value == "-" then
    return "High Price Sign: Negative (-)"
  end

  return "High Price Sign: Unknown("..value..")"
end

-- Dissect: High Price Sign
dissect.high_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.high_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.high_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.high_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Open Price Fraction Indicator
size_of.open_price_fraction_indicator = 1

-- Display: Open Price Fraction Indicator
display.open_price_fraction_indicator = function(value)
  return "Open Price Fraction Indicator: "..value
end

-- Dissect: Open Price Fraction Indicator
dissect.open_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.open_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.open_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.open_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Open Price
size_of.open_price = 6

-- Display: Open Price
display.open_price = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
dissect.open_price = function(buffer, offset, packet, parent)
  local length = size_of.open_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.open_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.open_price, range, value, display)

  return offset + length, value
end

-- Size: Open Price Sign
size_of.open_price_sign = 1

-- Display: Open Price Sign
display.open_price_sign = function(value)
  if value == "+" then
    return "Open Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Open Price Sign: Negative (-)"
  end

  return "Open Price Sign: Unknown("..value..")"
end

-- Dissect: Open Price Sign
dissect.open_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.open_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.open_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.open_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Last Price Fraction Indicator
size_of.last_price_fraction_indicator = 1

-- Display: Last Price Fraction Indicator
display.last_price_fraction_indicator = function(value)
  return "Last Price Fraction Indicator: "..value
end

-- Dissect: Last Price Fraction Indicator
dissect.last_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.last_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.last_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.last_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Last Price
size_of.last_price = 6

-- Display: Last Price
display.last_price = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
dissect.last_price = function(buffer, offset, packet, parent)
  local length = size_of.last_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.last_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.last_price, range, value, display)

  return offset + length, value
end

-- Size: Last Price Sign
size_of.last_price_sign = 1

-- Display: Last Price Sign
display.last_price_sign = function(value)
  return "Last Price Sign: "..value
end

-- Dissect: Last Price Sign
dissect.last_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.last_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.last_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.last_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Ask Size
size_of.ask_size = 5

-- Display: Ask Size
display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
dissect.ask_size = function(buffer, offset, packet, parent)
  local length = size_of.ask_size
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ask_size(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Fraction Indicator X 1
size_of.ask_price_fraction_indicator_x_1 = 1

-- Display: Ask Price Fraction Indicator X 1
display.ask_price_fraction_indicator_x_1 = function(value)
  return "Ask Price Fraction Indicator X 1: "..value
end

-- Dissect: Ask Price Fraction Indicator X 1
dissect.ask_price_fraction_indicator_x_1 = function(buffer, offset, packet, parent)
  local length = size_of.ask_price_fraction_indicator_x_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ask_price_fraction_indicator_x_1(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_fraction_indicator_x_1, range, value, display)

  return offset + length, value
end

-- Size: Ask Price N 6
size_of.ask_price_n_6 = 6

-- Display: Ask Price N 6
display.ask_price_n_6 = function(value)
  return "Ask Price N 6: "..value
end

-- Dissect: Ask Price N 6
dissect.ask_price_n_6 = function(buffer, offset, packet, parent)
  local length = size_of.ask_price_n_6
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.ask_price_n_6(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_n_6, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Sign
size_of.ask_price_sign = 1

-- Display: Ask Price Sign
display.ask_price_sign = function(value)
  if value == "+" then
    return "Ask Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Ask Price Sign: Negative (-)"
  end

  return "Ask Price Sign: Unknown("..value..")"
end

-- Dissect: Ask Price Sign
dissect.ask_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.ask_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ask_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
size_of.bid_size = 5

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_size
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Fraction Indicator
size_of.bid_price_fraction_indicator = 1

-- Display: Bid Price Fraction Indicator
display.bid_price_fraction_indicator = function(value)
  return "Bid Price Fraction Indicator: "..value
end

-- Dissect: Bid Price Fraction Indicator
dissect.bid_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.bid_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bid_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Bid Price N 6
size_of.bid_price_n_6 = 6

-- Display: Bid Price N 6
display.bid_price_n_6 = function(value)
  return "Bid Price N 6: "..value
end

-- Dissect: Bid Price N 6
dissect.bid_price_n_6 = function(buffer, offset, packet, parent)
  local length = size_of.bid_price_n_6
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.bid_price_n_6(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price_n_6, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Sign
size_of.bid_price_sign = 1

-- Display: Bid Price Sign
display.bid_price_sign = function(value)
  return "Bid Price Sign: "..value
end

-- Dissect: Bid Price Sign
dissect.bid_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.bid_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bid_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price_sign, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Summary Message
size_of.complex_order_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.complex_order_instrument_symbol

  index = index + size_of.bid_price_sign

  index = index + size_of.bid_price_n_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_sign

  index = index + size_of.ask_price_n_6

  index = index + size_of.ask_price_fraction_indicator_x_1

  index = index + size_of.ask_size

  index = index + size_of.last_price_sign

  index = index + size_of.last_price

  index = index + size_of.last_price_fraction_indicator

  index = index + size_of.open_price_sign

  index = index + size_of.open_price

  index = index + size_of.open_price_fraction_indicator

  index = index + size_of.high_price_sign

  index = index + size_of.high_price

  index = index + size_of.high_price_fraction_indicator

  index = index + size_of.low_price_sign

  index = index + size_of.low_price

  index = index + size_of.low_price_fraction_indicator

  index = index + size_of.net_change_sign

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator

  index = index + size_of.volume_x_8

  return index
end

-- Display: Complex Order Summary Message
display.complex_order_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Order Summary Message
dissect.complex_order_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: 30 Byte Ascii String
  index, complex_order_instrument_symbol = dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Bid Price Sign: 1 Byte Ascii String
  index, bid_price_sign = dissect.bid_price_sign(buffer, index, packet, parent)

  -- Bid Price N 6: 6 Byte Ascii String
  index, bid_price_n_6 = dissect.bid_price_n_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price Sign: 1 Byte Ascii String Enum with 2 values
  index, ask_price_sign = dissect.ask_price_sign(buffer, index, packet, parent)

  -- Ask Price N 6: 6 Byte Ascii String
  index, ask_price_n_6 = dissect.ask_price_n_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator X 1: 1 Byte Ascii String
  index, ask_price_fraction_indicator_x_1 = dissect.ask_price_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Last Price Sign: 1 Byte Ascii String
  index, last_price_sign = dissect.last_price_sign(buffer, index, packet, parent)

  -- Last Price: 6 Byte Ascii String
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: 1 Byte Ascii String
  index, last_price_fraction_indicator = dissect.last_price_fraction_indicator(buffer, index, packet, parent)

  -- Open Price Sign: 1 Byte Ascii String Enum with 2 values
  index, open_price_sign = dissect.open_price_sign(buffer, index, packet, parent)

  -- Open Price: 6 Byte Ascii String
  index, open_price = dissect.open_price(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: 1 Byte Ascii String
  index, open_price_fraction_indicator = dissect.open_price_fraction_indicator(buffer, index, packet, parent)

  -- High Price Sign: 1 Byte Ascii String Enum with 2 values
  index, high_price_sign = dissect.high_price_sign(buffer, index, packet, parent)

  -- High Price: 6 Byte Ascii String
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- High Price Fraction Indicator: 1 Byte Ascii String
  index, high_price_fraction_indicator = dissect.high_price_fraction_indicator(buffer, index, packet, parent)

  -- Low Price Sign: 1 Byte Ascii String Enum with 2 values
  index, low_price_sign = dissect.low_price_sign(buffer, index, packet, parent)

  -- Low Price: 6 Byte Ascii String
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: 1 Byte Ascii String
  index, low_price_fraction_indicator = dissect.low_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign: 1 Byte Ascii String Enum with 2 values
  index, net_change_sign = dissect.net_change_sign(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: 1 Byte Ascii String
  index, net_change_fraction_indicator = dissect.net_change_fraction_indicator(buffer, index, packet, parent)

  -- Volume X 8: 8 Byte Ascii String
  index, volume_x_8 = dissect.volume_x_8(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Summary Message
dissect.complex_order_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_order_summary_message then
    local length = size_of.complex_order_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_order_summary_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_summary_message, range, display)
  end

  return dissect.complex_order_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Reference Price Fraction Indicator
size_of.reference_price_fraction_indicator = 1

-- Display: Reference Price Fraction Indicator
display.reference_price_fraction_indicator = function(value)
  return "Reference Price Fraction Indicator: "..value
end

-- Dissect: Reference Price Fraction Indicator
dissect.reference_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.reference_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reference_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.reference_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
size_of.reference_price = 6

-- Display: Reference Price
display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
dissect.reference_price = function(buffer, offset, packet, parent)
  local length = size_of.reference_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.reference_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
size_of.underlying_symbol = 10

-- Display: Underlying Symbol
display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Option Marker A 2
size_of.option_marker_a_2 = 2

-- Display: Option Marker A 2
display.option_marker_a_2 = function(value)
  return "Option Marker A 2: "..value
end

-- Dissect: Option Marker A 2
dissect.option_marker_a_2 = function(buffer, offset, packet, parent)
  local length = size_of.option_marker_a_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.option_marker_a_2(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_marker_a_2, range, value, display)

  return offset + length, value
end

-- Size: Volume N 8
size_of.volume_n_8 = 8

-- Display: Volume N 8
display.volume_n_8 = function(value)
  return "Volume N 8: "..value
end

-- Dissect: Volume N 8
dissect.volume_n_8 = function(buffer, offset, packet, parent)
  local length = size_of.volume_n_8
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.volume_n_8(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.volume_n_8, range, value, display)

  return offset + length, value
end

-- Size: Tick
size_of.tick = 1

-- Display: Tick
display.tick = function(value)
  if value == "+" then
    return "Tick: Uptick (+)"
  end
  if value == "-" then
    return "Tick: Downtick (-)"
  end

  return "Tick: Unknown("..value..")"
end

-- Dissect: Tick
dissect.tick = function(buffer, offset, packet, parent)
  local length = size_of.tick
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.tick(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.tick, range, value, display)

  return offset + length, value
end

-- Size: Open Interest X 7
size_of.open_interest_x_7 = 7

-- Display: Open Interest X 7
display.open_interest_x_7 = function(value)
  return "Open Interest X 7: "..value
end

-- Dissect: Open Interest X 7
dissect.open_interest_x_7 = function(buffer, offset, packet, parent)
  local length = size_of.open_interest_x_7
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.open_interest_x_7(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.open_interest_x_7, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Summary Message
size_of.option_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.instrument_description_struct_20

  index = index + size_of.bid_price_n_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_n_6

  index = index + size_of.ask_price_fraction_indicator_x_1

  index = index + size_of.ask_size

  index = index + size_of.last_price

  index = index + size_of.last_price_fraction_indicator

  index = index + size_of.open_interest_x_7

  index = index + size_of.tick

  index = index + size_of.volume_n_8

  index = index + size_of.net_change_sign

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator

  index = index + size_of.open_price

  index = index + size_of.open_price_fraction_indicator

  index = index + size_of.high_price

  index = index + size_of.high_price_fraction_indicator

  index = index + size_of.low_price

  index = index + size_of.low_price_fraction_indicator

  index = index + size_of.option_marker_a_2

  index = index + size_of.underlying_symbol

  index = index + size_of.reference_price

  index = index + size_of.reference_price_fraction_indicator

  return index
end

-- Display: Option Summary Message
display.option_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Summary Message
dissect.option_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description Struct 20
  index, instrument_description_struct_20 = dissect.instrument_description_struct_20(buffer, index, packet, parent)

  -- Bid Price N 6: 6 Byte Ascii String
  index, bid_price_n_6 = dissect.bid_price_n_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price N 6: 6 Byte Ascii String
  index, ask_price_n_6 = dissect.ask_price_n_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator X 1: 1 Byte Ascii String
  index, ask_price_fraction_indicator_x_1 = dissect.ask_price_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Last Price: 6 Byte Ascii String
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: 1 Byte Ascii String
  index, last_price_fraction_indicator = dissect.last_price_fraction_indicator(buffer, index, packet, parent)

  -- Open Interest X 7: 7 Byte Ascii String
  index, open_interest_x_7 = dissect.open_interest_x_7(buffer, index, packet, parent)

  -- Tick: 1 Byte Ascii String Enum with 2 values
  index, tick = dissect.tick(buffer, index, packet, parent)

  -- Volume N 8: 8 Byte Ascii String
  index, volume_n_8 = dissect.volume_n_8(buffer, index, packet, parent)

  -- Net Change Sign: 1 Byte Ascii String Enum with 2 values
  index, net_change_sign = dissect.net_change_sign(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: 1 Byte Ascii String
  index, net_change_fraction_indicator = dissect.net_change_fraction_indicator(buffer, index, packet, parent)

  -- Open Price: 6 Byte Ascii String
  index, open_price = dissect.open_price(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: 1 Byte Ascii String
  index, open_price_fraction_indicator = dissect.open_price_fraction_indicator(buffer, index, packet, parent)

  -- High Price: 6 Byte Ascii String
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- High Price Fraction Indicator: 1 Byte Ascii String
  index, high_price_fraction_indicator = dissect.high_price_fraction_indicator(buffer, index, packet, parent)

  -- Low Price: 6 Byte Ascii String
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: 1 Byte Ascii String
  index, low_price_fraction_indicator = dissect.low_price_fraction_indicator(buffer, index, packet, parent)

  -- Option Marker A 2: 2 Byte Ascii String
  index, option_marker_a_2 = dissect.option_marker_a_2(buffer, index, packet, parent)

  -- Underlying Symbol: 10 Byte Ascii String
  index, underlying_symbol = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Reference Price: 6 Byte Ascii String
  index, reference_price = dissect.reference_price(buffer, index, packet, parent)

  -- Reference Price Fraction Indicator: 1 Byte Ascii String
  index, reference_price_fraction_indicator = dissect.reference_price_fraction_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Summary Message
dissect.option_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_summary_message then
    local length = size_of.option_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_summary_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_summary_message, range, display)
  end

  return dissect.option_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Symbol
size_of.leg_symbol = 30

-- Display: Leg Symbol
display.leg_symbol = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = size_of.leg_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio
size_of.leg_ratio = 8

-- Display: Leg Ratio
display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = size_of.leg_ratio
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Sign
size_of.leg_ratio_sign = 1

-- Display: Leg Ratio Sign
display.leg_ratio_sign = function(value)
  if value == "+" then
    return "Leg Ratio Sign: Positive (+)"
  end
  if value == "-" then
    return "Leg Ratio Sign: Negative (-)"
  end

  return "Leg Ratio Sign: Unknown("..value..")"
end

-- Dissect: Leg Ratio Sign
dissect.leg_ratio_sign = function(buffer, offset, packet, parent)
  local length = size_of.leg_ratio_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_ratio_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.leg_ratio_sign, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Leg
size_of.instrument_leg = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_ratio_sign

  index = index + size_of.leg_ratio

  index = index + size_of.leg_symbol

  return index
end

-- Display: Instrument Leg
display.instrument_leg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Leg
dissect.instrument_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Ratio Sign: 1 Byte Ascii String Enum with 2 values
  index, leg_ratio_sign = dissect.leg_ratio_sign(buffer, index, packet, parent)

  -- Leg Ratio: 8 Byte Ascii String
  index, leg_ratio = dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Symbol: 30 Byte Ascii String
  index, leg_symbol = dissect.leg_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Leg
dissect.instrument_leg = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_leg then
    local length = size_of.instrument_leg(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_leg(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.instrument_leg, range, display)
  end

  return dissect.instrument_leg_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Legs
size_of.number_of_legs = 2

-- Display: Number Of Legs
display.number_of_legs = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
dissect.number_of_legs = function(buffer, offset, packet, parent)
  local length = size_of.number_of_legs
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.number_of_legs(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Size: Complex Order Instrument Allow Implied
size_of.complex_order_instrument_allow_implied = 1

-- Display: Complex Order Instrument Allow Implied
display.complex_order_instrument_allow_implied = function(value)
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
dissect.complex_order_instrument_allow_implied = function(buffer, offset, packet, parent)
  local length = size_of.complex_order_instrument_allow_implied
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.complex_order_instrument_allow_implied(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_instrument_allow_implied, range, value, display)

  return offset + length, value
end

-- Size: Instrument External Code
size_of.instrument_external_code = 30

-- Display: Instrument External Code
display.instrument_external_code = function(value)
  return "Instrument External Code: "..value
end

-- Dissect: Instrument External Code
dissect.instrument_external_code = function(buffer, offset, packet, parent)
  local length = size_of.instrument_external_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument_external_code(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.instrument_external_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument
size_of.instrument = 4

-- Display: Instrument
display.instrument = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
dissect.instrument = function(buffer, offset, packet, parent)
  local length = size_of.instrument
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.instrument, range, value, display)

  return offset + length, value
end

-- Size: Group
size_of.group = 2

-- Display: Group
display.group = function(value)
  return "Group: "..value
end

-- Dissect: Group
dissect.group = function(buffer, offset, packet, parent)
  local length = size_of.group
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.group(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.group, range, value, display)

  return offset + length, value
end

-- Size: Filler X 2
size_of.filler_x_2 = 2

-- Display: Filler X 2
display.filler_x_2 = function(value)
  return "Filler X 2: "..value
end

-- Dissect: Filler X 2
dissect.filler_x_2 = function(buffer, offset, packet, parent)
  local length = size_of.filler_x_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.filler_x_2(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.filler_x_2, range, value, display)

  return offset + length, value
end

-- Size: Tick Increment Fraction Indicator
size_of.tick_increment_fraction_indicator = 1

-- Display: Tick Increment Fraction Indicator
display.tick_increment_fraction_indicator = function(value)
  return "Tick Increment Fraction Indicator: "..value
end

-- Dissect: Tick Increment Fraction Indicator
dissect.tick_increment_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.tick_increment_fraction_indicator
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.tick_increment_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.tick_increment_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Tick Increment
size_of.tick_increment = 6

-- Display: Tick Increment
display.tick_increment = function(value)
  return "Tick Increment: "..value
end

-- Dissect: Tick Increment
dissect.tick_increment = function(buffer, offset, packet, parent)
  local length = size_of.tick_increment
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.tick_increment(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.tick_increment, range, value, display)

  return offset + length, value
end

-- Size: Min Threshold Price Fraction Indicator
size_of.min_threshold_price_fraction_indicator = 1

-- Display: Min Threshold Price Fraction Indicator
display.min_threshold_price_fraction_indicator = function(value)
  return "Min Threshold Price Fraction Indicator: "..value
end

-- Dissect: Min Threshold Price Fraction Indicator
dissect.min_threshold_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.min_threshold_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.min_threshold_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.min_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Min Threshold Price
size_of.min_threshold_price = 6

-- Display: Min Threshold Price
display.min_threshold_price = function(value)
  return "Min Threshold Price: "..value
end

-- Dissect: Min Threshold Price
dissect.min_threshold_price = function(buffer, offset, packet, parent)
  local length = size_of.min_threshold_price
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.min_threshold_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.min_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Min Threshold Price Sign
size_of.min_threshold_price_sign = 1

-- Display: Min Threshold Price Sign
display.min_threshold_price_sign = function(value)
  if value == "+" then
    return "Min Threshold Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Min Threshold Price Sign: Negative (-)"
  end

  return "Min Threshold Price Sign: Unknown("..value..")"
end

-- Dissect: Min Threshold Price Sign
dissect.min_threshold_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.min_threshold_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.min_threshold_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.min_threshold_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Max Threshold Price Fraction Indicator
size_of.max_threshold_price_fraction_indicator = 1

-- Display: Max Threshold Price Fraction Indicator
display.max_threshold_price_fraction_indicator = function(value)
  return "Max Threshold Price Fraction Indicator: "..value
end

-- Dissect: Max Threshold Price Fraction Indicator
dissect.max_threshold_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.max_threshold_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.max_threshold_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.max_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Max Threshold Price
size_of.max_threshold_price = 6

-- Display: Max Threshold Price
display.max_threshold_price = function(value)
  return "Max Threshold Price: "..value
end

-- Dissect: Max Threshold Price
dissect.max_threshold_price = function(buffer, offset, packet, parent)
  local length = size_of.max_threshold_price
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.max_threshold_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.max_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Max Threshold Price Sign
size_of.max_threshold_price_sign = 1

-- Display: Max Threshold Price Sign
display.max_threshold_price_sign = function(value)
  if value == "+" then
    return "Max Threshold Price Sign: Positive (+)"
  end
  if value == "-" then
    return "Max Threshold Price Sign: Negative (-)"
  end

  return "Max Threshold Price Sign: Unknown("..value..")"
end

-- Dissect: Max Threshold Price Sign
dissect.max_threshold_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.max_threshold_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.max_threshold_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.max_threshold_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Min Number Of Contracts Per Order
size_of.min_number_of_contracts_per_order = 6

-- Display: Min Number Of Contracts Per Order
display.min_number_of_contracts_per_order = function(value)
  return "Min Number Of Contracts Per Order: "..value
end

-- Dissect: Min Number Of Contracts Per Order
dissect.min_number_of_contracts_per_order = function(buffer, offset, packet, parent)
  local length = size_of.min_number_of_contracts_per_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.min_number_of_contracts_per_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.min_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Size: Max Number Of Contracts Per Order
size_of.max_number_of_contracts_per_order = 6

-- Display: Max Number Of Contracts Per Order
display.max_number_of_contracts_per_order = function(value)
  return "Max Number Of Contracts Per Order: "..value
end

-- Dissect: Max Number Of Contracts Per Order
dissect.max_number_of_contracts_per_order = function(buffer, offset, packet, parent)
  local length = size_of.max_number_of_contracts_per_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.max_number_of_contracts_per_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.max_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Size: Expiry Day
size_of.expiry_day = 2

-- Display: Expiry Day
display.expiry_day = function(value)
  return "Expiry Day: "..value
end

-- Dissect: Expiry Day
dissect.expiry_day = function(buffer, offset, packet, parent)
  local length = size_of.expiry_day
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.expiry_day(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.expiry_day, range, value, display)

  return offset + length, value
end

-- Size: Delivery Month
size_of.delivery_month = 1

-- Display: Delivery Month
display.delivery_month = function(value)
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
dissect.delivery_month = function(buffer, offset, packet, parent)
  local length = size_of.delivery_month
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.delivery_month(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.delivery_month, range, value, display)

  return offset + length, value
end

-- Size: Expiry Year
size_of.expiry_year = 2

-- Display: Expiry Year
display.expiry_year = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
dissect.expiry_year = function(buffer, offset, packet, parent)
  local length = size_of.expiry_year
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.expiry_year(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Instrument Keys Message
size_of.complex_order_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.complex_order_instrument_symbol

  index = index + size_of.expiry_year

  index = index + size_of.delivery_month

  index = index + size_of.expiry_day

  index = index + size_of.max_number_of_contracts_per_order

  index = index + size_of.min_number_of_contracts_per_order

  index = index + size_of.max_threshold_price_sign

  index = index + size_of.max_threshold_price

  index = index + size_of.max_threshold_price_fraction_indicator

  index = index + size_of.min_threshold_price_sign

  index = index + size_of.min_threshold_price

  index = index + size_of.min_threshold_price_fraction_indicator

  index = index + size_of.tick_increment

  index = index + size_of.tick_increment_fraction_indicator

  index = index + size_of.filler_x_2

  index = index + size_of.group

  index = index + size_of.instrument

  index = index + size_of.instrument_external_code

  index = index + size_of.complex_order_instrument_allow_implied

  index = index + size_of.number_of_legs

  -- Calculate field size from count
  local instrument_leg_count = buffer(offset + index - 2, 2):string()
  index = index + instrument_leg_count * 39

  return index
end

-- Display: Complex Order Instrument Keys Message
display.complex_order_instrument_keys_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Order Instrument Keys Message
dissect.complex_order_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: 30 Byte Ascii String
  index, complex_order_instrument_symbol = dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Delivery Month: 1 Byte Ascii String Enum with 11 values
  index, delivery_month = dissect.delivery_month(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Max Number Of Contracts Per Order: 6 Byte Ascii String
  index, max_number_of_contracts_per_order = dissect.max_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Min Number Of Contracts Per Order: 6 Byte Ascii String
  index, min_number_of_contracts_per_order = dissect.min_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Max Threshold Price Sign: 1 Byte Ascii String Enum with 2 values
  index, max_threshold_price_sign = dissect.max_threshold_price_sign(buffer, index, packet, parent)

  -- Max Threshold Price: 6 Byte Ascii String
  index, max_threshold_price = dissect.max_threshold_price(buffer, index, packet, parent)

  -- Max Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, max_threshold_price_fraction_indicator = dissect.max_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Min Threshold Price Sign: 1 Byte Ascii String Enum with 2 values
  index, min_threshold_price_sign = dissect.min_threshold_price_sign(buffer, index, packet, parent)

  -- Min Threshold Price: 6 Byte Ascii String
  index, min_threshold_price = dissect.min_threshold_price(buffer, index, packet, parent)

  -- Min Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, min_threshold_price_fraction_indicator = dissect.min_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Increment: 6 Byte Ascii String
  index, tick_increment = dissect.tick_increment(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: 1 Byte Ascii String
  index, tick_increment_fraction_indicator = dissect.tick_increment_fraction_indicator(buffer, index, packet, parent)

  -- Filler X 2: 2 Byte Ascii String
  index, filler_x_2 = dissect.filler_x_2(buffer, index, packet, parent)

  -- Group: 2 Byte Ascii String
  index, group = dissect.group(buffer, index, packet, parent)

  -- Instrument: 4 Byte Ascii String
  index, instrument = dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: 30 Byte Ascii String
  index, instrument_external_code = dissect.instrument_external_code(buffer, index, packet, parent)

  -- Complex Order Instrument Allow Implied: 1 Byte Ascii String Enum with 3 values
  index, complex_order_instrument_allow_implied = dissect.complex_order_instrument_allow_implied(buffer, index, packet, parent)

  -- Number Of Legs: 2 Byte Ascii String
  index, number_of_legs = dissect.number_of_legs(buffer, index, packet, parent)

  -- Instrument Leg: Struct of 3 fields
  for i = 1, number_of_legs do
    index = dissect.instrument_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Complex Order Instrument Keys Message
dissect.complex_order_instrument_keys_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_order_instrument_keys_message then
    local length = size_of.complex_order_instrument_keys_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_order_instrument_keys_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_instrument_keys_message, range, display)
  end

  return dissect.complex_order_instrument_keys_message_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Symbol Root
size_of.underlying_symbol_root = 10

-- Display: Underlying Symbol Root
display.underlying_symbol_root = function(value)
  return "Underlying Symbol Root: "..value
end

-- Dissect: Underlying Symbol Root
dissect.underlying_symbol_root = function(buffer, offset, packet, parent)
  local length = size_of.underlying_symbol_root
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_symbol_root(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.underlying_symbol_root, range, value, display)

  return offset + length, value
end

-- Size: Group Instrument
size_of.group_instrument = 2

-- Display: Group Instrument
display.group_instrument = function(value)
  return "Group Instrument: "..value
end

-- Dissect: Group Instrument
dissect.group_instrument = function(buffer, offset, packet, parent)
  local length = size_of.group_instrument
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.group_instrument(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.group_instrument, range, value, display)

  return offset + length, value
end

-- Size: Market Flow Indicator X 2
size_of.market_flow_indicator_x_2 = 2

-- Display: Market Flow Indicator X 2
display.market_flow_indicator_x_2 = function(value)
  return "Market Flow Indicator X 2: "..value
end

-- Dissect: Market Flow Indicator X 2
dissect.market_flow_indicator_x_2 = function(buffer, offset, packet, parent)
  local length = size_of.market_flow_indicator_x_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_flow_indicator_x_2(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.market_flow_indicator_x_2, range, value, display)

  return offset + length, value
end

-- Size: Option Type
size_of.option_type = 1

-- Display: Option Type
display.option_type = function(value)
  if value == "A" then
    return "Option Type: American (A)"
  end
  if value == "E" then
    return "Option Type: European (E)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
dissect.option_type = function(buffer, offset, packet, parent)
  local length = size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Size: Minimum Threshold Price Fraction Indicator
size_of.minimum_threshold_price_fraction_indicator = 1

-- Display: Minimum Threshold Price Fraction Indicator
display.minimum_threshold_price_fraction_indicator = function(value)
  return "Minimum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Minimum Threshold Price Fraction Indicator
dissect.minimum_threshold_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.minimum_threshold_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.minimum_threshold_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.minimum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Minimum Threshold Price
size_of.minimum_threshold_price = 6

-- Display: Minimum Threshold Price
display.minimum_threshold_price = function(value)
  return "Minimum Threshold Price: "..value
end

-- Dissect: Minimum Threshold Price
dissect.minimum_threshold_price = function(buffer, offset, packet, parent)
  local length = size_of.minimum_threshold_price
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.minimum_threshold_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.minimum_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Maximum Threshold Price Fraction Indicator
size_of.maximum_threshold_price_fraction_indicator = 1

-- Display: Maximum Threshold Price Fraction Indicator
display.maximum_threshold_price_fraction_indicator = function(value)
  return "Maximum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Maximum Threshold Price Fraction Indicator
dissect.maximum_threshold_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.maximum_threshold_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.maximum_threshold_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.maximum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Maximum Threshold Price
size_of.maximum_threshold_price = 6

-- Display: Maximum Threshold Price
display.maximum_threshold_price = function(value)
  return "Maximum Threshold Price: "..value
end

-- Dissect: Maximum Threshold Price
dissect.maximum_threshold_price = function(buffer, offset, packet, parent)
  local length = size_of.maximum_threshold_price
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.maximum_threshold_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.maximum_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Minimum Number Of Contracts Per Order
size_of.minimum_number_of_contracts_per_order = 6

-- Display: Minimum Number Of Contracts Per Order
display.minimum_number_of_contracts_per_order = function(value)
  return "Minimum Number Of Contracts Per Order: "..value
end

-- Dissect: Minimum Number Of Contracts Per Order
dissect.minimum_number_of_contracts_per_order = function(buffer, offset, packet, parent)
  local length = size_of.minimum_number_of_contracts_per_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.minimum_number_of_contracts_per_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.minimum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Size: Maximum Number Of Contracts Per Order
size_of.maximum_number_of_contracts_per_order = 6

-- Display: Maximum Number Of Contracts Per Order
display.maximum_number_of_contracts_per_order = function(value)
  return "Maximum Number Of Contracts Per Order: "..value
end

-- Dissect: Maximum Number Of Contracts Per Order
dissect.maximum_number_of_contracts_per_order = function(buffer, offset, packet, parent)
  local length = size_of.maximum_number_of_contracts_per_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.maximum_number_of_contracts_per_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.maximum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Currency
size_of.strike_price_currency = 3

-- Display: Strike Price Currency
display.strike_price_currency = function(value)
  if value == "USD" then
    return "Strike Price Currency: Us Dollars (USD)"
  end
  if value == "CAD" then
    return "Strike Price Currency: Canadian Dollars (CAD)"
  end

  return "Strike Price Currency: Unknown("..value..")"
end

-- Dissect: Strike Price Currency
dissect.strike_price_currency = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strike_price_currency(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.strike_price_currency, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Instrument Keys Message
size_of.option_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.instrument_description_struct_20

  index = index + size_of.strike_price_currency

  index = index + size_of.maximum_number_of_contracts_per_order

  index = index + size_of.minimum_number_of_contracts_per_order

  index = index + size_of.maximum_threshold_price

  index = index + size_of.maximum_threshold_price_fraction_indicator

  index = index + size_of.minimum_threshold_price

  index = index + size_of.minimum_threshold_price_fraction_indicator

  index = index + size_of.tick_increment

  index = index + size_of.tick_increment_fraction_indicator

  index = index + size_of.option_type

  index = index + size_of.market_flow_indicator_x_2

  index = index + size_of.group_instrument

  index = index + size_of.instrument

  index = index + size_of.instrument_external_code

  index = index + size_of.option_marker_a_2

  index = index + size_of.underlying_symbol_root

  return index
end

-- Display: Option Instrument Keys Message
display.option_instrument_keys_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Instrument Keys Message
dissect.option_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description Struct 20
  index, instrument_description_struct_20 = dissect.instrument_description_struct_20(buffer, index, packet, parent)

  -- Strike Price Currency: 3 Byte Ascii String Enum with 2 values
  index, strike_price_currency = dissect.strike_price_currency(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: 6 Byte Ascii String
  index, maximum_number_of_contracts_per_order = dissect.maximum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: 6 Byte Ascii String
  index, minimum_number_of_contracts_per_order = dissect.minimum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Maximum Threshold Price: 6 Byte Ascii String
  index, maximum_threshold_price = dissect.maximum_threshold_price(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, maximum_threshold_price_fraction_indicator = dissect.maximum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Minimum Threshold Price: 6 Byte Ascii String
  index, minimum_threshold_price = dissect.minimum_threshold_price(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, minimum_threshold_price_fraction_indicator = dissect.minimum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Increment: 6 Byte Ascii String
  index, tick_increment = dissect.tick_increment(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: 1 Byte Ascii String
  index, tick_increment_fraction_indicator = dissect.tick_increment_fraction_indicator(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = dissect.option_type(buffer, index, packet, parent)

  -- Market Flow Indicator X 2: 2 Byte Ascii String
  index, market_flow_indicator_x_2 = dissect.market_flow_indicator_x_2(buffer, index, packet, parent)

  -- Group Instrument: 2 Byte Ascii String
  index, group_instrument = dissect.group_instrument(buffer, index, packet, parent)

  -- Instrument: 4 Byte Ascii String
  index, instrument = dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: 30 Byte Ascii String
  index, instrument_external_code = dissect.instrument_external_code(buffer, index, packet, parent)

  -- Option Marker A 2: 2 Byte Ascii String
  index, option_marker_a_2 = dissect.option_marker_a_2(buffer, index, packet, parent)

  -- Underlying Symbol Root: 10 Byte Ascii String
  index, underlying_symbol_root = dissect.underlying_symbol_root(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Instrument Keys Message
dissect.option_instrument_keys_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_instrument_keys_message then
    local length = size_of.option_instrument_keys_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_instrument_keys_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_instrument_keys_message, range, display)
  end

  return dissect.option_instrument_keys_message_fields(buffer, offset, packet, parent)
end

-- Size: Price Indicator Marker A 1
size_of.price_indicator_marker_a_1 = 1

-- Display: Price Indicator Marker A 1
display.price_indicator_marker_a_1 = function(value)
  return "Price Indicator Marker A 1: "..value
end

-- Dissect: Price Indicator Marker A 1
dissect.price_indicator_marker_a_1 = function(buffer, offset, packet, parent)
  local length = size_of.price_indicator_marker_a_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.price_indicator_marker_a_1(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.price_indicator_marker_a_1, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
size_of.timestamp = 6

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local length = size_of.timestamp
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Filler 6
size_of.filler_6 = 6

-- Display: Filler 6
display.filler_6 = function(value)
  return "Filler 6: "..value
end

-- Dissect: Filler 6
dissect.filler_6 = function(buffer, offset, packet, parent)
  local length = size_of.filler_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.filler_6(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.filler_6, range, value, display)

  return offset + length, value
end

-- Size: Trade Price Fraction Indicator
size_of.trade_price_fraction_indicator = 1

-- Display: Trade Price Fraction Indicator
display.trade_price_fraction_indicator = function(value)
  return "Trade Price Fraction Indicator: "..value
end

-- Dissect: Trade Price Fraction Indicator
dissect.trade_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.trade_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.trade_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
size_of.trade_price = 6

-- Display: Trade Price
display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
dissect.trade_price = function(buffer, offset, packet, parent)
  local length = size_of.trade_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.trade_price(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Price Sign
size_of.trade_price_sign = 1

-- Display: Trade Price Sign
display.trade_price_sign = function(value)
  return "Trade Price Sign: "..value
end

-- Dissect: Trade Price Sign
dissect.trade_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.trade_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_price_sign(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.trade_price_sign, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Trade Cancellation Message
size_of.complex_order_trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.complex_order_instrument_symbol

  index = index + size_of.volume_x_8

  index = index + size_of.trade_price_sign

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.filler_6

  index = index + size_of.timestamp

  index = index + size_of.price_indicator_marker_a_1

  return index
end

-- Display: Complex Order Trade Cancellation Message
display.complex_order_trade_cancellation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Order Trade Cancellation Message
dissect.complex_order_trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: 30 Byte Ascii String
  index, complex_order_instrument_symbol = dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Volume X 8: 8 Byte Ascii String
  index, volume_x_8 = dissect.volume_x_8(buffer, index, packet, parent)

  -- Trade Price Sign: 1 Byte Ascii String
  index, trade_price_sign = dissect.trade_price_sign(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Filler 6: 6 Byte Ascii String
  index, filler_6 = dissect.filler_6(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: 1 Byte Ascii String
  index, price_indicator_marker_a_1 = dissect.price_indicator_marker_a_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Trade Cancellation Message
dissect.complex_order_trade_cancellation_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_order_trade_cancellation_message then
    local length = size_of.complex_order_trade_cancellation_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_order_trade_cancellation_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_trade_cancellation_message, range, display)
  end

  return dissect.complex_order_trade_cancellation_message_fields(buffer, offset, packet, parent)
end

-- Size: Price Indicator Marker X 1
size_of.price_indicator_marker_x_1 = 1

-- Display: Price Indicator Marker X 1
display.price_indicator_marker_x_1 = function(value)
  return "Price Indicator Marker X 1: "..value
end

-- Dissect: Price Indicator Marker X 1
dissect.price_indicator_marker_x_1 = function(buffer, offset, packet, parent)
  local length = size_of.price_indicator_marker_x_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.price_indicator_marker_x_1(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.price_indicator_marker_x_1, range, value, display)

  return offset + length, value
end

-- Size: Open Interest N 7
size_of.open_interest_n_7 = 7

-- Display: Open Interest N 7
display.open_interest_n_7 = function(value)
  return "Open Interest N 7: "..value
end

-- Dissect: Open Interest N 7
dissect.open_interest_n_7 = function(buffer, offset, packet, parent)
  local length = size_of.open_interest_n_7
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.open_interest_n_7(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.open_interest_n_7, range, value, display)

  return offset + length, value
end

-- Size: Instrument Description X 20
size_of.instrument_description_x_20 = 20

-- Display: Instrument Description X 20
display.instrument_description_x_20 = function(value)
  return "Instrument Description X 20: "..value
end

-- Dissect: Instrument Description X 20
dissect.instrument_description_x_20 = function(buffer, offset, packet, parent)
  local length = size_of.instrument_description_x_20
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument_description_x_20(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.instrument_description_x_20, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Trade Cancellation Message
size_of.option_trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.instrument_description_x_20

  index = index + size_of.volume_x_8

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.filler_6

  index = index + size_of.timestamp

  index = index + size_of.open_interest_n_7

  index = index + size_of.filler_1

  index = index + size_of.price_indicator_marker_x_1

  return index
end

-- Display: Option Trade Cancellation Message
display.option_trade_cancellation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Trade Cancellation Message
dissect.option_trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description X 20: 20 Byte Ascii String
  index, instrument_description_x_20 = dissect.instrument_description_x_20(buffer, index, packet, parent)

  -- Volume X 8: 8 Byte Ascii String
  index, volume_x_8 = dissect.volume_x_8(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Filler 6: 6 Byte Ascii String
  index, filler_6 = dissect.filler_6(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Open Interest N 7: 7 Byte Ascii String
  index, open_interest_n_7 = dissect.open_interest_n_7(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = dissect.filler_1(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: 1 Byte Ascii String
  index, price_indicator_marker_x_1 = dissect.price_indicator_marker_x_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Cancellation Message
dissect.option_trade_cancellation_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_trade_cancellation_message then
    local length = size_of.option_trade_cancellation_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_trade_cancellation_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_trade_cancellation_message, range, display)
  end

  return dissect.option_trade_cancellation_message_fields(buffer, offset, packet, parent)
end

-- Size: Complex Market Depth Level N 1
size_of.complex_market_depth_level_n_1 = 1

-- Display: Complex Market Depth Level N 1
display.complex_market_depth_level_n_1 = function(value)
  return "Complex Market Depth Level N 1: "..value
end

-- Dissect: Complex Market Depth Level N 1
dissect.complex_market_depth_level_n_1 = function(buffer, offset, packet, parent)
  local length = size_of.complex_market_depth_level_n_1
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.complex_market_depth_level_n_1(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_market_depth_level_n_1, range, value, display)

  return offset + length, value
end

-- Size: Number Of Levels
size_of.number_of_levels = 1

-- Display: Number Of Levels
display.number_of_levels = function(value)
  return "Number Of Levels: "..value
end

-- Dissect: Number Of Levels
dissect.number_of_levels = function(buffer, offset, packet, parent)
  local length = size_of.number_of_levels
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.number_of_levels(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_levels, range, value, display)

  return offset + length, value
end

-- Size: Instrument Status Marker
size_of.instrument_status_marker = 1

-- Display: Instrument Status Marker
display.instrument_status_marker = function(value)
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
dissect.instrument_status_marker = function(buffer, offset, packet, parent)
  local length = size_of.instrument_status_marker
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument_status_marker(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.instrument_status_marker, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Market Depth Message
size_of.complex_order_market_depth_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.complex_order_instrument_symbol

  index = index + size_of.instrument_status_marker

  index = index + size_of.number_of_levels

  index = index + size_of.complex_market_depth_level_n_1

  return index
end

-- Display: Complex Order Market Depth Message
display.complex_order_market_depth_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Order Market Depth Message
dissect.complex_order_market_depth_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: 30 Byte Ascii String
  index, complex_order_instrument_symbol = dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Instrument Status Marker: 1 Byte Ascii String Enum with 11 values
  index, instrument_status_marker = dissect.instrument_status_marker(buffer, index, packet, parent)

  -- Number Of Levels: 1 Byte Ascii String
  index, number_of_levels = dissect.number_of_levels(buffer, index, packet, parent)

  -- Complex Market Depth Level N 1: 1 Byte Ascii String
  index, complex_market_depth_level_n_1 = dissect.complex_market_depth_level_n_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Market Depth Message
dissect.complex_order_market_depth_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_order_market_depth_message then
    local length = size_of.complex_order_market_depth_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_order_market_depth_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_market_depth_message, range, display)
  end

  return dissect.complex_order_market_depth_message_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Ask Orders
size_of.number_of_ask_orders = 2

-- Display: Number Of Ask Orders
display.number_of_ask_orders = function(value)
  return "Number Of Ask Orders: "..value
end

-- Dissect: Number Of Ask Orders
dissect.number_of_ask_orders = function(buffer, offset, packet, parent)
  local length = size_of.number_of_ask_orders
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.number_of_ask_orders(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_ask_orders, range, value, display)

  return offset + length, value
end

-- Size: Ask Price X 6
size_of.ask_price_x_6 = 6

-- Display: Ask Price X 6
display.ask_price_x_6 = function(value)
  return "Ask Price X 6: "..value
end

-- Dissect: Ask Price X 6
dissect.ask_price_x_6 = function(buffer, offset, packet, parent)
  local length = size_of.ask_price_x_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ask_price_x_6(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_x_6, range, value, display)

  return offset + length, value
end

-- Size: Number Of Bid Orders
size_of.number_of_bid_orders = 2

-- Display: Number Of Bid Orders
display.number_of_bid_orders = function(value)
  return "Number Of Bid Orders: "..value
end

-- Dissect: Number Of Bid Orders
dissect.number_of_bid_orders = function(buffer, offset, packet, parent)
  local length = size_of.number_of_bid_orders
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.number_of_bid_orders(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_bid_orders, range, value, display)

  return offset + length, value
end

-- Size: Bid Price X 6
size_of.bid_price_x_6 = 6

-- Display: Bid Price X 6
display.bid_price_x_6 = function(value)
  return "Bid Price X 6: "..value
end

-- Dissect: Bid Price X 6
dissect.bid_price_x_6 = function(buffer, offset, packet, parent)
  local length = size_of.bid_price_x_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bid_price_x_6(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.bid_price_x_6, range, value, display)

  return offset + length, value
end

-- Size: Level Of Market Depth
size_of.level_of_market_depth = 1

-- Display: Level Of Market Depth
display.level_of_market_depth = function(value)
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
dissect.level_of_market_depth = function(buffer, offset, packet, parent)
  local length = size_of.level_of_market_depth
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.level_of_market_depth(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.level_of_market_depth, range, value, display)

  return offset + length, value
end

-- Calculate size of: Market Depth Level
size_of.market_depth_level = function(buffer, offset)
  local index = 0

  index = index + size_of.level_of_market_depth

  index = index + size_of.bid_price_x_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.number_of_bid_orders

  index = index + size_of.ask_price_x_6

  index = index + size_of.ask_price_fraction_indicator_x_1

  index = index + size_of.ask_size

  index = index + size_of.number_of_ask_orders

  return index
end

-- Display: Market Depth Level
display.market_depth_level = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Depth Level
dissect.market_depth_level_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level Of Market Depth: 1 Byte Ascii String Enum with 8 values
  index, level_of_market_depth = dissect.level_of_market_depth(buffer, index, packet, parent)

  -- Bid Price X 6: 6 Byte Ascii String
  index, bid_price_x_6 = dissect.bid_price_x_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Number Of Bid Orders: 2 Byte Ascii String
  index, number_of_bid_orders = dissect.number_of_bid_orders(buffer, index, packet, parent)

  -- Ask Price X 6: 6 Byte Ascii String
  index, ask_price_x_6 = dissect.ask_price_x_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator X 1: 1 Byte Ascii String
  index, ask_price_fraction_indicator_x_1 = dissect.ask_price_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Number Of Ask Orders: 2 Byte Ascii String
  index, number_of_ask_orders = dissect.number_of_ask_orders(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Depth Level
dissect.market_depth_level = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_depth_level then
    local length = size_of.market_depth_level(buffer, offset)
    local range = buffer(offset, length)
    local display = display.market_depth_level(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.market_depth_level, range, display)
  end

  return dissect.market_depth_level_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Option Market Depth Message
size_of.option_market_depth_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.instrument_description_x_20

  index = index + size_of.instrument_status_marker

  index = index + size_of.number_of_levels

  -- Calculate field size from count
  local market_depth_level_count = buffer(offset + index - 1, 1):string()
  index = index + market_depth_level_count * 29

  return index
end

-- Display: Option Market Depth Message
display.option_market_depth_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Market Depth Message
dissect.option_market_depth_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description X 20: 20 Byte Ascii String
  index, instrument_description_x_20 = dissect.instrument_description_x_20(buffer, index, packet, parent)

  -- Instrument Status Marker: 1 Byte Ascii String Enum with 11 values
  index, instrument_status_marker = dissect.instrument_status_marker(buffer, index, packet, parent)

  -- Number Of Levels: 1 Byte Ascii String
  index, number_of_levels = dissect.number_of_levels(buffer, index, packet, parent)

  -- Market Depth Level: Struct of 9 fields
  for i = 1, number_of_levels do
    index = dissect.market_depth_level(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Option Market Depth Message
dissect.option_market_depth_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.option_market_depth_message then
    local length = size_of.option_market_depth_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_market_depth_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_market_depth_message, range, display)
  end

  return dissect.option_market_depth_message_fields(buffer, offset, packet, parent)
end

-- Size: Public Customer Ask Size
size_of.public_customer_ask_size = 5

-- Display: Public Customer Ask Size
display.public_customer_ask_size = function(value)
  return "Public Customer Ask Size: "..value
end

-- Dissect: Public Customer Ask Size
dissect.public_customer_ask_size = function(buffer, offset, packet, parent)
  local length = size_of.public_customer_ask_size
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.public_customer_ask_size(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.public_customer_ask_size, range, value, display)

  return offset + length, value
end

-- Size: Public Customer Bid Size
size_of.public_customer_bid_size = 5

-- Display: Public Customer Bid Size
display.public_customer_bid_size = function(value)
  return "Public Customer Bid Size: "..value
end

-- Dissect: Public Customer Bid Size
dissect.public_customer_bid_size = function(buffer, offset, packet, parent)
  local length = size_of.public_customer_bid_size
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.public_customer_bid_size(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.public_customer_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Fraction Indicator N 1
size_of.ask_price_fraction_indicator_n_1 = 1

-- Display: Ask Price Fraction Indicator N 1
display.ask_price_fraction_indicator_n_1 = function(value)
  return "Ask Price Fraction Indicator N 1: "..value
end

-- Dissect: Ask Price Fraction Indicator N 1
dissect.ask_price_fraction_indicator_n_1 = function(buffer, offset, packet, parent)
  local length = size_of.ask_price_fraction_indicator_n_1
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.ask_price_fraction_indicator_n_1(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.ask_price_fraction_indicator_n_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Complex Order Quote Message
size_of.complex_order_quote_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.complex_order_instrument_symbol

  index = index + size_of.bid_price_sign

  index = index + size_of.bid_price_x_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_sign

  index = index + size_of.ask_price_x_6

  index = index + size_of.ask_price_fraction_indicator_n_1

  index = index + size_of.ask_size

  index = index + size_of.instrument_status_marker

  index = index + size_of.public_customer_bid_size

  index = index + size_of.public_customer_ask_size

  return index
end

-- Display: Complex Order Quote Message
display.complex_order_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Order Quote Message
dissect.complex_order_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: 30 Byte Ascii String
  index, complex_order_instrument_symbol = dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Bid Price Sign: 1 Byte Ascii String
  index, bid_price_sign = dissect.bid_price_sign(buffer, index, packet, parent)

  -- Bid Price X 6: 6 Byte Ascii String
  index, bid_price_x_6 = dissect.bid_price_x_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price Sign: 1 Byte Ascii String Enum with 2 values
  index, ask_price_sign = dissect.ask_price_sign(buffer, index, packet, parent)

  -- Ask Price X 6: 6 Byte Ascii String
  index, ask_price_x_6 = dissect.ask_price_x_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator N 1: 1 Byte Ascii String
  index, ask_price_fraction_indicator_n_1 = dissect.ask_price_fraction_indicator_n_1(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Instrument Status Marker: 1 Byte Ascii String Enum with 11 values
  index, instrument_status_marker = dissect.instrument_status_marker(buffer, index, packet, parent)

  -- Public Customer Bid Size: 5 Byte Ascii String
  index, public_customer_bid_size = dissect.public_customer_bid_size(buffer, index, packet, parent)

  -- Public Customer Ask Size: 5 Byte Ascii String
  index, public_customer_ask_size = dissect.public_customer_ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Quote Message
dissect.complex_order_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_order_quote_message then
    local length = size_of.complex_order_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_order_quote_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_quote_message, range, display)
  end

  return dissect.complex_order_quote_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Option Quote Message
size_of.option_quote_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.instrument_description_struct_20

  index = index + size_of.bid_price_x_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_x_6

  index = index + size_of.ask_price_fraction_indicator_x_1

  index = index + size_of.ask_size

  index = index + size_of.filler_1

  index = index + size_of.instrument_status_marker

  index = index + size_of.public_customer_bid_size

  index = index + size_of.public_customer_ask_size

  return index
end

-- Display: Option Quote Message
display.option_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Quote Message
dissect.option_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description Struct 20
  index, instrument_description_struct_20 = dissect.instrument_description_struct_20(buffer, index, packet, parent)

  -- Bid Price X 6: 6 Byte Ascii String
  index, bid_price_x_6 = dissect.bid_price_x_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price X 6: 6 Byte Ascii String
  index, ask_price_x_6 = dissect.ask_price_x_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator X 1: 1 Byte Ascii String
  index, ask_price_fraction_indicator_x_1 = dissect.ask_price_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = dissect.filler_1(buffer, index, packet, parent)

  -- Instrument Status Marker: 1 Byte Ascii String Enum with 11 values
  index, instrument_status_marker = dissect.instrument_status_marker(buffer, index, packet, parent)

  -- Public Customer Bid Size: 5 Byte Ascii String
  index, public_customer_bid_size = dissect.public_customer_bid_size(buffer, index, packet, parent)

  -- Public Customer Ask Size: 5 Byte Ascii String
  index, public_customer_ask_size = dissect.public_customer_ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Quote Message
dissect.option_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_quote_message then
    local length = size_of.option_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_quote_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_quote_message, range, display)
  end

  return dissect.option_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Requested Size
size_of.requested_size = 8

-- Display: Requested Size
display.requested_size = function(value)
  return "Requested Size: "..value
end

-- Dissect: Requested Size
dissect.requested_size = function(buffer, offset, packet, parent)
  local length = size_of.requested_size
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.requested_size(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.requested_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Request For Quote Message
size_of.option_request_for_quote_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.instrument_description_x_20

  index = index + size_of.requested_size

  return index
end

-- Display: Option Request For Quote Message
display.option_request_for_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Request For Quote Message
dissect.option_request_for_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description X 20: 20 Byte Ascii String
  index, instrument_description_x_20 = dissect.instrument_description_x_20(buffer, index, packet, parent)

  -- Requested Size: 8 Byte Ascii String
  index, requested_size = dissect.requested_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Request For Quote Message
dissect.option_request_for_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_request_for_quote_message then
    local length = size_of.option_request_for_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_request_for_quote_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_request_for_quote_message, range, display)
  end

  return dissect.option_request_for_quote_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Complex Order Instrument Trade Message
size_of.complex_order_instrument_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.complex_order_instrument_symbol

  index = index + size_of.volume_x_8

  index = index + size_of.trade_price_sign

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.net_change_sign

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator

  index = index + size_of.filler_6

  index = index + size_of.timestamp

  index = index + size_of.price_indicator_marker_a_1

  return index
end

-- Display: Complex Order Instrument Trade Message
display.complex_order_instrument_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Order Instrument Trade Message
dissect.complex_order_instrument_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Complex Order Instrument Symbol: 30 Byte Ascii String
  index, complex_order_instrument_symbol = dissect.complex_order_instrument_symbol(buffer, index, packet, parent)

  -- Volume X 8: 8 Byte Ascii String
  index, volume_x_8 = dissect.volume_x_8(buffer, index, packet, parent)

  -- Trade Price Sign: 1 Byte Ascii String
  index, trade_price_sign = dissect.trade_price_sign(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign: 1 Byte Ascii String Enum with 2 values
  index, net_change_sign = dissect.net_change_sign(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: 1 Byte Ascii String
  index, net_change_fraction_indicator = dissect.net_change_fraction_indicator(buffer, index, packet, parent)

  -- Filler 6: 6 Byte Ascii String
  index, filler_6 = dissect.filler_6(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: 1 Byte Ascii String
  index, price_indicator_marker_a_1 = dissect.price_indicator_marker_a_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Order Instrument Trade Message
dissect.complex_order_instrument_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_order_instrument_trade_message then
    local length = size_of.complex_order_instrument_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.complex_order_instrument_trade_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order_instrument_trade_message, range, display)
  end

  return dissect.complex_order_instrument_trade_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Option Trade Message
size_of.option_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.instrument_description_struct_20

  index = index + size_of.volume_x_8

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.net_change_sign

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator

  index = index + size_of.filler_6

  index = index + size_of.timestamp

  index = index + size_of.open_interest_x_7

  index = index + size_of.filler_1

  index = index + size_of.price_indicator_marker_a_1

  return index
end

-- Display: Option Trade Message
display.option_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Trade Message
dissect.option_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Instrument Description Struct 20
  index, instrument_description_struct_20 = dissect.instrument_description_struct_20(buffer, index, packet, parent)

  -- Volume X 8: 8 Byte Ascii String
  index, volume_x_8 = dissect.volume_x_8(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign: 1 Byte Ascii String Enum with 2 values
  index, net_change_sign = dissect.net_change_sign(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator: 1 Byte Ascii String
  index, net_change_fraction_indicator = dissect.net_change_fraction_indicator(buffer, index, packet, parent)

  -- Filler 6: 6 Byte Ascii String
  index, filler_6 = dissect.filler_6(buffer, index, packet, parent)

  -- Timestamp: 6 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Open Interest X 7: 7 Byte Ascii String
  index, open_interest_x_7 = dissect.open_interest_x_7(buffer, index, packet, parent)

  -- Filler 1: 1 Byte Ascii String
  index, filler_1 = dissect.filler_1(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: 1 Byte Ascii String
  index, price_indicator_marker_a_1 = dissect.price_indicator_marker_a_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Message
dissect.option_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_trade_message then
    local length = size_of.option_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_trade_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.option_trade_message, range, display)
  end

  return dissect.option_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Trading Engine Timestamp
size_of.trading_engine_timestamp = 9

-- Display: Trading Engine Timestamp
display.trading_engine_timestamp = function(value)
  return "Trading Engine Timestamp: "..value
end

-- Dissect: Trading Engine Timestamp
dissect.trading_engine_timestamp = function(buffer, offset, packet, parent)
  local length = size_of.trading_engine_timestamp
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.trading_engine_timestamp(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.trading_engine_timestamp, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Timestamp Message
size_of.system_timestamp_message = function(buffer, offset)
  local index = 0

  index = index + size_of.trading_engine_timestamp

  return index
end

-- Display: System Timestamp Message
display.system_timestamp_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Timestamp Message
dissect.system_timestamp_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Engine Timestamp: 9 Byte Ascii String
  index, trading_engine_timestamp = dissect.trading_engine_timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: System Timestamp Message
dissect.system_timestamp_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_timestamp_message then
    local length = size_of.system_timestamp_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.system_timestamp_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.system_timestamp_message, range, display)
  end

  return dissect.system_timestamp_message_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Numbers Skipped
size_of.sequence_numbers_skipped = 9

-- Display: Sequence Numbers Skipped
display.sequence_numbers_skipped = function(value)
  return "Sequence Numbers Skipped: "..value
end

-- Dissect: Sequence Numbers Skipped
dissect.sequence_numbers_skipped = function(buffer, offset, packet, parent)
  local length = size_of.sequence_numbers_skipped
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.sequence_numbers_skipped(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.sequence_numbers_skipped, range, value, display)

  return offset + length, value
end

-- Calculate size of: Gap Sequence Message
size_of.gap_sequence_message = function(buffer, offset)
  local index = 0

  index = index + size_of.sequence_numbers_skipped

  return index
end

-- Display: Gap Sequence Message
display.gap_sequence_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Gap Sequence Message
dissect.gap_sequence_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Numbers Skipped: 9 Byte Ascii String
  index, sequence_numbers_skipped = dissect.sequence_numbers_skipped(buffer, index, packet, parent)

  return index
end

-- Dissect: Gap Sequence Message
dissect.gap_sequence_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.gap_sequence_message then
    local length = size_of.gap_sequence_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.gap_sequence_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.gap_sequence_message, range, display)
  end

  return dissect.gap_sequence_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Circuit Assurance Message
size_of.circuit_assurance_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time

  return index
end

-- Display: Circuit Assurance Message
display.circuit_assurance_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Circuit Assurance Message
dissect.circuit_assurance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 6 Byte Ascii String
  index, time = dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Circuit Assurance Message
dissect.circuit_assurance_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.circuit_assurance_message then
    local length = size_of.circuit_assurance_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.circuit_assurance_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.circuit_assurance_message, range, display)
  end

  return dissect.circuit_assurance_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: End Of Transmission Message
size_of.end_of_transmission_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id

  index = index + size_of.time

  return index
end

-- Display: End Of Transmission Message
display.end_of_transmission_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Transmission Message
dissect.end_of_transmission_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id: 1 Byte Ascii String
  index, exchange_id = dissect.exchange_id(buffer, index, packet, parent)

  -- Time: 6 Byte Ascii String
  index, time = dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmission Message
dissect.end_of_transmission_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_transmission_message then
    local length = size_of.end_of_transmission_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.end_of_transmission_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.end_of_transmission_message, range, display)
  end

  return dissect.end_of_transmission_message_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Option Classes Requested
size_of.number_of_option_classes_requested = 3

-- Display: Number Of Option Classes Requested
display.number_of_option_classes_requested = function(value)
  return "Number Of Option Classes Requested: "..value
end

-- Dissect: Number Of Option Classes Requested
dissect.number_of_option_classes_requested = function(buffer, offset, packet, parent)
  local length = size_of.number_of_option_classes_requested
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.number_of_option_classes_requested(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.number_of_option_classes_requested, range, value, display)

  return offset + length, value
end

-- Size: Hsvf Protocol
size_of.hsvf_protocol = 2

-- Display: Hsvf Protocol
display.hsvf_protocol = function(value)
  return "Hsvf Protocol: "..value
end

-- Dissect: Hsvf Protocol
dissect.hsvf_protocol = function(buffer, offset, packet, parent)
  local length = size_of.hsvf_protocol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.hsvf_protocol(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.hsvf_protocol, range, value, display)

  return offset + length, value
end

-- Size: Gap Control
size_of.gap_control = 1

-- Display: Gap Control
display.gap_control = function(value)
  if value == "0" then
    return "Gap Control: Will Receive Gap Messages (0)"
  end
  if value == "1" then
    return "Gap Control: Will Not Receive Gap Messages (1)"
  end

  return "Gap Control: Unknown("..value..")"
end

-- Dissect: Gap Control
dissect.gap_control = function(buffer, offset, packet, parent)
  local length = size_of.gap_control
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.gap_control(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.gap_control, range, value, display)

  return offset + length, value
end

-- Size: Market Summaries
size_of.market_summaries = 1

-- Display: Market Summaries
display.market_summaries = function(value)
  if value == "Y" then
    return "Market Summaries: Yes (Y)"
  end
  if value == "N" then
    return "Market Summaries: No (N)"
  end

  return "Market Summaries: Unknown("..value..")"
end

-- Dissect: Market Summaries
dissect.market_summaries = function(buffer, offset, packet, parent)
  local length = size_of.market_summaries
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_summaries(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.market_summaries, range, value, display)

  return offset + length, value
end

-- Size: Complex Order
size_of.complex_order = 1

-- Display: Complex Order
display.complex_order = function(value)
  return "Complex Order: "..value
end

-- Dissect: Complex Order
dissect.complex_order = function(buffer, offset, packet, parent)
  local length = size_of.complex_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.complex_order(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.complex_order, range, value, display)

  return offset + length, value
end

-- Size: Type Of Market Data
size_of.type_of_market_data = 1

-- Display: Type Of Market Data
display.type_of_market_data = function(value)
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
dissect.type_of_market_data = function(buffer, offset, packet, parent)
  local length = size_of.type_of_market_data
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.type_of_market_data(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.type_of_market_data, range, value, display)

  return offset + length, value
end

-- Size: System Value
size_of.system_value = 1

-- Display: System Value
display.system_value = function(value)
  return "System Value: "..value
end

-- Dissect: System Value
dissect.system_value = function(buffer, offset, packet, parent)
  local length = size_of.system_value
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.system_value(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.system_value, range, value, display)

  return offset + length, value
end

-- Size: System Default
size_of.system_default = 1

-- Display: System Default
display.system_default = function(value)
  return "System Default: "..value
end

-- Dissect: System Default
dissect.system_default = function(buffer, offset, packet, parent)
  local length = size_of.system_default
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.system_default(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.system_default, range, value, display)

  return offset + length, value
end

-- Size: Reset Sequence
size_of.reset_sequence = 10

-- Display: Reset Sequence
display.reset_sequence = function(value)
  return "Reset Sequence: "..value
end

-- Dissect: Reset Sequence
dissect.reset_sequence = function(buffer, offset, packet, parent)
  local length = size_of.reset_sequence
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.reset_sequence(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.reset_sequence, range, value, display)

  return offset + length, value
end

-- Calculate size of: Connection Message
size_of.connection_message = function(buffer, offset)
  local index = 0

  index = index + size_of.reset_sequence

  index = index + size_of.system_default

  index = index + size_of.system_value

  index = index + size_of.type_of_market_data

  index = index + size_of.complex_order

  index = index + size_of.market_summaries

  index = index + size_of.gap_control

  index = index + size_of.hsvf_protocol

  index = index + size_of.number_of_option_classes_requested

  index = index + size_of.option_classes_requested

  return index
end

-- Display: Connection Message
display.connection_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Connection Message
dissect.connection_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reset Sequence: 10 Byte Ascii String
  index, reset_sequence = dissect.reset_sequence(buffer, index, packet, parent)

  -- System Default: 1 Byte Ascii String
  index, system_default = dissect.system_default(buffer, index, packet, parent)

  -- System Value: 1 Byte Ascii String
  index, system_value = dissect.system_value(buffer, index, packet, parent)

  -- Type Of Market Data: 1 Byte Ascii String Enum with 6 values
  index, type_of_market_data = dissect.type_of_market_data(buffer, index, packet, parent)

  -- Complex Order: 1 Byte Ascii String
  index, complex_order = dissect.complex_order(buffer, index, packet, parent)

  -- Market Summaries: 1 Byte Ascii String Enum with 2 values
  index, market_summaries = dissect.market_summaries(buffer, index, packet, parent)

  -- Gap Control: 1 Byte Ascii String Enum with 2 values
  index, gap_control = dissect.gap_control(buffer, index, packet, parent)

  -- Hsvf Protocol: 2 Byte Ascii String
  index, hsvf_protocol = dissect.hsvf_protocol(buffer, index, packet, parent)

  -- Number Of Option Classes Requested: 3 Byte Ascii String
  index, number_of_option_classes_requested = dissect.number_of_option_classes_requested(buffer, index, packet, parent)

  -- Option Classes Requested
  index, option_classes_requested = dissect.option_classes_requested(buffer, index, packet, parent)

  return index
end

-- Dissect: Connection Message
dissect.connection_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.connection_message then
    local length = size_of.connection_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.connection_message(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.connection_message, range, display)
  end

  return dissect.connection_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Message Body
size_of.message_body = function(buffer, offset, message_type)
  -- Size of Connection Message
  if message_type == "RS" then
    return size_of.connection_message(buffer, offset)
  end
  -- Size of End Of Transmission Message
  if message_type == "U" then
    return size_of.end_of_transmission_message(buffer, offset)
  end
  -- Size of Circuit Assurance Message
  if message_type == "V" then
    return size_of.circuit_assurance_message(buffer, offset)
  end
  -- Size of Gap Sequence Message
  if message_type == "W" then
    return size_of.gap_sequence_message(buffer, offset)
  end
  -- Size of System Timestamp Message
  if message_type == "Z" then
    return size_of.system_timestamp_message(buffer, offset)
  end
  -- Size of Option Trade Message
  if message_type == "C" then
    return size_of.option_trade_message(buffer, offset)
  end
  -- Size of Complex Order Instrument Trade Message
  if message_type == "CS" then
    return size_of.complex_order_instrument_trade_message(buffer, offset)
  end
  -- Size of Option Request For Quote Message
  if message_type == "D" then
    return size_of.option_request_for_quote_message(buffer, offset)
  end
  -- Size of Option Quote Message
  if message_type == "F" then
    return size_of.option_quote_message(buffer, offset)
  end
  -- Size of Complex Order Quote Message
  if message_type == "FS" then
    return size_of.complex_order_quote_message(buffer, offset)
  end
  -- Size of Option Market Depth Message
  if message_type == "H" then
    return size_of.option_market_depth_message(buffer, offset)
  end
  -- Size of Complex Order Market Depth Message
  if message_type == "HS" then
    return size_of.complex_order_market_depth_message(buffer, offset)
  end
  -- Size of Option Trade Cancellation Message
  if message_type == "I" then
    return size_of.option_trade_cancellation_message(buffer, offset)
  end
  -- Size of Complex Order Trade Cancellation Message
  if message_type == "IS" then
    return size_of.complex_order_trade_cancellation_message(buffer, offset)
  end
  -- Size of Option Instrument Keys Message
  if message_type == "J" then
    return size_of.option_instrument_keys_message(buffer, offset)
  end
  -- Size of Complex Order Instrument Keys Message
  if message_type == "JS" then
    return size_of.complex_order_instrument_keys_message(buffer, offset)
  end
  -- Size of Option Summary Message
  if message_type == "N" then
    return size_of.option_summary_message(buffer, offset)
  end
  -- Size of Complex Order Summary Message
  if message_type == "NS" then
    return size_of.complex_order_summary_message(buffer, offset)
  end
  -- Size of Beginning Of Options Summary Message
  if message_type == "Q" then
    return size_of.beginning_of_options_summary_message(buffer, offset)
  end
  -- Size of Beginning Of Complex Order Summary Message
  if message_type == "QS" then
    return size_of.beginning_of_complex_order_summary_message(buffer, offset)
  end
  -- Size of Group Opening Time Message
  if message_type == "GC" then
    return size_of.group_opening_time_message(buffer, offset)
  end
  -- Size of Group Status Message
  if message_type == "GR" then
    return size_of.group_status_message(buffer, offset)
  end
  -- Size of Complex Order Group Status Message
  if message_type == "GS" then
    return size_of.complex_order_group_status_message(buffer, offset)
  end
  -- Size of Bulletins Message
  if message_type == "L" then
    return size_of.bulletins_message(buffer, offset)
  end
  -- Size of End Of Sales Message
  if message_type == "S" then
    return size_of.end_of_sales_message(buffer, offset)
  end
  -- Size of Option Improvement Process Beginning Message
  if message_type == "M" then
    return size_of.option_improvement_process_beginning_message(buffer, offset)
  end
  -- Size of Complex Order Improvement Process Beginning Message Message
  if message_type == "MS" then
    return size_of.complex_order_improvement_process_beginning_message_message(buffer, offset)
  end
  -- Size of Market Sheet Initial And Improvement Order Message
  if message_type == "O" then
    return size_of.market_sheet_initial_and_improvement_order_message(buffer, offset)
  end
  -- Size of Complex Order Market Sheet Initial And Improvement Order Message
  if message_type == "OS" then
    return size_of.complex_order_market_sheet_initial_and_improvement_order_message(buffer, offset)
  end
  -- Size of Initial And Improvement Order Message
  if message_type == "T" then
    return size_of.initial_and_improvement_order_message(buffer, offset)
  end
  -- Size of Complex Order Initial And Improvement Order Message
  if message_type == "TS" then
    return size_of.complex_order_initial_and_improvement_order_message(buffer, offset)
  end

  return 0
end

-- Display: Message Body
display.message_body = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Body
dissect.message_body_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Connection Message
  if message_type == "RS" then
    return dissect.connection_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmission Message
  if message_type == "U" then
    return dissect.end_of_transmission_message(buffer, offset, packet, parent)
  end
  -- Dissect Circuit Assurance Message
  if message_type == "V" then
    return dissect.circuit_assurance_message(buffer, offset, packet, parent)
  end
  -- Dissect Gap Sequence Message
  if message_type == "W" then
    return dissect.gap_sequence_message(buffer, offset, packet, parent)
  end
  -- Dissect System Timestamp Message
  if message_type == "Z" then
    return dissect.system_timestamp_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Message
  if message_type == "C" then
    return dissect.option_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Instrument Trade Message
  if message_type == "CS" then
    return dissect.complex_order_instrument_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Request For Quote Message
  if message_type == "D" then
    return dissect.option_request_for_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Quote Message
  if message_type == "F" then
    return dissect.option_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Quote Message
  if message_type == "FS" then
    return dissect.complex_order_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Market Depth Message
  if message_type == "H" then
    return dissect.option_market_depth_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Market Depth Message
  if message_type == "HS" then
    return dissect.complex_order_market_depth_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Cancellation Message
  if message_type == "I" then
    return dissect.option_trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Trade Cancellation Message
  if message_type == "IS" then
    return dissect.complex_order_trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Instrument Keys Message
  if message_type == "J" then
    return dissect.option_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Instrument Keys Message
  if message_type == "JS" then
    return dissect.complex_order_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Summary Message
  if message_type == "N" then
    return dissect.option_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Summary Message
  if message_type == "NS" then
    return dissect.complex_order_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Options Summary Message
  if message_type == "Q" then
    return dissect.beginning_of_options_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Complex Order Summary Message
  if message_type == "QS" then
    return dissect.beginning_of_complex_order_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Group Opening Time Message
  if message_type == "GC" then
    return dissect.group_opening_time_message(buffer, offset, packet, parent)
  end
  -- Dissect Group Status Message
  if message_type == "GR" then
    return dissect.group_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Group Status Message
  if message_type == "GS" then
    return dissect.complex_order_group_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Bulletins Message
  if message_type == "L" then
    return dissect.bulletins_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Sales Message
  if message_type == "S" then
    return dissect.end_of_sales_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Improvement Process Beginning Message
  if message_type == "M" then
    return dissect.option_improvement_process_beginning_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Improvement Process Beginning Message Message
  if message_type == "MS" then
    return dissect.complex_order_improvement_process_beginning_message_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Sheet Initial And Improvement Order Message
  if message_type == "O" then
    return dissect.market_sheet_initial_and_improvement_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Market Sheet Initial And Improvement Order Message
  if message_type == "OS" then
    return dissect.complex_order_market_sheet_initial_and_improvement_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Initial And Improvement Order Message
  if message_type == "T" then
    return dissect.initial_and_improvement_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Order Initial And Improvement Order Message
  if message_type == "TS" then
    return dissect.complex_order_initial_and_improvement_order_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Body
dissect.message_body = function(buffer, offset, packet, parent, message_type)
  if not show.message_body then
    return dissect.message_body_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.message_body(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.message_body(buffer, packet, parent)
  local element = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.message_body, range, display)

  return dissect.message_body_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
size_of.message_type = 2

-- Display: Message Type
display.message_type = function(value)
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
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
size_of.sequence_number = 9

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.sequence_number
  local range = buffer(offset, length)
  local value = tonumber(range:string())
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.sequence_number

  index = index + size_of.message_type

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 9 Byte Ascii String
  index, sequence_number = dissect.sequence_number(buffer, index, packet, parent)

  -- Message Type: 2 Byte Ascii String Enum with 31 values
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Size: Hsvf Stx
size_of.hsvf_stx = 1

-- Display: Hsvf Stx
display.hsvf_stx = function(value)
  return "Hsvf Stx: "..value
end

-- Dissect: Hsvf Stx
dissect.hsvf_stx = function(buffer, offset, packet, parent)
  local length = size_of.hsvf_stx
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.hsvf_stx(value, buffer, offset, packet, parent)

  parent:add(box_options_sola_unicast_hsvf_v4_5_1.fields.hsvf_stx, range, value, display)

  return offset + length, value
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Hsvf Stx: 1 Byte Fixed Width Integer Static
    index, hsvf_stx = dissect.hsvf_stx(buffer, index, packet, parent)

    -- Message Header: Struct of 2 fields
    index, message_header = dissect.message_header(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = buffer(index - 2, 2):string()

    -- Message Body: Runtime Type with 31 branches
    index = dissect.message_body(buffer, index, packet, parent, message_type)

    -- Hsvf Etx: 1 Byte Fixed Width Integer Static
    index, hsvf_etx = dissect.hsvf_etx(buffer, index, packet, parent)
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
  return dissect.packet(buffer, packet, protocol)
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

-- Verify Hsvf Etx Field
verify.hsvf_etx = function(buffer)
  -- Attempt to read field
  local value = buffer(1398, 1):int()

  if value == 3 then
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

  -- Verify Hsvf Etx
  if not verify.hsvf_etx(buffer) then return false end

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
