-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx Mx Sola Multicast Hsvf 1.11 Protocol
local omi_tmx_mx_sola_multicast_hsvf_v1_11 = Proto("Tmx.Mx.Sola.Multicast.Hsvf.v1.11.Lua", "Tmx Mx Sola Multicast Hsvf 1.11")

-- Protocol table
local tmx_mx_sola_multicast_hsvf_v1_11 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx Mx Sola Multicast Hsvf 1.11 Fields
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_fraction_indicator = ProtoField.new("Ask Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.askpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_n_6 = ProtoField.new("Ask Price N 6", "tmx.mx.sola.multicast.hsvf.v1.11.askpricen6", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_sign = ProtoField.new("Ask Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.askpricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_x_6 = ProtoField.new("Ask Price X 6", "tmx.mx.sola.multicast.hsvf.v1.11.askpricex6", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_size = ProtoField.new("Ask Size", "tmx.mx.sola.multicast.hsvf.v1.11.asksize", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_fraction_indicator = ProtoField.new("Bid Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.bidpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_n_6 = ProtoField.new("Bid Price N 6", "tmx.mx.sola.multicast.hsvf.v1.11.bidpricen6", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_sign = ProtoField.new("Bid Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.bidpricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_x_6 = ProtoField.new("Bid Price X 6", "tmx.mx.sola.multicast.hsvf.v1.11.bidpricex6", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_size = ProtoField.new("Bid Size", "tmx.mx.sola.multicast.hsvf.v1.11.bidsize", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletin = ProtoField.new("Bulletin", "tmx.mx.sola.multicast.hsvf.v1.11.bulletin", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletin_contents_x_49 = ProtoField.new("Bulletin Contents X 49", "tmx.mx.sola.multicast.hsvf.v1.11.bulletincontentsx49", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletin_type = ProtoField.new("Bulletin Type", "tmx.mx.sola.multicast.hsvf.v1.11.bulletintype", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.call_put_code = ProtoField.new("Call Put Code", "tmx.mx.sola.multicast.hsvf.v1.11.callputcode", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.cash_flow_alignment_date = ProtoField.new("Cash Flow Alignment Date", "tmx.mx.sola.multicast.hsvf.v1.11.cashflowalignmentdate", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.continue_marker = ProtoField.new("Continue Marker", "tmx.mx.sola.multicast.hsvf.v1.11.continuemarker", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.contract_month_code = ProtoField.new("Contract Month Code", "tmx.mx.sola.multicast.hsvf.v1.11.contractmonthcode", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.contract_size = ProtoField.new("Contract Size", "tmx.mx.sola.multicast.hsvf.v1.11.contractsize", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.currency = ProtoField.new("Currency", "tmx.mx.sola.multicast.hsvf.v1.11.currency", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.day_count_convention = ProtoField.new("Day Count Convention", "tmx.mx.sola.multicast.hsvf.v1.11.daycountconvention", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_day = ProtoField.new("Delivery Day", "tmx.mx.sola.multicast.hsvf.v1.11.deliveryday", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_month = ProtoField.new("Delivery Month", "tmx.mx.sola.multicast.hsvf.v1.11.deliverymonth", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_type = ProtoField.new("Delivery Type", "tmx.mx.sola.multicast.hsvf.v1.11.deliverytype", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_year_n_1 = ProtoField.new("Delivery Year N 1", "tmx.mx.sola.multicast.hsvf.v1.11.deliveryyearn1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_year_n_2 = ProtoField.new("Delivery Year N 2", "tmx.mx.sola.multicast.hsvf.v1.11.deliveryyearn2", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.effective_date = ProtoField.new("Effective Date", "tmx.mx.sola.multicast.hsvf.v1.11.effectivedate", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.exchange_i_d = ProtoField.new("Exchange I D", "tmx.mx.sola.multicast.hsvf.v1.11.exchangeid", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.exchange_id_a_1 = ProtoField.new("Exchange Id A 1", "tmx.mx.sola.multicast.hsvf.v1.11.exchangeida1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.exchange_id_x_1 = ProtoField.new("Exchange Id X 1", "tmx.mx.sola.multicast.hsvf.v1.11.exchangeidx1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.expiry_day = ProtoField.new("Expiry Day", "tmx.mx.sola.multicast.hsvf.v1.11.expiryday", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.expiry_month = ProtoField.new("Expiry Month", "tmx.mx.sola.multicast.hsvf.v1.11.expirymonth", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.expiry_year = ProtoField.new("Expiry Year", "tmx.mx.sola.multicast.hsvf.v1.11.expiryyear", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.external_price_at_source = ProtoField.new("External Price At Source", "tmx.mx.sola.multicast.hsvf.v1.11.externalpriceatsource", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.external_price_fraction_indicator = ProtoField.new("External Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.externalpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.external_symbol = ProtoField.new("External Symbol", "tmx.mx.sola.multicast.hsvf.v1.11.externalsymbol", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_1 = ProtoField.new("Filler 1", "tmx.mx.sola.multicast.hsvf.v1.11.filler1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_2 = ProtoField.new("Filler 2", "tmx.mx.sola.multicast.hsvf.v1.11.filler2", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_6 = ProtoField.new("Filler 6", "tmx.mx.sola.multicast.hsvf.v1.11.filler6", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.first_payment_date = ProtoField.new("First Payment Date", "tmx.mx.sola.multicast.hsvf.v1.11.firstpaymentdate", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.first_reset_date = ProtoField.new("First Reset Date", "tmx.mx.sola.multicast.hsvf.v1.11.firstresetdate", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.fixed_rate = ProtoField.new("Fixed Rate", "tmx.mx.sola.multicast.hsvf.v1.11.fixedrate", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.fixed_rate_fraction_indicator = ProtoField.new("Fixed Rate Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.fixedratefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_market_depth_trading_instrument = ProtoField.new("Future Options Market Depth Trading Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionsmarketdepthtradinginstrument", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_market_depth_trading_instrument = ProtoField.new("Futures Market Depth Trading Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.futuresmarketdepthtradinginstrument", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.group_instrument = ProtoField.new("Group Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.groupinstrument", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.group_status = ProtoField.new("Group Status", "tmx.mx.sola.multicast.hsvf.v1.11.groupstatus", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.high_price = ProtoField.new("High Price", "tmx.mx.sola.multicast.hsvf.v1.11.highprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.high_price_fraction_indicator = ProtoField.new("High Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.highpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.high_price_sign = ProtoField.new("High Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.highpricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.historical_coupon_b = ProtoField.new("Historical Coupon B", "tmx.mx.sola.multicast.hsvf.v1.11.historicalcouponb", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.historical_coupon_fraction_indicator = ProtoField.new("Historical Coupon Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.historicalcouponfractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.hsvf_etx = ProtoField.new("Hsvf Etx", "tmx.mx.sola.multicast.hsvf.v1.11.hsvfetx", ftypes.INT8)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.hsvf_stx = ProtoField.new("Hsvf Stx", "tmx.mx.sola.multicast.hsvf.v1.11.hsvfstx", ftypes.INT8)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.initial_effective_date = ProtoField.new("Initial Effective Date", "tmx.mx.sola.multicast.hsvf.v1.11.initialeffectivedate", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument = ProtoField.new("Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.instrument", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_external_code = ProtoField.new("Instrument External Code", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentexternalcode", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_id = ProtoField.new("Instrument Id", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentid", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_status_marker_a_1 = ProtoField.new("Instrument Status Marker A 1", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentstatusmarkera1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_status_marker_x_1 = ProtoField.new("Instrument Status Marker X 1", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentstatusmarkerx1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.last_price = ProtoField.new("Last Price", "tmx.mx.sola.multicast.hsvf.v1.11.lastprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.last_price_fraction_indicator = ProtoField.new("Last Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.lastpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.last_price_sign = ProtoField.new("Last Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.lastpricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.leg_ratio = ProtoField.new("Leg Ratio", "tmx.mx.sola.multicast.hsvf.v1.11.legratio", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.leg_ratio_sign = ProtoField.new("Leg Ratio Sign", "tmx.mx.sola.multicast.hsvf.v1.11.legratiosign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.leg_symbol = ProtoField.new("Leg Symbol", "tmx.mx.sola.multicast.hsvf.v1.11.legsymbol", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.level = ProtoField.new("Level", "tmx.mx.sola.multicast.hsvf.v1.11.level", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.level_of_market_depth = ProtoField.new("Level Of Market Depth", "tmx.mx.sola.multicast.hsvf.v1.11.levelofmarketdepth", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.low_price = ProtoField.new("Low Price", "tmx.mx.sola.multicast.hsvf.v1.11.lowprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.low_price_fraction_indicator = ProtoField.new("Low Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.lowpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.low_price_sign = ProtoField.new("Low Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.lowpricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.market_flow = ProtoField.new("Market Flow", "tmx.mx.sola.multicast.hsvf.v1.11.marketflow", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.market_flow_indicator = ProtoField.new("Market Flow Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.marketflowindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.market_price_indicator = ProtoField.new("Market Price Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.marketpriceindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_number_of_contracts_per_order = ProtoField.new("Maximum Number Of Contracts Per Order", "tmx.mx.sola.multicast.hsvf.v1.11.maximumnumberofcontractsperorder", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_threshold_price_fraction_indicator = ProtoField.new("Maximum Threshold Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.maximumthresholdpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_threshold_price_n_6 = ProtoField.new("Maximum Threshold Price N 6", "tmx.mx.sola.multicast.hsvf.v1.11.maximumthresholdpricen6", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_threshold_price_x_6 = ProtoField.new("Maximum Threshold Price X 6", "tmx.mx.sola.multicast.hsvf.v1.11.maximumthresholdpricex6", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.message_body = ProtoField.new("Message Body", "tmx.mx.sola.multicast.hsvf.v1.11.messagebody", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.message_header = ProtoField.new("Message Header", "tmx.mx.sola.multicast.hsvf.v1.11.messageheader", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.message_type = ProtoField.new("Message Type", "tmx.mx.sola.multicast.hsvf.v1.11.messagetype", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.min_price = ProtoField.new("Min Price", "tmx.mx.sola.multicast.hsvf.v1.11.minprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.min_price_fraction_indicator = ProtoField.new("Min Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.minpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_number_of_contracts_per_order = ProtoField.new("Minimum Number Of Contracts Per Order", "tmx.mx.sola.multicast.hsvf.v1.11.minimumnumberofcontractsperorder", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_threshold_price_fraction_indicator = ProtoField.new("Minimum Threshold Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.minimumthresholdpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_threshold_price_n_6 = ProtoField.new("Minimum Threshold Price N 6", "tmx.mx.sola.multicast.hsvf.v1.11.minimumthresholdpricen6", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_threshold_price_x_6 = ProtoField.new("Minimum Threshold Price X 6", "tmx.mx.sola.multicast.hsvf.v1.11.minimumthresholdpricex6", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change = ProtoField.new("Net Change", "tmx.mx.sola.multicast.hsvf.v1.11.netchange", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_fraction_indicator_a_1 = ProtoField.new("Net Change Fraction Indicator A 1", "tmx.mx.sola.multicast.hsvf.v1.11.netchangefractionindicatora1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_fraction_indicator_x_1 = ProtoField.new("Net Change Fraction Indicator X 1", "tmx.mx.sola.multicast.hsvf.v1.11.netchangefractionindicatorx1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_sign_a_1 = ProtoField.new("Net Change Sign A 1", "tmx.mx.sola.multicast.hsvf.v1.11.netchangesigna1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_sign_x_1 = ProtoField.new("Net Change Sign X 1", "tmx.mx.sola.multicast.hsvf.v1.11.netchangesignx1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_present_value_a = ProtoField.new("Net Present Value A", "tmx.mx.sola.multicast.hsvf.v1.11.netpresentvaluea", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_present_value_fraction_indicator = ProtoField.new("Net Present Value Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.netpresentvaluefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.next_payment_date = ProtoField.new("Next Payment Date", "tmx.mx.sola.multicast.hsvf.v1.11.nextpaymentdate", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.next_reset_date = ProtoField.new("Next Reset Date", "tmx.mx.sola.multicast.hsvf.v1.11.nextresetdate", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.notional_principal_amount = ProtoField.new("Notional Principal Amount", "tmx.mx.sola.multicast.hsvf.v1.11.notionalprincipalamount", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.notional_principal_amount_faction_indicator = ProtoField.new("Notional Principal Amount Faction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.notionalprincipalamountfactionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_ask_orders = ProtoField.new("Number Of Ask Orders", "tmx.mx.sola.multicast.hsvf.v1.11.numberofaskorders", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_bid_orders = ProtoField.new("Number Of Bid Orders", "tmx.mx.sola.multicast.hsvf.v1.11.numberofbidorders", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_entries = ProtoField.new("Number Of Entries", "tmx.mx.sola.multicast.hsvf.v1.11.numberofentries", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_legs = ProtoField.new("Number Of Legs", "tmx.mx.sola.multicast.hsvf.v1.11.numberoflegs", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_level = ProtoField.new("Number Of Level", "tmx.mx.sola.multicast.hsvf.v1.11.numberoflevel", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.open_interest = ProtoField.new("Open Interest", "tmx.mx.sola.multicast.hsvf.v1.11.openinterest", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.open_price = ProtoField.new("Open Price", "tmx.mx.sola.multicast.hsvf.v1.11.openprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.open_price_fraction_indicator = ProtoField.new("Open Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.openpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.open_price_sign = ProtoField.new("Open Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.openpricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.opening_price = ProtoField.new("Opening Price", "tmx.mx.sola.multicast.hsvf.v1.11.openingprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.opening_price_fraction_indicator = ProtoField.new("Opening Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.openingpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_marker = ProtoField.new("Option Marker", "tmx.mx.sola.multicast.hsvf.v1.11.optionmarker", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_market_depth_trading_instrument = ProtoField.new("Option Market Depth Trading Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.optionmarketdepthtradinginstrument", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_type = ProtoField.new("Option Type", "tmx.mx.sola.multicast.hsvf.v1.11.optiontype", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.packet = ProtoField.new("Packet", "tmx.mx.sola.multicast.hsvf.v1.11.packet", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.payment_frequency = ProtoField.new("Payment Frequency", "tmx.mx.sola.multicast.hsvf.v1.11.paymentfrequency", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_reset_date = ProtoField.new("Previous Reset Date", "tmx.mx.sola.multicast.hsvf.v1.11.previousresetdate", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_reset_rate = ProtoField.new("Previous Reset Rate", "tmx.mx.sola.multicast.hsvf.v1.11.previousresetrate", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_reset_rate_fraction_indicator = ProtoField.new("Previous Reset Rate Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.previousresetratefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement = ProtoField.new("Previous Settlement", "tmx.mx.sola.multicast.hsvf.v1.11.previoussettlement", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement_fraction_indicator = ProtoField.new("Previous Settlement Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.previoussettlementfractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement_price = ProtoField.new("Previous Settlement Price", "tmx.mx.sola.multicast.hsvf.v1.11.previoussettlementprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement_price_fraction_indicator = ProtoField.new("Previous Settlement Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.previoussettlementpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.price = ProtoField.new("Price", "tmx.mx.sola.multicast.hsvf.v1.11.price", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.price_alignment_interest_c = ProtoField.new("Price Alignment Interest C", "tmx.mx.sola.multicast.hsvf.v1.11.pricealignmentinterestc", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.price_alignment_interest_fraction_indicator = ProtoField.new("Price Alignment Interest Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.pricealignmentinterestfractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.price_fraction_indicator = ProtoField.new("Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.pricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.price_indicator_marker_a_1 = ProtoField.new("Price Indicator Marker A 1", "tmx.mx.sola.multicast.hsvf.v1.11.priceindicatormarkera1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.price_indicator_marker_x_1 = ProtoField.new("Price Indicator Marker X 1", "tmx.mx.sola.multicast.hsvf.v1.11.priceindicatormarkerx1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.reason = ProtoField.new("Reason", "tmx.mx.sola.multicast.hsvf.v1.11.reason", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.regular_bulletin_contents = ProtoField.new("Regular Bulletin Contents", "tmx.mx.sola.multicast.hsvf.v1.11.regularbulletincontents", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.regular_text_bulletin = ProtoField.new("Regular Text Bulletin", "tmx.mx.sola.multicast.hsvf.v1.11.regulartextbulletin", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.requested_market_side = ProtoField.new("Requested Market Side", "tmx.mx.sola.multicast.hsvf.v1.11.requestedmarketside", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.requested_size = ProtoField.new("Requested Size", "tmx.mx.sola.multicast.hsvf.v1.11.requestedsize", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.reserved = ProtoField.new("Reserved", "tmx.mx.sola.multicast.hsvf.v1.11.reserved", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.reset_frequency = ProtoField.new("Reset Frequency", "tmx.mx.sola.multicast.hsvf.v1.11.resetfrequency", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.root_symbol_a_6 = ProtoField.new("Root Symbol A 6", "tmx.mx.sola.multicast.hsvf.v1.11.rootsymbola6", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.root_symbol_x_6 = ProtoField.new("Root Symbol X 6", "tmx.mx.sola.multicast.hsvf.v1.11.rootsymbolx6", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.scheduled_status_change_time = ProtoField.new("Scheduled Status Change Time", "tmx.mx.sola.multicast.hsvf.v1.11.scheduledstatuschangetime", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.sequence_number = ProtoField.new("Sequence Number", "tmx.mx.sola.multicast.hsvf.v1.11.sequencenumber", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.series_status = ProtoField.new("Series Status", "tmx.mx.sola.multicast.hsvf.v1.11.seriesstatus", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.settlement_price = ProtoField.new("Settlement Price", "tmx.mx.sola.multicast.hsvf.v1.11.settlementprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.settlement_price_fraction_indicator_n_1 = ProtoField.new("Settlement Price Fraction Indicator N 1", "tmx.mx.sola.multicast.hsvf.v1.11.settlementpricefractionindicatorn1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.settlement_price_fraction_indicator_x_1 = ProtoField.new("Settlement Price Fraction Indicator X 1", "tmx.mx.sola.multicast.hsvf.v1.11.settlementpricefractionindicatorx1", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.special_text_bulletin = ProtoField.new("Special Text Bulletin", "tmx.mx.sola.multicast.hsvf.v1.11.specialtextbulletin", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_allow_implied = ProtoField.new("Strategy Allow Implied", "tmx.mx.sola.multicast.hsvf.v1.11.strategyallowimplied", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_market_depth_trading_instrument = ProtoField.new("Strategy Market Depth Trading Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.strategymarketdepthtradinginstrument", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_summary_strategy_leg = ProtoField.new("Strategy Summary Strategy Leg", "tmx.mx.sola.multicast.hsvf.v1.11.strategysummarystrategyleg", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_symbol = ProtoField.new("Strategy Symbol", "tmx.mx.sola.multicast.hsvf.v1.11.strategysymbol", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_currency = ProtoField.new("Strike Price Currency", "tmx.mx.sola.multicast.hsvf.v1.11.strikepricecurrency", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_fraction_indicator = ProtoField.new("Strike Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.strikepricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_n_7 = ProtoField.new("Strike Price N 7", "tmx.mx.sola.multicast.hsvf.v1.11.strikepricen7", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_x_7 = ProtoField.new("Strike Price X 7", "tmx.mx.sola.multicast.hsvf.v1.11.strikepricex7", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_market_depth_trading_instrument = ProtoField.new("Swap Future Market Depth Trading Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturemarketdepthtradinginstrument", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.symbol = ProtoField.new("Symbol", "tmx.mx.sola.multicast.hsvf.v1.11.symbol", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tenor = ProtoField.new("Tenor", "tmx.mx.sola.multicast.hsvf.v1.11.tenor", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick = ProtoField.new("Tick", "tmx.mx.sola.multicast.hsvf.v1.11.tick", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_entry_group = ProtoField.new("Tick Entry Group", "tmx.mx.sola.multicast.hsvf.v1.11.tickentrygroup", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_increment = ProtoField.new("Tick Increment", "tmx.mx.sola.multicast.hsvf.v1.11.tickincrement", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_increment_fraction_indicator = ProtoField.new("Tick Increment Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.tickincrementfractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_price = ProtoField.new("Tick Price", "tmx.mx.sola.multicast.hsvf.v1.11.tickprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_price_fraction_indicator = ProtoField.new("Tick Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.tickpricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_table_name = ProtoField.new("Tick Table Name", "tmx.mx.sola.multicast.hsvf.v1.11.ticktablename", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_table_short_name = ProtoField.new("Tick Table Short Name", "tmx.mx.sola.multicast.hsvf.v1.11.ticktableshortname", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_value = ProtoField.new("Tick Value", "tmx.mx.sola.multicast.hsvf.v1.11.tickvalue", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_value_fraction_indicator = ProtoField.new("Tick Value Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.tickvaluefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.time = ProtoField.new("Time", "tmx.mx.sola.multicast.hsvf.v1.11.time", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.timestamp = ProtoField.new("Timestamp", "tmx.mx.sola.multicast.hsvf.v1.11.timestamp", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_number = ProtoField.new("Trade Number", "tmx.mx.sola.multicast.hsvf.v1.11.tradenumber", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_price = ProtoField.new("Trade Price", "tmx.mx.sola.multicast.hsvf.v1.11.tradeprice", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_price_fraction_indicator = ProtoField.new("Trade Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.tradepricefractionindicator", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_price_sign = ProtoField.new("Trade Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.tradepricesign", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_volume = ProtoField.new("Trade Volume", "tmx.mx.sola.multicast.hsvf.v1.11.tradevolume", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "tmx.mx.sola.multicast.hsvf.v1.11.underlyingsymbol", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_symbol_root_a_3 = ProtoField.new("Underlying Symbol Root A 3", "tmx.mx.sola.multicast.hsvf.v1.11.underlyingsymbolroota3", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_symbol_root_x_10 = ProtoField.new("Underlying Symbol Root X 10", "tmx.mx.sola.multicast.hsvf.v1.11.underlyingsymbolrootx10", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.volume = ProtoField.new("Volume", "tmx.mx.sola.multicast.hsvf.v1.11.volume", ftypes.STRING)

-- Tmx Mx Sola Multicast Hsvf 1.11 messages
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_future_options_summary_message = ProtoField.new("Beginning Of Future Options Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.beginningoffutureoptionssummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_futures_summary_message = ProtoField.new("Beginning Of Futures Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.beginningoffuturessummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_options_summary_message = ProtoField.new("Beginning Of Options Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.beginningofoptionssummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_strategy_summary_message = ProtoField.new("Beginning Of Strategy Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.beginningofstrategysummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletins_message = ProtoField.new("Bulletins Message", "tmx.mx.sola.multicast.hsvf.v1.11.bulletinsmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.circuit_assurance_message = ProtoField.new("Circuit Assurance Message", "tmx.mx.sola.multicast.hsvf.v1.11.circuitassurancemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.end_of_sales_message = ProtoField.new("End Of Sales Message", "tmx.mx.sola.multicast.hsvf.v1.11.endofsalesmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.end_of_transmission_message = ProtoField.new("End Of Transmission Message", "tmx.mx.sola.multicast.hsvf.v1.11.endoftransmissionmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_instrument_keys_message = ProtoField.new("Future Options Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionsinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_market_depth_message = ProtoField.new("Future Options Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionsmarketdepthmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_quote_message = ProtoField.new("Future Options Quote Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionsquotemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_rfq_message = ProtoField.new("Future Options Rfq Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionsrfqmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_summary_message = ProtoField.new("Future Options Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionssummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_trade_cancellation_message = ProtoField.new("Future Options Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionstradecancellationmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_trade_correction_message = ProtoField.new("Future Options Trade Correction Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionstradecorrectionmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_trade_message = ProtoField.new("Future Options Trade Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionstrademessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_instrument_keys_message = ProtoField.new("Futures Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.11.futuresinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_market_depth_message = ProtoField.new("Futures Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.11.futuresmarketdepthmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_quote_message = ProtoField.new("Futures Quote Message", "tmx.mx.sola.multicast.hsvf.v1.11.futuresquotemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_rfq_message = ProtoField.new("Futures Rfq Message", "tmx.mx.sola.multicast.hsvf.v1.11.futuresrfqmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_summary_message = ProtoField.new("Futures Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.futuressummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_trade_cancellation_message = ProtoField.new("Futures Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.11.futurestradecancellationmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_trade_correction_message = ProtoField.new("Futures Trade Correction Message", "tmx.mx.sola.multicast.hsvf.v1.11.futurestradecorrectionmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_trade_message = ProtoField.new("Futures Trade Message", "tmx.mx.sola.multicast.hsvf.v1.11.futurestrademessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.group_status_message = ProtoField.new("Group Status Message", "tmx.mx.sola.multicast.hsvf.v1.11.groupstatusmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_future_message = ProtoField.new("Instrument Schedule Notice Future Message", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentschedulenoticefuturemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_futures_option_message = ProtoField.new("Instrument Schedule Notice Futures Option Message", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentschedulenoticefuturesoptionmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_option_message = ProtoField.new("Instrument Schedule Notice Option Message", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentschedulenoticeoptionmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_strategy_message = ProtoField.new("Instrument Schedule Notice Strategy Message", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentschedulenoticestrategymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_swap_future_message = ProtoField.new("Instrument Schedule Notice Swap Future Message", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentschedulenoticeswapfuturemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_instrument_keys_message = ProtoField.new("Option Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.11.optioninstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_market_depth_message = ProtoField.new("Option Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.11.optionmarketdepthmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_quote_message = ProtoField.new("Option Quote Message", "tmx.mx.sola.multicast.hsvf.v1.11.optionquotemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_rfq_message = ProtoField.new("Option Rfq Message", "tmx.mx.sola.multicast.hsvf.v1.11.optionrfqmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_summary_message = ProtoField.new("Option Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.optionsummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_trade_cancellation_message = ProtoField.new("Option Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.11.optiontradecancellationmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_trade_correction_message = ProtoField.new("Option Trade Correction Message", "tmx.mx.sola.multicast.hsvf.v1.11.optiontradecorrectionmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_trade_message = ProtoField.new("Option Trade Message", "tmx.mx.sola.multicast.hsvf.v1.11.optiontrademessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategies_message = ProtoField.new("Strategies Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategiesmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_instrument_keys_message = ProtoField.new("Strategy Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategyinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_market_depth_message = ProtoField.new("Strategy Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategymarketdepthmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_quote_message = ProtoField.new("Strategy Quote Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategyquotemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_rfq_message = ProtoField.new("Strategy Rfq Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategyrfqmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_summary_message = ProtoField.new("Strategy Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategysummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_trade_cancellation_message = ProtoField.new("Strategy Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategytradecancellationmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_trade_correction_message = ProtoField.new("Strategy Trade Correction Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategytradecorrectionmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_trade_message = ProtoField.new("Strategy Trade Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategytrademessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_beginning_of_summary_message = ProtoField.new("Swap Future Beginning Of Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturebeginningofsummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_instrument_keys_message = ProtoField.new("Swap Future Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfutureinstrumentkeysmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_market_depth_message = ProtoField.new("Swap Future Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturemarketdepthmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_quote_message = ProtoField.new("Swap Future Quote Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturequotemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_rfq_message = ProtoField.new("Swap Future Rfq Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturerfqmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_summary_message = ProtoField.new("Swap Future Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturesummarymessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_trade_cancellation_message = ProtoField.new("Swap Future Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturetradecancellationmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_trade_correction_message = ProtoField.new("Swap Future Trade Correction Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturetradecorrectionmessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_trade_message = ProtoField.new("Swap Future Trade Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturetrademessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_table_message = ProtoField.new("Tick Table Message", "tmx.mx.sola.multicast.hsvf.v1.11.ticktablemessage", ftypes.STRING)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_instrument_keys_message = ProtoField.new("Underlying Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.11.underlyinginstrumentkeysmessage", ftypes.STRING)

-- Tmx Mx Sola Multicast Hsvf 1.11 generated fields
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_market_depth_trading_instrument_index = ProtoField.new("Future Options Market Depth Trading Instrument Index", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionsmarketdepthtradinginstrumentindex", ftypes.UINT16)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_market_depth_trading_instrument_index = ProtoField.new("Futures Market Depth Trading Instrument Index", "tmx.mx.sola.multicast.hsvf.v1.11.futuresmarketdepthtradinginstrumentindex", ftypes.UINT16)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_market_depth_trading_instrument_index = ProtoField.new("Option Market Depth Trading Instrument Index", "tmx.mx.sola.multicast.hsvf.v1.11.optionmarketdepthtradinginstrumentindex", ftypes.UINT16)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_market_depth_trading_instrument_index = ProtoField.new("Strategy Market Depth Trading Instrument Index", "tmx.mx.sola.multicast.hsvf.v1.11.strategymarketdepthtradinginstrumentindex", ftypes.UINT16)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_summary_strategy_leg_index = ProtoField.new("Strategy Summary Strategy Leg Index", "tmx.mx.sola.multicast.hsvf.v1.11.strategysummarystrategylegindex", ftypes.UINT16)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_market_depth_trading_instrument_index = ProtoField.new("Swap Future Market Depth Trading Instrument Index", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturemarketdepthtradinginstrumentindex", ftypes.UINT16)
omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_entry_group_index = ProtoField.new("Tick Entry Group Index", "tmx.mx.sola.multicast.hsvf.v1.11.tickentrygroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Tmx Mx Sola Multicast Hsvf 1.11 Element Dissection Options
show.beginning_of_future_options_summary_message = true
show.beginning_of_futures_summary_message = true
show.beginning_of_options_summary_message = true
show.beginning_of_strategy_summary_message = true
show.bulletins_message = true
show.circuit_assurance_message = true
show.end_of_sales_message = true
show.end_of_transmission_message = true
show.future_options_instrument_keys_message = true
show.future_options_market_depth_message = true
show.future_options_market_depth_trading_instrument = true
show.future_options_quote_message = true
show.future_options_rfq_message = true
show.future_options_summary_message = true
show.future_options_trade_cancellation_message = true
show.future_options_trade_correction_message = true
show.future_options_trade_message = true
show.futures_instrument_keys_message = true
show.futures_market_depth_message = true
show.futures_market_depth_trading_instrument = true
show.futures_quote_message = true
show.futures_rfq_message = true
show.futures_summary_message = true
show.futures_trade_cancellation_message = true
show.futures_trade_correction_message = true
show.futures_trade_message = true
show.group_status_message = true
show.instrument_schedule_notice_future_message = true
show.instrument_schedule_notice_futures_option_message = true
show.instrument_schedule_notice_option_message = true
show.instrument_schedule_notice_strategy_message = true
show.instrument_schedule_notice_swap_future_message = true
show.message_header = true
show.option_instrument_keys_message = true
show.option_market_depth_message = true
show.option_market_depth_trading_instrument = true
show.option_quote_message = true
show.option_rfq_message = true
show.option_summary_message = true
show.option_trade_cancellation_message = true
show.option_trade_correction_message = true
show.option_trade_message = true
show.packet = true
show.regular_text_bulletin = true
show.special_text_bulletin = true
show.strategies_message = true
show.strategy_instrument_keys_message = true
show.strategy_market_depth_message = true
show.strategy_market_depth_trading_instrument = true
show.strategy_quote_message = true
show.strategy_rfq_message = true
show.strategy_summary_message = true
show.strategy_summary_strategy_leg = true
show.strategy_trade_cancellation_message = true
show.strategy_trade_correction_message = true
show.strategy_trade_message = true
show.swap_future_beginning_of_summary_message = true
show.swap_future_instrument_keys_message = true
show.swap_future_market_depth_message = true
show.swap_future_market_depth_trading_instrument = true
show.swap_future_quote_message = true
show.swap_future_rfq_message = true
show.swap_future_summary_message = true
show.swap_future_trade_cancellation_message = true
show.swap_future_trade_correction_message = true
show.swap_future_trade_message = true
show.tick_entry_group = true
show.tick_table_message = true
show.underlying_instrument_keys_message = true
show.bulletin = false
show.message_body = false

-- Register Tmx Mx Sola Multicast Hsvf 1.11 Show Options
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_future_options_summary_message = Pref.bool("Show Beginning Of Future Options Summary Message", show.beginning_of_future_options_summary_message, "Parse and add Beginning Of Future Options Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_futures_summary_message = Pref.bool("Show Beginning Of Futures Summary Message", show.beginning_of_futures_summary_message, "Parse and add Beginning Of Futures Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_options_summary_message = Pref.bool("Show Beginning Of Options Summary Message", show.beginning_of_options_summary_message, "Parse and add Beginning Of Options Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_strategy_summary_message = Pref.bool("Show Beginning Of Strategy Summary Message", show.beginning_of_strategy_summary_message, "Parse and add Beginning Of Strategy Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_bulletins_message = Pref.bool("Show Bulletins Message", show.bulletins_message, "Parse and add Bulletins Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_circuit_assurance_message = Pref.bool("Show Circuit Assurance Message", show.circuit_assurance_message, "Parse and add Circuit Assurance Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_end_of_sales_message = Pref.bool("Show End Of Sales Message", show.end_of_sales_message, "Parse and add End Of Sales Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_end_of_transmission_message = Pref.bool("Show End Of Transmission Message", show.end_of_transmission_message, "Parse and add End Of Transmission Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_instrument_keys_message = Pref.bool("Show Future Options Instrument Keys Message", show.future_options_instrument_keys_message, "Parse and add Future Options Instrument Keys Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_market_depth_message = Pref.bool("Show Future Options Market Depth Message", show.future_options_market_depth_message, "Parse and add Future Options Market Depth Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_market_depth_trading_instrument = Pref.bool("Show Future Options Market Depth Trading Instrument", show.future_options_market_depth_trading_instrument, "Parse and add Future Options Market Depth Trading Instrument to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_quote_message = Pref.bool("Show Future Options Quote Message", show.future_options_quote_message, "Parse and add Future Options Quote Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_rfq_message = Pref.bool("Show Future Options Rfq Message", show.future_options_rfq_message, "Parse and add Future Options Rfq Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_summary_message = Pref.bool("Show Future Options Summary Message", show.future_options_summary_message, "Parse and add Future Options Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_cancellation_message = Pref.bool("Show Future Options Trade Cancellation Message", show.future_options_trade_cancellation_message, "Parse and add Future Options Trade Cancellation Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_correction_message = Pref.bool("Show Future Options Trade Correction Message", show.future_options_trade_correction_message, "Parse and add Future Options Trade Correction Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_message = Pref.bool("Show Future Options Trade Message", show.future_options_trade_message, "Parse and add Future Options Trade Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_instrument_keys_message = Pref.bool("Show Futures Instrument Keys Message", show.futures_instrument_keys_message, "Parse and add Futures Instrument Keys Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_market_depth_message = Pref.bool("Show Futures Market Depth Message", show.futures_market_depth_message, "Parse and add Futures Market Depth Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_market_depth_trading_instrument = Pref.bool("Show Futures Market Depth Trading Instrument", show.futures_market_depth_trading_instrument, "Parse and add Futures Market Depth Trading Instrument to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_quote_message = Pref.bool("Show Futures Quote Message", show.futures_quote_message, "Parse and add Futures Quote Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_rfq_message = Pref.bool("Show Futures Rfq Message", show.futures_rfq_message, "Parse and add Futures Rfq Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_summary_message = Pref.bool("Show Futures Summary Message", show.futures_summary_message, "Parse and add Futures Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_cancellation_message = Pref.bool("Show Futures Trade Cancellation Message", show.futures_trade_cancellation_message, "Parse and add Futures Trade Cancellation Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_correction_message = Pref.bool("Show Futures Trade Correction Message", show.futures_trade_correction_message, "Parse and add Futures Trade Correction Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_message = Pref.bool("Show Futures Trade Message", show.futures_trade_message, "Parse and add Futures Trade Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_group_status_message = Pref.bool("Show Group Status Message", show.group_status_message, "Parse and add Group Status Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_future_message = Pref.bool("Show Instrument Schedule Notice Future Message", show.instrument_schedule_notice_future_message, "Parse and add Instrument Schedule Notice Future Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_futures_option_message = Pref.bool("Show Instrument Schedule Notice Futures Option Message", show.instrument_schedule_notice_futures_option_message, "Parse and add Instrument Schedule Notice Futures Option Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_option_message = Pref.bool("Show Instrument Schedule Notice Option Message", show.instrument_schedule_notice_option_message, "Parse and add Instrument Schedule Notice Option Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_strategy_message = Pref.bool("Show Instrument Schedule Notice Strategy Message", show.instrument_schedule_notice_strategy_message, "Parse and add Instrument Schedule Notice Strategy Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_swap_future_message = Pref.bool("Show Instrument Schedule Notice Swap Future Message", show.instrument_schedule_notice_swap_future_message, "Parse and add Instrument Schedule Notice Swap Future Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_instrument_keys_message = Pref.bool("Show Option Instrument Keys Message", show.option_instrument_keys_message, "Parse and add Option Instrument Keys Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_market_depth_message = Pref.bool("Show Option Market Depth Message", show.option_market_depth_message, "Parse and add Option Market Depth Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_market_depth_trading_instrument = Pref.bool("Show Option Market Depth Trading Instrument", show.option_market_depth_trading_instrument, "Parse and add Option Market Depth Trading Instrument to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_quote_message = Pref.bool("Show Option Quote Message", show.option_quote_message, "Parse and add Option Quote Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_rfq_message = Pref.bool("Show Option Rfq Message", show.option_rfq_message, "Parse and add Option Rfq Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_summary_message = Pref.bool("Show Option Summary Message", show.option_summary_message, "Parse and add Option Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_cancellation_message = Pref.bool("Show Option Trade Cancellation Message", show.option_trade_cancellation_message, "Parse and add Option Trade Cancellation Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_correction_message = Pref.bool("Show Option Trade Correction Message", show.option_trade_correction_message, "Parse and add Option Trade Correction Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_message = Pref.bool("Show Option Trade Message", show.option_trade_message, "Parse and add Option Trade Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_regular_text_bulletin = Pref.bool("Show Regular Text Bulletin", show.regular_text_bulletin, "Parse and add Regular Text Bulletin to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_special_text_bulletin = Pref.bool("Show Special Text Bulletin", show.special_text_bulletin, "Parse and add Special Text Bulletin to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategies_message = Pref.bool("Show Strategies Message", show.strategies_message, "Parse and add Strategies Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_instrument_keys_message = Pref.bool("Show Strategy Instrument Keys Message", show.strategy_instrument_keys_message, "Parse and add Strategy Instrument Keys Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_market_depth_message = Pref.bool("Show Strategy Market Depth Message", show.strategy_market_depth_message, "Parse and add Strategy Market Depth Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_market_depth_trading_instrument = Pref.bool("Show Strategy Market Depth Trading Instrument", show.strategy_market_depth_trading_instrument, "Parse and add Strategy Market Depth Trading Instrument to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_quote_message = Pref.bool("Show Strategy Quote Message", show.strategy_quote_message, "Parse and add Strategy Quote Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_rfq_message = Pref.bool("Show Strategy Rfq Message", show.strategy_rfq_message, "Parse and add Strategy Rfq Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_summary_message = Pref.bool("Show Strategy Summary Message", show.strategy_summary_message, "Parse and add Strategy Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_summary_strategy_leg = Pref.bool("Show Strategy Summary Strategy Leg", show.strategy_summary_strategy_leg, "Parse and add Strategy Summary Strategy Leg to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_cancellation_message = Pref.bool("Show Strategy Trade Cancellation Message", show.strategy_trade_cancellation_message, "Parse and add Strategy Trade Cancellation Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_correction_message = Pref.bool("Show Strategy Trade Correction Message", show.strategy_trade_correction_message, "Parse and add Strategy Trade Correction Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_message = Pref.bool("Show Strategy Trade Message", show.strategy_trade_message, "Parse and add Strategy Trade Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_beginning_of_summary_message = Pref.bool("Show Swap Future Beginning Of Summary Message", show.swap_future_beginning_of_summary_message, "Parse and add Swap Future Beginning Of Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_instrument_keys_message = Pref.bool("Show Swap Future Instrument Keys Message", show.swap_future_instrument_keys_message, "Parse and add Swap Future Instrument Keys Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_market_depth_message = Pref.bool("Show Swap Future Market Depth Message", show.swap_future_market_depth_message, "Parse and add Swap Future Market Depth Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_market_depth_trading_instrument = Pref.bool("Show Swap Future Market Depth Trading Instrument", show.swap_future_market_depth_trading_instrument, "Parse and add Swap Future Market Depth Trading Instrument to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_quote_message = Pref.bool("Show Swap Future Quote Message", show.swap_future_quote_message, "Parse and add Swap Future Quote Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_rfq_message = Pref.bool("Show Swap Future Rfq Message", show.swap_future_rfq_message, "Parse and add Swap Future Rfq Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_summary_message = Pref.bool("Show Swap Future Summary Message", show.swap_future_summary_message, "Parse and add Swap Future Summary Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_cancellation_message = Pref.bool("Show Swap Future Trade Cancellation Message", show.swap_future_trade_cancellation_message, "Parse and add Swap Future Trade Cancellation Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_correction_message = Pref.bool("Show Swap Future Trade Correction Message", show.swap_future_trade_correction_message, "Parse and add Swap Future Trade Correction Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_message = Pref.bool("Show Swap Future Trade Message", show.swap_future_trade_message, "Parse and add Swap Future Trade Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_tick_entry_group = Pref.bool("Show Tick Entry Group", show.tick_entry_group, "Parse and add Tick Entry Group to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_tick_table_message = Pref.bool("Show Tick Table Message", show.tick_table_message, "Parse and add Tick Table Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_underlying_instrument_keys_message = Pref.bool("Show Underlying Instrument Keys Message", show.underlying_instrument_keys_message, "Parse and add Underlying Instrument Keys Message to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_bulletin = Pref.bool("Show Bulletin", show.bulletin, "Parse and add Bulletin to protocol tree")
omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_message_body = Pref.bool("Show Message Body", show.message_body, "Parse and add Message Body to protocol tree")

-- Handle changed preferences
function omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.beginning_of_future_options_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_future_options_summary_message then
    show.beginning_of_future_options_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_future_options_summary_message
    changed = true
  end
  if show.beginning_of_futures_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_futures_summary_message then
    show.beginning_of_futures_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_futures_summary_message
    changed = true
  end
  if show.beginning_of_options_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_options_summary_message then
    show.beginning_of_options_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_options_summary_message
    changed = true
  end
  if show.beginning_of_strategy_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_strategy_summary_message then
    show.beginning_of_strategy_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_strategy_summary_message
    changed = true
  end
  if show.bulletins_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_bulletins_message then
    show.bulletins_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_bulletins_message
    changed = true
  end
  if show.circuit_assurance_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_circuit_assurance_message then
    show.circuit_assurance_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_circuit_assurance_message
    changed = true
  end
  if show.end_of_sales_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_end_of_sales_message then
    show.end_of_sales_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_end_of_sales_message
    changed = true
  end
  if show.end_of_transmission_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_end_of_transmission_message then
    show.end_of_transmission_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_end_of_transmission_message
    changed = true
  end
  if show.future_options_instrument_keys_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_instrument_keys_message then
    show.future_options_instrument_keys_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_instrument_keys_message
    changed = true
  end
  if show.future_options_market_depth_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_market_depth_message then
    show.future_options_market_depth_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_market_depth_message
    changed = true
  end
  if show.future_options_market_depth_trading_instrument ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_market_depth_trading_instrument then
    show.future_options_market_depth_trading_instrument = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_market_depth_trading_instrument
    changed = true
  end
  if show.future_options_quote_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_quote_message then
    show.future_options_quote_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_quote_message
    changed = true
  end
  if show.future_options_rfq_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_rfq_message then
    show.future_options_rfq_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_rfq_message
    changed = true
  end
  if show.future_options_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_summary_message then
    show.future_options_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_summary_message
    changed = true
  end
  if show.future_options_trade_cancellation_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_cancellation_message then
    show.future_options_trade_cancellation_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_cancellation_message
    changed = true
  end
  if show.future_options_trade_correction_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_correction_message then
    show.future_options_trade_correction_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_correction_message
    changed = true
  end
  if show.future_options_trade_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_message then
    show.future_options_trade_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_message
    changed = true
  end
  if show.futures_instrument_keys_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_instrument_keys_message then
    show.futures_instrument_keys_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_instrument_keys_message
    changed = true
  end
  if show.futures_market_depth_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_market_depth_message then
    show.futures_market_depth_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_market_depth_message
    changed = true
  end
  if show.futures_market_depth_trading_instrument ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_market_depth_trading_instrument then
    show.futures_market_depth_trading_instrument = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_market_depth_trading_instrument
    changed = true
  end
  if show.futures_quote_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_quote_message then
    show.futures_quote_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_quote_message
    changed = true
  end
  if show.futures_rfq_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_rfq_message then
    show.futures_rfq_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_rfq_message
    changed = true
  end
  if show.futures_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_summary_message then
    show.futures_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_summary_message
    changed = true
  end
  if show.futures_trade_cancellation_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_cancellation_message then
    show.futures_trade_cancellation_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_cancellation_message
    changed = true
  end
  if show.futures_trade_correction_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_correction_message then
    show.futures_trade_correction_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_correction_message
    changed = true
  end
  if show.futures_trade_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_message then
    show.futures_trade_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_message
    changed = true
  end
  if show.group_status_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_group_status_message then
    show.group_status_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_group_status_message
    changed = true
  end
  if show.instrument_schedule_notice_future_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_future_message then
    show.instrument_schedule_notice_future_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_future_message
    changed = true
  end
  if show.instrument_schedule_notice_futures_option_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_futures_option_message then
    show.instrument_schedule_notice_futures_option_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_futures_option_message
    changed = true
  end
  if show.instrument_schedule_notice_option_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_option_message then
    show.instrument_schedule_notice_option_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_option_message
    changed = true
  end
  if show.instrument_schedule_notice_strategy_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_strategy_message then
    show.instrument_schedule_notice_strategy_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_strategy_message
    changed = true
  end
  if show.instrument_schedule_notice_swap_future_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_swap_future_message then
    show.instrument_schedule_notice_swap_future_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_swap_future_message
    changed = true
  end
  if show.message_header ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_message_header then
    show.message_header = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_message_header
    changed = true
  end
  if show.option_instrument_keys_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_instrument_keys_message then
    show.option_instrument_keys_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_instrument_keys_message
    changed = true
  end
  if show.option_market_depth_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_market_depth_message then
    show.option_market_depth_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_market_depth_message
    changed = true
  end
  if show.option_market_depth_trading_instrument ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_market_depth_trading_instrument then
    show.option_market_depth_trading_instrument = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_market_depth_trading_instrument
    changed = true
  end
  if show.option_quote_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_quote_message then
    show.option_quote_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_quote_message
    changed = true
  end
  if show.option_rfq_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_rfq_message then
    show.option_rfq_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_rfq_message
    changed = true
  end
  if show.option_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_summary_message then
    show.option_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_summary_message
    changed = true
  end
  if show.option_trade_cancellation_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_cancellation_message then
    show.option_trade_cancellation_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_cancellation_message
    changed = true
  end
  if show.option_trade_correction_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_correction_message then
    show.option_trade_correction_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_correction_message
    changed = true
  end
  if show.option_trade_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_message then
    show.option_trade_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_message
    changed = true
  end
  if show.packet ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_packet then
    show.packet = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_packet
    changed = true
  end
  if show.regular_text_bulletin ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_regular_text_bulletin then
    show.regular_text_bulletin = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_regular_text_bulletin
    changed = true
  end
  if show.special_text_bulletin ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_special_text_bulletin then
    show.special_text_bulletin = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_special_text_bulletin
    changed = true
  end
  if show.strategies_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategies_message then
    show.strategies_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategies_message
    changed = true
  end
  if show.strategy_instrument_keys_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_instrument_keys_message then
    show.strategy_instrument_keys_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_instrument_keys_message
    changed = true
  end
  if show.strategy_market_depth_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_market_depth_message then
    show.strategy_market_depth_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_market_depth_message
    changed = true
  end
  if show.strategy_market_depth_trading_instrument ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_market_depth_trading_instrument then
    show.strategy_market_depth_trading_instrument = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_market_depth_trading_instrument
    changed = true
  end
  if show.strategy_quote_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_quote_message then
    show.strategy_quote_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_quote_message
    changed = true
  end
  if show.strategy_rfq_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_rfq_message then
    show.strategy_rfq_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_rfq_message
    changed = true
  end
  if show.strategy_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_summary_message then
    show.strategy_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_summary_message
    changed = true
  end
  if show.strategy_summary_strategy_leg ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_summary_strategy_leg then
    show.strategy_summary_strategy_leg = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_summary_strategy_leg
    changed = true
  end
  if show.strategy_trade_cancellation_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_cancellation_message then
    show.strategy_trade_cancellation_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_cancellation_message
    changed = true
  end
  if show.strategy_trade_correction_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_correction_message then
    show.strategy_trade_correction_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_correction_message
    changed = true
  end
  if show.strategy_trade_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_message then
    show.strategy_trade_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_message
    changed = true
  end
  if show.swap_future_beginning_of_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_beginning_of_summary_message then
    show.swap_future_beginning_of_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_beginning_of_summary_message
    changed = true
  end
  if show.swap_future_instrument_keys_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_instrument_keys_message then
    show.swap_future_instrument_keys_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_instrument_keys_message
    changed = true
  end
  if show.swap_future_market_depth_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_market_depth_message then
    show.swap_future_market_depth_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_market_depth_message
    changed = true
  end
  if show.swap_future_market_depth_trading_instrument ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_market_depth_trading_instrument then
    show.swap_future_market_depth_trading_instrument = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_market_depth_trading_instrument
    changed = true
  end
  if show.swap_future_quote_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_quote_message then
    show.swap_future_quote_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_quote_message
    changed = true
  end
  if show.swap_future_rfq_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_rfq_message then
    show.swap_future_rfq_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_rfq_message
    changed = true
  end
  if show.swap_future_summary_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_summary_message then
    show.swap_future_summary_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_summary_message
    changed = true
  end
  if show.swap_future_trade_cancellation_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_cancellation_message then
    show.swap_future_trade_cancellation_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_cancellation_message
    changed = true
  end
  if show.swap_future_trade_correction_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_correction_message then
    show.swap_future_trade_correction_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_correction_message
    changed = true
  end
  if show.swap_future_trade_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_message then
    show.swap_future_trade_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_message
    changed = true
  end
  if show.tick_entry_group ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_tick_entry_group then
    show.tick_entry_group = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_tick_entry_group
    changed = true
  end
  if show.tick_table_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_tick_table_message then
    show.tick_table_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_tick_table_message
    changed = true
  end
  if show.underlying_instrument_keys_message ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_underlying_instrument_keys_message then
    show.underlying_instrument_keys_message = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_underlying_instrument_keys_message
    changed = true
  end
  if show.bulletin ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_bulletin then
    show.bulletin = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_bulletin
    changed = true
  end
  if show.message_body ~= omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_message_body then
    show.message_body = omi_tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_message_body
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
-- Dissect Tmx Mx Sola Multicast Hsvf 1.11
-----------------------------------------------------------------------

-- Hsvf Etx
tmx_mx_sola_multicast_hsvf_v1_11.hsvf_etx = {}

-- Size: Hsvf Etx
tmx_mx_sola_multicast_hsvf_v1_11.hsvf_etx.size = 1

-- Display: Hsvf Etx
tmx_mx_sola_multicast_hsvf_v1_11.hsvf_etx.display = function(value)
  return "Hsvf Etx: "..value
end

-- Dissect: Hsvf Etx
tmx_mx_sola_multicast_hsvf_v1_11.hsvf_etx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.hsvf_etx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.hsvf_etx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.hsvf_etx, range, value, display)

  return offset + length, value
end

-- Time
tmx_mx_sola_multicast_hsvf_v1_11.time = {}

-- Size: Time
tmx_mx_sola_multicast_hsvf_v1_11.time.size = 6

-- Display: Time
tmx_mx_sola_multicast_hsvf_v1_11.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
tmx_mx_sola_multicast_hsvf_v1_11.time.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.time, range, value, display)

  return offset + length, value
end

-- Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_11.circuit_assurance_message = {}

-- Size: Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_11.circuit_assurance_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.time.size

-- Display: Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_11.circuit_assurance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_11.circuit_assurance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: N
  index, time = tmx_mx_sola_multicast_hsvf_v1_11.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Circuit Assurance Message
tmx_mx_sola_multicast_hsvf_v1_11.circuit_assurance_message.dissect = function(buffer, offset, packet, parent)
  if show.circuit_assurance_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.circuit_assurance_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.circuit_assurance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.circuit_assurance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.circuit_assurance_message.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Id A 1
tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1 = {}

-- Size: Exchange Id A 1
tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size = 1

-- Display: Exchange Id A 1
tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.display = function(value)
  return "Exchange Id A 1: "..value
end

-- Dissect: Exchange Id A 1
tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.exchange_id_a_1, range, value, display)

  return offset + length, value
end

-- End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_11.end_of_transmission_message = {}

-- Size: End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_11.end_of_transmission_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.time.size

-- Display: End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_11.end_of_transmission_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_11.end_of_transmission_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = tmx_mx_sola_multicast_hsvf_v1_11.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmission Message
tmx_mx_sola_multicast_hsvf_v1_11.end_of_transmission_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_transmission_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.end_of_transmission_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.end_of_transmission_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.end_of_transmission_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.end_of_transmission_message.fields(buffer, offset, packet, parent)
  end
end

-- Tick Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.tick_price_fraction_indicator = {}

-- Size: Tick Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.tick_price_fraction_indicator.size = 1

-- Display: Tick Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.tick_price_fraction_indicator.display = function(value)
  return "Tick Price Fraction Indicator: "..value
end

-- Dissect: Tick Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.tick_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.tick_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.tick_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Tick Price
tmx_mx_sola_multicast_hsvf_v1_11.tick_price = {}

-- Size: Tick Price
tmx_mx_sola_multicast_hsvf_v1_11.tick_price.size = 6

-- Display: Tick Price
tmx_mx_sola_multicast_hsvf_v1_11.tick_price.display = function(value)
  return "Tick Price: "..value
end

-- Dissect: Tick Price
tmx_mx_sola_multicast_hsvf_v1_11.tick_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.tick_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.tick_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_price, range, value, display)

  return offset + length, value
end

-- Min Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.min_price_fraction_indicator = {}

-- Size: Min Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.min_price_fraction_indicator.size = 1

-- Display: Min Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.min_price_fraction_indicator.display = function(value)
  return "Min Price Fraction Indicator: "..value
end

-- Dissect: Min Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.min_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.min_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.min_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.min_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Min Price
tmx_mx_sola_multicast_hsvf_v1_11.min_price = {}

-- Size: Min Price
tmx_mx_sola_multicast_hsvf_v1_11.min_price.size = 6

-- Display: Min Price
tmx_mx_sola_multicast_hsvf_v1_11.min_price.display = function(value)
  return "Min Price: "..value
end

-- Dissect: Min Price
tmx_mx_sola_multicast_hsvf_v1_11.min_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.min_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.min_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.min_price, range, value, display)

  return offset + length, value
end

-- Tick Entry Group
tmx_mx_sola_multicast_hsvf_v1_11.tick_entry_group = {}

-- Size: Tick Entry Group
tmx_mx_sola_multicast_hsvf_v1_11.tick_entry_group.size =
  tmx_mx_sola_multicast_hsvf_v1_11.min_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.min_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_price_fraction_indicator.size

-- Display: Tick Entry Group
tmx_mx_sola_multicast_hsvf_v1_11.tick_entry_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Entry Group
tmx_mx_sola_multicast_hsvf_v1_11.tick_entry_group.fields = function(buffer, offset, packet, parent, tick_entry_group_index)
  local index = offset

  -- Implicit Tick Entry Group Index
  if tick_entry_group_index ~= nil then
    local iteration = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_entry_group_index, tick_entry_group_index)
    iteration:set_generated()
  end

  -- Min Price: N
  index, min_price = tmx_mx_sola_multicast_hsvf_v1_11.min_price.dissect(buffer, index, packet, parent)

  -- Min Price Fraction Indicator: X
  index, min_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.min_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Price: N
  index, tick_price = tmx_mx_sola_multicast_hsvf_v1_11.tick_price.dissect(buffer, index, packet, parent)

  -- Tick Price Fraction Indicator: X
  index, tick_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.tick_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Entry Group
tmx_mx_sola_multicast_hsvf_v1_11.tick_entry_group.dissect = function(buffer, offset, packet, parent, tick_entry_group_index)
  if show.tick_entry_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_entry_group, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.tick_entry_group.fields(buffer, offset, packet, parent, tick_entry_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.tick_entry_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.tick_entry_group.fields(buffer, offset, packet, parent, tick_entry_group_index)
  end
end

-- Number Of Entries
tmx_mx_sola_multicast_hsvf_v1_11.number_of_entries = {}

-- Size: Number Of Entries
tmx_mx_sola_multicast_hsvf_v1_11.number_of_entries.size = 2

-- Display: Number Of Entries
tmx_mx_sola_multicast_hsvf_v1_11.number_of_entries.display = function(value)
  return "Number Of Entries: "..value
end

-- Dissect: Number Of Entries
tmx_mx_sola_multicast_hsvf_v1_11.number_of_entries.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.number_of_entries.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.number_of_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_entries, range, value, display)

  return offset + length, value
end

-- Tick Table Short Name
tmx_mx_sola_multicast_hsvf_v1_11.tick_table_short_name = {}

-- Size: Tick Table Short Name
tmx_mx_sola_multicast_hsvf_v1_11.tick_table_short_name.size = 2

-- Display: Tick Table Short Name
tmx_mx_sola_multicast_hsvf_v1_11.tick_table_short_name.display = function(value)
  return "Tick Table Short Name: "..value
end

-- Dissect: Tick Table Short Name
tmx_mx_sola_multicast_hsvf_v1_11.tick_table_short_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.tick_table_short_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.tick_table_short_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_table_short_name, range, value, display)

  return offset + length, value
end

-- Tick Table Name
tmx_mx_sola_multicast_hsvf_v1_11.tick_table_name = {}

-- Size: Tick Table Name
tmx_mx_sola_multicast_hsvf_v1_11.tick_table_name.size = 50

-- Display: Tick Table Name
tmx_mx_sola_multicast_hsvf_v1_11.tick_table_name.display = function(value)
  return "Tick Table Name: "..value
end

-- Dissect: Tick Table Name
tmx_mx_sola_multicast_hsvf_v1_11.tick_table_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.tick_table_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.tick_table_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_table_name, range, value, display)

  return offset + length, value
end

-- Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_11.tick_table_message = {}

-- Calculate size of: Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_11.tick_table_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.tick_table_name.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.tick_table_short_name.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.number_of_entries.size

  -- Calculate field size from count
  local tick_entry_group_count = buffer(offset + index - 2, 2):string()
  index = index + tick_entry_group_count * 14

  return index
end

-- Display: Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_11.tick_table_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_11.tick_table_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Tick Table Name: X
  index, tick_table_name = tmx_mx_sola_multicast_hsvf_v1_11.tick_table_name.dissect(buffer, index, packet, parent)

  -- Tick Table Short Name: X
  index, tick_table_short_name = tmx_mx_sola_multicast_hsvf_v1_11.tick_table_short_name.dissect(buffer, index, packet, parent)

  -- Number Of Entries: N
  index, number_of_entries = tmx_mx_sola_multicast_hsvf_v1_11.number_of_entries.dissect(buffer, index, packet, parent)

  -- Repeating: Tick Entry Group
  for tick_entry_group_index = 1, number_of_entries do
    index, tick_entry_group = tmx_mx_sola_multicast_hsvf_v1_11.tick_entry_group.dissect(buffer, index, packet, parent, tick_entry_group_index)
  end

  return index
end

-- Dissect: Tick Table Message
tmx_mx_sola_multicast_hsvf_v1_11.tick_table_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.tick_table_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_11.tick_table_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.tick_table_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_table_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_11.tick_table_message.fields(buffer, offset, packet, parent)
end

-- Reserved
tmx_mx_sola_multicast_hsvf_v1_11.reserved = {}

-- Size: Reserved
tmx_mx_sola_multicast_hsvf_v1_11.reserved.size = 1

-- Display: Reserved
tmx_mx_sola_multicast_hsvf_v1_11.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
tmx_mx_sola_multicast_hsvf_v1_11.reserved.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.reserved, range, value, display)

  return offset + length, value
end

-- End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_11.end_of_sales_message = {}

-- Size: End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_11.end_of_sales_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.reserved.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.time.size

-- Display: End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_11.end_of_sales_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_11.end_of_sales_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: 1 Byte Ascii String
  index, reserved = tmx_mx_sola_multicast_hsvf_v1_11.reserved.dissect(buffer, index, packet, parent)

  -- Time: N
  index, time = tmx_mx_sola_multicast_hsvf_v1_11.time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Sales Message
tmx_mx_sola_multicast_hsvf_v1_11.end_of_sales_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_sales_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.end_of_sales_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.end_of_sales_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.end_of_sales_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.end_of_sales_message.fields(buffer, offset, packet, parent)
  end
end

-- Continue Marker
tmx_mx_sola_multicast_hsvf_v1_11.continue_marker = {}

-- Size: Continue Marker
tmx_mx_sola_multicast_hsvf_v1_11.continue_marker.size = 1

-- Display: Continue Marker
tmx_mx_sola_multicast_hsvf_v1_11.continue_marker.display = function(value)
  return "Continue Marker: "..value
end

-- Dissect: Continue Marker
tmx_mx_sola_multicast_hsvf_v1_11.continue_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.continue_marker.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.continue_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.continue_marker, range, value, display)

  return offset + length, value
end

-- Bulletin Contents X 49
tmx_mx_sola_multicast_hsvf_v1_11.bulletin_contents_x_49 = {}

-- Size: Bulletin Contents X 49
tmx_mx_sola_multicast_hsvf_v1_11.bulletin_contents_x_49.size = 49

-- Display: Bulletin Contents X 49
tmx_mx_sola_multicast_hsvf_v1_11.bulletin_contents_x_49.display = function(value)
  return "Bulletin Contents X 49: "..value
end

-- Dissect: Bulletin Contents X 49
tmx_mx_sola_multicast_hsvf_v1_11.bulletin_contents_x_49.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.bulletin_contents_x_49.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.bulletin_contents_x_49.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletin_contents_x_49, range, value, display)

  return offset + length, value
end

-- Symbol
tmx_mx_sola_multicast_hsvf_v1_11.symbol = {}

-- Size: Symbol
tmx_mx_sola_multicast_hsvf_v1_11.symbol.size = 30

-- Display: Symbol
tmx_mx_sola_multicast_hsvf_v1_11.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
tmx_mx_sola_multicast_hsvf_v1_11.symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.symbol, range, value, display)

  return offset + length, value
end

-- Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.special_text_bulletin = {}

-- Size: Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.special_text_bulletin.size =
  tmx_mx_sola_multicast_hsvf_v1_11.symbol.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bulletin_contents_x_49.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.continue_marker.size

-- Display: Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.special_text_bulletin.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.special_text_bulletin.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Bulletin Contents X 49: X
  index, bulletin_contents_x_49 = tmx_mx_sola_multicast_hsvf_v1_11.bulletin_contents_x_49.dissect(buffer, index, packet, parent)

  -- Continue Marker: N
  index, continue_marker = tmx_mx_sola_multicast_hsvf_v1_11.continue_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Special Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.special_text_bulletin.dissect = function(buffer, offset, packet, parent)
  if show.special_text_bulletin then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.special_text_bulletin, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.special_text_bulletin.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.special_text_bulletin.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.special_text_bulletin.fields(buffer, offset, packet, parent)
  end
end

-- Regular Bulletin Contents
tmx_mx_sola_multicast_hsvf_v1_11.regular_bulletin_contents = {}

-- Size: Regular Bulletin Contents
tmx_mx_sola_multicast_hsvf_v1_11.regular_bulletin_contents.size = 79

-- Display: Regular Bulletin Contents
tmx_mx_sola_multicast_hsvf_v1_11.regular_bulletin_contents.display = function(value)
  return "Regular Bulletin Contents: "..value
end

-- Dissect: Regular Bulletin Contents
tmx_mx_sola_multicast_hsvf_v1_11.regular_bulletin_contents.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.regular_bulletin_contents.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.regular_bulletin_contents.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.regular_bulletin_contents, range, value, display)

  return offset + length, value
end

-- Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.regular_text_bulletin = {}

-- Size: Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.regular_text_bulletin.size =
  tmx_mx_sola_multicast_hsvf_v1_11.regular_bulletin_contents.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.continue_marker.size

-- Display: Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.regular_text_bulletin.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.regular_text_bulletin.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Regular Bulletin Contents: X
  index, regular_bulletin_contents = tmx_mx_sola_multicast_hsvf_v1_11.regular_bulletin_contents.dissect(buffer, index, packet, parent)

  -- Continue Marker: N
  index, continue_marker = tmx_mx_sola_multicast_hsvf_v1_11.continue_marker.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Regular Text Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.regular_text_bulletin.dissect = function(buffer, offset, packet, parent)
  if show.regular_text_bulletin then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.regular_text_bulletin, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.regular_text_bulletin.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.regular_text_bulletin.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.regular_text_bulletin.fields(buffer, offset, packet, parent)
  end
end

-- Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.bulletin = {}

-- Size: Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.bulletin.size = function(buffer, offset, bulletin_type)
  -- Size of Regular Text Bulletin
  if bulletin_type == "1" then
    return tmx_mx_sola_multicast_hsvf_v1_11.regular_text_bulletin.size
  end
  -- Size of Special Text Bulletin
  if bulletin_type == "2" then
    return tmx_mx_sola_multicast_hsvf_v1_11.special_text_bulletin.size
  end

  return 0
end

-- Display: Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.bulletin.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.bulletin.branches = function(buffer, offset, packet, parent, bulletin_type)
  -- Dissect Regular Text Bulletin
  if bulletin_type == "1" then
    return tmx_mx_sola_multicast_hsvf_v1_11.regular_text_bulletin.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Special Text Bulletin
  if bulletin_type == "2" then
    return tmx_mx_sola_multicast_hsvf_v1_11.special_text_bulletin.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Bulletin
tmx_mx_sola_multicast_hsvf_v1_11.bulletin.dissect = function(buffer, offset, packet, parent, bulletin_type)
  if not show.bulletin then
    return tmx_mx_sola_multicast_hsvf_v1_11.bulletin.branches(buffer, offset, packet, parent, bulletin_type)
  end

  -- Calculate size and check that branch is not empty
  local size = tmx_mx_sola_multicast_hsvf_v1_11.bulletin.size(buffer, offset, bulletin_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = tmx_mx_sola_multicast_hsvf_v1_11.bulletin.display(buffer, packet, parent)
  local element = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletin, range, display)

  return tmx_mx_sola_multicast_hsvf_v1_11.bulletin.branches(buffer, offset, packet, parent, bulletin_type)
end

-- Bulletin Type
tmx_mx_sola_multicast_hsvf_v1_11.bulletin_type = {}

-- Size: Bulletin Type
tmx_mx_sola_multicast_hsvf_v1_11.bulletin_type.size = 1

-- Display: Bulletin Type
tmx_mx_sola_multicast_hsvf_v1_11.bulletin_type.display = function(value)
  if value == "1" then
    return "Bulletin Type: Regular Text Bulletin (1)"
  end
  if value == "2" then
    return "Bulletin Type: Special Text Bulletin (2)"
  end

  return "Bulletin Type: Unknown("..value..")"
end

-- Dissect: Bulletin Type
tmx_mx_sola_multicast_hsvf_v1_11.bulletin_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.bulletin_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.bulletin_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletin_type, range, value, display)

  return offset + length, value
end

-- Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_11.bulletins_message = {}

-- Calculate size of: Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_11.bulletins_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.reserved.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.bulletin_type.size

  -- Calculate runtime size of Bulletin field
  local bulletin_offset = offset + index
  local bulletin_type = buffer(bulletin_offset - 1, 1):string()
  index = index + tmx_mx_sola_multicast_hsvf_v1_11.bulletin.size(buffer, bulletin_offset, bulletin_type)

  return index
end

-- Display: Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_11.bulletins_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_11.bulletins_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: 1 Byte Ascii String
  index, reserved = tmx_mx_sola_multicast_hsvf_v1_11.reserved.dissect(buffer, index, packet, parent)

  -- Bulletin Type: X
  index, bulletin_type = tmx_mx_sola_multicast_hsvf_v1_11.bulletin_type.dissect(buffer, index, packet, parent)

  -- Bulletin: Runtime Type with 2 branches
  index = tmx_mx_sola_multicast_hsvf_v1_11.bulletin.dissect(buffer, index, packet, parent, bulletin_type)

  return index
end

-- Dissect: Bulletins Message
tmx_mx_sola_multicast_hsvf_v1_11.bulletins_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.bulletins_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_11.bulletins_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.bulletins_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletins_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_11.bulletins_message.fields(buffer, offset, packet, parent)
end

-- Group Status
tmx_mx_sola_multicast_hsvf_v1_11.group_status = {}

-- Size: Group Status
tmx_mx_sola_multicast_hsvf_v1_11.group_status.size = 1

-- Display: Group Status
tmx_mx_sola_multicast_hsvf_v1_11.group_status.display = function(value)
  return "Group Status: "..value
end

-- Dissect: Group Status
tmx_mx_sola_multicast_hsvf_v1_11.group_status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.group_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.group_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.group_status, range, value, display)

  return offset + length, value
end

-- Group Instrument
tmx_mx_sola_multicast_hsvf_v1_11.group_instrument = {}

-- Size: Group Instrument
tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.size = 2

-- Display: Group Instrument
tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.display = function(value)
  return "Group Instrument: "..value
end

-- Dissect: Group Instrument
tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.group_instrument, range, value, display)

  return offset + length, value
end

-- Strategies Message
tmx_mx_sola_multicast_hsvf_v1_11.strategies_message = {}

-- Size: Strategies Message
tmx_mx_sola_multicast_hsvf_v1_11.strategies_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.group_status.size

-- Display: Strategies Message
tmx_mx_sola_multicast_hsvf_v1_11.strategies_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategies Message
tmx_mx_sola_multicast_hsvf_v1_11.strategies_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = tmx_mx_sola_multicast_hsvf_v1_11.group_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategies Message
tmx_mx_sola_multicast_hsvf_v1_11.strategies_message.dissect = function(buffer, offset, packet, parent)
  if show.strategies_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategies_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.strategies_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.strategies_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.strategies_message.fields(buffer, offset, packet, parent)
  end
end

-- Root Symbol X 6
tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6 = {}

-- Size: Root Symbol X 6
tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size = 6

-- Display: Root Symbol X 6
tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.display = function(value)
  return "Root Symbol X 6: "..value
end

-- Dissect: Root Symbol X 6
tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.root_symbol_x_6, range, value, display)

  return offset + length, value
end

-- Group Status Message
tmx_mx_sola_multicast_hsvf_v1_11.group_status_message = {}

-- Size: Group Status Message
tmx_mx_sola_multicast_hsvf_v1_11.group_status_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.group_status.size

-- Display: Group Status Message
tmx_mx_sola_multicast_hsvf_v1_11.group_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Group Status Message
tmx_mx_sola_multicast_hsvf_v1_11.group_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Group Status: A
  index, group_status = tmx_mx_sola_multicast_hsvf_v1_11.group_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Message
tmx_mx_sola_multicast_hsvf_v1_11.group_status_message.dissect = function(buffer, offset, packet, parent)
  if show.group_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.group_status_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.group_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.group_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.group_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Number
tmx_mx_sola_multicast_hsvf_v1_11.trade_number = {}

-- Size: Trade Number
tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size = 8

-- Display: Trade Number
tmx_mx_sola_multicast_hsvf_v1_11.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Price Indicator Marker X 1
tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1 = {}

-- Size: Price Indicator Marker X 1
tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.size = 1

-- Display: Price Indicator Marker X 1
tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.display = function(value)
  return "Price Indicator Marker X 1: "..value
end

-- Dissect: Price Indicator Marker X 1
tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.price_indicator_marker_x_1, range, value, display)

  return offset + length, value
end

-- Timestamp
tmx_mx_sola_multicast_hsvf_v1_11.timestamp = {}

-- Size: Timestamp
tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size = 9

-- Display: Timestamp
tmx_mx_sola_multicast_hsvf_v1_11.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Net Change Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1 = {}

-- Size: Net Change Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size = 1

-- Display: Net Change Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.display = function(value)
  return "Net Change Fraction Indicator X 1: "..value
end

-- Dissect: Net Change Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_fraction_indicator_x_1, range, value, display)

  return offset + length, value
end

-- Net Change
tmx_mx_sola_multicast_hsvf_v1_11.net_change = {}

-- Size: Net Change
tmx_mx_sola_multicast_hsvf_v1_11.net_change.size = 6

-- Display: Net Change
tmx_mx_sola_multicast_hsvf_v1_11.net_change.display = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.net_change.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.net_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change, range, value, display)

  return offset + length, value
end

-- Net Change Sign X 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1 = {}

-- Size: Net Change Sign X 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.size = 1

-- Display: Net Change Sign X 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.display = function(value)
  return "Net Change Sign X 1: "..value
end

-- Dissect: Net Change Sign X 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_sign_x_1, range, value, display)

  return offset + length, value
end

-- Trade Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator = {}

-- Size: Trade Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size = 1

-- Display: Trade Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.display = function(value)
  return "Trade Price Fraction Indicator: "..value
end

-- Dissect: Trade Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Trade Price
tmx_mx_sola_multicast_hsvf_v1_11.trade_price = {}

-- Size: Trade Price
tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size = 6

-- Display: Trade Price
tmx_mx_sola_multicast_hsvf_v1_11.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Volume
tmx_mx_sola_multicast_hsvf_v1_11.trade_volume = {}

-- Size: Trade Volume
tmx_mx_sola_multicast_hsvf_v1_11.trade_volume.size = 8

-- Display: Trade Volume
tmx_mx_sola_multicast_hsvf_v1_11.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
tmx_mx_sola_multicast_hsvf_v1_11.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.trade_volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Fixed Rate Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator = {}

-- Size: Fixed Rate Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.size = 1

-- Display: Fixed Rate Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.display = function(value)
  return "Fixed Rate Fraction Indicator: "..value
end

-- Dissect: Fixed Rate Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.fixed_rate_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Fixed Rate
tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate = {}

-- Size: Fixed Rate
tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.size = 5

-- Display: Fixed Rate
tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.display = function(value)
  return "Fixed Rate: "..value
end

-- Dissect: Fixed Rate
tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.fixed_rate, range, value, display)

  return offset + length, value
end

-- Tenor
tmx_mx_sola_multicast_hsvf_v1_11.tenor = {}

-- Size: Tenor
tmx_mx_sola_multicast_hsvf_v1_11.tenor.size = 2

-- Display: Tenor
tmx_mx_sola_multicast_hsvf_v1_11.tenor.display = function(value)
  return "Tenor: "..value
end

-- Dissect: Tenor
tmx_mx_sola_multicast_hsvf_v1_11.tenor.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.tenor.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.tenor.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tenor, range, value, display)

  return offset + length, value
end

-- Expiry Day
tmx_mx_sola_multicast_hsvf_v1_11.expiry_day = {}

-- Size: Expiry Day
tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size = 2

-- Display: Expiry Day
tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.display = function(value)
  return "Expiry Day: "..value
end

-- Dissect: Expiry Day
tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.expiry_day, range, value, display)

  return offset + length, value
end

-- Expiry Year
tmx_mx_sola_multicast_hsvf_v1_11.expiry_year = {}

-- Size: Expiry Year
tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size = 2

-- Display: Expiry Year
tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.display = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- Expiry Month
tmx_mx_sola_multicast_hsvf_v1_11.expiry_month = {}

-- Size: Expiry Month
tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size = 1

-- Display: Expiry Month
tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.display = function(value)
  return "Expiry Month: "..value
end

-- Dissect: Expiry Month
tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.expiry_month, range, value, display)

  return offset + length, value
end

-- Exchange I D
tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d = {}

-- Size: Exchange I D
tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size = 1

-- Display: Exchange I D
tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.display = function(value)
  return "Exchange I D: "..value
end

-- Dissect: Exchange I D
tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.exchange_i_d, range, value, display)

  return offset + length, value
end

-- Swap Future Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_correction_message = {}

-- Size: Swap Future Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_correction_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tenor.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Swap Future Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: A
  index, exchange_i_d = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_sola_multicast_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Volume: N
  index, trade_volume = tmx_mx_sola_multicast_hsvf_v1_11.trade_volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.swap_future_trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_trade_correction_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Filler 6
tmx_mx_sola_multicast_hsvf_v1_11.filler_6 = {}

-- Size: Filler 6
tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size = 6

-- Display: Filler 6
tmx_mx_sola_multicast_hsvf_v1_11.filler_6.display = function(value)
  return "Filler 6: "..value
end

-- Dissect: Filler 6
tmx_mx_sola_multicast_hsvf_v1_11.filler_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_6, range, value, display)

  return offset + length, value
end

-- Trade Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.trade_price_sign = {}

-- Size: Trade Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.trade_price_sign.size = 1

-- Display: Trade Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.trade_price_sign.display = function(value)
  return "Trade Price Sign: "..value
end

-- Dissect: Trade Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.trade_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_price_sign, range, value, display)

  return offset + length, value
end

-- Volume
tmx_mx_sola_multicast_hsvf_v1_11.volume = {}

-- Size: Volume
tmx_mx_sola_multicast_hsvf_v1_11.volume.size = 8

-- Display: Volume
tmx_mx_sola_multicast_hsvf_v1_11.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.volume.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.volume, range, value, display)

  return offset + length, value
end

-- Strategy Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_correction_message = {}

-- Size: Strategy Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_correction_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.symbol.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_sign.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Strategy Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: A
  index, exchange_i_d = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_trade_correction_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Delivery Day
tmx_mx_sola_multicast_hsvf_v1_11.delivery_day = {}

-- Size: Delivery Day
tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.size = 2

-- Display: Delivery Day
tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.display = function(value)
  return "Delivery Day: "..value
end

-- Dissect: Delivery Day
tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_day, range, value, display)

  return offset + length, value
end

-- Delivery Year N 2
tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2 = {}

-- Size: Delivery Year N 2
tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.size = 2

-- Display: Delivery Year N 2
tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.display = function(value)
  return "Delivery Year N 2: "..value
end

-- Dissect: Delivery Year N 2
tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_year_n_2, range, value, display)

  return offset + length, value
end

-- Delivery Month
tmx_mx_sola_multicast_hsvf_v1_11.delivery_month = {}

-- Size: Delivery Month
tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size = 1

-- Display: Delivery Month
tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.display = function(value)
  return "Delivery Month: "..value
end

-- Dissect: Delivery Month
tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_month, range, value, display)

  return offset + length, value
end

-- Root Symbol A 6
tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6 = {}

-- Size: Root Symbol A 6
tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size = 6

-- Display: Root Symbol A 6
tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.display = function(value)
  return "Root Symbol A 6: "..value
end

-- Dissect: Root Symbol A 6
tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.root_symbol_a_6, range, value, display)

  return offset + length, value
end

-- Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_correction_message = {}

-- Size: Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_correction_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: A
  index, exchange_i_d = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year N 2: N
  index, delivery_year_n_2 = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.futures_trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_trade_correction_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Filler 2
tmx_mx_sola_multicast_hsvf_v1_11.filler_2 = {}

-- Size: Filler 2
tmx_mx_sola_multicast_hsvf_v1_11.filler_2.size = 2

-- Display: Filler 2
tmx_mx_sola_multicast_hsvf_v1_11.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
tmx_mx_sola_multicast_hsvf_v1_11.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.filler_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Open Interest
tmx_mx_sola_multicast_hsvf_v1_11.open_interest = {}

-- Size: Open Interest
tmx_mx_sola_multicast_hsvf_v1_11.open_interest.size = 7

-- Display: Open Interest
tmx_mx_sola_multicast_hsvf_v1_11.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
tmx_mx_sola_multicast_hsvf_v1_11.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.open_interest.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Net Change Fraction Indicator A 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_a_1 = {}

-- Size: Net Change Fraction Indicator A 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_a_1.size = 1

-- Display: Net Change Fraction Indicator A 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_a_1.display = function(value)
  return "Net Change Fraction Indicator A 1: "..value
end

-- Dissect: Net Change Fraction Indicator A 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_a_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_a_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_a_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_fraction_indicator_a_1, range, value, display)

  return offset + length, value
end

-- Net Change Sign A 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1 = {}

-- Size: Net Change Sign A 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1.size = 1

-- Display: Net Change Sign A 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1.display = function(value)
  return "Net Change Sign A 1: "..value
end

-- Dissect: Net Change Sign A 1
tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_sign_a_1, range, value, display)

  return offset + length, value
end

-- Price Indicator Marker A 1
tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1 = {}

-- Size: Price Indicator Marker A 1
tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.size = 1

-- Display: Price Indicator Marker A 1
tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.display = function(value)
  return "Price Indicator Marker A 1: "..value
end

-- Dissect: Price Indicator Marker A 1
tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.price_indicator_marker_a_1, range, value, display)

  return offset + length, value
end

-- Strike Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator = {}

-- Size: Strike Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size = 1

-- Display: Strike Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.display = function(value)
  return "Strike Price Fraction Indicator: "..value
end

-- Dissect: Strike Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Strike Price N 7
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7 = {}

-- Size: Strike Price N 7
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size = 7

-- Display: Strike Price N 7
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.display = function(value)
  return "Strike Price N 7: "..value
end

-- Dissect: Strike Price N 7
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_n_7, range, value, display)

  return offset + length, value
end

-- Call Put Code
tmx_mx_sola_multicast_hsvf_v1_11.call_put_code = {}

-- Size: Call Put Code
tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.size = 1

-- Display: Call Put Code
tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.display = function(value)
  if value == "C" then
    return "Call Put Code: Call (C)"
  end
  if value == "P" then
    return "Call Put Code: Put (P)"
  end

  return "Call Put Code: Unknown("..value..")"
end

-- Dissect: Call Put Code
tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.call_put_code, range, value, display)

  return offset + length, value
end

-- Contract Month Code
tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code = {}

-- Size: Contract Month Code
tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.size = 1

-- Display: Contract Month Code
tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.display = function(value)
  return "Contract Month Code: "..value
end

-- Dissect: Contract Month Code
tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.contract_month_code, range, value, display)

  return offset + length, value
end

-- Future Options Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_correction_message = {}

-- Size: Future Options Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_correction_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_interest.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_2.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Future Options Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.dissect(buffer, index, packet, parent)

  -- Net Change Sign A 1: A
  index, net_change_sign_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator A 1: A
  index, net_change_fraction_indicator_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_a_1.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Filler 2: X
  index, filler_2 = tmx_mx_sola_multicast_hsvf_v1_11.filler_2.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.future_options_trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_trade_correction_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Filler 1
tmx_mx_sola_multicast_hsvf_v1_11.filler_1 = {}

-- Size: Filler 1
tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size = 1

-- Display: Filler 1
tmx_mx_sola_multicast_hsvf_v1_11.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Option Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_correction_message = {}

-- Size: Option Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_correction_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_interest.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Option Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign A 1: A
  index, net_change_sign_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Correction Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.option_trade_correction_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_trade_correction_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.option_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.option_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.option_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Swap Future Beginning Of Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_beginning_of_summary_message = {}

-- Size: Swap Future Beginning Of Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_beginning_of_summary_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size

-- Display: Swap Future Beginning Of Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_beginning_of_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Beginning Of Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_beginning_of_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Beginning Of Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_beginning_of_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.swap_future_beginning_of_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_beginning_of_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_beginning_of_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_beginning_of_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_beginning_of_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_strategy_summary_message = {}

-- Size: Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_strategy_summary_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size

-- Display: Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_strategy_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_strategy_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_strategy_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.beginning_of_strategy_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_strategy_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_strategy_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_strategy_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_strategy_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_futures_summary_message = {}

-- Size: Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_futures_summary_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size

-- Display: Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_futures_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_futures_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_futures_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.beginning_of_futures_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_futures_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_futures_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_futures_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_futures_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_future_options_summary_message = {}

-- Size: Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_future_options_summary_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size

-- Display: Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_future_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_future_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_future_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.beginning_of_future_options_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_future_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_future_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_future_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_future_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_options_summary_message = {}

-- Size: Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_options_summary_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size

-- Display: Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.beginning_of_options_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Reason
tmx_mx_sola_multicast_hsvf_v1_11.reason = {}

-- Size: Reason
tmx_mx_sola_multicast_hsvf_v1_11.reason.size = 1

-- Display: Reason
tmx_mx_sola_multicast_hsvf_v1_11.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
tmx_mx_sola_multicast_hsvf_v1_11.reason.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.reason, range, value, display)

  return offset + length, value
end

-- Previous Reset Rate Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate_fraction_indicator = {}

-- Size: Previous Reset Rate Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate_fraction_indicator.size = 1

-- Display: Previous Reset Rate Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate_fraction_indicator.display = function(value)
  return "Previous Reset Rate Fraction Indicator: "..value
end

-- Dissect: Previous Reset Rate Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_reset_rate_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Previous Reset Rate
tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate = {}

-- Size: Previous Reset Rate
tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate.size = 6

-- Display: Previous Reset Rate
tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate.display = function(value)
  return "Previous Reset Rate: "..value
end

-- Dissect: Previous Reset Rate
tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_reset_rate, range, value, display)

  return offset + length, value
end

-- Previous Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price_fraction_indicator = {}

-- Size: Previous Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price_fraction_indicator.size = 1

-- Display: Previous Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price_fraction_indicator.display = function(value)
  return "Previous Settlement Price Fraction Indicator: "..value
end

-- Dissect: Previous Settlement Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Previous Settlement Price
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price = {}

-- Size: Previous Settlement Price
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price.size = 6

-- Display: Previous Settlement Price
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price.display = function(value)
  return "Previous Settlement Price: "..value
end

-- Dissect: Previous Settlement Price
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement_price, range, value, display)

  return offset + length, value
end

-- Price Alignment Interest Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_fraction_indicator = {}

-- Size: Price Alignment Interest Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_fraction_indicator.size = 1

-- Display: Price Alignment Interest Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_fraction_indicator.display = function(value)
  return "Price Alignment Interest Fraction Indicator: "..value
end

-- Dissect: Price Alignment Interest Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.price_alignment_interest_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Price Alignment Interest C
tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_c = {}

-- Size: Price Alignment Interest C
tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_c.size = 11

-- Display: Price Alignment Interest C
tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_c.display = function(value)
  return "Price Alignment Interest C: "..value
end

-- Dissect: Price Alignment Interest C
tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_c.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_c.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_c.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.price_alignment_interest_c, range, value, display)

  return offset + length, value
end

-- Historical Coupon Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_fraction_indicator = {}

-- Size: Historical Coupon Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_fraction_indicator.size = 1

-- Display: Historical Coupon Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_fraction_indicator.display = function(value)
  return "Historical Coupon Fraction Indicator: "..value
end

-- Dissect: Historical Coupon Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.historical_coupon_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Historical Coupon B
tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_b = {}

-- Size: Historical Coupon B
tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_b.size = 11

-- Display: Historical Coupon B
tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_b.display = function(value)
  return "Historical Coupon B: "..value
end

-- Dissect: Historical Coupon B
tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_b.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_b.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_b.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.historical_coupon_b, range, value, display)

  return offset + length, value
end

-- Net Present Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_fraction_indicator = {}

-- Size: Net Present Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_fraction_indicator.size = 1

-- Display: Net Present Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_fraction_indicator.display = function(value)
  return "Net Present Value Fraction Indicator: "..value
end

-- Dissect: Net Present Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_present_value_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Net Present Value A
tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_a = {}

-- Size: Net Present Value A
tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_a.size = 11

-- Display: Net Present Value A
tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_a.display = function(value)
  return "Net Present Value A: "..value
end

-- Dissect: Net Present Value A
tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_a.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_a.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_a.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.net_present_value_a, range, value, display)

  return offset + length, value
end

-- Settlement Price Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1 = {}

-- Size: Settlement Price Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1.size = 1

-- Display: Settlement Price Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1.display = function(value)
  return "Settlement Price Fraction Indicator X 1: "..value
end

-- Dissect: Settlement Price Fraction Indicator X 1
tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.settlement_price_fraction_indicator_x_1, range, value, display)

  return offset + length, value
end

-- Settlement Price
tmx_mx_sola_multicast_hsvf_v1_11.settlement_price = {}

-- Size: Settlement Price
tmx_mx_sola_multicast_hsvf_v1_11.settlement_price.size = 6

-- Display: Settlement Price
tmx_mx_sola_multicast_hsvf_v1_11.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
tmx_mx_sola_multicast_hsvf_v1_11.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Low Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator = {}

-- Size: Low Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.size = 1

-- Display: Low Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.display = function(value)
  return "Low Price Fraction Indicator: "..value
end

-- Dissect: Low Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.low_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Low Price
tmx_mx_sola_multicast_hsvf_v1_11.low_price = {}

-- Size: Low Price
tmx_mx_sola_multicast_hsvf_v1_11.low_price.size = 6

-- Display: Low Price
tmx_mx_sola_multicast_hsvf_v1_11.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
tmx_mx_sola_multicast_hsvf_v1_11.low_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.low_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.low_price, range, value, display)

  return offset + length, value
end

-- High Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator = {}

-- Size: High Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.size = 1

-- Display: High Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.display = function(value)
  return "High Price Fraction Indicator: "..value
end

-- Dissect: High Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.high_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- High Price
tmx_mx_sola_multicast_hsvf_v1_11.high_price = {}

-- Size: High Price
tmx_mx_sola_multicast_hsvf_v1_11.high_price.size = 6

-- Display: High Price
tmx_mx_sola_multicast_hsvf_v1_11.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
tmx_mx_sola_multicast_hsvf_v1_11.high_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.high_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.high_price, range, value, display)

  return offset + length, value
end

-- Open Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator = {}

-- Size: Open Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator.size = 1

-- Display: Open Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator.display = function(value)
  return "Open Price Fraction Indicator: "..value
end

-- Dissect: Open Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.open_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Open Price
tmx_mx_sola_multicast_hsvf_v1_11.open_price = {}

-- Size: Open Price
tmx_mx_sola_multicast_hsvf_v1_11.open_price.size = 6

-- Display: Open Price
tmx_mx_sola_multicast_hsvf_v1_11.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
tmx_mx_sola_multicast_hsvf_v1_11.open_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.open_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.open_price, range, value, display)

  return offset + length, value
end

-- Last Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator = {}

-- Size: Last Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator.size = 1

-- Display: Last Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator.display = function(value)
  return "Last Price Fraction Indicator: "..value
end

-- Dissect: Last Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.last_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Last Price
tmx_mx_sola_multicast_hsvf_v1_11.last_price = {}

-- Size: Last Price
tmx_mx_sola_multicast_hsvf_v1_11.last_price.size = 6

-- Display: Last Price
tmx_mx_sola_multicast_hsvf_v1_11.last_price.display = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
tmx_mx_sola_multicast_hsvf_v1_11.last_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.last_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.last_price, range, value, display)

  return offset + length, value
end

-- Ask Size
tmx_mx_sola_multicast_hsvf_v1_11.ask_size = {}

-- Size: Ask Size
tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size = 5

-- Display: Ask Size
tmx_mx_sola_multicast_hsvf_v1_11.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator = {}

-- Size: Ask Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size = 1

-- Display: Ask Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.display = function(value)
  return "Ask Price Fraction Indicator: "..value
end

-- Dissect: Ask Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Ask Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6 = {}

-- Size: Ask Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.size = 6

-- Display: Ask Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.display = function(value)
  return "Ask Price N 6: "..value
end

-- Dissect: Ask Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_n_6, range, value, display)

  return offset + length, value
end

-- Bid Size
tmx_mx_sola_multicast_hsvf_v1_11.bid_size = {}

-- Size: Bid Size
tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size = 5

-- Display: Bid Size
tmx_mx_sola_multicast_hsvf_v1_11.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator = {}

-- Size: Bid Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size = 1

-- Display: Bid Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.display = function(value)
  return "Bid Price Fraction Indicator: "..value
end

-- Dissect: Bid Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Bid Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6 = {}

-- Size: Bid Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.size = 6

-- Display: Bid Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.display = function(value)
  return "Bid Price N 6: "..value
end

-- Dissect: Bid Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_n_6, range, value, display)

  return offset + length, value
end

-- Exchange Id X 1
tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_x_1 = {}

-- Size: Exchange Id X 1
tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_x_1.size = 1

-- Display: Exchange Id X 1
tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_x_1.display = function(value)
  return "Exchange Id X 1: "..value
end

-- Dissect: Exchange Id X 1
tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_x_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_x_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_x_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.exchange_id_x_1, range, value, display)

  return offset + length, value
end

-- Swap Future Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_summary_message = {}

-- Size: Swap Future Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_summary_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tenor.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.last_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.high_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.low_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.settlement_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_a.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_b.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_c.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_interest.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.reason.size

-- Display: Swap Future Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id X 1: X
  index, exchange_id_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_x_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_sola_multicast_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Price N 6: N
  index, bid_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price N 6: N
  index, ask_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_sola_multicast_hsvf_v1_11.last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_sola_multicast_hsvf_v1_11.open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_sola_multicast_hsvf_v1_11.high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_sola_multicast_hsvf_v1_11.low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator X 1: X
  index, settlement_price_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Net Present Value A: N
  index, net_present_value_a = tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_a.dissect(buffer, index, packet, parent)

  -- Net Present Value Fraction Indicator: X
  index, net_present_value_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.net_present_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Historical Coupon B: N
  index, historical_coupon_b = tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_b.dissect(buffer, index, packet, parent)

  -- Historical Coupon Fraction Indicator: X
  index, historical_coupon_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.historical_coupon_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Alignment Interest C: N
  index, price_alignment_interest_c = tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_c.dissect(buffer, index, packet, parent)

  -- Price Alignment Interest Fraction Indicator: X
  index, price_alignment_interest_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.price_alignment_interest_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price: N
  index, previous_settlement_price = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price Fraction Indicator: X
  index, previous_settlement_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Previous Reset Rate: X
  index, previous_reset_rate = tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate.dissect(buffer, index, packet, parent)

  -- Previous Reset Rate Fraction Indicator: X
  index, previous_reset_rate_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_sola_multicast_hsvf_v1_11.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.swap_future_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Symbol
tmx_mx_sola_multicast_hsvf_v1_11.leg_symbol = {}

-- Size: Leg Symbol
tmx_mx_sola_multicast_hsvf_v1_11.leg_symbol.size = 30

-- Display: Leg Symbol
tmx_mx_sola_multicast_hsvf_v1_11.leg_symbol.display = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
tmx_mx_sola_multicast_hsvf_v1_11.leg_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.leg_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.leg_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Leg Ratio
tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio = {}

-- Size: Leg Ratio
tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio.size = 2

-- Display: Leg Ratio
tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Ratio Sign
tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio_sign = {}

-- Size: Leg Ratio Sign
tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio_sign.size = 1

-- Display: Leg Ratio Sign
tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio_sign.display = function(value)
  if value == "+" then
    return "Leg Ratio Sign: Buy Of The Underlying (+)"
  end
  if value == "-" then
    return "Leg Ratio Sign: Sell Of The Underlying (-)"
  end

  return "Leg Ratio Sign: Unknown("..value..")"
end

-- Dissect: Leg Ratio Sign
tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.leg_ratio_sign, range, value, display)

  return offset + length, value
end

-- Strategy Summary Strategy Leg
tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_strategy_leg = {}

-- Size: Strategy Summary Strategy Leg
tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_strategy_leg.size =
  tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio_sign.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.leg_symbol.size

-- Display: Strategy Summary Strategy Leg
tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_strategy_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Summary Strategy Leg
tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_strategy_leg.fields = function(buffer, offset, packet, parent, strategy_summary_strategy_leg_index)
  local index = offset

  -- Implicit Strategy Summary Strategy Leg Index
  if strategy_summary_strategy_leg_index ~= nil then
    local iteration = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_summary_strategy_leg_index, strategy_summary_strategy_leg_index)
    iteration:set_generated()
  end

  -- Leg Ratio Sign: X
  index, leg_ratio_sign = tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio_sign.dissect(buffer, index, packet, parent)

  -- Leg Ratio: N
  index, leg_ratio = tmx_mx_sola_multicast_hsvf_v1_11.leg_ratio.dissect(buffer, index, packet, parent)

  -- Leg Symbol: X
  index, leg_symbol = tmx_mx_sola_multicast_hsvf_v1_11.leg_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Summary Strategy Leg
tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_strategy_leg.dissect = function(buffer, offset, packet, parent, strategy_summary_strategy_leg_index)
  if show.strategy_summary_strategy_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_summary_strategy_leg, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_strategy_leg.fields(buffer, offset, packet, parent, strategy_summary_strategy_leg_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_strategy_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_strategy_leg.fields(buffer, offset, packet, parent, strategy_summary_strategy_leg_index)
  end
end

-- Number Of Legs
tmx_mx_sola_multicast_hsvf_v1_11.number_of_legs = {}

-- Size: Number Of Legs
tmx_mx_sola_multicast_hsvf_v1_11.number_of_legs.size = 2

-- Display: Number Of Legs
tmx_mx_sola_multicast_hsvf_v1_11.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
tmx_mx_sola_multicast_hsvf_v1_11.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.number_of_legs.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Low Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.low_price_sign = {}

-- Size: Low Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.low_price_sign.size = 1

-- Display: Low Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.low_price_sign.display = function(value)
  return "Low Price Sign: "..value
end

-- Dissect: Low Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.low_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.low_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.low_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.low_price_sign, range, value, display)

  return offset + length, value
end

-- High Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.high_price_sign = {}

-- Size: High Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.high_price_sign.size = 1

-- Display: High Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.high_price_sign.display = function(value)
  return "High Price Sign: "..value
end

-- Dissect: High Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.high_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.high_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.high_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.high_price_sign, range, value, display)

  return offset + length, value
end

-- Open Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.open_price_sign = {}

-- Size: Open Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.open_price_sign.size = 1

-- Display: Open Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.open_price_sign.display = function(value)
  return "Open Price Sign: "..value
end

-- Dissect: Open Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.open_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.open_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.open_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.open_price_sign, range, value, display)

  return offset + length, value
end

-- Last Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.last_price_sign = {}

-- Size: Last Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.last_price_sign.size = 1

-- Display: Last Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.last_price_sign.display = function(value)
  return "Last Price Sign: "..value
end

-- Dissect: Last Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.last_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.last_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.last_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.last_price_sign, range, value, display)

  return offset + length, value
end

-- Ask Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_sign = {}

-- Size: Ask Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_sign.size = 1

-- Display: Ask Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_sign.display = function(value)
  return "Ask Price Sign: "..value
end

-- Dissect: Ask Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_sign, range, value, display)

  return offset + length, value
end

-- Bid Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_sign = {}

-- Size: Bid Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_sign.size = 1

-- Display: Bid Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_sign.display = function(value)
  return "Bid Price Sign: "..value
end

-- Dissect: Bid Price Sign
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_sign.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_sign.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_sign.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_sign, range, value, display)

  return offset + length, value
end

-- Strategy Symbol
tmx_mx_sola_multicast_hsvf_v1_11.strategy_symbol = {}

-- Size: Strategy Symbol
tmx_mx_sola_multicast_hsvf_v1_11.strategy_symbol.size = 30

-- Display: Strategy Symbol
tmx_mx_sola_multicast_hsvf_v1_11.strategy_symbol.display = function(value)
  return "Strategy Symbol: "..value
end

-- Dissect: Strategy Symbol
tmx_mx_sola_multicast_hsvf_v1_11.strategy_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.strategy_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.strategy_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_symbol, range, value, display)

  return offset + length, value
end

-- Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_message = {}

-- Calculate size of: Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.strategy_symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.bid_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.ask_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.last_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.last_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.open_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.open_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.high_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.high_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.low_price_sign.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.low_price.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.net_change.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.volume.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.reason.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.number_of_legs.size

  -- Calculate field size from count
  local strategy_summary_strategy_leg_count = buffer(offset + index - 2, 2):string()
  index = index + strategy_summary_strategy_leg_count * 33

  return index
end

-- Display: Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id X 1: X
  index, exchange_id_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_x_1.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_11.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Bid Price N 6: N
  index, bid_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Ask Price N 6: N
  index, ask_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price Sign: X
  index, last_price_sign = tmx_mx_sola_multicast_hsvf_v1_11.last_price_sign.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_sola_multicast_hsvf_v1_11.last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price Sign: X
  index, open_price_sign = tmx_mx_sola_multicast_hsvf_v1_11.open_price_sign.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_sola_multicast_hsvf_v1_11.open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price Sign: X
  index, high_price_sign = tmx_mx_sola_multicast_hsvf_v1_11.high_price_sign.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_sola_multicast_hsvf_v1_11.high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price Sign: X
  index, low_price_sign = tmx_mx_sola_multicast_hsvf_v1_11.low_price_sign.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_sola_multicast_hsvf_v1_11.low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_sola_multicast_hsvf_v1_11.reason.dissect(buffer, index, packet, parent)

  -- Number Of Legs: N
  index, number_of_legs = tmx_mx_sola_multicast_hsvf_v1_11.number_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Strategy Summary Strategy Leg
  for strategy_summary_strategy_leg_index = 1, number_of_legs do
    index, strategy_summary_strategy_leg = tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_strategy_leg.dissect(buffer, index, packet, parent, strategy_summary_strategy_leg_index)
  end

  return index
end

-- Dissect: Strategy Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_summary_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_summary_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_message.fields(buffer, offset, packet, parent)
end

-- External Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.external_price_fraction_indicator = {}

-- Size: External Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.external_price_fraction_indicator.size = 1

-- Display: External Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.external_price_fraction_indicator.display = function(value)
  return "External Price Fraction Indicator: "..value
end

-- Dissect: External Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.external_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.external_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.external_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.external_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- External Price At Source
tmx_mx_sola_multicast_hsvf_v1_11.external_price_at_source = {}

-- Size: External Price At Source
tmx_mx_sola_multicast_hsvf_v1_11.external_price_at_source.size = 6

-- Display: External Price At Source
tmx_mx_sola_multicast_hsvf_v1_11.external_price_at_source.display = function(value)
  return "External Price At Source: "..value
end

-- Dissect: External Price At Source
tmx_mx_sola_multicast_hsvf_v1_11.external_price_at_source.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.external_price_at_source.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.external_price_at_source.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.external_price_at_source, range, value, display)

  return offset + length, value
end

-- Previous Settlement Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_fraction_indicator = {}

-- Size: Previous Settlement Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_fraction_indicator.size = 1

-- Display: Previous Settlement Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_fraction_indicator.display = function(value)
  return "Previous Settlement Fraction Indicator: "..value
end

-- Dissect: Previous Settlement Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Previous Settlement
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement = {}

-- Size: Previous Settlement
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement.size = 6

-- Display: Previous Settlement
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement.display = function(value)
  return "Previous Settlement: "..value
end

-- Dissect: Previous Settlement
tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement, range, value, display)

  return offset + length, value
end

-- Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_summary_message = {}

-- Size: Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_summary_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.last_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.high_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.low_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.settlement_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_interest.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.reason.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.external_price_at_source.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.external_price_fraction_indicator.size

-- Display: Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year N 2: N
  index, delivery_year_n_2 = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Bid Price N 6: N
  index, bid_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price N 6: N
  index, ask_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_sola_multicast_hsvf_v1_11.last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_sola_multicast_hsvf_v1_11.open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_sola_multicast_hsvf_v1_11.high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_sola_multicast_hsvf_v1_11.low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator X 1: X
  index, settlement_price_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Previous Settlement: N
  index, previous_settlement = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement.dissect(buffer, index, packet, parent)

  -- Previous Settlement Fraction Indicator: X
  index, previous_settlement_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_sola_multicast_hsvf_v1_11.reason.dissect(buffer, index, packet, parent)

  -- External Price At Source: N
  index, external_price_at_source = tmx_mx_sola_multicast_hsvf_v1_11.external_price_at_source.dissect(buffer, index, packet, parent)

  -- External Price Fraction Indicator: X
  index, external_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.external_price_fraction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.futures_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.futures_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.futures_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Delivery Year N 1
tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_1 = {}

-- Size: Delivery Year N 1
tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_1.size = 1

-- Display: Delivery Year N 1
tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_1.display = function(value)
  return "Delivery Year N 1: "..value
end

-- Dissect: Delivery Year N 1
tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_1.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_year_n_1, range, value, display)

  return offset + length, value
end

-- Underlying Symbol Root A 3
tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_a_3 = {}

-- Size: Underlying Symbol Root A 3
tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_a_3.size = 3

-- Display: Underlying Symbol Root A 3
tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_a_3.display = function(value)
  return "Underlying Symbol Root A 3: "..value
end

-- Dissect: Underlying Symbol Root A 3
tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_a_3.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_a_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_a_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_symbol_root_a_3, range, value, display)

  return offset + length, value
end

-- Opening Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.opening_price_fraction_indicator = {}

-- Size: Opening Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.opening_price_fraction_indicator.size = 1

-- Display: Opening Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.opening_price_fraction_indicator.display = function(value)
  return "Opening Price Fraction Indicator: "..value
end

-- Dissect: Opening Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.opening_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.opening_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.opening_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.opening_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Opening Price
tmx_mx_sola_multicast_hsvf_v1_11.opening_price = {}

-- Size: Opening Price
tmx_mx_sola_multicast_hsvf_v1_11.opening_price.size = 6

-- Display: Opening Price
tmx_mx_sola_multicast_hsvf_v1_11.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
tmx_mx_sola_multicast_hsvf_v1_11.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.opening_price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Tick
tmx_mx_sola_multicast_hsvf_v1_11.tick = {}

-- Size: Tick
tmx_mx_sola_multicast_hsvf_v1_11.tick.size = 1

-- Display: Tick
tmx_mx_sola_multicast_hsvf_v1_11.tick.display = function(value)
  if value == "+" then
    return "Tick: Uptick (+)"
  end
  if value == "-" then
    return "Tick: Downtick (-)"
  end

  return "Tick: Unknown("..value..")"
end

-- Dissect: Tick
tmx_mx_sola_multicast_hsvf_v1_11.tick.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.tick.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick, range, value, display)

  return offset + length, value
end

-- Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_summary_message = {}

-- Size: Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_summary_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.last_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_interest.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.opening_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.opening_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.high_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.low_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_2.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_a_3.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.settlement_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.reason.size

-- Display: Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Price N 6: N
  index, bid_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price N 6: N
  index, ask_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_sola_multicast_hsvf_v1_11.last_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator X 1: X
  index, settlement_price_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Tick: X
  index, tick = tmx_mx_sola_multicast_hsvf_v1_11.tick.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Opening Price: N
  index, opening_price = tmx_mx_sola_multicast_hsvf_v1_11.opening_price.dissect(buffer, index, packet, parent)

  -- Opening Price Fraction Indicator: X
  index, opening_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.opening_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_sola_multicast_hsvf_v1_11.high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_sola_multicast_hsvf_v1_11.low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 2: X
  index, filler_2 = tmx_mx_sola_multicast_hsvf_v1_11.filler_2.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Root A 3: A
  index, underlying_symbol_root_a_3 = tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_a_3.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year N 1: N
  index, delivery_year_n_1 = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_1.dissect(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator X 1: X
  index, settlement_price_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price: N
  index, previous_settlement_price = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price Fraction Indicator: X
  index, previous_settlement_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_sola_multicast_hsvf_v1_11.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.future_options_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.future_options_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.future_options_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Price Fraction Indicator N 1
tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_n_1 = {}

-- Size: Settlement Price Fraction Indicator N 1
tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_n_1.size = 1

-- Display: Settlement Price Fraction Indicator N 1
tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_n_1.display = function(value)
  return "Settlement Price Fraction Indicator N 1: "..value
end

-- Dissect: Settlement Price Fraction Indicator N 1
tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_n_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_n_1.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_n_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.settlement_price_fraction_indicator_n_1, range, value, display)

  return offset + length, value
end

-- Underlying Symbol Root X 10
tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_x_10 = {}

-- Size: Underlying Symbol Root X 10
tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_x_10.size = 10

-- Display: Underlying Symbol Root X 10
tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_x_10.display = function(value)
  return "Underlying Symbol Root X 10: "..value
end

-- Dissect: Underlying Symbol Root X 10
tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_x_10.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_x_10.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_x_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_symbol_root_x_10, range, value, display)

  return offset + length, value
end

-- Option Marker
tmx_mx_sola_multicast_hsvf_v1_11.option_marker = {}

-- Size: Option Marker
tmx_mx_sola_multicast_hsvf_v1_11.option_marker.size = 2

-- Display: Option Marker
tmx_mx_sola_multicast_hsvf_v1_11.option_marker.display = function(value)
  return "Option Marker: "..value
end

-- Dissect: Option Marker
tmx_mx_sola_multicast_hsvf_v1_11.option_marker.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.option_marker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.option_marker.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_marker, range, value, display)

  return offset + length, value
end

-- Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.option_summary_message = {}

-- Size: Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.option_summary_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.last_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_interest.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.high_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.low_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.option_marker.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_x_10.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.settlement_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_n_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.reason.size

-- Display: Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.option_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.option_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Bid Price N 6: N
  index, bid_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_n_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price N 6: N
  index, ask_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Last Price: N
  index, last_price = tmx_mx_sola_multicast_hsvf_v1_11.last_price.dissect(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: X
  index, last_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.last_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Tick: X
  index, tick = tmx_mx_sola_multicast_hsvf_v1_11.tick.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Open Price: N
  index, open_price = tmx_mx_sola_multicast_hsvf_v1_11.open_price.dissect(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: X
  index, open_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.open_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- High Price: N
  index, high_price = tmx_mx_sola_multicast_hsvf_v1_11.high_price.dissect(buffer, index, packet, parent)

  -- High Price Fraction Indicator: X
  index, high_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.high_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Low Price: N
  index, low_price = tmx_mx_sola_multicast_hsvf_v1_11.low_price.dissect(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: X
  index, low_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.low_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Marker: A
  index, option_marker = tmx_mx_sola_multicast_hsvf_v1_11.option_marker.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Root X 10: X
  index, underlying_symbol_root_x_10 = tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_x_10.dissect(buffer, index, packet, parent)

  -- Settlement Price: N
  index, settlement_price = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price.dissect(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator N 1: N
  index, settlement_price_fraction_indicator_n_1 = tmx_mx_sola_multicast_hsvf_v1_11.settlement_price_fraction_indicator_n_1.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price: N
  index, previous_settlement_price = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price.dissect(buffer, index, packet, parent)

  -- Previous Settlement Price Fraction Indicator: X
  index, previous_settlement_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.previous_settlement_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Reason: X
  index, reason = tmx_mx_sola_multicast_hsvf_v1_11.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Summary Message
tmx_mx_sola_multicast_hsvf_v1_11.option_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.option_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_summary_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.option_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.option_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.option_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Delivery Type
tmx_mx_sola_multicast_hsvf_v1_11.delivery_type = {}

-- Size: Delivery Type
tmx_mx_sola_multicast_hsvf_v1_11.delivery_type.size = 1

-- Display: Delivery Type
tmx_mx_sola_multicast_hsvf_v1_11.delivery_type.display = function(value)
  if value == "C" then
    return "Delivery Type: Cash (C)"
  end
  if value == "P" then
    return "Delivery Type: Physical (P)"
  end

  return "Delivery Type: Unknown("..value..")"
end

-- Dissect: Delivery Type
tmx_mx_sola_multicast_hsvf_v1_11.delivery_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.delivery_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.delivery_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_type, range, value, display)

  return offset + length, value
end

-- Previous Reset Date
tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_date = {}

-- Size: Previous Reset Date
tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_date.size = 6

-- Display: Previous Reset Date
tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_date.display = function(value)
  return "Previous Reset Date: "..value
end

-- Dissect: Previous Reset Date
tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_reset_date, range, value, display)

  return offset + length, value
end

-- Next Reset Date
tmx_mx_sola_multicast_hsvf_v1_11.next_reset_date = {}

-- Size: Next Reset Date
tmx_mx_sola_multicast_hsvf_v1_11.next_reset_date.size = 6

-- Display: Next Reset Date
tmx_mx_sola_multicast_hsvf_v1_11.next_reset_date.display = function(value)
  return "Next Reset Date: "..value
end

-- Dissect: Next Reset Date
tmx_mx_sola_multicast_hsvf_v1_11.next_reset_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.next_reset_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.next_reset_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.next_reset_date, range, value, display)

  return offset + length, value
end

-- First Reset Date
tmx_mx_sola_multicast_hsvf_v1_11.first_reset_date = {}

-- Size: First Reset Date
tmx_mx_sola_multicast_hsvf_v1_11.first_reset_date.size = 6

-- Display: First Reset Date
tmx_mx_sola_multicast_hsvf_v1_11.first_reset_date.display = function(value)
  return "First Reset Date: "..value
end

-- Dissect: First Reset Date
tmx_mx_sola_multicast_hsvf_v1_11.first_reset_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.first_reset_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.first_reset_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.first_reset_date, range, value, display)

  return offset + length, value
end

-- Next Payment Date
tmx_mx_sola_multicast_hsvf_v1_11.next_payment_date = {}

-- Size: Next Payment Date
tmx_mx_sola_multicast_hsvf_v1_11.next_payment_date.size = 6

-- Display: Next Payment Date
tmx_mx_sola_multicast_hsvf_v1_11.next_payment_date.display = function(value)
  return "Next Payment Date: "..value
end

-- Dissect: Next Payment Date
tmx_mx_sola_multicast_hsvf_v1_11.next_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.next_payment_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.next_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.next_payment_date, range, value, display)

  return offset + length, value
end

-- First Payment Date
tmx_mx_sola_multicast_hsvf_v1_11.first_payment_date = {}

-- Size: First Payment Date
tmx_mx_sola_multicast_hsvf_v1_11.first_payment_date.size = 6

-- Display: First Payment Date
tmx_mx_sola_multicast_hsvf_v1_11.first_payment_date.display = function(value)
  return "First Payment Date: "..value
end

-- Dissect: First Payment Date
tmx_mx_sola_multicast_hsvf_v1_11.first_payment_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.first_payment_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.first_payment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.first_payment_date, range, value, display)

  return offset + length, value
end

-- Day Count Convention
tmx_mx_sola_multicast_hsvf_v1_11.day_count_convention = {}

-- Size: Day Count Convention
tmx_mx_sola_multicast_hsvf_v1_11.day_count_convention.size = 1

-- Display: Day Count Convention
tmx_mx_sola_multicast_hsvf_v1_11.day_count_convention.display = function(value)
  if value == "A" then
    return "Day Count Convention: Act 365 (A)"
  end
  if value == "B" then
    return "Day Count Convention: Act 360 (B)"
  end
  if value == "C" then
    return "Day Count Convention: 30360 (C)"
  end
  if value == "S" then
    return "Day Count Convention: Start Of Day (S)"
  end
  if value == "E" then
    return "Day Count Convention: End Of Day (E)"
  end
  if value == "U" then
    return "Day Count Convention: Instrument New Or Update (U)"
  end
  if value == "C" then
    return "Day Count Convention: Trade Cancellation (C)"
  end

  return "Day Count Convention: Unknown("..value..")"
end

-- Dissect: Day Count Convention
tmx_mx_sola_multicast_hsvf_v1_11.day_count_convention.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.day_count_convention.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.day_count_convention.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.day_count_convention, range, value, display)

  return offset + length, value
end

-- Notional Principal Amount Faction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount_faction_indicator = {}

-- Size: Notional Principal Amount Faction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount_faction_indicator.size = 1

-- Display: Notional Principal Amount Faction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount_faction_indicator.display = function(value)
  return "Notional Principal Amount Faction Indicator: "..value
end

-- Dissect: Notional Principal Amount Faction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount_faction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount_faction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount_faction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.notional_principal_amount_faction_indicator, range, value, display)

  return offset + length, value
end

-- Notional Principal Amount
tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount = {}

-- Size: Notional Principal Amount
tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount.size = 8

-- Display: Notional Principal Amount
tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount.display = function(value)
  return "Notional Principal Amount: "..value
end

-- Dissect: Notional Principal Amount
tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.notional_principal_amount, range, value, display)

  return offset + length, value
end

-- Reset Frequency
tmx_mx_sola_multicast_hsvf_v1_11.reset_frequency = {}

-- Size: Reset Frequency
tmx_mx_sola_multicast_hsvf_v1_11.reset_frequency.size = 2

-- Display: Reset Frequency
tmx_mx_sola_multicast_hsvf_v1_11.reset_frequency.display = function(value)
  return "Reset Frequency: "..value
end

-- Dissect: Reset Frequency
tmx_mx_sola_multicast_hsvf_v1_11.reset_frequency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.reset_frequency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.reset_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.reset_frequency, range, value, display)

  return offset + length, value
end

-- Payment Frequency
tmx_mx_sola_multicast_hsvf_v1_11.payment_frequency = {}

-- Size: Payment Frequency
tmx_mx_sola_multicast_hsvf_v1_11.payment_frequency.size = 2

-- Display: Payment Frequency
tmx_mx_sola_multicast_hsvf_v1_11.payment_frequency.display = function(value)
  return "Payment Frequency: "..value
end

-- Dissect: Payment Frequency
tmx_mx_sola_multicast_hsvf_v1_11.payment_frequency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.payment_frequency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.payment_frequency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.payment_frequency, range, value, display)

  return offset + length, value
end

-- Cash Flow Alignment Date
tmx_mx_sola_multicast_hsvf_v1_11.cash_flow_alignment_date = {}

-- Size: Cash Flow Alignment Date
tmx_mx_sola_multicast_hsvf_v1_11.cash_flow_alignment_date.size = 6

-- Display: Cash Flow Alignment Date
tmx_mx_sola_multicast_hsvf_v1_11.cash_flow_alignment_date.display = function(value)
  return "Cash Flow Alignment Date: "..value
end

-- Dissect: Cash Flow Alignment Date
tmx_mx_sola_multicast_hsvf_v1_11.cash_flow_alignment_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.cash_flow_alignment_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.cash_flow_alignment_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.cash_flow_alignment_date, range, value, display)

  return offset + length, value
end

-- Initial Effective Date
tmx_mx_sola_multicast_hsvf_v1_11.initial_effective_date = {}

-- Size: Initial Effective Date
tmx_mx_sola_multicast_hsvf_v1_11.initial_effective_date.size = 6

-- Display: Initial Effective Date
tmx_mx_sola_multicast_hsvf_v1_11.initial_effective_date.display = function(value)
  return "Initial Effective Date: "..value
end

-- Dissect: Initial Effective Date
tmx_mx_sola_multicast_hsvf_v1_11.initial_effective_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.initial_effective_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.initial_effective_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.initial_effective_date, range, value, display)

  return offset + length, value
end

-- Effective Date
tmx_mx_sola_multicast_hsvf_v1_11.effective_date = {}

-- Size: Effective Date
tmx_mx_sola_multicast_hsvf_v1_11.effective_date.size = 6

-- Display: Effective Date
tmx_mx_sola_multicast_hsvf_v1_11.effective_date.display = function(value)
  return "Effective Date: "..value
end

-- Dissect: Effective Date
tmx_mx_sola_multicast_hsvf_v1_11.effective_date.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.effective_date.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.effective_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.effective_date, range, value, display)

  return offset + length, value
end

-- Currency
tmx_mx_sola_multicast_hsvf_v1_11.currency = {}

-- Size: Currency
tmx_mx_sola_multicast_hsvf_v1_11.currency.size = 3

-- Display: Currency
tmx_mx_sola_multicast_hsvf_v1_11.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
tmx_mx_sola_multicast_hsvf_v1_11.currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.currency, range, value, display)

  return offset + length, value
end

-- Tick Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator = {}

-- Size: Tick Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator.size = 1

-- Display: Tick Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator.display = function(value)
  return "Tick Value Fraction Indicator: "..value
end

-- Dissect: Tick Value Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_value_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Tick Value
tmx_mx_sola_multicast_hsvf_v1_11.tick_value = {}

-- Size: Tick Value
tmx_mx_sola_multicast_hsvf_v1_11.tick_value.size = 6

-- Display: Tick Value
tmx_mx_sola_multicast_hsvf_v1_11.tick_value.display = function(value)
  return "Tick Value: "..value
end

-- Dissect: Tick Value
tmx_mx_sola_multicast_hsvf_v1_11.tick_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.tick_value.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.tick_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_value, range, value, display)

  return offset + length, value
end

-- Contract Size
tmx_mx_sola_multicast_hsvf_v1_11.contract_size = {}

-- Size: Contract Size
tmx_mx_sola_multicast_hsvf_v1_11.contract_size.size = 8

-- Display: Contract Size
tmx_mx_sola_multicast_hsvf_v1_11.contract_size.display = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
tmx_mx_sola_multicast_hsvf_v1_11.contract_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.contract_size.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.contract_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.contract_size, range, value, display)

  return offset + length, value
end

-- External Symbol
tmx_mx_sola_multicast_hsvf_v1_11.external_symbol = {}

-- Size: External Symbol
tmx_mx_sola_multicast_hsvf_v1_11.external_symbol.size = 30

-- Display: External Symbol
tmx_mx_sola_multicast_hsvf_v1_11.external_symbol.display = function(value)
  return "External Symbol: "..value
end

-- Dissect: External Symbol
tmx_mx_sola_multicast_hsvf_v1_11.external_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.external_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.external_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.external_symbol, range, value, display)

  return offset + length, value
end

-- Instrument Id
tmx_mx_sola_multicast_hsvf_v1_11.instrument_id = {}

-- Size: Instrument Id
tmx_mx_sola_multicast_hsvf_v1_11.instrument_id.size = 4

-- Display: Instrument Id
tmx_mx_sola_multicast_hsvf_v1_11.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
tmx_mx_sola_multicast_hsvf_v1_11.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.instrument_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Market Flow
tmx_mx_sola_multicast_hsvf_v1_11.market_flow = {}

-- Size: Market Flow
tmx_mx_sola_multicast_hsvf_v1_11.market_flow.size = 2

-- Display: Market Flow
tmx_mx_sola_multicast_hsvf_v1_11.market_flow.display = function(value)
  return "Market Flow: "..value
end

-- Dissect: Market Flow
tmx_mx_sola_multicast_hsvf_v1_11.market_flow.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.market_flow.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.market_flow.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.market_flow, range, value, display)

  return offset + length, value
end

-- Tick Increment Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator = {}

-- Size: Tick Increment Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.size = 1

-- Display: Tick Increment Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.display = function(value)
  return "Tick Increment Fraction Indicator: "..value
end

-- Dissect: Tick Increment Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_increment_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Tick Increment
tmx_mx_sola_multicast_hsvf_v1_11.tick_increment = {}

-- Size: Tick Increment
tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.size = 6

-- Display: Tick Increment
tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.display = function(value)
  return "Tick Increment: "..value
end

-- Dissect: Tick Increment
tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_increment, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator = {}

-- Size: Minimum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size = 1

-- Display: Minimum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.display = function(value)
  return "Minimum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Minimum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6 = {}

-- Size: Minimum Threshold Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6.size = 6

-- Display: Minimum Threshold Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6.display = function(value)
  return "Minimum Threshold Price X 6: "..value
end

-- Dissect: Minimum Threshold Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_threshold_price_x_6, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator = {}

-- Size: Maximum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size = 1

-- Display: Maximum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.display = function(value)
  return "Maximum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Maximum Threshold Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6 = {}

-- Size: Maximum Threshold Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6.size = 6

-- Display: Maximum Threshold Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6.display = function(value)
  return "Maximum Threshold Price X 6: "..value
end

-- Dissect: Maximum Threshold Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_threshold_price_x_6, range, value, display)

  return offset + length, value
end

-- Minimum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order = {}

-- Size: Minimum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.size = 6

-- Display: Minimum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.display = function(value)
  return "Minimum Number Of Contracts Per Order: "..value
end

-- Dissect: Minimum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Maximum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order = {}

-- Size: Maximum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.size = 6

-- Display: Maximum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.display = function(value)
  return "Maximum Number Of Contracts Per Order: "..value
end

-- Dissect: Maximum Number Of Contracts Per Order
tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Swap Future Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_instrument_keys_message = {}

-- Size: Swap Future Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_instrument_keys_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tenor.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.market_flow.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument_id.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.external_symbol.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.contract_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_value.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.currency.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.effective_date.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.initial_effective_date.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.cash_flow_alignment_date.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.payment_frequency.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.reset_frequency.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount_faction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.day_count_convention.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.first_payment_date.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.next_payment_date.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.first_reset_date.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.next_reset_date.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_date.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_type.size

-- Display: Swap Future Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: A
  index, exchange_i_d = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_sola_multicast_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price X 6: X
  index, maximum_threshold_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price X 6: X
  index, minimum_threshold_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: X
  index, tick_increment_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Market Flow: X
  index, market_flow = tmx_mx_sola_multicast_hsvf_v1_11.market_flow.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument Id: X
  index, instrument_id = tmx_mx_sola_multicast_hsvf_v1_11.instrument_id.dissect(buffer, index, packet, parent)

  -- External Symbol: X
  index, external_symbol = tmx_mx_sola_multicast_hsvf_v1_11.external_symbol.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_sola_multicast_hsvf_v1_11.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_sola_multicast_hsvf_v1_11.tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_sola_multicast_hsvf_v1_11.currency.dissect(buffer, index, packet, parent)

  -- Effective Date: A
  index, effective_date = tmx_mx_sola_multicast_hsvf_v1_11.effective_date.dissect(buffer, index, packet, parent)

  -- Initial Effective Date: A
  index, initial_effective_date = tmx_mx_sola_multicast_hsvf_v1_11.initial_effective_date.dissect(buffer, index, packet, parent)

  -- Cash Flow Alignment Date: A
  index, cash_flow_alignment_date = tmx_mx_sola_multicast_hsvf_v1_11.cash_flow_alignment_date.dissect(buffer, index, packet, parent)

  -- Payment Frequency: X
  index, payment_frequency = tmx_mx_sola_multicast_hsvf_v1_11.payment_frequency.dissect(buffer, index, packet, parent)

  -- Reset Frequency: X
  index, reset_frequency = tmx_mx_sola_multicast_hsvf_v1_11.reset_frequency.dissect(buffer, index, packet, parent)

  -- Notional Principal Amount: N
  index, notional_principal_amount = tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount.dissect(buffer, index, packet, parent)

  -- Notional Principal Amount Faction Indicator: X
  index, notional_principal_amount_faction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.notional_principal_amount_faction_indicator.dissect(buffer, index, packet, parent)

  -- Day Count Convention: A
  index, day_count_convention = tmx_mx_sola_multicast_hsvf_v1_11.day_count_convention.dissect(buffer, index, packet, parent)

  -- First Payment Date: A
  index, first_payment_date = tmx_mx_sola_multicast_hsvf_v1_11.first_payment_date.dissect(buffer, index, packet, parent)

  -- Next Payment Date: A
  index, next_payment_date = tmx_mx_sola_multicast_hsvf_v1_11.next_payment_date.dissect(buffer, index, packet, parent)

  -- First Reset Date: A
  index, first_reset_date = tmx_mx_sola_multicast_hsvf_v1_11.first_reset_date.dissect(buffer, index, packet, parent)

  -- Next Reset Date: A
  index, next_reset_date = tmx_mx_sola_multicast_hsvf_v1_11.next_reset_date.dissect(buffer, index, packet, parent)

  -- Previous Reset Date: A
  index, previous_reset_date = tmx_mx_sola_multicast_hsvf_v1_11.previous_reset_date.dissect(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_sola_multicast_hsvf_v1_11.delivery_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.swap_future_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Allow Implied
tmx_mx_sola_multicast_hsvf_v1_11.strategy_allow_implied = {}

-- Size: Strategy Allow Implied
tmx_mx_sola_multicast_hsvf_v1_11.strategy_allow_implied.size = 1

-- Display: Strategy Allow Implied
tmx_mx_sola_multicast_hsvf_v1_11.strategy_allow_implied.display = function(value)
  if value == "Y" then
    return "Strategy Allow Implied: Yes (Y)"
  end
  if value == "N" then
    return "Strategy Allow Implied: No (N)"
  end

  return "Strategy Allow Implied: Unknown("..value..")"
end

-- Dissect: Strategy Allow Implied
tmx_mx_sola_multicast_hsvf_v1_11.strategy_allow_implied.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.strategy_allow_implied.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.strategy_allow_implied.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_allow_implied, range, value, display)

  return offset + length, value
end

-- Instrument External Code
tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code = {}

-- Size: Instrument External Code
tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.size = 30

-- Display: Instrument External Code
tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.display = function(value)
  return "Instrument External Code: "..value
end

-- Dissect: Instrument External Code
tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_external_code, range, value, display)

  return offset + length, value
end

-- Instrument
tmx_mx_sola_multicast_hsvf_v1_11.instrument = {}

-- Size: Instrument
tmx_mx_sola_multicast_hsvf_v1_11.instrument.size = 4

-- Display: Instrument
tmx_mx_sola_multicast_hsvf_v1_11.instrument.display = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
tmx_mx_sola_multicast_hsvf_v1_11.instrument.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.instrument.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.instrument.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument, range, value, display)

  return offset + length, value
end

-- Market Flow Indicator
tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator = {}

-- Size: Market Flow Indicator
tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator.size = 2

-- Display: Market Flow Indicator
tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator.display = function(value)
  return "Market Flow Indicator: "..value
end

-- Dissect: Market Flow Indicator
tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.market_flow_indicator, range, value, display)

  return offset + length, value
end

-- Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_instrument_keys_message = {}

-- Size: Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_instrument_keys_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strategy_symbol.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strategy_allow_implied.size

-- Display: Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: A
  index, exchange_i_d = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_11.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price X 6: X
  index, maximum_threshold_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price X 6: X
  index, minimum_threshold_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: X
  index, tick_increment_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_11.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Strategy Allow Implied: A
  index, strategy_allow_implied = tmx_mx_sola_multicast_hsvf_v1_11.strategy_allow_implied.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.strategy_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.strategy_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Symbol
tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol = {}

-- Size: Underlying Symbol
tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol.size = 10

-- Display: Underlying Symbol
tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Minimum Threshold Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_n_6 = {}

-- Size: Minimum Threshold Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_n_6.size = 6

-- Display: Minimum Threshold Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_n_6.display = function(value)
  return "Minimum Threshold Price N 6: "..value
end

-- Dissect: Minimum Threshold Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_n_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_n_6.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_n_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_threshold_price_n_6, range, value, display)

  return offset + length, value
end

-- Maximum Threshold Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_n_6 = {}

-- Size: Maximum Threshold Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_n_6.size = 6

-- Display: Maximum Threshold Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_n_6.display = function(value)
  return "Maximum Threshold Price N 6: "..value
end

-- Dissect: Maximum Threshold Price N 6
tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_n_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_n_6.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_n_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_threshold_price_n_6, range, value, display)

  return offset + length, value
end

-- Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_instrument_keys_message = {}

-- Size: Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_instrument_keys_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_n_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_n_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.contract_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_value.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.currency.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_type.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size

-- Display: Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year N 2: N
  index, delivery_year_n_2 = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price N 6: N
  index, maximum_threshold_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_n_6.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price N 6: N
  index, minimum_threshold_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_n_6.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: X
  index, tick_increment_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_11.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_sola_multicast_hsvf_v1_11.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_sola_multicast_hsvf_v1_11.tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_sola_multicast_hsvf_v1_11.currency.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: A
  index, underlying_symbol = tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_sola_multicast_hsvf_v1_11.delivery_type.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year N 2: N
  index, delivery_year_n_2 = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.futures_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.futures_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.futures_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.underlying_instrument_keys_message = {}

-- Size: Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.underlying_instrument_keys_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.size

-- Display: Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.underlying_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.underlying_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_11.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.underlying_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.underlying_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.underlying_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.underlying_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.underlying_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Strike Price Currency
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_currency = {}

-- Size: Strike Price Currency
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_currency.size = 3

-- Display: Strike Price Currency
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_currency.display = function(value)
  return "Strike Price Currency: "..value
end

-- Dissect: Strike Price Currency
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_currency, range, value, display)

  return offset + length, value
end

-- Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_instrument_keys_message = {}

-- Size: Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_instrument_keys_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_currency.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.contract_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_value.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.currency.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_type.size

-- Display: Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: A
  index, strike_price_currency = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price X 6: X
  index, maximum_threshold_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price X 6: X
  index, minimum_threshold_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: X
  index, tick_increment_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_11.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_sola_multicast_hsvf_v1_11.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_sola_multicast_hsvf_v1_11.tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_sola_multicast_hsvf_v1_11.currency.dissect(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_sola_multicast_hsvf_v1_11.delivery_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.future_options_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.future_options_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.future_options_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Type
tmx_mx_sola_multicast_hsvf_v1_11.option_type = {}

-- Size: Option Type
tmx_mx_sola_multicast_hsvf_v1_11.option_type.size = 1

-- Display: Option Type
tmx_mx_sola_multicast_hsvf_v1_11.option_type.display = function(value)
  if value == "A" then
    return "Option Type: American (A)"
  end
  if value == "E" then
    return "Option Type: European (E)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
tmx_mx_sola_multicast_hsvf_v1_11.option_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.option_type.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_type, range, value, display)

  return offset + length, value
end

-- Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.option_instrument_keys_message = {}

-- Size: Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.option_instrument_keys_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_currency.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.option_type.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.option_marker.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_x_10.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.contract_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_value.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.currency.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_type.size

-- Display: Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.option_instrument_keys_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.option_instrument_keys_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Strike Price Currency: A
  index, strike_price_currency = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_currency.dissect(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: X
  index, maximum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_11.maximum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: X
  index, minimum_number_of_contracts_per_order = tmx_mx_sola_multicast_hsvf_v1_11.minimum_number_of_contracts_per_order.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price X 6: X
  index, maximum_threshold_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_x_6.dissect(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: X
  index, maximum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.maximum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price X 6: X
  index, minimum_threshold_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_x_6.dissect(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: X
  index, minimum_threshold_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.minimum_threshold_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Tick Increment: X
  index, tick_increment = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment.dissect(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: X
  index, tick_increment_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.tick_increment_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Option Type: N
  index, option_type = tmx_mx_sola_multicast_hsvf_v1_11.option_type.dissect(buffer, index, packet, parent)

  -- Market Flow Indicator: X
  index, market_flow_indicator = tmx_mx_sola_multicast_hsvf_v1_11.market_flow_indicator.dissect(buffer, index, packet, parent)

  -- Group Instrument: X
  index, group_instrument = tmx_mx_sola_multicast_hsvf_v1_11.group_instrument.dissect(buffer, index, packet, parent)

  -- Instrument: X
  index, instrument = tmx_mx_sola_multicast_hsvf_v1_11.instrument.dissect(buffer, index, packet, parent)

  -- Instrument External Code: X
  index, instrument_external_code = tmx_mx_sola_multicast_hsvf_v1_11.instrument_external_code.dissect(buffer, index, packet, parent)

  -- Option Marker: A
  index, option_marker = tmx_mx_sola_multicast_hsvf_v1_11.option_marker.dissect(buffer, index, packet, parent)

  -- Underlying Symbol Root X 10: X
  index, underlying_symbol_root_x_10 = tmx_mx_sola_multicast_hsvf_v1_11.underlying_symbol_root_x_10.dissect(buffer, index, packet, parent)

  -- Contract Size: N
  index, contract_size = tmx_mx_sola_multicast_hsvf_v1_11.contract_size.dissect(buffer, index, packet, parent)

  -- Tick Value: N
  index, tick_value = tmx_mx_sola_multicast_hsvf_v1_11.tick_value.dissect(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: X
  index, tick_value_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.tick_value_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Currency: A
  index, currency = tmx_mx_sola_multicast_hsvf_v1_11.currency.dissect(buffer, index, packet, parent)

  -- Delivery Type: X
  index, delivery_type = tmx_mx_sola_multicast_hsvf_v1_11.delivery_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Instrument Keys Message
tmx_mx_sola_multicast_hsvf_v1_11.option_instrument_keys_message.dissect = function(buffer, offset, packet, parent)
  if show.option_instrument_keys_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_instrument_keys_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.option_instrument_keys_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.option_instrument_keys_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.option_instrument_keys_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Price Indicator
tmx_mx_sola_multicast_hsvf_v1_11.market_price_indicator = {}

-- Size: Market Price Indicator
tmx_mx_sola_multicast_hsvf_v1_11.market_price_indicator.size = 1

-- Display: Market Price Indicator
tmx_mx_sola_multicast_hsvf_v1_11.market_price_indicator.display = function(value)
  return "Market Price Indicator: "..value
end

-- Dissect: Market Price Indicator
tmx_mx_sola_multicast_hsvf_v1_11.market_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.market_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.market_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.market_price_indicator, range, value, display)

  return offset + length, value
end

-- Swap Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_cancellation_message = {}

-- Size: Swap Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_cancellation_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tenor.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.market_price_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Swap Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_sola_multicast_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Market Price Indicator: X
  index, market_price_indicator = tmx_mx_sola_multicast_hsvf_v1_11.market_price_indicator.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.swap_future_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_cancellation_message = {}

-- Size: Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_cancellation_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.symbol.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_sign.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_cancellation_message = {}

-- Size: Futures Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_cancellation_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Futures Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year N 2: N
  index, delivery_year_n_2 = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.futures_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.price_fraction_indicator = {}

-- Size: Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.price_fraction_indicator.size = 1

-- Display: Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.price_fraction_indicator.display = function(value)
  return "Price Fraction Indicator: "..value
end

-- Dissect: Price Fraction Indicator
tmx_mx_sola_multicast_hsvf_v1_11.price_fraction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.price_fraction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.price_fraction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Price
tmx_mx_sola_multicast_hsvf_v1_11.price = {}

-- Size: Price
tmx_mx_sola_multicast_hsvf_v1_11.price.size = 6

-- Display: Price
tmx_mx_sola_multicast_hsvf_v1_11.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
tmx_mx_sola_multicast_hsvf_v1_11.price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.price.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.price, range, value, display)

  return offset + length, value
end

-- Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_cancellation_message = {}

-- Size: Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_cancellation_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_interest.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_2.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Price: N
  index, price = tmx_mx_sola_multicast_hsvf_v1_11.price.dissect(buffer, index, packet, parent)

  -- Price Fraction Indicator: X
  index, price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Filler 2: X
  index, filler_2 = tmx_mx_sola_multicast_hsvf_v1_11.filler_2.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.future_options_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_cancellation_message = {}

-- Size: Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_cancellation_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_interest.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_cancellation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_cancellation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Cancellation Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_cancellation_message.dissect = function(buffer, offset, packet, parent)
  if show.option_trade_cancellation_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_trade_cancellation_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.option_trade_cancellation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.option_trade_cancellation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.option_trade_cancellation_message.fields(buffer, offset, packet, parent)
  end
end

-- Number Of Ask Orders
tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders = {}

-- Size: Number Of Ask Orders
tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.size = 2

-- Display: Number Of Ask Orders
tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.display = function(value)
  return "Number Of Ask Orders: "..value
end

-- Dissect: Number Of Ask Orders
tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_ask_orders, range, value, display)

  return offset + length, value
end

-- Ask Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6 = {}

-- Size: Ask Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.size = 6

-- Display: Ask Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.display = function(value)
  return "Ask Price X 6: "..value
end

-- Dissect: Ask Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_x_6, range, value, display)

  return offset + length, value
end

-- Number Of Bid Orders
tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders = {}

-- Size: Number Of Bid Orders
tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.size = 2

-- Display: Number Of Bid Orders
tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.display = function(value)
  return "Number Of Bid Orders: "..value
end

-- Dissect: Number Of Bid Orders
tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_bid_orders, range, value, display)

  return offset + length, value
end

-- Bid Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6 = {}

-- Size: Bid Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.size = 6

-- Display: Bid Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.display = function(value)
  return "Bid Price X 6: "..value
end

-- Dissect: Bid Price X 6
tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_x_6, range, value, display)

  return offset + length, value
end

-- Level
tmx_mx_sola_multicast_hsvf_v1_11.level = {}

-- Size: Level
tmx_mx_sola_multicast_hsvf_v1_11.level.size = 1

-- Display: Level
tmx_mx_sola_multicast_hsvf_v1_11.level.display = function(value)
  return "Level: "..value
end

-- Dissect: Level
tmx_mx_sola_multicast_hsvf_v1_11.level.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.level.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.level.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.level, range, value, display)

  return offset + length, value
end

-- Swap Future Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_trading_instrument = {}

-- Size: Swap Future Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_trading_instrument.size =
  tmx_mx_sola_multicast_hsvf_v1_11.level.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.size

-- Display: Swap Future Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_trading_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_trading_instrument.fields = function(buffer, offset, packet, parent, swap_future_market_depth_trading_instrument_index)
  local index = offset

  -- Implicit Swap Future Market Depth Trading Instrument Index
  if swap_future_market_depth_trading_instrument_index ~= nil then
    local iteration = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_market_depth_trading_instrument_index, swap_future_market_depth_trading_instrument_index)
    iteration:set_generated()
  end

  -- Level: X
  index, level = tmx_mx_sola_multicast_hsvf_v1_11.level.dissect(buffer, index, packet, parent)

  -- Bid Price X 6: X
  index, bid_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price X 6: X
  index, ask_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_trading_instrument.dissect = function(buffer, offset, packet, parent, swap_future_market_depth_trading_instrument_index)
  if show.swap_future_market_depth_trading_instrument then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_market_depth_trading_instrument, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_trading_instrument.fields(buffer, offset, packet, parent, swap_future_market_depth_trading_instrument_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_trading_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_trading_instrument.fields(buffer, offset, packet, parent, swap_future_market_depth_trading_instrument_index)
  end
end

-- Number Of Level
tmx_mx_sola_multicast_hsvf_v1_11.number_of_level = {}

-- Size: Number Of Level
tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.size = 1

-- Display: Number Of Level
tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.display = function(value)
  return "Number Of Level: "..value
end

-- Dissect: Number Of Level
tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_level, range, value, display)

  return offset + length, value
end

-- Instrument Status Marker A 1
tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1 = {}

-- Size: Instrument Status Marker A 1
tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.size = 1

-- Display: Instrument Status Marker A 1
tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.display = function(value)
  return "Instrument Status Marker A 1: "..value
end

-- Dissect: Instrument Status Marker A 1
tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_status_marker_a_1, range, value, display)

  return offset + length, value
end

-- Swap Future Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_message = {}

-- Calculate size of: Swap Future Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.tenor.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.size

  -- Calculate field size from count
  local swap_future_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  index = index + swap_future_market_depth_trading_instrument_count * 29

  return index
end

-- Display: Swap Future Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_sola_multicast_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: A
  index, instrument_status_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Swap Future Market Depth Trading Instrument
  for swap_future_market_depth_trading_instrument_index = 1, number_of_level do
    index, swap_future_market_depth_trading_instrument = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_trading_instrument.dissect(buffer, index, packet, parent, swap_future_market_depth_trading_instrument_index)
  end

  return index
end

-- Dissect: Swap Future Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.swap_future_market_depth_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_market_depth_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_message.fields(buffer, offset, packet, parent)
end

-- Level Of Market Depth
tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth = {}

-- Size: Level Of Market Depth
tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth.size = 1

-- Display: Level Of Market Depth
tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth.display = function(value)
  return "Level Of Market Depth: "..value
end

-- Dissect: Level Of Market Depth
tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.level_of_market_depth, range, value, display)

  return offset + length, value
end

-- Strategy Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_trading_instrument = {}

-- Size: Strategy Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_trading_instrument.size =
  tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_sign.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_sign.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.size

-- Display: Strategy Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_trading_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_trading_instrument.fields = function(buffer, offset, packet, parent, strategy_market_depth_trading_instrument_index)
  local index = offset

  -- Implicit Strategy Market Depth Trading Instrument Index
  if strategy_market_depth_trading_instrument_index ~= nil then
    local iteration = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_market_depth_trading_instrument_index, strategy_market_depth_trading_instrument_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Bid Price X 6: X
  index, bid_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Ask Price X 6: X
  index, ask_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_trading_instrument.dissect = function(buffer, offset, packet, parent, strategy_market_depth_trading_instrument_index)
  if show.strategy_market_depth_trading_instrument then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_market_depth_trading_instrument, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_trading_instrument.fields(buffer, offset, packet, parent, strategy_market_depth_trading_instrument_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_trading_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_trading_instrument.fields(buffer, offset, packet, parent, strategy_market_depth_trading_instrument_index)
  end
end

-- Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_message = {}

-- Calculate size of: Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.symbol.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.size

  -- Calculate field size from count
  local strategy_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  index = index + strategy_market_depth_trading_instrument_count * 31

  return index
end

-- Display: Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: A
  index, instrument_status_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Strategy Market Depth Trading Instrument
  for strategy_market_depth_trading_instrument_index = 1, number_of_level do
    index, strategy_market_depth_trading_instrument = tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_trading_instrument.dissect(buffer, index, packet, parent, strategy_market_depth_trading_instrument_index)
  end

  return index
end

-- Dissect: Strategy Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_market_depth_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_market_depth_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_message.fields(buffer, offset, packet, parent)
end

-- Futures Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_trading_instrument = {}

-- Size: Futures Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_trading_instrument.size =
  tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.size

-- Display: Futures Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_trading_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_trading_instrument.fields = function(buffer, offset, packet, parent, futures_market_depth_trading_instrument_index)
  local index = offset

  -- Implicit Futures Market Depth Trading Instrument Index
  if futures_market_depth_trading_instrument_index ~= nil then
    local iteration = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_market_depth_trading_instrument_index, futures_market_depth_trading_instrument_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Bid Price X 6: X
  index, bid_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price N 6: N
  index, ask_price_n_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_n_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_trading_instrument.dissect = function(buffer, offset, packet, parent, futures_market_depth_trading_instrument_index)
  if show.futures_market_depth_trading_instrument then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_market_depth_trading_instrument, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_trading_instrument.fields(buffer, offset, packet, parent, futures_market_depth_trading_instrument_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_trading_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_trading_instrument.fields(buffer, offset, packet, parent, futures_market_depth_trading_instrument_index)
  end
end

-- Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_message = {}

-- Calculate size of: Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.size

  -- Calculate field size from count
  local futures_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  index = index + futures_market_depth_trading_instrument_count * 29

  return index
end

-- Display: Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year N 2: N
  index, delivery_year_n_2 = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: A
  index, instrument_status_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Futures Market Depth Trading Instrument
  for futures_market_depth_trading_instrument_index = 1, number_of_level do
    index, futures_market_depth_trading_instrument = tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_trading_instrument.dissect(buffer, index, packet, parent, futures_market_depth_trading_instrument_index)
  end

  return index
end

-- Dissect: Futures Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.futures_market_depth_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_market_depth_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_message.fields(buffer, offset, packet, parent)
end

-- Future Options Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_trading_instrument = {}

-- Size: Future Options Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_trading_instrument.size =
  tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.size

-- Display: Future Options Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_trading_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_trading_instrument.fields = function(buffer, offset, packet, parent, future_options_market_depth_trading_instrument_index)
  local index = offset

  -- Implicit Future Options Market Depth Trading Instrument Index
  if future_options_market_depth_trading_instrument_index ~= nil then
    local iteration = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_market_depth_trading_instrument_index, future_options_market_depth_trading_instrument_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Bid Price X 6: X
  index, bid_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price X 6: X
  index, ask_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_trading_instrument.dissect = function(buffer, offset, packet, parent, future_options_market_depth_trading_instrument_index)
  if show.future_options_market_depth_trading_instrument then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_market_depth_trading_instrument, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_trading_instrument.fields(buffer, offset, packet, parent, future_options_market_depth_trading_instrument_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_trading_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_trading_instrument.fields(buffer, offset, packet, parent, future_options_market_depth_trading_instrument_index)
  end
end

-- Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_message = {}

-- Calculate size of: Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.size

  -- Calculate field size from count
  local future_options_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  index = index + future_options_market_depth_trading_instrument_count * 29

  return index
end

-- Display: Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: A
  index, instrument_status_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Future Options Market Depth Trading Instrument
  for future_options_market_depth_trading_instrument_index = 1, number_of_level do
    index, future_options_market_depth_trading_instrument = tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_trading_instrument.dissect(buffer, index, packet, parent, future_options_market_depth_trading_instrument_index)
  end

  return index
end

-- Dissect: Future Options Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.future_options_market_depth_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_market_depth_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_message.fields(buffer, offset, packet, parent)
end

-- Option Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_trading_instrument = {}

-- Size: Option Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_trading_instrument.size =
  tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.size

-- Display: Option Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_trading_instrument.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_trading_instrument.fields = function(buffer, offset, packet, parent, option_market_depth_trading_instrument_index)
  local index = offset

  -- Implicit Option Market Depth Trading Instrument Index
  if option_market_depth_trading_instrument_index ~= nil then
    local iteration = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_market_depth_trading_instrument_index, option_market_depth_trading_instrument_index)
    iteration:set_generated()
  end

  -- Level Of Market Depth: X
  index, level_of_market_depth = tmx_mx_sola_multicast_hsvf_v1_11.level_of_market_depth.dissect(buffer, index, packet, parent)

  -- Bid Price X 6: X
  index, bid_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Number Of Bid Orders: X
  index, number_of_bid_orders = tmx_mx_sola_multicast_hsvf_v1_11.number_of_bid_orders.dissect(buffer, index, packet, parent)

  -- Ask Price X 6: X
  index, ask_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Number Of Ask Orders: X
  index, number_of_ask_orders = tmx_mx_sola_multicast_hsvf_v1_11.number_of_ask_orders.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Market Depth Trading Instrument
tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_trading_instrument.dissect = function(buffer, offset, packet, parent, option_market_depth_trading_instrument_index)
  if show.option_market_depth_trading_instrument then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_market_depth_trading_instrument, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_trading_instrument.fields(buffer, offset, packet, parent, option_market_depth_trading_instrument_index)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_trading_instrument.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_trading_instrument.fields(buffer, offset, packet, parent, option_market_depth_trading_instrument_index)
  end
end

-- Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_message = {}

-- Calculate size of: Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_message.size = function(buffer, offset)
  local index = 0

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.size

  index = index + tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.size

  -- Calculate field size from count
  local option_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  index = index + option_market_depth_trading_instrument_count * 29

  return index
end

-- Display: Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: A
  index, instrument_status_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.dissect(buffer, index, packet, parent)

  -- Number Of Level: N
  index, number_of_level = tmx_mx_sola_multicast_hsvf_v1_11.number_of_level.dissect(buffer, index, packet, parent)

  -- Repeating: Option Market Depth Trading Instrument
  for option_market_depth_trading_instrument_index = 1, number_of_level do
    index, option_market_depth_trading_instrument = tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_trading_instrument.dissect(buffer, index, packet, parent, option_market_depth_trading_instrument_index)
  end

  return index
end

-- Dissect: Option Market Depth Message
tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.option_market_depth_message then
    local length = tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_message.display(buffer, packet, parent)
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_market_depth_message, range, display)
  end

  return tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_message.fields(buffer, offset, packet, parent)
end

-- Instrument Status Marker X 1
tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_x_1 = {}

-- Size: Instrument Status Marker X 1
tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_x_1.size = 1

-- Display: Instrument Status Marker X 1
tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_x_1.display = function(value)
  return "Instrument Status Marker X 1: "..value
end

-- Dissect: Instrument Status Marker X 1
tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_x_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_x_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_x_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_status_marker_x_1, range, value, display)

  return offset + length, value
end

-- Swap Future Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_quote_message = {}

-- Size: Swap Future Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_quote_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tenor.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_x_1.size

-- Display: Swap Future Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_sola_multicast_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Price X 6: X
  index, bid_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price X 6: X
  index, ask_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker X 1: X
  index, instrument_status_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_x_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.swap_future_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_quote_message = {}

-- Size: Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_quote_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.symbol.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_sign.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_sign.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_x_1.size

-- Display: Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Sign: X
  index, bid_price_sign = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_sign.dissect(buffer, index, packet, parent)

  -- Bid Price X 6: X
  index, bid_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price Sign: X
  index, ask_price_sign = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_sign.dissect(buffer, index, packet, parent)

  -- Ask Price X 6: X
  index, ask_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker X 1: X
  index, instrument_status_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_x_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.strategy_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.strategy_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_quote_message = {}

-- Size: Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_quote_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.size

-- Display: Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year N 2: N
  index, delivery_year_n_2 = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Bid Price X 6: X
  index, bid_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price X 6: X
  index, ask_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: A
  index, instrument_status_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.futures_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.futures_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.futures_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_quote_message = {}

-- Size: Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_quote_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size

-- Display: Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: A
  index, exchange_i_d = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Price X 6: X
  index, bid_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price X 6: X
  index, ask_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: A
  index, instrument_status_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.future_options_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.future_options_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.future_options_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.option_quote_message = {}

-- Size: Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.option_quote_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.bid_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.ask_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.size

-- Display: Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.option_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.option_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: A
  index, exchange_i_d = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Bid Price X 6: X
  index, bid_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_x_6.dissect(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: X
  index, bid_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.bid_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Bid Size: X
  index, bid_size = tmx_mx_sola_multicast_hsvf_v1_11.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price X 6: X
  index, ask_price_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_x_6.dissect(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: X
  index, ask_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.ask_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Ask Size: X
  index, ask_size = tmx_mx_sola_multicast_hsvf_v1_11.ask_size.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: A
  index, instrument_status_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.instrument_status_marker_a_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Quote Message
tmx_mx_sola_multicast_hsvf_v1_11.option_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.option_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_quote_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.option_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.option_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.option_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Scheduled Status Change Time
tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time = {}

-- Size: Scheduled Status Change Time
tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.size = 6

-- Display: Scheduled Status Change Time
tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.display = function(value)
  return "Scheduled Status Change Time: "..value
end

-- Dissect: Scheduled Status Change Time
tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.scheduled_status_change_time, range, value, display)

  return offset + length, value
end

-- Series Status
tmx_mx_sola_multicast_hsvf_v1_11.series_status = {}

-- Size: Series Status
tmx_mx_sola_multicast_hsvf_v1_11.series_status.size = 1

-- Display: Series Status
tmx_mx_sola_multicast_hsvf_v1_11.series_status.display = function(value)
  return "Series Status: "..value
end

-- Dissect: Series Status
tmx_mx_sola_multicast_hsvf_v1_11.series_status.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.series_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.series_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.series_status, range, value, display)

  return offset + length, value
end

-- Instrument Schedule Notice Swap Future Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_swap_future_message = {}

-- Size: Instrument Schedule Notice Swap Future Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_swap_future_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tenor.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.series_status.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Swap Future Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_swap_future_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Swap Future Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_swap_future_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_sola_multicast_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_sola_multicast_hsvf_v1_11.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Swap Future Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_swap_future_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_schedule_notice_swap_future_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_swap_future_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_swap_future_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_swap_future_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_swap_future_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_strategy_message = {}

-- Size: Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_strategy_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strategy_symbol.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.series_status.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_strategy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_strategy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: X
  index, strategy_symbol = tmx_mx_sola_multicast_hsvf_v1_11.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_sola_multicast_hsvf_v1_11.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Strategy Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_strategy_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_schedule_notice_strategy_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_strategy_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_strategy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_strategy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_strategy_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_future_message = {}

-- Size: Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_future_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.series_status.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_future_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_future_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year N 2: N
  index, delivery_year_n_2 = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_sola_multicast_hsvf_v1_11.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Future Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_future_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_schedule_notice_future_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_future_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_future_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_future_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_future_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_futures_option_message = {}

-- Size: Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_futures_option_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.series_status.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_futures_option_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_futures_option_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_sola_multicast_hsvf_v1_11.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Futures Option Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_futures_option_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_schedule_notice_futures_option_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_futures_option_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_futures_option_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_futures_option_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_futures_option_message.fields(buffer, offset, packet, parent)
  end
end

-- Strike Price X 7
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_x_7 = {}

-- Size: Strike Price X 7
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_x_7.size = 7

-- Display: Strike Price X 7
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_x_7.display = function(value)
  return "Strike Price X 7: "..value
end

-- Dissect: Strike Price X 7
tmx_mx_sola_multicast_hsvf_v1_11.strike_price_x_7.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_x_7.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_x_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_x_7, range, value, display)

  return offset + length, value
end

-- Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_option_message = {}

-- Size: Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_option_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_x_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.series_status.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.size

-- Display: Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_option_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_option_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price X 7: X
  index, strike_price_x_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_x_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Series Status: A
  index, series_status = tmx_mx_sola_multicast_hsvf_v1_11.series_status.dissect(buffer, index, packet, parent)

  -- Scheduled Status Change Time: N
  index, scheduled_status_change_time = tmx_mx_sola_multicast_hsvf_v1_11.scheduled_status_change_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Option Message
tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_option_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_schedule_notice_option_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_option_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_option_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_option_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_option_message.fields(buffer, offset, packet, parent)
  end
end

-- Requested Market Side
tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side = {}

-- Size: Requested Market Side
tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.size = 1

-- Display: Requested Market Side
tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.display = function(value)
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
tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.requested_market_side, range, value, display)

  return offset + length, value
end

-- Requested Size
tmx_mx_sola_multicast_hsvf_v1_11.requested_size = {}

-- Size: Requested Size
tmx_mx_sola_multicast_hsvf_v1_11.requested_size.size = 8

-- Display: Requested Size
tmx_mx_sola_multicast_hsvf_v1_11.requested_size.display = function(value)
  return "Requested Size: "..value
end

-- Dissect: Requested Size
tmx_mx_sola_multicast_hsvf_v1_11.requested_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.requested_size.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.requested_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.requested_size, range, value, display)

  return offset + length, value
end

-- Swap Future Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_rfq_message = {}

-- Size: Swap Future Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_rfq_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tenor.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.requested_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.size

-- Display: Swap Future Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_sola_multicast_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_sola_multicast_hsvf_v1_11.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.swap_future_rfq_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_rfq_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_rfq_message = {}

-- Size: Strategy Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_rfq_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.symbol.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.requested_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.size

-- Display: Strategy Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_sola_multicast_hsvf_v1_11.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_rfq_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_rfq_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.strategy_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.strategy_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_rfq_message = {}

-- Size: Futures Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_rfq_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.requested_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.size

-- Display: Futures Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year N 2: N
  index, delivery_year_n_2 = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_sola_multicast_hsvf_v1_11.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.futures_rfq_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_rfq_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.futures_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.futures_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_rfq_message = {}

-- Size: Future Options Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_rfq_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.requested_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.size

-- Display: Future Options Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: A
  index, exchange_i_d = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_sola_multicast_hsvf_v1_11.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.future_options_rfq_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_rfq_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.future_options_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.future_options_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.option_rfq_message = {}

-- Size: Option Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.option_rfq_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.requested_size.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.size

-- Display: Option Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.option_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.option_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: A
  index, exchange_i_d = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Requested Size: X
  index, requested_size = tmx_mx_sola_multicast_hsvf_v1_11.requested_size.dissect(buffer, index, packet, parent)

  -- Requested Market Side: X
  index, requested_market_side = tmx_mx_sola_multicast_hsvf_v1_11.requested_market_side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Rfq Message
tmx_mx_sola_multicast_hsvf_v1_11.option_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.option_rfq_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_rfq_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.option_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.option_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.option_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Swap Future Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_message = {}

-- Size: Swap Future Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.tenor.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Swap Future Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Swap Future Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: A
  index, exchange_i_d = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Tenor: N
  index, tenor = tmx_mx_sola_multicast_hsvf_v1_11.tenor.dissect(buffer, index, packet, parent)

  -- Fixed Rate: N
  index, fixed_rate = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate.dissect(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: X
  index, fixed_rate_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.fixed_rate_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Volume: N
  index, trade_volume = tmx_mx_sola_multicast_hsvf_v1_11.trade_volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.swap_future_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_trade_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_message = {}

-- Size: Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.symbol.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_sign.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: A
  index, exchange_i_d = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.dissect(buffer, index, packet, parent)

  -- Symbol: X
  index, symbol = tmx_mx_sola_multicast_hsvf_v1_11.symbol.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price Sign: X
  index, trade_price_sign = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_sign.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.strategy_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_trade_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_message = {}

-- Size: Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: A
  index, exchange_i_d = tmx_mx_sola_multicast_hsvf_v1_11.exchange_i_d.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Delivery Month: A
  index, delivery_month = tmx_mx_sola_multicast_hsvf_v1_11.delivery_month.dissect(buffer, index, packet, parent)

  -- Delivery Year N 2: N
  index, delivery_year_n_2 = tmx_mx_sola_multicast_hsvf_v1_11.delivery_year_n_2.dissect(buffer, index, packet, parent)

  -- Delivery Day: N
  index, delivery_day = tmx_mx_sola_multicast_hsvf_v1_11.delivery_day.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign X 1: X
  index, net_change_sign_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_x_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: X
  index, price_indicator_marker_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_x_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.futures_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_trade_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_message = {}

-- Size: Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_interest.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_2.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol A 6: A
  index, root_symbol_a_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_a_6.dissect(buffer, index, packet, parent)

  -- Contract Month Code: A
  index, contract_month_code = tmx_mx_sola_multicast_hsvf_v1_11.contract_month_code.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Call Put Code: A
  index, call_put_code = tmx_mx_sola_multicast_hsvf_v1_11.call_put_code.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.dissect(buffer, index, packet, parent)

  -- Net Change Sign A 1: A
  index, net_change_sign_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator A 1: A
  index, net_change_fraction_indicator_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_a_1.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Filler 2: X
  index, filler_2 = tmx_mx_sola_multicast_hsvf_v1_11.filler_2.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.future_options_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_trade_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_message = {}

-- Size: Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_message.size =
  tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.volume.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_6.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.timestamp.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.open_interest.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.filler_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.trade_number.size

-- Display: Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: A
  index, exchange_id_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.exchange_id_a_1.dissect(buffer, index, packet, parent)

  -- Root Symbol X 6: X
  index, root_symbol_x_6 = tmx_mx_sola_multicast_hsvf_v1_11.root_symbol_x_6.dissect(buffer, index, packet, parent)

  -- Expiry Month: A
  index, expiry_month = tmx_mx_sola_multicast_hsvf_v1_11.expiry_month.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Strike Price N 7: N
  index, strike_price_n_7 = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_n_7.dissect(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: X
  index, strike_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.strike_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Expiry Year: N
  index, expiry_year = tmx_mx_sola_multicast_hsvf_v1_11.expiry_year.dissect(buffer, index, packet, parent)

  -- Expiry Day: N
  index, expiry_day = tmx_mx_sola_multicast_hsvf_v1_11.expiry_day.dissect(buffer, index, packet, parent)

  -- Volume: N
  index, volume = tmx_mx_sola_multicast_hsvf_v1_11.volume.dissect(buffer, index, packet, parent)

  -- Trade Price: N
  index, trade_price = tmx_mx_sola_multicast_hsvf_v1_11.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: X
  index, trade_price_fraction_indicator = tmx_mx_sola_multicast_hsvf_v1_11.trade_price_fraction_indicator.dissect(buffer, index, packet, parent)

  -- Net Change Sign A 1: A
  index, net_change_sign_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_sign_a_1.dissect(buffer, index, packet, parent)

  -- Net Change: N
  index, net_change = tmx_mx_sola_multicast_hsvf_v1_11.net_change.dissect(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: X
  index, net_change_fraction_indicator_x_1 = tmx_mx_sola_multicast_hsvf_v1_11.net_change_fraction_indicator_x_1.dissect(buffer, index, packet, parent)

  -- Filler 6: N
  index, filler_6 = tmx_mx_sola_multicast_hsvf_v1_11.filler_6.dissect(buffer, index, packet, parent)

  -- Timestamp: N
  index, timestamp = tmx_mx_sola_multicast_hsvf_v1_11.timestamp.dissect(buffer, index, packet, parent)

  -- Open Interest: N
  index, open_interest = tmx_mx_sola_multicast_hsvf_v1_11.open_interest.dissect(buffer, index, packet, parent)

  -- Filler 1: A
  index, filler_1 = tmx_mx_sola_multicast_hsvf_v1_11.filler_1.dissect(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: A
  index, price_indicator_marker_a_1 = tmx_mx_sola_multicast_hsvf_v1_11.price_indicator_marker_a_1.dissect(buffer, index, packet, parent)

  -- Trade Number: X
  index, trade_number = tmx_mx_sola_multicast_hsvf_v1_11.trade_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Message
tmx_mx_sola_multicast_hsvf_v1_11.option_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.option_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.option_trade_message, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.option_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.option_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.option_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Body
tmx_mx_sola_multicast_hsvf_v1_11.message_body = {}

-- Size: Message Body
tmx_mx_sola_multicast_hsvf_v1_11.message_body.size = function(buffer, offset, message_type)
  -- Size of Option Trade Message
  if message_type == "C" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_trade_message.size
  end
  -- Size of Future Options Trade Message
  if message_type == "CB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_message.size
  end
  -- Size of Futures Trade Message
  if message_type == "CF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_message.size
  end
  -- Size of Strategy Trade Message
  if message_type == "CS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_message.size
  end
  -- Size of Swap Future Trade Message
  if message_type == "CW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_message.size
  end
  -- Size of Option Rfq Message
  if message_type == "D" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_rfq_message.size
  end
  -- Size of Future Options Rfq Message
  if message_type == "DB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_rfq_message.size
  end
  -- Size of Futures Rfq Message
  if message_type == "DF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_rfq_message.size
  end
  -- Size of Strategy Rfq Message
  if message_type == "DS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_rfq_message.size
  end
  -- Size of Swap Future Rfq Message
  if message_type == "DW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_rfq_message.size
  end
  -- Size of Instrument Schedule Notice Option Message
  if message_type == "E" then
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_option_message.size
  end
  -- Size of Instrument Schedule Notice Futures Option Message
  if message_type == "EB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_futures_option_message.size
  end
  -- Size of Instrument Schedule Notice Future Message
  if message_type == "EF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_future_message.size
  end
  -- Size of Instrument Schedule Notice Strategy Message
  if message_type == "ES" then
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_strategy_message.size
  end
  -- Size of Instrument Schedule Notice Swap Future Message
  if message_type == "EW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_swap_future_message.size
  end
  -- Size of Option Quote Message
  if message_type == "F" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_quote_message.size
  end
  -- Size of Future Options Quote Message
  if message_type == "FB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_quote_message.size
  end
  -- Size of Futures Quote Message
  if message_type == "FF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_quote_message.size
  end
  -- Size of Strategy Quote Message
  if message_type == "FS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_quote_message.size
  end
  -- Size of Swap Future Quote Message
  if message_type == "FW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_quote_message.size
  end
  -- Size of Option Market Depth Message
  if message_type == "H" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_message.size(buffer, offset)
  end
  -- Size of Future Options Market Depth Message
  if message_type == "HB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_message.size(buffer, offset)
  end
  -- Size of Futures Market Depth Message
  if message_type == "HF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_message.size(buffer, offset)
  end
  -- Size of Strategy Market Depth Message
  if message_type == "HS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_message.size(buffer, offset)
  end
  -- Size of Swap Future Market Depth Message
  if message_type == "HW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_message.size(buffer, offset)
  end
  -- Size of Option Trade Cancellation Message
  if message_type == "I" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_trade_cancellation_message.size
  end
  -- Size of Future Options Trade Cancellation Message
  if message_type == "IB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_cancellation_message.size
  end
  -- Size of Futures Trade Cancellation Message
  if message_type == "IF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_cancellation_message.size
  end
  -- Size of Strategy Trade Cancellation Message
  if message_type == "IS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_cancellation_message.size
  end
  -- Size of Swap Future Trade Cancellation Message
  if message_type == "IW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_cancellation_message.size
  end
  -- Size of Option Instrument Keys Message
  if message_type == "J" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_instrument_keys_message.size
  end
  -- Size of Future Options Instrument Keys Message
  if message_type == "JB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_instrument_keys_message.size
  end
  -- Size of Underlying Instrument Keys Message
  if message_type == "JE" then
    return tmx_mx_sola_multicast_hsvf_v1_11.underlying_instrument_keys_message.size
  end
  -- Size of Futures Instrument Keys Message
  if message_type == "JF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_instrument_keys_message.size
  end
  -- Size of Strategy Instrument Keys Message
  if message_type == "JS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_instrument_keys_message.size
  end
  -- Size of Swap Future Instrument Keys Message
  if message_type == "JW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_instrument_keys_message.size
  end
  -- Size of Option Summary Message
  if message_type == "N" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_summary_message.size
  end
  -- Size of Future Options Summary Message
  if message_type == "NB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_summary_message.size
  end
  -- Size of Futures Summary Message
  if message_type == "NF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_summary_message.size
  end
  -- Size of Strategy Summary Message
  if message_type == "NS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_message.size(buffer, offset)
  end
  -- Size of Swap Future Summary Message
  if message_type == "NW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_summary_message.size
  end
  -- Size of Beginning Of Options Summary Message
  if message_type == "Q" then
    return tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_options_summary_message.size
  end
  -- Size of Beginning Of Future Options Summary Message
  if message_type == "QB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_future_options_summary_message.size
  end
  -- Size of Beginning Of Futures Summary Message
  if message_type == "QF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_futures_summary_message.size
  end
  -- Size of Beginning Of Strategy Summary Message
  if message_type == "QS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_strategy_summary_message.size
  end
  -- Size of Swap Future Beginning Of Summary Message
  if message_type == "QW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_beginning_of_summary_message.size
  end
  -- Size of Option Trade Correction Message
  if message_type == "X" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_trade_correction_message.size
  end
  -- Size of Future Options Trade Correction Message
  if message_type == "XB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_correction_message.size
  end
  -- Size of Futures Trade Correction Message
  if message_type == "XF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_correction_message.size
  end
  -- Size of Strategy Trade Correction Message
  if message_type == "XS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_correction_message.size
  end
  -- Size of Swap Future Trade Correction Message
  if message_type == "XW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_correction_message.size
  end
  -- Size of Group Status Message
  if message_type == "GR" then
    return tmx_mx_sola_multicast_hsvf_v1_11.group_status_message.size
  end
  -- Size of Strategies Message
  if message_type == "GS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategies_message.size
  end
  -- Size of Bulletins Message
  if message_type == "L" then
    return tmx_mx_sola_multicast_hsvf_v1_11.bulletins_message.size(buffer, offset)
  end
  -- Size of End Of Sales Message
  if message_type == "S" then
    return tmx_mx_sola_multicast_hsvf_v1_11.end_of_sales_message.size
  end
  -- Size of Tick Table Message
  if message_type == "TT" then
    return tmx_mx_sola_multicast_hsvf_v1_11.tick_table_message.size(buffer, offset)
  end
  -- Size of End Of Transmission Message
  if message_type == "U" then
    return tmx_mx_sola_multicast_hsvf_v1_11.end_of_transmission_message.size
  end
  -- Size of Circuit Assurance Message
  if message_type == "V" then
    return tmx_mx_sola_multicast_hsvf_v1_11.circuit_assurance_message.size
  end

  return 0
end

-- Display: Message Body
tmx_mx_sola_multicast_hsvf_v1_11.message_body.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Body
tmx_mx_sola_multicast_hsvf_v1_11.message_body.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Option Trade Message
  if message_type == "C" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Message
  if message_type == "CB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Message
  if message_type == "CF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Message
  if message_type == "CS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Trade Message
  if message_type == "CW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Rfq Message
  if message_type == "D" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Rfq Message
  if message_type == "DB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Rfq Message
  if message_type == "DF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Rfq Message
  if message_type == "DS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Rfq Message
  if message_type == "DW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Option Message
  if message_type == "E" then
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_option_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Futures Option Message
  if message_type == "EB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_futures_option_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Future Message
  if message_type == "EF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_future_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Strategy Message
  if message_type == "ES" then
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_strategy_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Swap Future Message
  if message_type == "EW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.instrument_schedule_notice_swap_future_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Quote Message
  if message_type == "F" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Quote Message
  if message_type == "FB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Quote Message
  if message_type == "FF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Quote Message
  if message_type == "FS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Quote Message
  if message_type == "FW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Market Depth Message
  if message_type == "H" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Market Depth Message
  if message_type == "HB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Market Depth Message
  if message_type == "HF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Market Depth Message
  if message_type == "HS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Market Depth Message
  if message_type == "HW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_market_depth_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Cancellation Message
  if message_type == "I" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Cancellation Message
  if message_type == "IB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Cancellation Message
  if message_type == "IF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Cancellation Message
  if message_type == "IS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Trade Cancellation Message
  if message_type == "IW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_cancellation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Instrument Keys Message
  if message_type == "J" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Instrument Keys Message
  if message_type == "JB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Instrument Keys Message
  if message_type == "JE" then
    return tmx_mx_sola_multicast_hsvf_v1_11.underlying_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Keys Message
  if message_type == "JF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Instrument Keys Message
  if message_type == "JS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Instrument Keys Message
  if message_type == "JW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_instrument_keys_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Summary Message
  if message_type == "N" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Summary Message
  if message_type == "NB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Summary Message
  if message_type == "NF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Summary Message
  if message_type == "NS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Summary Message
  if message_type == "NW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Options Summary Message
  if message_type == "Q" then
    return tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_options_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Future Options Summary Message
  if message_type == "QB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_future_options_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Futures Summary Message
  if message_type == "QF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_futures_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Strategy Summary Message
  if message_type == "QS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.beginning_of_strategy_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Beginning Of Summary Message
  if message_type == "QW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_beginning_of_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Correction Message
  if message_type == "X" then
    return tmx_mx_sola_multicast_hsvf_v1_11.option_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Correction Message
  if message_type == "XB" then
    return tmx_mx_sola_multicast_hsvf_v1_11.future_options_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Correction Message
  if message_type == "XF" then
    return tmx_mx_sola_multicast_hsvf_v1_11.futures_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Correction Message
  if message_type == "XS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategy_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Trade Correction Message
  if message_type == "XW" then
    return tmx_mx_sola_multicast_hsvf_v1_11.swap_future_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Group Status Message
  if message_type == "GR" then
    return tmx_mx_sola_multicast_hsvf_v1_11.group_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strategies Message
  if message_type == "GS" then
    return tmx_mx_sola_multicast_hsvf_v1_11.strategies_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bulletins Message
  if message_type == "L" then
    return tmx_mx_sola_multicast_hsvf_v1_11.bulletins_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Sales Message
  if message_type == "S" then
    return tmx_mx_sola_multicast_hsvf_v1_11.end_of_sales_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Table Message
  if message_type == "TT" then
    return tmx_mx_sola_multicast_hsvf_v1_11.tick_table_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmission Message
  if message_type == "U" then
    return tmx_mx_sola_multicast_hsvf_v1_11.end_of_transmission_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Circuit Assurance Message
  if message_type == "V" then
    return tmx_mx_sola_multicast_hsvf_v1_11.circuit_assurance_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Body
tmx_mx_sola_multicast_hsvf_v1_11.message_body.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.message_body then
    return tmx_mx_sola_multicast_hsvf_v1_11.message_body.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = tmx_mx_sola_multicast_hsvf_v1_11.message_body.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = tmx_mx_sola_multicast_hsvf_v1_11.message_body.display(buffer, packet, parent)
  local element = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.message_body, range, display)

  return tmx_mx_sola_multicast_hsvf_v1_11.message_body.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
tmx_mx_sola_multicast_hsvf_v1_11.message_type = {}

-- Size: Message Type
tmx_mx_sola_multicast_hsvf_v1_11.message_type.size = 2

-- Display: Message Type
tmx_mx_sola_multicast_hsvf_v1_11.message_type.display = function(value)
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
  if value == "CW" then
    return "Message Type: Swap Future Trade Message (CW)"
  end
  if value == "D" then
    return "Message Type: Option Rfq Message (D)"
  end
  if value == "DB" then
    return "Message Type: Future Options Rfq Message (DB)"
  end
  if value == "DF" then
    return "Message Type: Futures Rfq Message (DF)"
  end
  if value == "DS" then
    return "Message Type: Strategy Rfq Message (DS)"
  end
  if value == "DW" then
    return "Message Type: Swap Future Rfq Message (DW)"
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
  if value == "EW" then
    return "Message Type: Instrument Schedule Notice Swap Future Message (EW)"
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
  if value == "FW" then
    return "Message Type: Swap Future Quote Message (FW)"
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
  if value == "HW" then
    return "Message Type: Swap Future Market Depth Message (HW)"
  end
  if value == "I" then
    return "Message Type: Option Trade Cancellation Message (I)"
  end
  if value == "IB" then
    return "Message Type: Future Options Trade Cancellation Message (IB)"
  end
  if value == "IF" then
    return "Message Type: Futures Trade Cancellation Message (IF)"
  end
  if value == "IS" then
    return "Message Type: Strategy Trade Cancellation Message (IS)"
  end
  if value == "IW" then
    return "Message Type: Swap Future Trade Cancellation Message (IW)"
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
  if value == "JW" then
    return "Message Type: Swap Future Instrument Keys Message (JW)"
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
  if value == "NW" then
    return "Message Type: Swap Future Summary Message (NW)"
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
  if value == "QW" then
    return "Message Type: Swap Future Beginning Of Summary Message (QW)"
  end
  if value == "X" then
    return "Message Type: Option Trade Correction Message (X)"
  end
  if value == "XB" then
    return "Message Type: Future Options Trade Correction Message (XB)"
  end
  if value == "XF" then
    return "Message Type: Futures Trade Correction Message (XF)"
  end
  if value == "XS" then
    return "Message Type: Strategy Trade Correction Message (XS)"
  end
  if value == "XW" then
    return "Message Type: Swap Future Trade Correction Message (XW)"
  end
  if value == "GR" then
    return "Message Type: Group Status Message (GR)"
  end
  if value == "GS" then
    return "Message Type: Strategies Message (GS)"
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

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
tmx_mx_sola_multicast_hsvf_v1_11.message_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.message_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_mx_sola_multicast_hsvf_v1_11.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.message_type, range, value, display)

  return offset + length, value
end

-- Sequence Number
tmx_mx_sola_multicast_hsvf_v1_11.sequence_number = {}

-- Size: Sequence Number
tmx_mx_sola_multicast_hsvf_v1_11.sequence_number.size = 9

-- Display: Sequence Number
tmx_mx_sola_multicast_hsvf_v1_11.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
tmx_mx_sola_multicast_hsvf_v1_11.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.sequence_number.size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = tmx_mx_sola_multicast_hsvf_v1_11.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Header
tmx_mx_sola_multicast_hsvf_v1_11.message_header = {}

-- Size: Message Header
tmx_mx_sola_multicast_hsvf_v1_11.message_header.size =
  tmx_mx_sola_multicast_hsvf_v1_11.sequence_number.size + 
  tmx_mx_sola_multicast_hsvf_v1_11.message_type.size

-- Display: Message Header
tmx_mx_sola_multicast_hsvf_v1_11.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
tmx_mx_sola_multicast_hsvf_v1_11.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 9 Byte Ascii String
  index, sequence_number = tmx_mx_sola_multicast_hsvf_v1_11.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Ascii String Enum with 58 values
  index, message_type = tmx_mx_sola_multicast_hsvf_v1_11.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
tmx_mx_sola_multicast_hsvf_v1_11.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.message_header, buffer(offset, 0))
    local index = tmx_mx_sola_multicast_hsvf_v1_11.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_mx_sola_multicast_hsvf_v1_11.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_mx_sola_multicast_hsvf_v1_11.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Hsvf Stx
tmx_mx_sola_multicast_hsvf_v1_11.hsvf_stx = {}

-- Size: Hsvf Stx
tmx_mx_sola_multicast_hsvf_v1_11.hsvf_stx.size = 1

-- Display: Hsvf Stx
tmx_mx_sola_multicast_hsvf_v1_11.hsvf_stx.display = function(value)
  if value == 2 then
    return "Hsvf Stx: Stx"
  end

  return "Hsvf Stx: Unknown("..value..")"
end

-- Dissect: Hsvf Stx
tmx_mx_sola_multicast_hsvf_v1_11.hsvf_stx.dissect = function(buffer, offset, packet, parent)
  local length = tmx_mx_sola_multicast_hsvf_v1_11.hsvf_stx.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_mx_sola_multicast_hsvf_v1_11.hsvf_stx.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11.fields.hsvf_stx, range, value, display)

  return offset + length, value
end

-- Packet
tmx_mx_sola_multicast_hsvf_v1_11.packet = {}

-- Dissect Packet
tmx_mx_sola_multicast_hsvf_v1_11.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Hsvf Stx: 1 Byte Fixed Width Integer Static
    index, hsvf_stx = tmx_mx_sola_multicast_hsvf_v1_11.hsvf_stx.dissect(buffer, index, packet, parent)

    -- Message Header: Struct of 2 fields
    index, message_header = tmx_mx_sola_multicast_hsvf_v1_11.message_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = trim_right_spaces(buffer(index - 2, 2):string())

    -- Message Body: Runtime Type with 58 branches
    index = tmx_mx_sola_multicast_hsvf_v1_11.message_body.dissect(buffer, index, packet, parent, message_type)

    -- Hsvf Etx: 1 Byte Fixed Width Integer
    index, hsvf_etx = tmx_mx_sola_multicast_hsvf_v1_11.hsvf_etx.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_mx_sola_multicast_hsvf_v1_11.init()
end

-- Dissector for Tmx Mx Sola Multicast Hsvf 1.11
function omi_tmx_mx_sola_multicast_hsvf_v1_11.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_tmx_mx_sola_multicast_hsvf_v1_11.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_mx_sola_multicast_hsvf_v1_11, buffer(), omi_tmx_mx_sola_multicast_hsvf_v1_11.description, "("..buffer:len().." Bytes)")
  return tmx_mx_sola_multicast_hsvf_v1_11.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_tmx_mx_sola_multicast_hsvf_v1_11)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
tmx_mx_sola_multicast_hsvf_v1_11.packet.requiredsize = function(buffer)

  return true
end

-- Verify Hsvf Stx Field
tmx_mx_sola_multicast_hsvf_v1_11.hsvf_stx.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Tmx Mx Sola Multicast Hsvf 1.11
local function omi_tmx_mx_sola_multicast_hsvf_v1_11_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_mx_sola_multicast_hsvf_v1_11.packet.requiredsize(buffer) then return false end

  -- Verify Hsvf Stx
  if not tmx_mx_sola_multicast_hsvf_v1_11.hsvf_stx.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_mx_sola_multicast_hsvf_v1_11
  omi_tmx_mx_sola_multicast_hsvf_v1_11.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx Mx Sola Multicast Hsvf 1.11
omi_tmx_mx_sola_multicast_hsvf_v1_11:register_heuristic("udp", omi_tmx_mx_sola_multicast_hsvf_v1_11_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Tmx Group
--   Version: 1.11
--   Date: Wednesday, January 23, 2019
--   Specification: hsvf-mx-005e-mx-sola-hsvf-multicast-specifications-guide-v1-11d5.pdf
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
