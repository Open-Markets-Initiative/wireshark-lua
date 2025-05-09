-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Eurex Derivatives Eobi T7 13.1 Protocol
local eurex_derivatives_eobi_t7_v13_1 = Proto("Eurex.Derivatives.Eobi.T7.v13.1.Lua", "Eurex Derivatives Eobi T7 13.1")

-- Component Tables
local show = {}
local format = {}
local eurex_derivatives_eobi_t7_v13_1_display = {}
local eurex_derivatives_eobi_t7_v13_1_dissect = {}
local eurex_derivatives_eobi_t7_v13_1_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Eurex Derivatives Eobi T7 13.1 Fields
eurex_derivatives_eobi_t7_v13_1.fields.add_complex_instrument = ProtoField.new("Add Complex Instrument", "eurex.derivatives.eobi.t7.v13.1.addcomplexinstrument", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.add_flexible_instrument = ProtoField.new("Add Flexible Instrument", "eurex.derivatives.eobi.t7.v13.1.addflexibleinstrument", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.add_scaled_simple_instrument = ProtoField.new("Add Scaled Simple Instrument", "eurex.derivatives.eobi.t7.v13.1.addscaledsimpleinstrument", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.aggressor_side = ProtoField.new("Aggressor Side", "eurex.derivatives.eobi.t7.v13.1.aggressorside", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.aggressor_time = ProtoField.new("Aggressor Time", "eurex.derivatives.eobi.t7.v13.1.aggressortime", ftypes.UINT64)
eurex_derivatives_eobi_t7_v13_1.fields.algorithmic_trade_indicator = ProtoField.new("Algorithmic Trade Indicator", "eurex.derivatives.eobi.t7.v13.1.algorithmictradeindicator", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.appl_seq_num = ProtoField.new("Appl Seq Num", "eurex.derivatives.eobi.t7.v13.1.applseqnum", ftypes.UINT32)
eurex_derivatives_eobi_t7_v13_1.fields.appl_seq_reset_indicator = ProtoField.new("Appl Seq Reset Indicator", "eurex.derivatives.eobi.t7.v13.1.applseqresetindicator", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.auction_bbo = ProtoField.new("Auction Bbo", "eurex.derivatives.eobi.t7.v13.1.auctionbbo", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.auction_clearing_price = ProtoField.new("Auction Clearing Price", "eurex.derivatives.eobi.t7.v13.1.auctionclearingprice", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.bid_ord_type = ProtoField.new("Bid Ord Type", "eurex.derivatives.eobi.t7.v13.1.bidordtype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.bid_px = ProtoField.new("Bid Px", "eurex.derivatives.eobi.t7.v13.1.bidpx", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.bid_size = ProtoField.new("Bid Size", "eurex.derivatives.eobi.t7.v13.1.bidsize", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.body_len = ProtoField.new("Body Len", "eurex.derivatives.eobi.t7.v13.1.bodylen", ftypes.UINT16)
eurex_derivatives_eobi_t7_v13_1.fields.completion_indicator = ProtoField.new("Completion Indicator", "eurex.derivatives.eobi.t7.v13.1.completionindicator", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.contract_date = ProtoField.new("Contract Date", "eurex.derivatives.eobi.t7.v13.1.contractdate", ftypes.UINT32)
eurex_derivatives_eobi_t7_v13_1.fields.cross_request = ProtoField.new("Cross Request", "eurex.derivatives.eobi.t7.v13.1.crossrequest", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.cross_request_type = ProtoField.new("Cross Request Type", "eurex.derivatives.eobi.t7.v13.1.crossrequesttype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.display_qty = ProtoField.new("Display Qty", "eurex.derivatives.eobi.t7.v13.1.displayqty", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.exec_id = ProtoField.new("Exec Id", "eurex.derivatives.eobi.t7.v13.1.execid", ftypes.UINT64)
eurex_derivatives_eobi_t7_v13_1.fields.execution_summary = ProtoField.new("Execution Summary", "eurex.derivatives.eobi.t7.v13.1.executionsummary", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.exercise_style = ProtoField.new("Exercise Style", "eurex.derivatives.eobi.t7.v13.1.exercisestyle", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.fast_market_indicator = ProtoField.new("Fast Market Indicator", "eurex.derivatives.eobi.t7.v13.1.fastmarketindicator", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.full_order_execution = ProtoField.new("Full Order Execution", "eurex.derivatives.eobi.t7.v13.1.fullorderexecution", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.header_length = ProtoField.new("Header Length", "eurex.derivatives.eobi.t7.v13.1.headerlength", ftypes.UINT16)
eurex_derivatives_eobi_t7_v13_1.fields.heartbeat = ProtoField.new("Heartbeat", "eurex.derivatives.eobi.t7.v13.1.heartbeat", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.hhi_indicator = ProtoField.new("Hhi Indicator", "eurex.derivatives.eobi.t7.v13.1.hhiindicator", ftypes.INT8)
eurex_derivatives_eobi_t7_v13_1.fields.high_px = ProtoField.new("High Px", "eurex.derivatives.eobi.t7.v13.1.highpx", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.imbalance_qty = ProtoField.new("Imbalance Qty", "eurex.derivatives.eobi.t7.v13.1.imbalanceqty", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.implied_market_indicator = ProtoField.new("Implied Market Indicator", "eurex.derivatives.eobi.t7.v13.1.impliedmarketindicator", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.input_source = ProtoField.new("Input Source", "eurex.derivatives.eobi.t7.v13.1.inputsource", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.instrmt_leg_grp_comp = ProtoField.new("Instrmt Leg Grp Comp", "eurex.derivatives.eobi.t7.v13.1.instrmtleggrpcomp", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.instrument_scope_product_complex = ProtoField.new("Instrument Scope Product Complex", "eurex.derivatives.eobi.t7.v13.1.instrumentscopeproductcomplex", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.instrument_state_change = ProtoField.new("Instrument State Change", "eurex.derivatives.eobi.t7.v13.1.instrumentstatechange", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.instrument_summary = ProtoField.new("Instrument Summary", "eurex.derivatives.eobi.t7.v13.1.instrumentsummary", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.last_fragment = ProtoField.new("Last Fragment", "eurex.derivatives.eobi.t7.v13.1.lastfragment", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.last_msg_seq_num_processed = ProtoField.new("Last Msg Seq Num Processed", "eurex.derivatives.eobi.t7.v13.1.lastmsgseqnumprocessed", ftypes.UINT32)
eurex_derivatives_eobi_t7_v13_1.fields.last_px = ProtoField.new("Last Px", "eurex.derivatives.eobi.t7.v13.1.lastpx", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.last_qty = ProtoField.new("Last Qty", "eurex.derivatives.eobi.t7.v13.1.lastqty", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.last_update_time = ProtoField.new("Last Update Time", "eurex.derivatives.eobi.t7.v13.1.lastupdatetime", ftypes.UINT64)
eurex_derivatives_eobi_t7_v13_1.fields.leg_price = ProtoField.new("Leg Price", "eurex.derivatives.eobi.t7.v13.1.legprice", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.leg_ratio_multiplier = ProtoField.new("Leg Ratio Multiplier", "eurex.derivatives.eobi.t7.v13.1.legratiomultiplier", ftypes.UINT32)
eurex_derivatives_eobi_t7_v13_1.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "eurex.derivatives.eobi.t7.v13.1.legratioqty", ftypes.INT32)
eurex_derivatives_eobi_t7_v13_1.fields.leg_security_id = ProtoField.new("Leg Security Id", "eurex.derivatives.eobi.t7.v13.1.legsecurityid", ftypes.INT64)
eurex_derivatives_eobi_t7_v13_1.fields.leg_security_type = ProtoField.new("Leg Security Type", "eurex.derivatives.eobi.t7.v13.1.legsecuritytype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.leg_side = ProtoField.new("Leg Side", "eurex.derivatives.eobi.t7.v13.1.legside", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.leg_symbol = ProtoField.new("Leg Symbol", "eurex.derivatives.eobi.t7.v13.1.legsymbol", ftypes.INT32)
eurex_derivatives_eobi_t7_v13_1.fields.low_px = ProtoField.new("Low Px", "eurex.derivatives.eobi.t7.v13.1.lowpx", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.market_condition = ProtoField.new("Market Condition", "eurex.derivatives.eobi.t7.v13.1.marketcondition", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.market_segment_id = ProtoField.new("Market Segment Id", "eurex.derivatives.eobi.t7.v13.1.marketsegmentid", ftypes.INT32)
eurex_derivatives_eobi_t7_v13_1.fields.mass_instrument_state_change = ProtoField.new("Mass Instrument State Change", "eurex.derivatives.eobi.t7.v13.1.massinstrumentstatechange", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.mass_market_condition = ProtoField.new("Mass Market Condition", "eurex.derivatives.eobi.t7.v13.1.massmarketcondition", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.mass_sold_out_indicator = ProtoField.new("Mass Sold Out Indicator", "eurex.derivatives.eobi.t7.v13.1.masssoldoutindicator", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.match_sub_type = ProtoField.new("Match Sub Type", "eurex.derivatives.eobi.t7.v13.1.matchsubtype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.match_type = ProtoField.new("Match Type", "eurex.derivatives.eobi.t7.v13.1.matchtype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.maturity_date = ProtoField.new("Maturity Date", "eurex.derivatives.eobi.t7.v13.1.maturitydate", ftypes.UINT32)
eurex_derivatives_eobi_t7_v13_1.fields.md_entry_px = ProtoField.new("Md Entry Px", "eurex.derivatives.eobi.t7.v13.1.mdentrypx", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.md_entry_size = ProtoField.new("Md Entry Size", "eurex.derivatives.eobi.t7.v13.1.mdentrysize", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.md_entry_type = ProtoField.new("Md Entry Type", "eurex.derivatives.eobi.t7.v13.1.mdentrytype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.md_instrument_entry_grp_comp = ProtoField.new("Md Instrument Entry Grp Comp", "eurex.derivatives.eobi.t7.v13.1.mdinstrumententrygrpcomp", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.md_origin_type = ProtoField.new("Md Origin Type", "eurex.derivatives.eobi.t7.v13.1.mdorigintype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.md_trade_entry_grp_comp = ProtoField.new("Md Trade Entry Grp Comp", "eurex.derivatives.eobi.t7.v13.1.mdtradeentrygrpcomp", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.message = ProtoField.new("Message", "eurex.derivatives.eobi.t7.v13.1.message", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.message_header_comp = ProtoField.new("Message Header Comp", "eurex.derivatives.eobi.t7.v13.1.messageheadercomp", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.msg_seq_num = ProtoField.new("Msg Seq Num", "eurex.derivatives.eobi.t7.v13.1.msgseqnum", ftypes.UINT32)
eurex_derivatives_eobi_t7_v13_1.fields.multi_leg_price_model = ProtoField.new("Multi Leg Price Model", "eurex.derivatives.eobi.t7.v13.1.multilegpricemodel", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.multi_leg_reporting_type = ProtoField.new("Multi Leg Reporting Type", "eurex.derivatives.eobi.t7.v13.1.multilegreportingtype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.no_legs = ProtoField.new("No Legs", "eurex.derivatives.eobi.t7.v13.1.nolegs", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.no_md_entries = ProtoField.new("No Md Entries", "eurex.derivatives.eobi.t7.v13.1.nomdentries", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.no_related_sym = ProtoField.new("No Related Sym", "eurex.derivatives.eobi.t7.v13.1.norelatedsym", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.non_disclosed_trade_volume = ProtoField.new("Non Disclosed Trade Volume", "eurex.derivatives.eobi.t7.v13.1.nondisclosedtradevolume", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.number_of_buy_orders = ProtoField.new("Number Of Buy Orders", "eurex.derivatives.eobi.t7.v13.1.numberofbuyorders", ftypes.UINT16)
eurex_derivatives_eobi_t7_v13_1.fields.number_of_buy_sides = ProtoField.new("Number Of Buy Sides", "eurex.derivatives.eobi.t7.v13.1.numberofbuysides", ftypes.UINT16)
eurex_derivatives_eobi_t7_v13_1.fields.number_of_sell_orders = ProtoField.new("Number Of Sell Orders", "eurex.derivatives.eobi.t7.v13.1.numberofsellorders", ftypes.UINT16)
eurex_derivatives_eobi_t7_v13_1.fields.number_of_sell_sides = ProtoField.new("Number Of Sell Sides", "eurex.derivatives.eobi.t7.v13.1.numberofsellsides", ftypes.UINT16)
eurex_derivatives_eobi_t7_v13_1.fields.offer_ord_type = ProtoField.new("Offer Ord Type", "eurex.derivatives.eobi.t7.v13.1.offerordtype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.offer_px = ProtoField.new("Offer Px", "eurex.derivatives.eobi.t7.v13.1.offerpx", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.offer_size = ProtoField.new("Offer Size", "eurex.derivatives.eobi.t7.v13.1.offersize", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.opt_attribute = ProtoField.new("Opt Attribute", "eurex.derivatives.eobi.t7.v13.1.optattribute", ftypes.UINT32)
eurex_derivatives_eobi_t7_v13_1.fields.ord_type = ProtoField.new("Ord Type", "eurex.derivatives.eobi.t7.v13.1.ordtype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.order_add = ProtoField.new("Order Add", "eurex.derivatives.eobi.t7.v13.1.orderadd", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.order_delete = ProtoField.new("Order Delete", "eurex.derivatives.eobi.t7.v13.1.orderdelete", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.order_details_comp = ProtoField.new("Order Details Comp", "eurex.derivatives.eobi.t7.v13.1.orderdetailscomp", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.order_mass_delete = ProtoField.new("Order Mass Delete", "eurex.derivatives.eobi.t7.v13.1.ordermassdelete", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.order_modify = ProtoField.new("Order Modify", "eurex.derivatives.eobi.t7.v13.1.ordermodify", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.order_modify_same_prio = ProtoField.new("Order Modify Same Prio", "eurex.derivatives.eobi.t7.v13.1.ordermodifysameprio", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.packet = ProtoField.new("Packet", "eurex.derivatives.eobi.t7.v13.1.packet", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.packet_header = ProtoField.new("Packet Header", "eurex.derivatives.eobi.t7.v13.1.packetheader", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.packet_id = ProtoField.new("Packet Id", "eurex.derivatives.eobi.t7.v13.1.packetid", ftypes.UINT16)
eurex_derivatives_eobi_t7_v13_1.fields.packet_info = ProtoField.new("Packet Info", "eurex.derivatives.eobi.t7.v13.1.packetinfo", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.packet_sequence_number = ProtoField.new("Packet Sequence Number", "eurex.derivatives.eobi.t7.v13.1.packetsequencenumber", ftypes.UINT32)
eurex_derivatives_eobi_t7_v13_1.fields.pad_1 = ProtoField.new("Pad 1", "eurex.derivatives.eobi.t7.v13.1.pad1", ftypes.BYTES)
eurex_derivatives_eobi_t7_v13_1.fields.pad_2 = ProtoField.new("Pad 2", "eurex.derivatives.eobi.t7.v13.1.pad2", ftypes.BYTES)
eurex_derivatives_eobi_t7_v13_1.fields.pad_3 = ProtoField.new("Pad 3", "eurex.derivatives.eobi.t7.v13.1.pad3", ftypes.BYTES)
eurex_derivatives_eobi_t7_v13_1.fields.pad_4 = ProtoField.new("Pad 4", "eurex.derivatives.eobi.t7.v13.1.pad4", ftypes.BYTES)
eurex_derivatives_eobi_t7_v13_1.fields.pad_5 = ProtoField.new("Pad 5", "eurex.derivatives.eobi.t7.v13.1.pad5", ftypes.BYTES)
eurex_derivatives_eobi_t7_v13_1.fields.pad_6 = ProtoField.new("Pad 6", "eurex.derivatives.eobi.t7.v13.1.pad6", ftypes.BYTES)
eurex_derivatives_eobi_t7_v13_1.fields.pad_7 = ProtoField.new("Pad 7", "eurex.derivatives.eobi.t7.v13.1.pad7", ftypes.BYTES)
eurex_derivatives_eobi_t7_v13_1.fields.partial_order_execution = ProtoField.new("Partial Order Execution", "eurex.derivatives.eobi.t7.v13.1.partialorderexecution", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.partition_id = ProtoField.new("Partition Id", "eurex.derivatives.eobi.t7.v13.1.partitionid", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.payload = ProtoField.new("Payload", "eurex.derivatives.eobi.t7.v13.1.payload", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.potential_security_trading_event = ProtoField.new("Potential Security Trading Event", "eurex.derivatives.eobi.t7.v13.1.potentialsecuritytradingevent", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.prev_display_qty = ProtoField.new("Prev Display Qty", "eurex.derivatives.eobi.t7.v13.1.prevdisplayqty", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.prev_price = ProtoField.new("Prev Price", "eurex.derivatives.eobi.t7.v13.1.prevprice", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.prev_price_hhi_indicator = ProtoField.new("Prev Price Hhi Indicator", "eurex.derivatives.eobi.t7.v13.1.prevpricehhiindicator", ftypes.INT8)
eurex_derivatives_eobi_t7_v13_1.fields.price = ProtoField.new("Price", "eurex.derivatives.eobi.t7.v13.1.price", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.product_complex = ProtoField.new("Product Complex", "eurex.derivatives.eobi.t7.v13.1.productcomplex", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.product_state_change = ProtoField.new("Product State Change", "eurex.derivatives.eobi.t7.v13.1.productstatechange", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.product_summary = ProtoField.new("Product Summary", "eurex.derivatives.eobi.t7.v13.1.productsummary", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.put_or_call = ProtoField.new("Put Or Call", "eurex.derivatives.eobi.t7.v13.1.putorcall", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.quantity_scaling_factor = ProtoField.new("Quantity Scaling Factor", "eurex.derivatives.eobi.t7.v13.1.quantityscalingfactor", ftypes.UINT16)
eurex_derivatives_eobi_t7_v13_1.fields.quote_request = ProtoField.new("Quote Request", "eurex.derivatives.eobi.t7.v13.1.quoterequest", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.related_instrument_grp_comp = ProtoField.new("Related Instrument Grp Comp", "eurex.derivatives.eobi.t7.v13.1.relatedinstrumentgrpcomp", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.related_price = ProtoField.new("Related Price", "eurex.derivatives.eobi.t7.v13.1.relatedprice", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.related_price_type = ProtoField.new("Related Price Type", "eurex.derivatives.eobi.t7.v13.1.relatedpricetype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.related_security_id = ProtoField.new("Related Security Id", "eurex.derivatives.eobi.t7.v13.1.relatedsecurityid", ftypes.INT64)
eurex_derivatives_eobi_t7_v13_1.fields.remaining_order_details_comp = ProtoField.new("Remaining Order Details Comp", "eurex.derivatives.eobi.t7.v13.1.remainingorderdetailscomp", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.request_time = ProtoField.new("Request Time", "eurex.derivatives.eobi.t7.v13.1.requesttime", ftypes.UINT64)
eurex_derivatives_eobi_t7_v13_1.fields.resting_cxl_qty = ProtoField.new("Resting Cxl Qty", "eurex.derivatives.eobi.t7.v13.1.restingcxlqty", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.resting_hidden_qty = ProtoField.new("Resting Hidden Qty", "eurex.derivatives.eobi.t7.v13.1.restinghiddenqty", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.sec_mass_stat_grp_comp = ProtoField.new("Sec Mass Stat Grp Comp", "eurex.derivatives.eobi.t7.v13.1.secmassstatgrpcomp", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.security_desc = ProtoField.new("Security Desc", "eurex.derivatives.eobi.t7.v13.1.securitydesc", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.security_id = ProtoField.new("Security Id", "eurex.derivatives.eobi.t7.v13.1.securityid", ftypes.INT64)
eurex_derivatives_eobi_t7_v13_1.fields.security_mass_status = ProtoField.new("Security Mass Status", "eurex.derivatives.eobi.t7.v13.1.securitymassstatus", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.security_mass_trading_event = ProtoField.new("Security Mass Trading Event", "eurex.derivatives.eobi.t7.v13.1.securitymasstradingevent", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.security_mass_trading_status = ProtoField.new("Security Mass Trading Status", "eurex.derivatives.eobi.t7.v13.1.securitymasstradingstatus", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.security_reference_data_supplement = ProtoField.new("Security Reference Data Supplement", "eurex.derivatives.eobi.t7.v13.1.securityreferencedatasupplement", ftypes.UINT32)
eurex_derivatives_eobi_t7_v13_1.fields.security_status = ProtoField.new("Security Status", "eurex.derivatives.eobi.t7.v13.1.securitystatus", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.security_sub_type = ProtoField.new("Security Sub Type", "eurex.derivatives.eobi.t7.v13.1.securitysubtype", ftypes.INT32)
eurex_derivatives_eobi_t7_v13_1.fields.security_trading_event = ProtoField.new("Security Trading Event", "eurex.derivatives.eobi.t7.v13.1.securitytradingevent", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.security_trading_status = ProtoField.new("Security Trading Status", "eurex.derivatives.eobi.t7.v13.1.securitytradingstatus", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.security_type = ProtoField.new("Security Type", "eurex.derivatives.eobi.t7.v13.1.securitytype", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.settl_method = ProtoField.new("Settl Method", "eurex.derivatives.eobi.t7.v13.1.settlmethod", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.side = ProtoField.new("Side", "eurex.derivatives.eobi.t7.v13.1.side", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.snapshot_order = ProtoField.new("Snapshot Order", "eurex.derivatives.eobi.t7.v13.1.snapshotorder", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.sold_out_indicator = ProtoField.new("Sold Out Indicator", "eurex.derivatives.eobi.t7.v13.1.soldoutindicator", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.strike_price = ProtoField.new("Strike Price", "eurex.derivatives.eobi.t7.v13.1.strikeprice", ftypes.DOUBLE)
eurex_derivatives_eobi_t7_v13_1.fields.template_id = ProtoField.new("Template Id", "eurex.derivatives.eobi.t7.v13.1.templateid", ftypes.UINT16)
eurex_derivatives_eobi_t7_v13_1.fields.tes_security_mass_status = ProtoField.new("Tes Security Mass Status", "eurex.derivatives.eobi.t7.v13.1.tessecuritymassstatus", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.tes_security_status = ProtoField.new("Tes Security Status", "eurex.derivatives.eobi.t7.v13.1.tessecuritystatus", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.tes_trad_ses_status = ProtoField.new("Tes Trad Ses Status", "eurex.derivatives.eobi.t7.v13.1.testradsesstatus", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.tes_trade_report = ProtoField.new("Tes Trade Report", "eurex.derivatives.eobi.t7.v13.1.testradereport", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.top_of_book = ProtoField.new("Top Of Book", "eurex.derivatives.eobi.t7.v13.1.topofbook", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.tot_no_orders = ProtoField.new("Tot No Orders", "eurex.derivatives.eobi.t7.v13.1.totnoorders", ftypes.UINT16)
eurex_derivatives_eobi_t7_v13_1.fields.trad_ses_status = ProtoField.new("Trad Ses Status", "eurex.derivatives.eobi.t7.v13.1.tradsesstatus", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.trade_condition = ProtoField.new("Trade Condition", "eurex.derivatives.eobi.t7.v13.1.tradecondition", ftypes.UINT16)
eurex_derivatives_eobi_t7_v13_1.fields.trade_report = ProtoField.new("Trade Report", "eurex.derivatives.eobi.t7.v13.1.tradereport", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.trade_reversal = ProtoField.new("Trade Reversal", "eurex.derivatives.eobi.t7.v13.1.tradereversal", ftypes.STRING)
eurex_derivatives_eobi_t7_v13_1.fields.trading_hhi_indicator = ProtoField.new("Trading Hhi Indicator", "eurex.derivatives.eobi.t7.v13.1.tradinghhiindicator", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.trading_session_id = ProtoField.new("Trading Session Id", "eurex.derivatives.eobi.t7.v13.1.tradingsessionid", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.trading_session_sub_id = ProtoField.new("Trading Session Sub Id", "eurex.derivatives.eobi.t7.v13.1.tradingsessionsubid", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.trading_style = ProtoField.new("Trading Style", "eurex.derivatives.eobi.t7.v13.1.tradingstyle", ftypes.UINT8)
eurex_derivatives_eobi_t7_v13_1.fields.trans_bkd_time = ProtoField.new("Trans Bkd Time", "eurex.derivatives.eobi.t7.v13.1.transbkdtime", ftypes.UINT64)
eurex_derivatives_eobi_t7_v13_1.fields.transact_time = ProtoField.new("Transact Time", "eurex.derivatives.eobi.t7.v13.1.transacttime", ftypes.UINT64)
eurex_derivatives_eobi_t7_v13_1.fields.trd_match_id = ProtoField.new("Trd Match Id", "eurex.derivatives.eobi.t7.v13.1.trdmatchid", ftypes.UINT32)
eurex_derivatives_eobi_t7_v13_1.fields.trd_reg_ts_execution_time = ProtoField.new("Trd Reg Ts Execution Time", "eurex.derivatives.eobi.t7.v13.1.trdregtsexecutiontime", ftypes.UINT64)
eurex_derivatives_eobi_t7_v13_1.fields.trd_reg_ts_prev_time_priority = ProtoField.new("Trd Reg Ts Prev Time Priority", "eurex.derivatives.eobi.t7.v13.1.trdregtsprevtimepriority", ftypes.UINT64)
eurex_derivatives_eobi_t7_v13_1.fields.trd_reg_ts_time_priority = ProtoField.new("Trd Reg Ts Time Priority", "eurex.derivatives.eobi.t7.v13.1.trdregtstimepriority", ftypes.UINT64)
eurex_derivatives_eobi_t7_v13_1.fields.trd_type = ProtoField.new("Trd Type", "eurex.derivatives.eobi.t7.v13.1.trdtype", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Eurex Derivatives Eobi T7 13.1 Element Dissection Options
show.add_complex_instrument = true
show.add_flexible_instrument = true
show.add_scaled_simple_instrument = true
show.auction_bbo = true
show.auction_clearing_price = true
show.cross_request = true
show.execution_summary = true
show.full_order_execution = true
show.heartbeat = true
show.instrmt_leg_grp_comp = true
show.instrument_state_change = true
show.instrument_summary = true
show.mass_instrument_state_change = true
show.md_instrument_entry_grp_comp = true
show.md_trade_entry_grp_comp = true
show.message = true
show.message_header_comp = true
show.order_add = true
show.order_delete = true
show.order_details_comp = true
show.order_mass_delete = true
show.order_modify = true
show.order_modify_same_prio = true
show.packet = true
show.packet_header = true
show.packet_info = true
show.partial_order_execution = true
show.product_state_change = true
show.product_summary = true
show.quote_request = true
show.related_instrument_grp_comp = true
show.remaining_order_details_comp = true
show.sec_mass_stat_grp_comp = true
show.snapshot_order = true
show.tes_trade_report = true
show.top_of_book = true
show.trade_report = true
show.trade_reversal = true
show.payload = false

-- Register Eurex Derivatives Eobi T7 13.1 Show Options
eurex_derivatives_eobi_t7_v13_1.prefs.show_add_complex_instrument = Pref.bool("Show Add Complex Instrument", show.add_complex_instrument, "Parse and add Add Complex Instrument to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_add_flexible_instrument = Pref.bool("Show Add Flexible Instrument", show.add_flexible_instrument, "Parse and add Add Flexible Instrument to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_add_scaled_simple_instrument = Pref.bool("Show Add Scaled Simple Instrument", show.add_scaled_simple_instrument, "Parse and add Add Scaled Simple Instrument to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_auction_bbo = Pref.bool("Show Auction Bbo", show.auction_bbo, "Parse and add Auction Bbo to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_auction_clearing_price = Pref.bool("Show Auction Clearing Price", show.auction_clearing_price, "Parse and add Auction Clearing Price to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_cross_request = Pref.bool("Show Cross Request", show.cross_request, "Parse and add Cross Request to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_execution_summary = Pref.bool("Show Execution Summary", show.execution_summary, "Parse and add Execution Summary to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_full_order_execution = Pref.bool("Show Full Order Execution", show.full_order_execution, "Parse and add Full Order Execution to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_heartbeat = Pref.bool("Show Heartbeat", show.heartbeat, "Parse and add Heartbeat to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_instrmt_leg_grp_comp = Pref.bool("Show Instrmt Leg Grp Comp", show.instrmt_leg_grp_comp, "Parse and add Instrmt Leg Grp Comp to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_instrument_state_change = Pref.bool("Show Instrument State Change", show.instrument_state_change, "Parse and add Instrument State Change to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_instrument_summary = Pref.bool("Show Instrument Summary", show.instrument_summary, "Parse and add Instrument Summary to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_mass_instrument_state_change = Pref.bool("Show Mass Instrument State Change", show.mass_instrument_state_change, "Parse and add Mass Instrument State Change to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_md_instrument_entry_grp_comp = Pref.bool("Show Md Instrument Entry Grp Comp", show.md_instrument_entry_grp_comp, "Parse and add Md Instrument Entry Grp Comp to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_md_trade_entry_grp_comp = Pref.bool("Show Md Trade Entry Grp Comp", show.md_trade_entry_grp_comp, "Parse and add Md Trade Entry Grp Comp to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_message_header_comp = Pref.bool("Show Message Header Comp", show.message_header_comp, "Parse and add Message Header Comp to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_order_add = Pref.bool("Show Order Add", show.order_add, "Parse and add Order Add to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_order_delete = Pref.bool("Show Order Delete", show.order_delete, "Parse and add Order Delete to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_order_details_comp = Pref.bool("Show Order Details Comp", show.order_details_comp, "Parse and add Order Details Comp to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_order_mass_delete = Pref.bool("Show Order Mass Delete", show.order_mass_delete, "Parse and add Order Mass Delete to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_order_modify = Pref.bool("Show Order Modify", show.order_modify, "Parse and add Order Modify to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_order_modify_same_prio = Pref.bool("Show Order Modify Same Prio", show.order_modify_same_prio, "Parse and add Order Modify Same Prio to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_packet_info = Pref.bool("Show Packet Info", show.packet_info, "Parse and add Packet Info to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_partial_order_execution = Pref.bool("Show Partial Order Execution", show.partial_order_execution, "Parse and add Partial Order Execution to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_product_state_change = Pref.bool("Show Product State Change", show.product_state_change, "Parse and add Product State Change to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_product_summary = Pref.bool("Show Product Summary", show.product_summary, "Parse and add Product Summary to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_quote_request = Pref.bool("Show Quote Request", show.quote_request, "Parse and add Quote Request to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_related_instrument_grp_comp = Pref.bool("Show Related Instrument Grp Comp", show.related_instrument_grp_comp, "Parse and add Related Instrument Grp Comp to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_remaining_order_details_comp = Pref.bool("Show Remaining Order Details Comp", show.remaining_order_details_comp, "Parse and add Remaining Order Details Comp to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_sec_mass_stat_grp_comp = Pref.bool("Show Sec Mass Stat Grp Comp", show.sec_mass_stat_grp_comp, "Parse and add Sec Mass Stat Grp Comp to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_snapshot_order = Pref.bool("Show Snapshot Order", show.snapshot_order, "Parse and add Snapshot Order to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_tes_trade_report = Pref.bool("Show Tes Trade Report", show.tes_trade_report, "Parse and add Tes Trade Report to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_top_of_book = Pref.bool("Show Top Of Book", show.top_of_book, "Parse and add Top Of Book to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_trade_report = Pref.bool("Show Trade Report", show.trade_report, "Parse and add Trade Report to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_trade_reversal = Pref.bool("Show Trade Reversal", show.trade_reversal, "Parse and add Trade Reversal to protocol tree")
eurex_derivatives_eobi_t7_v13_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function eurex_derivatives_eobi_t7_v13_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_complex_instrument ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_add_complex_instrument then
    show.add_complex_instrument = eurex_derivatives_eobi_t7_v13_1.prefs.show_add_complex_instrument
    changed = true
  end
  if show.add_flexible_instrument ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_add_flexible_instrument then
    show.add_flexible_instrument = eurex_derivatives_eobi_t7_v13_1.prefs.show_add_flexible_instrument
    changed = true
  end
  if show.add_scaled_simple_instrument ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_add_scaled_simple_instrument then
    show.add_scaled_simple_instrument = eurex_derivatives_eobi_t7_v13_1.prefs.show_add_scaled_simple_instrument
    changed = true
  end
  if show.auction_bbo ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_auction_bbo then
    show.auction_bbo = eurex_derivatives_eobi_t7_v13_1.prefs.show_auction_bbo
    changed = true
  end
  if show.auction_clearing_price ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_auction_clearing_price then
    show.auction_clearing_price = eurex_derivatives_eobi_t7_v13_1.prefs.show_auction_clearing_price
    changed = true
  end
  if show.cross_request ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_cross_request then
    show.cross_request = eurex_derivatives_eobi_t7_v13_1.prefs.show_cross_request
    changed = true
  end
  if show.execution_summary ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_execution_summary then
    show.execution_summary = eurex_derivatives_eobi_t7_v13_1.prefs.show_execution_summary
    changed = true
  end
  if show.full_order_execution ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_full_order_execution then
    show.full_order_execution = eurex_derivatives_eobi_t7_v13_1.prefs.show_full_order_execution
    changed = true
  end
  if show.heartbeat ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_heartbeat then
    show.heartbeat = eurex_derivatives_eobi_t7_v13_1.prefs.show_heartbeat
    changed = true
  end
  if show.instrmt_leg_grp_comp ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_instrmt_leg_grp_comp then
    show.instrmt_leg_grp_comp = eurex_derivatives_eobi_t7_v13_1.prefs.show_instrmt_leg_grp_comp
    changed = true
  end
  if show.instrument_state_change ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_instrument_state_change then
    show.instrument_state_change = eurex_derivatives_eobi_t7_v13_1.prefs.show_instrument_state_change
    changed = true
  end
  if show.instrument_summary ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_instrument_summary then
    show.instrument_summary = eurex_derivatives_eobi_t7_v13_1.prefs.show_instrument_summary
    changed = true
  end
  if show.mass_instrument_state_change ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_mass_instrument_state_change then
    show.mass_instrument_state_change = eurex_derivatives_eobi_t7_v13_1.prefs.show_mass_instrument_state_change
    changed = true
  end
  if show.md_instrument_entry_grp_comp ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_md_instrument_entry_grp_comp then
    show.md_instrument_entry_grp_comp = eurex_derivatives_eobi_t7_v13_1.prefs.show_md_instrument_entry_grp_comp
    changed = true
  end
  if show.md_trade_entry_grp_comp ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_md_trade_entry_grp_comp then
    show.md_trade_entry_grp_comp = eurex_derivatives_eobi_t7_v13_1.prefs.show_md_trade_entry_grp_comp
    changed = true
  end
  if show.message ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_message then
    show.message = eurex_derivatives_eobi_t7_v13_1.prefs.show_message
    changed = true
  end
  if show.message_header_comp ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_message_header_comp then
    show.message_header_comp = eurex_derivatives_eobi_t7_v13_1.prefs.show_message_header_comp
    changed = true
  end
  if show.order_add ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_order_add then
    show.order_add = eurex_derivatives_eobi_t7_v13_1.prefs.show_order_add
    changed = true
  end
  if show.order_delete ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_order_delete then
    show.order_delete = eurex_derivatives_eobi_t7_v13_1.prefs.show_order_delete
    changed = true
  end
  if show.order_details_comp ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_order_details_comp then
    show.order_details_comp = eurex_derivatives_eobi_t7_v13_1.prefs.show_order_details_comp
    changed = true
  end
  if show.order_mass_delete ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_order_mass_delete then
    show.order_mass_delete = eurex_derivatives_eobi_t7_v13_1.prefs.show_order_mass_delete
    changed = true
  end
  if show.order_modify ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_order_modify then
    show.order_modify = eurex_derivatives_eobi_t7_v13_1.prefs.show_order_modify
    changed = true
  end
  if show.order_modify_same_prio ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_order_modify_same_prio then
    show.order_modify_same_prio = eurex_derivatives_eobi_t7_v13_1.prefs.show_order_modify_same_prio
    changed = true
  end
  if show.packet ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_packet then
    show.packet = eurex_derivatives_eobi_t7_v13_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_packet_header then
    show.packet_header = eurex_derivatives_eobi_t7_v13_1.prefs.show_packet_header
    changed = true
  end
  if show.packet_info ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_packet_info then
    show.packet_info = eurex_derivatives_eobi_t7_v13_1.prefs.show_packet_info
    changed = true
  end
  if show.partial_order_execution ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_partial_order_execution then
    show.partial_order_execution = eurex_derivatives_eobi_t7_v13_1.prefs.show_partial_order_execution
    changed = true
  end
  if show.product_state_change ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_product_state_change then
    show.product_state_change = eurex_derivatives_eobi_t7_v13_1.prefs.show_product_state_change
    changed = true
  end
  if show.product_summary ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_product_summary then
    show.product_summary = eurex_derivatives_eobi_t7_v13_1.prefs.show_product_summary
    changed = true
  end
  if show.quote_request ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_quote_request then
    show.quote_request = eurex_derivatives_eobi_t7_v13_1.prefs.show_quote_request
    changed = true
  end
  if show.related_instrument_grp_comp ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_related_instrument_grp_comp then
    show.related_instrument_grp_comp = eurex_derivatives_eobi_t7_v13_1.prefs.show_related_instrument_grp_comp
    changed = true
  end
  if show.remaining_order_details_comp ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_remaining_order_details_comp then
    show.remaining_order_details_comp = eurex_derivatives_eobi_t7_v13_1.prefs.show_remaining_order_details_comp
    changed = true
  end
  if show.sec_mass_stat_grp_comp ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_sec_mass_stat_grp_comp then
    show.sec_mass_stat_grp_comp = eurex_derivatives_eobi_t7_v13_1.prefs.show_sec_mass_stat_grp_comp
    changed = true
  end
  if show.snapshot_order ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_snapshot_order then
    show.snapshot_order = eurex_derivatives_eobi_t7_v13_1.prefs.show_snapshot_order
    changed = true
  end
  if show.tes_trade_report ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_tes_trade_report then
    show.tes_trade_report = eurex_derivatives_eobi_t7_v13_1.prefs.show_tes_trade_report
    changed = true
  end
  if show.top_of_book ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_top_of_book then
    show.top_of_book = eurex_derivatives_eobi_t7_v13_1.prefs.show_top_of_book
    changed = true
  end
  if show.trade_report ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_trade_report then
    show.trade_report = eurex_derivatives_eobi_t7_v13_1.prefs.show_trade_report
    changed = true
  end
  if show.trade_reversal ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_trade_reversal then
    show.trade_reversal = eurex_derivatives_eobi_t7_v13_1.prefs.show_trade_reversal
    changed = true
  end
  if show.payload ~= eurex_derivatives_eobi_t7_v13_1.prefs.show_payload then
    show.payload = eurex_derivatives_eobi_t7_v13_1.prefs.show_payload
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
-- Dissect Eurex Derivatives Eobi T7 13.1
-----------------------------------------------------------------------

-- Size: Pad 7
eurex_derivatives_eobi_t7_v13_1_size_of.pad_7 = 7

-- Display: Pad 7
eurex_derivatives_eobi_t7_v13_1_display.pad_7 = function(value)
  return "Pad 7: "..value
end

-- Dissect: Pad 7
eurex_derivatives_eobi_t7_v13_1_dissect.pad_7 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.pad_7
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v13_1_display.pad_7(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.pad_7, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Type
eurex_derivatives_eobi_t7_v13_1_size_of.md_entry_type = 1

-- Display: Md Entry Type
eurex_derivatives_eobi_t7_v13_1_display.md_entry_type = function(value)
  if value == 2 then
    return "Md Entry Type: Trade (2)"
  end
  if value == 4 then
    return "Md Entry Type: Opening Price (4)"
  end
  if value == 5 then
    return "Md Entry Type: Closing Price (5)"
  end
  if value == 7 then
    return "Md Entry Type: High Price (7)"
  end
  if value == 8 then
    return "Md Entry Type: Low Price (8)"
  end
  if value == 66 then
    return "Md Entry Type: Trade Volume (66)"
  end
  if value == 101 then
    return "Md Entry Type: Previous Closing Price (101)"
  end
  if value == 200 then
    return "Md Entry Type: Opening Auction (200)"
  end
  if value == 201 then
    return "Md Entry Type: Intraday Auction (201)"
  end
  if value == 202 then
    return "Md Entry Type: Circuit Breaker Auction (202)"
  end
  if value == 203 then
    return "Md Entry Type: Closing Auction (203)"
  end
  if value == 204 then
    return "Md Entry Type: Ipo Auction (204)"
  end
  if value == 0xFF then
    return "Md Entry Type: No Value"
  end

  return "Md Entry Type: Unknown("..value..")"
end

-- Dissect: Md Entry Type
eurex_derivatives_eobi_t7_v13_1_dissect.md_entry_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.md_entry_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.md_entry_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.md_entry_type, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Size
eurex_derivatives_eobi_t7_v13_1_size_of.md_entry_size = 8

-- Display: Md Entry Size
eurex_derivatives_eobi_t7_v13_1_display.md_entry_size = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Md Entry Size: No Value"
  end

  return "Md Entry Size: "..value
end

-- Translate: Md Entry Size
translate.md_entry_size = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Md Entry Size
eurex_derivatives_eobi_t7_v13_1_dissect.md_entry_size = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.md_entry_size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.md_entry_size(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.md_entry_size(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.md_entry_size, range, value, display)

  return offset + length, value
end

-- Size: Md Entry Px
eurex_derivatives_eobi_t7_v13_1_size_of.md_entry_px = 8

-- Display: Md Entry Px
eurex_derivatives_eobi_t7_v13_1_display.md_entry_px = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Md Entry Px: No Value"
  end

  return "Md Entry Px: "..value
end

-- Translate: Md Entry Px
translate.md_entry_px = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Md Entry Px
eurex_derivatives_eobi_t7_v13_1_dissect.md_entry_px = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.md_entry_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.md_entry_px(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.md_entry_px(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.md_entry_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Md Trade Entry Grp Comp
eurex_derivatives_eobi_t7_v13_1_size_of.md_trade_entry_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.md_entry_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.md_entry_size

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.md_entry_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_7

  return index
end

-- Display: Md Trade Entry Grp Comp
eurex_derivatives_eobi_t7_v13_1_display.md_trade_entry_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Trade Entry Grp Comp
eurex_derivatives_eobi_t7_v13_1_dissect.md_trade_entry_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_px = eurex_derivatives_eobi_t7_v13_1_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = eurex_derivatives_eobi_t7_v13_1_dissect.md_entry_size(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, md_entry_type = eurex_derivatives_eobi_t7_v13_1_dissect.md_entry_type(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Trade Entry Grp Comp
eurex_derivatives_eobi_t7_v13_1_dissect.md_trade_entry_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_trade_entry_grp_comp then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.md_trade_entry_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.md_trade_entry_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.md_trade_entry_grp_comp, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.md_trade_entry_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Md Entries
eurex_derivatives_eobi_t7_v13_1_size_of.no_md_entries = 1

-- Display: No Md Entries
eurex_derivatives_eobi_t7_v13_1_display.no_md_entries = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Md Entries: No Value"
  end

  return "No Md Entries: "..value
end

-- Dissect: No Md Entries
eurex_derivatives_eobi_t7_v13_1_dissect.no_md_entries = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.no_md_entries
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.no_md_entries(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.no_md_entries, range, value, display)

  return offset + length, value
end

-- Size: Md Origin Type
eurex_derivatives_eobi_t7_v13_1_size_of.md_origin_type = 1

-- Display: Md Origin Type
eurex_derivatives_eobi_t7_v13_1_display.md_origin_type = function(value)
  if value == 0 then
    return "Md Origin Type: Book (0)"
  end
  if value == 1 then
    return "Md Origin Type: Off Book (1)"
  end
  if value == 0xFF then
    return "Md Origin Type: No Value"
  end

  return "Md Origin Type: Unknown("..value..")"
end

-- Dissect: Md Origin Type
eurex_derivatives_eobi_t7_v13_1_dissect.md_origin_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.md_origin_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.md_origin_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.md_origin_type, range, value, display)

  return offset + length, value
end

-- Size: Trade Condition
eurex_derivatives_eobi_t7_v13_1_size_of.trade_condition = 2

-- Display: Trade Condition
eurex_derivatives_eobi_t7_v13_1_display.trade_condition = function(value)
  if value == 1 then
    return "Trade Condition: Implied Trade (1)"
  end
  if value == 107 then
    return "Trade Condition: Out Of Sequence (107)"
  end
  if value == 155 then
    return "Trade Condition: Midpoint Price (155)"
  end
  if value == 156 then
    return "Trade Condition: Trading On Terms Of Issue (156)"
  end
  if value == 596 then
    return "Trade Condition: Special Auction (596)"
  end
  if value == 624 then
    return "Trade Condition: Trade At Close (624)"
  end
  if value == 743 then
    return "Trade Condition: Retail (743)"
  end
  if value == 0xFFFF then
    return "Trade Condition: No Value"
  end

  return "Trade Condition: Unknown("..value..")"
end

-- Dissect: Trade Condition
eurex_derivatives_eobi_t7_v13_1_dissect.trade_condition = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.trade_condition
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.trade_condition(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Size: Trd Match Id
eurex_derivatives_eobi_t7_v13_1_size_of.trd_match_id = 4

-- Display: Trd Match Id
eurex_derivatives_eobi_t7_v13_1_display.trd_match_id = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Trd Match Id: No Value"
  end

  return "Trd Match Id: "..value
end

-- Dissect: Trd Match Id
eurex_derivatives_eobi_t7_v13_1_dissect.trd_match_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.trd_match_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.trd_match_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trd_match_id, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Execution Time
eurex_derivatives_eobi_t7_v13_1_size_of.trd_reg_ts_execution_time = 8

-- Display: Trd Reg Ts Execution Time
eurex_derivatives_eobi_t7_v13_1_display.trd_reg_ts_execution_time = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Execution Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Execution Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Execution Time
eurex_derivatives_eobi_t7_v13_1_dissect.trd_reg_ts_execution_time = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.trd_reg_ts_execution_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v13_1_display.trd_reg_ts_execution_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trd_reg_ts_execution_time, range, value, display)

  return offset + length, value
end

-- Size: Last Px
eurex_derivatives_eobi_t7_v13_1_size_of.last_px = 8

-- Display: Last Px
eurex_derivatives_eobi_t7_v13_1_display.last_px = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Last Px: No Value"
  end

  return "Last Px: "..value
end

-- Translate: Last Px
translate.last_px = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Last Px
eurex_derivatives_eobi_t7_v13_1_dissect.last_px = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.last_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.last_px(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.last_px(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.last_px, range, value, display)

  return offset + length, value
end

-- Size: Last Qty
eurex_derivatives_eobi_t7_v13_1_size_of.last_qty = 8

-- Display: Last Qty
eurex_derivatives_eobi_t7_v13_1_display.last_qty = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Last Qty: No Value"
  end

  return "Last Qty: "..value
end

-- Translate: Last Qty
translate.last_qty = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Last Qty
eurex_derivatives_eobi_t7_v13_1_dissect.last_qty = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.last_qty
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.last_qty(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.last_qty(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.last_qty, range, value, display)

  return offset + length, value
end

-- Size: Transact Time
eurex_derivatives_eobi_t7_v13_1_size_of.transact_time = 8

-- Display: Transact Time
eurex_derivatives_eobi_t7_v13_1_display.transact_time = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Transact Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Transact Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
eurex_derivatives_eobi_t7_v13_1_dissect.transact_time = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.transact_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v13_1_display.transact_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Size: Security Id
eurex_derivatives_eobi_t7_v13_1_size_of.security_id = 8

-- Display: Security Id
eurex_derivatives_eobi_t7_v13_1_display.security_id = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Security Id: No Value"
  end

  return "Security Id: "..value
end

-- Dissect: Security Id
eurex_derivatives_eobi_t7_v13_1_dissect.security_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.security_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_derivatives_eobi_t7_v13_1_display.security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Reversal
eurex_derivatives_eobi_t7_v13_1_size_of.trade_reversal = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_reg_ts_execution_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_match_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trade_condition

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.md_origin_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.no_md_entries

  -- Calculate field size from count
  local md_trade_entry_grp_comp_count = buffer(offset + index - 1, 1):le_uint()
  index = index + md_trade_entry_grp_comp_count * 24

  return index
end

-- Display: Trade Reversal
eurex_derivatives_eobi_t7_v13_1_display.trade_reversal = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Reversal
eurex_derivatives_eobi_t7_v13_1_dissect.trade_reversal_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v13_1_dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v13_1_dissect.last_px(buffer, index, packet, parent)

  -- Trd Reg Ts Execution Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_execution_time = eurex_derivatives_eobi_t7_v13_1_dissect.trd_reg_ts_execution_time(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trd_match_id = eurex_derivatives_eobi_t7_v13_1_dissect.trd_match_id(buffer, index, packet, parent)

  -- Trade Condition: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_condition = eurex_derivatives_eobi_t7_v13_1_dissect.trade_condition(buffer, index, packet, parent)

  -- Md Origin Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, md_origin_type = eurex_derivatives_eobi_t7_v13_1_dissect.md_origin_type(buffer, index, packet, parent)

  -- No Md Entries: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_md_entries = eurex_derivatives_eobi_t7_v13_1_dissect.no_md_entries(buffer, index, packet, parent)

  -- Md Trade Entry Grp Comp: Struct of 4 fields
  for i = 1, no_md_entries do
    index = eurex_derivatives_eobi_t7_v13_1_dissect.md_trade_entry_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Reversal
eurex_derivatives_eobi_t7_v13_1_dissect.trade_reversal = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.trade_reversal then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.trade_reversal(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.trade_reversal(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trade_reversal, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.trade_reversal_fields(buffer, offset, packet, parent)
end

-- Size: Pad 6
eurex_derivatives_eobi_t7_v13_1_size_of.pad_6 = 6

-- Display: Pad 6
eurex_derivatives_eobi_t7_v13_1_display.pad_6 = function(value)
  return "Pad 6: "..value
end

-- Dissect: Pad 6
eurex_derivatives_eobi_t7_v13_1_dissect.pad_6 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.pad_6
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v13_1_display.pad_6(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.pad_6, range, value, display)

  return offset + length, value
end

-- Size: Pad 1
eurex_derivatives_eobi_t7_v13_1_size_of.pad_1 = 1

-- Display: Pad 1
eurex_derivatives_eobi_t7_v13_1_display.pad_1 = function(value)
  return "Pad 1: "..value
end

-- Dissect: Pad 1
eurex_derivatives_eobi_t7_v13_1_dissect.pad_1 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.pad_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v13_1_display.pad_1(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.pad_1, range, value, display)

  return offset + length, value
end

-- Size: Algorithmic Trade Indicator
eurex_derivatives_eobi_t7_v13_1_size_of.algorithmic_trade_indicator = 1

-- Display: Algorithmic Trade Indicator
eurex_derivatives_eobi_t7_v13_1_display.algorithmic_trade_indicator = function(value)
  if value == 1 then
    return "Algorithmic Trade Indicator: Algorithmic Trade (1)"
  end
  if value == 0xFF then
    return "Algorithmic Trade Indicator: No Value"
  end

  return "Algorithmic Trade Indicator: Unknown("..value..")"
end

-- Dissect: Algorithmic Trade Indicator
eurex_derivatives_eobi_t7_v13_1_dissect.algorithmic_trade_indicator = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.algorithmic_trade_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.algorithmic_trade_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.algorithmic_trade_indicator, range, value, display)

  return offset + length, value
end

-- Size: Match Sub Type
eurex_derivatives_eobi_t7_v13_1_size_of.match_sub_type = 1

-- Display: Match Sub Type
eurex_derivatives_eobi_t7_v13_1_display.match_sub_type = function(value)
  if value == 1 then
    return "Match Sub Type: Opening Auction (1)"
  end
  if value == 2 then
    return "Match Sub Type: Closing Auction (2)"
  end
  if value == 3 then
    return "Match Sub Type: Intraday Auction (3)"
  end
  if value == 4 then
    return "Match Sub Type: Circuit Breaker Auction (4)"
  end
  if value == 5 then
    return "Match Sub Type: Ipo Auction (5)"
  end
  if value == 0xFF then
    return "Match Sub Type: No Value"
  end

  return "Match Sub Type: Unknown("..value..")"
end

-- Dissect: Match Sub Type
eurex_derivatives_eobi_t7_v13_1_dissect.match_sub_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.match_sub_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.match_sub_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.match_sub_type, range, value, display)

  return offset + length, value
end

-- Size: Match Type
eurex_derivatives_eobi_t7_v13_1_size_of.match_type = 1

-- Display: Match Type
eurex_derivatives_eobi_t7_v13_1_display.match_type = function(value)
  if value == 3 then
    return "Match Type: Confirmed Trade Report (3)"
  end
  if value == 5 then
    return "Match Type: Cross Auction (5)"
  end
  if value == 7 then
    return "Match Type: Call Auction (7)"
  end
  if value == 13 then
    return "Match Type: Liquidity Improvement Cross (13)"
  end
  if value == 14 then
    return "Match Type: Continuous Auction (14)"
  end
  if value == 0xFF then
    return "Match Type: No Value"
  end

  return "Match Type: Unknown("..value..")"
end

-- Dissect: Match Type
eurex_derivatives_eobi_t7_v13_1_dissect.match_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.match_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.match_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.match_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Report
eurex_derivatives_eobi_t7_v13_1_size_of.trade_report = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_match_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.match_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.match_sub_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.algorithmic_trade_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_1

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trade_condition

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_6

  return index
end

-- Display: Trade Report
eurex_derivatives_eobi_t7_v13_1_display.trade_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Report
eurex_derivatives_eobi_t7_v13_1_dissect.trade_report_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v13_1_dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v13_1_dissect.last_px(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trd_match_id = eurex_derivatives_eobi_t7_v13_1_dissect.trd_match_id(buffer, index, packet, parent)

  -- Match Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, match_type = eurex_derivatives_eobi_t7_v13_1_dissect.match_type(buffer, index, packet, parent)

  -- Match Sub Type: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, match_sub_type = eurex_derivatives_eobi_t7_v13_1_dissect.match_sub_type(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, algorithmic_trade_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.algorithmic_trade_indicator(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_1(buffer, index, packet, parent)

  -- Trade Condition: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_condition = eurex_derivatives_eobi_t7_v13_1_dissect.trade_condition(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report
eurex_derivatives_eobi_t7_v13_1_dissect.trade_report = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_report then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.trade_report(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.trade_report(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trade_report, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.trade_report_fields(buffer, offset, packet, parent)
end

-- Size: Pad 4
eurex_derivatives_eobi_t7_v13_1_size_of.pad_4 = 4

-- Display: Pad 4
eurex_derivatives_eobi_t7_v13_1_display.pad_4 = function(value)
  return "Pad 4: "..value
end

-- Dissect: Pad 4
eurex_derivatives_eobi_t7_v13_1_dissect.pad_4 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.pad_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v13_1_display.pad_4(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.pad_4, range, value, display)

  return offset + length, value
end

-- Size: Number Of Sell Orders
eurex_derivatives_eobi_t7_v13_1_size_of.number_of_sell_orders = 2

-- Display: Number Of Sell Orders
eurex_derivatives_eobi_t7_v13_1_display.number_of_sell_orders = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Number Of Sell Orders: No Value"
  end

  return "Number Of Sell Orders: "..value
end

-- Dissect: Number Of Sell Orders
eurex_derivatives_eobi_t7_v13_1_dissect.number_of_sell_orders = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.number_of_sell_orders
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.number_of_sell_orders(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.number_of_sell_orders, range, value, display)

  return offset + length, value
end

-- Size: Number Of Buy Orders
eurex_derivatives_eobi_t7_v13_1_size_of.number_of_buy_orders = 2

-- Display: Number Of Buy Orders
eurex_derivatives_eobi_t7_v13_1_display.number_of_buy_orders = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Number Of Buy Orders: No Value"
  end

  return "Number Of Buy Orders: "..value
end

-- Dissect: Number Of Buy Orders
eurex_derivatives_eobi_t7_v13_1_dissect.number_of_buy_orders = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.number_of_buy_orders
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.number_of_buy_orders(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.number_of_buy_orders, range, value, display)

  return offset + length, value
end

-- Size: Offer Size
eurex_derivatives_eobi_t7_v13_1_size_of.offer_size = 8

-- Display: Offer Size
eurex_derivatives_eobi_t7_v13_1_display.offer_size = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Offer Size: No Value"
  end

  return "Offer Size: "..value
end

-- Translate: Offer Size
translate.offer_size = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Offer Size
eurex_derivatives_eobi_t7_v13_1_dissect.offer_size = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.offer_size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.offer_size(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.offer_size(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
eurex_derivatives_eobi_t7_v13_1_size_of.bid_size = 8

-- Display: Bid Size
eurex_derivatives_eobi_t7_v13_1_display.bid_size = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Bid Size: No Value"
  end

  return "Bid Size: "..value
end

-- Translate: Bid Size
translate.bid_size = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Bid Size
eurex_derivatives_eobi_t7_v13_1_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.bid_size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.bid_size(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.bid_size(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Offer Px
eurex_derivatives_eobi_t7_v13_1_size_of.offer_px = 8

-- Display: Offer Px
eurex_derivatives_eobi_t7_v13_1_display.offer_px = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Offer Px: No Value"
  end

  return "Offer Px: "..value
end

-- Translate: Offer Px
translate.offer_px = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Offer Px
eurex_derivatives_eobi_t7_v13_1_dissect.offer_px = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.offer_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.offer_px(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.offer_px(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.offer_px, range, value, display)

  return offset + length, value
end

-- Size: Bid Px
eurex_derivatives_eobi_t7_v13_1_size_of.bid_px = 8

-- Display: Bid Px
eurex_derivatives_eobi_t7_v13_1_display.bid_px = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Bid Px: No Value"
  end

  return "Bid Px: "..value
end

-- Translate: Bid Px
translate.bid_px = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Bid Px
eurex_derivatives_eobi_t7_v13_1_dissect.bid_px = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.bid_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.bid_px(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.bid_px(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.bid_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Top Of Book
eurex_derivatives_eobi_t7_v13_1_size_of.top_of_book = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.bid_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.offer_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.bid_size

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.offer_size

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.number_of_buy_orders

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.number_of_sell_orders

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_4

  return index
end

-- Display: Top Of Book
eurex_derivatives_eobi_t7_v13_1_display.top_of_book = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Top Of Book
eurex_derivatives_eobi_t7_v13_1_dissect.top_of_book_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_px = eurex_derivatives_eobi_t7_v13_1_dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_px = eurex_derivatives_eobi_t7_v13_1_dissect.offer_px(buffer, index, packet, parent)

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_size = eurex_derivatives_eobi_t7_v13_1_dissect.bid_size(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_size = eurex_derivatives_eobi_t7_v13_1_dissect.offer_size(buffer, index, packet, parent)

  -- Number Of Buy Orders: 2 Byte Unsigned Fixed Width Integer Nullable
  index, number_of_buy_orders = eurex_derivatives_eobi_t7_v13_1_dissect.number_of_buy_orders(buffer, index, packet, parent)

  -- Number Of Sell Orders: 2 Byte Unsigned Fixed Width Integer Nullable
  index, number_of_sell_orders = eurex_derivatives_eobi_t7_v13_1_dissect.number_of_sell_orders(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book
eurex_derivatives_eobi_t7_v13_1_dissect.top_of_book = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.top_of_book then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.top_of_book(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.top_of_book(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.top_of_book, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.top_of_book_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Sell Sides
eurex_derivatives_eobi_t7_v13_1_size_of.number_of_sell_sides = 2

-- Display: Number Of Sell Sides
eurex_derivatives_eobi_t7_v13_1_display.number_of_sell_sides = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Number Of Sell Sides: No Value"
  end

  return "Number Of Sell Sides: "..value
end

-- Dissect: Number Of Sell Sides
eurex_derivatives_eobi_t7_v13_1_dissect.number_of_sell_sides = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.number_of_sell_sides
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.number_of_sell_sides(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.number_of_sell_sides, range, value, display)

  return offset + length, value
end

-- Size: Number Of Buy Sides
eurex_derivatives_eobi_t7_v13_1_size_of.number_of_buy_sides = 2

-- Display: Number Of Buy Sides
eurex_derivatives_eobi_t7_v13_1_display.number_of_buy_sides = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Number Of Buy Sides: No Value"
  end

  return "Number Of Buy Sides: "..value
end

-- Dissect: Number Of Buy Sides
eurex_derivatives_eobi_t7_v13_1_dissect.number_of_buy_sides = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.number_of_buy_sides
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.number_of_buy_sides(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.number_of_buy_sides, range, value, display)

  return offset + length, value
end

-- Size: Trans Bkd Time
eurex_derivatives_eobi_t7_v13_1_size_of.trans_bkd_time = 8

-- Display: Trans Bkd Time
eurex_derivatives_eobi_t7_v13_1_display.trans_bkd_time = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trans Bkd Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trans Bkd Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trans Bkd Time
eurex_derivatives_eobi_t7_v13_1_dissect.trans_bkd_time = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.trans_bkd_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v13_1_display.trans_bkd_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trans_bkd_time, range, value, display)

  return offset + length, value
end

-- Size: Non Disclosed Trade Volume
eurex_derivatives_eobi_t7_v13_1_size_of.non_disclosed_trade_volume = 8

-- Display: Non Disclosed Trade Volume
eurex_derivatives_eobi_t7_v13_1_display.non_disclosed_trade_volume = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Non Disclosed Trade Volume: No Value"
  end

  return "Non Disclosed Trade Volume: "..value
end

-- Translate: Non Disclosed Trade Volume
translate.non_disclosed_trade_volume = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Non Disclosed Trade Volume
eurex_derivatives_eobi_t7_v13_1_dissect.non_disclosed_trade_volume = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.non_disclosed_trade_volume
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.non_disclosed_trade_volume(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.non_disclosed_trade_volume(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.non_disclosed_trade_volume, range, value, display)

  return offset + length, value
end

-- Size: Multi Leg Price Model
eurex_derivatives_eobi_t7_v13_1_size_of.multi_leg_price_model = 1

-- Display: Multi Leg Price Model
eurex_derivatives_eobi_t7_v13_1_display.multi_leg_price_model = function(value)
  if value == 0 then
    return "Multi Leg Price Model: Standard (0)"
  end
  if value == 1 then
    return "Multi Leg Price Model: User Defined (1)"
  end
  if value == 0xFF then
    return "Multi Leg Price Model: No Value"
  end

  return "Multi Leg Price Model: Unknown("..value..")"
end

-- Dissect: Multi Leg Price Model
eurex_derivatives_eobi_t7_v13_1_dissect.multi_leg_price_model = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.multi_leg_price_model
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.multi_leg_price_model(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.multi_leg_price_model, range, value, display)

  return offset + length, value
end

-- Size: Multi Leg Reporting Type
eurex_derivatives_eobi_t7_v13_1_size_of.multi_leg_reporting_type = 1

-- Display: Multi Leg Reporting Type
eurex_derivatives_eobi_t7_v13_1_display.multi_leg_reporting_type = function(value)
  if value == 1 then
    return "Multi Leg Reporting Type: Single Security (1)"
  end
  if value == 2 then
    return "Multi Leg Reporting Type: Individual Leg Of A Multi Leg Security (2)"
  end
  if value == 3 then
    return "Multi Leg Reporting Type: Multi Leg Security (3)"
  end
  if value == 0xFF then
    return "Multi Leg Reporting Type: No Value"
  end

  return "Multi Leg Reporting Type: Unknown("..value..")"
end

-- Dissect: Multi Leg Reporting Type
eurex_derivatives_eobi_t7_v13_1_dissect.multi_leg_reporting_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.multi_leg_reporting_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.multi_leg_reporting_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.multi_leg_reporting_type, range, value, display)

  return offset + length, value
end

-- Size: Trd Type
eurex_derivatives_eobi_t7_v13_1_size_of.trd_type = 2

-- Display: Trd Type
eurex_derivatives_eobi_t7_v13_1_display.trd_type = function(value)
  if value == 1 then
    return "Trd Type: Block Trade (1)"
  end
  if value == 2 then
    return "Trd Type: Efp (2)"
  end
  if value == 12 then
    return "Trd Type: Efs (12)"
  end
  if value == 54 then
    return "Trd Type: Otc (54)"
  end
  if value == 55 then
    return "Trd Type: Exchange Basis Facility (55)"
  end
  if value == 1000 then
    return "Trd Type: Vola Trade (1000)"
  end
  if value == 1001 then
    return "Trd Type: Efp Fin Trade (1001)"
  end
  if value == 1002 then
    return "Trd Type: Efp Index Futures Trade (1002)"
  end
  if value == 1004 then
    return "Trd Type: Block Trade At Market (1004)"
  end
  if value == 1006 then
    return "Trd Type: Xetra Eurex Enlight Triggered Trade (1006)"
  end
  if value == 1007 then
    return "Trd Type: Block Qtpip Trade (1007)"
  end
  if value == 1017 then
    return "Trd Type: Delta Trade At Market (1017)"
  end
  if value == 0xFFFF then
    return "Trd Type: No Value"
  end

  return "Trd Type: Unknown("..value..")"
end

-- Dissect: Trd Type
eurex_derivatives_eobi_t7_v13_1_dissect.trd_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.trd_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.trd_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trd_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tes Trade Report
eurex_derivatives_eobi_t7_v13_1_size_of.tes_trade_report = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_match_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trade_condition

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.multi_leg_reporting_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.multi_leg_price_model

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_6

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.non_disclosed_trade_volume

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trans_bkd_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.number_of_buy_sides

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.number_of_sell_sides

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_4

  return index
end

-- Display: Tes Trade Report
eurex_derivatives_eobi_t7_v13_1_display.tes_trade_report = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tes Trade Report
eurex_derivatives_eobi_t7_v13_1_dissect.tes_trade_report_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v13_1_dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v13_1_dissect.last_px(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trd_match_id = eurex_derivatives_eobi_t7_v13_1_dissect.trd_match_id(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, trd_type = eurex_derivatives_eobi_t7_v13_1_dissect.trd_type(buffer, index, packet, parent)

  -- Trade Condition: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_condition = eurex_derivatives_eobi_t7_v13_1_dissect.trade_condition(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, multi_leg_reporting_type = eurex_derivatives_eobi_t7_v13_1_dissect.multi_leg_reporting_type(buffer, index, packet, parent)

  -- Multi Leg Price Model: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, multi_leg_price_model = eurex_derivatives_eobi_t7_v13_1_dissect.multi_leg_price_model(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_6(buffer, index, packet, parent)

  -- Non Disclosed Trade Volume: 8 Byte Unsigned Fixed Width Integer Nullable
  index, non_disclosed_trade_volume = eurex_derivatives_eobi_t7_v13_1_dissect.non_disclosed_trade_volume(buffer, index, packet, parent)

  -- Trans Bkd Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trans_bkd_time = eurex_derivatives_eobi_t7_v13_1_dissect.trans_bkd_time(buffer, index, packet, parent)

  -- Number Of Buy Sides: 2 Byte Unsigned Fixed Width Integer Nullable
  index, number_of_buy_sides = eurex_derivatives_eobi_t7_v13_1_dissect.number_of_buy_sides(buffer, index, packet, parent)

  -- Number Of Sell Sides: 2 Byte Unsigned Fixed Width Integer Nullable
  index, number_of_sell_sides = eurex_derivatives_eobi_t7_v13_1_dissect.number_of_sell_sides(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Tes Trade Report
eurex_derivatives_eobi_t7_v13_1_dissect.tes_trade_report = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tes_trade_report then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.tes_trade_report(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.tes_trade_report(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.tes_trade_report, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.tes_trade_report_fields(buffer, offset, packet, parent)
end

-- Size: Price
eurex_derivatives_eobi_t7_v13_1_size_of.price = 8

-- Display: Price
eurex_derivatives_eobi_t7_v13_1_display.price = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Price: No Value"
  end

  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Price
eurex_derivatives_eobi_t7_v13_1_dissect.price = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.price(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Pad 5
eurex_derivatives_eobi_t7_v13_1_size_of.pad_5 = 5

-- Display: Pad 5
eurex_derivatives_eobi_t7_v13_1_display.pad_5 = function(value)
  return "Pad 5: "..value
end

-- Dissect: Pad 5
eurex_derivatives_eobi_t7_v13_1_dissect.pad_5 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.pad_5
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v13_1_display.pad_5(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.pad_5, range, value, display)

  return offset + length, value
end

-- Size: Hhi Indicator
eurex_derivatives_eobi_t7_v13_1_size_of.hhi_indicator = 1

-- Display: Hhi Indicator
eurex_derivatives_eobi_t7_v13_1_display.hhi_indicator = function(value)
  if value == -1 then
    return "Hhi Indicator: No Update (-1)"
  end
  if value == 0x80 then
    return "Hhi Indicator: No Value"
  end

  return "Hhi Indicator: Unknown("..value..")"
end

-- Dissect: Hhi Indicator
eurex_derivatives_eobi_t7_v13_1_dissect.hhi_indicator = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.hhi_indicator
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eobi_t7_v13_1_display.hhi_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.hhi_indicator, range, value, display)

  return offset + length, value
end

-- Size: Ord Type
eurex_derivatives_eobi_t7_v13_1_size_of.ord_type = 1

-- Display: Ord Type
eurex_derivatives_eobi_t7_v13_1_display.ord_type = function(value)
  if value == 1 then
    return "Ord Type: Market (1)"
  end
  if value == 0xFF then
    return "Ord Type: No Value"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
eurex_derivatives_eobi_t7_v13_1_dissect.ord_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.ord_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.ord_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Size: Side
eurex_derivatives_eobi_t7_v13_1_size_of.side = 1

-- Display: Side
eurex_derivatives_eobi_t7_v13_1_display.side = function(value)
  if value == 1 then
    return "Side: Buy (1)"
  end
  if value == 2 then
    return "Side: Sell (2)"
  end
  if value == 0xFF then
    return "Side: No Value"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
eurex_derivatives_eobi_t7_v13_1_dissect.side = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.side(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Display Qty
eurex_derivatives_eobi_t7_v13_1_size_of.display_qty = 8

-- Display: Display Qty
eurex_derivatives_eobi_t7_v13_1_display.display_qty = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Display Qty: No Value"
  end

  return "Display Qty: "..value
end

-- Translate: Display Qty
translate.display_qty = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Display Qty
eurex_derivatives_eobi_t7_v13_1_dissect.display_qty = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.display_qty
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.display_qty(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.display_qty(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Time Priority
eurex_derivatives_eobi_t7_v13_1_size_of.trd_reg_ts_time_priority = 8

-- Display: Trd Reg Ts Time Priority
eurex_derivatives_eobi_t7_v13_1_display.trd_reg_ts_time_priority = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Time Priority: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Time Priority: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Time Priority
eurex_derivatives_eobi_t7_v13_1_dissect.trd_reg_ts_time_priority = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.trd_reg_ts_time_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v13_1_display.trd_reg_ts_time_priority(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trd_reg_ts_time_priority, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Details Comp
eurex_derivatives_eobi_t7_v13_1_size_of.order_details_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_reg_ts_time_priority

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.display_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.side

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.ord_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.hhi_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_5

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.price

  return index
end

-- Display: Order Details Comp
eurex_derivatives_eobi_t7_v13_1_display.order_details_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Details Comp
eurex_derivatives_eobi_t7_v13_1_dissect.order_details_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = eurex_derivatives_eobi_t7_v13_1_dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Display Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = eurex_derivatives_eobi_t7_v13_1_dissect.display_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eobi_t7_v13_1_dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ord_type = eurex_derivatives_eobi_t7_v13_1_dissect.ord_type(buffer, index, packet, parent)

  -- Hhi Indicator: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, hhi_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.hhi_indicator(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_5(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eobi_t7_v13_1_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Details Comp
eurex_derivatives_eobi_t7_v13_1_dissect.order_details_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_details_comp then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.order_details_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.order_details_comp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.order_details_comp, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.order_details_comp_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Snapshot Order
eurex_derivatives_eobi_t7_v13_1_size_of.snapshot_order = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.order_details_comp(buffer, offset + index)

  return index
end

-- Display: Snapshot Order
eurex_derivatives_eobi_t7_v13_1_display.snapshot_order = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Snapshot Order
eurex_derivatives_eobi_t7_v13_1_dissect.snapshot_order_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Details Comp: Struct of 7 fields
  index, order_details_comp = eurex_derivatives_eobi_t7_v13_1_dissect.order_details_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Order
eurex_derivatives_eobi_t7_v13_1_dissect.snapshot_order = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.snapshot_order then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.snapshot_order(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.snapshot_order(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.snapshot_order, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.snapshot_order_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Quote Request
eurex_derivatives_eobi_t7_v13_1_size_of.quote_request = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.side

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_7

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  return index
end

-- Display: Quote Request
eurex_derivatives_eobi_t7_v13_1_display.quote_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Request
eurex_derivatives_eobi_t7_v13_1_dissect.quote_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v13_1_dissect.last_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eobi_t7_v13_1_dissect.side(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_7(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Request
eurex_derivatives_eobi_t7_v13_1_dissect.quote_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_request then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.quote_request(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.quote_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.quote_request, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.quote_request_fields(buffer, offset, packet, parent)
end

-- Size: Tes Trad Ses Status
eurex_derivatives_eobi_t7_v13_1_size_of.tes_trad_ses_status = 1

-- Display: Tes Trad Ses Status
eurex_derivatives_eobi_t7_v13_1_display.tes_trad_ses_status = function(value)
  if value == 1 then
    return "Tes Trad Ses Status: Halted (1)"
  end
  if value == 2 then
    return "Tes Trad Ses Status: Open (2)"
  end
  if value == 3 then
    return "Tes Trad Ses Status: Closed (3)"
  end
  if value == 5 then
    return "Tes Trad Ses Status: Pre Close (5)"
  end
  if value == 0xFF then
    return "Tes Trad Ses Status: No Value"
  end

  return "Tes Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Tes Trad Ses Status
eurex_derivatives_eobi_t7_v13_1_dissect.tes_trad_ses_status = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.tes_trad_ses_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.tes_trad_ses_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.tes_trad_ses_status, range, value, display)

  return offset + length, value
end

-- Size: Fast Market Indicator
eurex_derivatives_eobi_t7_v13_1_size_of.fast_market_indicator = 1

-- Display: Fast Market Indicator
eurex_derivatives_eobi_t7_v13_1_display.fast_market_indicator = function(value)
  if value == 0 then
    return "Fast Market Indicator: No (0)"
  end
  if value == 1 then
    return "Fast Market Indicator: Yes (1)"
  end
  if value == 0xFF then
    return "Fast Market Indicator: No Value"
  end

  return "Fast Market Indicator: Unknown("..value..")"
end

-- Dissect: Fast Market Indicator
eurex_derivatives_eobi_t7_v13_1_dissect.fast_market_indicator = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.fast_market_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.fast_market_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.fast_market_indicator, range, value, display)

  return offset + length, value
end

-- Size: Market Condition
eurex_derivatives_eobi_t7_v13_1_size_of.market_condition = 1

-- Display: Market Condition
eurex_derivatives_eobi_t7_v13_1_display.market_condition = function(value)
  if value == 0 then
    return "Market Condition: Normal (0)"
  end
  if value == 1 then
    return "Market Condition: Stressed (1)"
  end
  if value == 0xFF then
    return "Market Condition: No Value"
  end

  return "Market Condition: Unknown("..value..")"
end

-- Dissect: Market Condition
eurex_derivatives_eobi_t7_v13_1_dissect.market_condition = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.market_condition
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.market_condition(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.market_condition, range, value, display)

  return offset + length, value
end

-- Size: Trad Ses Status
eurex_derivatives_eobi_t7_v13_1_size_of.trad_ses_status = 1

-- Display: Trad Ses Status
eurex_derivatives_eobi_t7_v13_1_display.trad_ses_status = function(value)
  if value == 1 then
    return "Trad Ses Status: Halted (1)"
  end
  if value == 2 then
    return "Trad Ses Status: Open (2)"
  end
  if value == 3 then
    return "Trad Ses Status: Closed (3)"
  end
  if value == 0xFF then
    return "Trad Ses Status: No Value"
  end

  return "Trad Ses Status: Unknown("..value..")"
end

-- Dissect: Trad Ses Status
eurex_derivatives_eobi_t7_v13_1_dissect.trad_ses_status = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.trad_ses_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.trad_ses_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trad_ses_status, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Sub Id
eurex_derivatives_eobi_t7_v13_1_size_of.trading_session_sub_id = 1

-- Display: Trading Session Sub Id
eurex_derivatives_eobi_t7_v13_1_display.trading_session_sub_id = function(value)
  if value == 1 then
    return "Trading Session Sub Id: Pre Trading (1)"
  end
  if value == 3 then
    return "Trading Session Sub Id: Continuous (3)"
  end
  if value == 4 then
    return "Trading Session Sub Id: Closing (4)"
  end
  if value == 5 then
    return "Trading Session Sub Id: Post Trading (5)"
  end
  if value == 7 then
    return "Trading Session Sub Id: Quiescent (7)"
  end
  if value == 0xFF then
    return "Trading Session Sub Id: No Value"
  end

  return "Trading Session Sub Id: Unknown("..value..")"
end

-- Dissect: Trading Session Sub Id
eurex_derivatives_eobi_t7_v13_1_dissect.trading_session_sub_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.trading_session_sub_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.trading_session_sub_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trading_session_sub_id, range, value, display)

  return offset + length, value
end

-- Size: Trading Session Id
eurex_derivatives_eobi_t7_v13_1_size_of.trading_session_id = 1

-- Display: Trading Session Id
eurex_derivatives_eobi_t7_v13_1_display.trading_session_id = function(value)
  if value == 1 then
    return "Trading Session Id: Day (1)"
  end
  if value == 3 then
    return "Trading Session Id: Morning (3)"
  end
  if value == 5 then
    return "Trading Session Id: Evening (5)"
  end
  if value == 6 then
    return "Trading Session Id: After Hours (6)"
  end
  if value == 7 then
    return "Trading Session Id: Holiday (7)"
  end
  if value == 0xFF then
    return "Trading Session Id: No Value"
  end

  return "Trading Session Id: Unknown("..value..")"
end

-- Dissect: Trading Session Id
eurex_derivatives_eobi_t7_v13_1_dissect.trading_session_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.trading_session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.trading_session_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trading_session_id, range, value, display)

  return offset + length, value
end

-- Size: Last Msg Seq Num Processed
eurex_derivatives_eobi_t7_v13_1_size_of.last_msg_seq_num_processed = 4

-- Display: Last Msg Seq Num Processed
eurex_derivatives_eobi_t7_v13_1_display.last_msg_seq_num_processed = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Last Msg Seq Num Processed: No Value"
  end

  return "Last Msg Seq Num Processed: "..value
end

-- Dissect: Last Msg Seq Num Processed
eurex_derivatives_eobi_t7_v13_1_dissect.last_msg_seq_num_processed = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.last_msg_seq_num_processed
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.last_msg_seq_num_processed(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.last_msg_seq_num_processed, range, value, display)

  return offset + length, value
end

-- Calculate size of: Product Summary
eurex_derivatives_eobi_t7_v13_1_size_of.product_summary = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_msg_seq_num_processed

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trading_session_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trading_session_sub_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trad_ses_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.market_condition

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.fast_market_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.tes_trad_ses_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_6

  return index
end

-- Display: Product Summary
eurex_derivatives_eobi_t7_v13_1_display.product_summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Product Summary
eurex_derivatives_eobi_t7_v13_1_dissect.product_summary_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_msg_seq_num_processed = eurex_derivatives_eobi_t7_v13_1_dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trading_session_id = eurex_derivatives_eobi_t7_v13_1_dissect.trading_session_id(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trading_session_sub_id = eurex_derivatives_eobi_t7_v13_1_dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Trad Ses Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trad_ses_status = eurex_derivatives_eobi_t7_v13_1_dissect.trad_ses_status(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_condition = eurex_derivatives_eobi_t7_v13_1_dissect.market_condition(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fast_market_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.fast_market_indicator(buffer, index, packet, parent)

  -- Tes Trad Ses Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, tes_trad_ses_status = eurex_derivatives_eobi_t7_v13_1_dissect.tes_trad_ses_status(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Product Summary
eurex_derivatives_eobi_t7_v13_1_dissect.product_summary = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.product_summary then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.product_summary(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.product_summary(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.product_summary, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.product_summary_fields(buffer, offset, packet, parent)
end

-- Size: Pad 2
eurex_derivatives_eobi_t7_v13_1_size_of.pad_2 = 2

-- Display: Pad 2
eurex_derivatives_eobi_t7_v13_1_display.pad_2 = function(value)
  return "Pad 2: "..value
end

-- Dissect: Pad 2
eurex_derivatives_eobi_t7_v13_1_dissect.pad_2 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.pad_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v13_1_display.pad_2(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.pad_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Product State Change
eurex_derivatives_eobi_t7_v13_1_size_of.product_state_change = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trading_session_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trading_session_sub_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trad_ses_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.market_condition

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.fast_market_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.tes_trad_ses_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_2

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  return index
end

-- Display: Product State Change
eurex_derivatives_eobi_t7_v13_1_display.product_state_change = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Product State Change
eurex_derivatives_eobi_t7_v13_1_dissect.product_state_change_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Session Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trading_session_id = eurex_derivatives_eobi_t7_v13_1_dissect.trading_session_id(buffer, index, packet, parent)

  -- Trading Session Sub Id: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, trading_session_sub_id = eurex_derivatives_eobi_t7_v13_1_dissect.trading_session_sub_id(buffer, index, packet, parent)

  -- Trad Ses Status: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, trad_ses_status = eurex_derivatives_eobi_t7_v13_1_dissect.trad_ses_status(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_condition = eurex_derivatives_eobi_t7_v13_1_dissect.market_condition(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fast_market_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.fast_market_indicator(buffer, index, packet, parent)

  -- Tes Trad Ses Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, tes_trad_ses_status = eurex_derivatives_eobi_t7_v13_1_dissect.tes_trad_ses_status(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Product State Change
eurex_derivatives_eobi_t7_v13_1_dissect.product_state_change = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.product_state_change then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.product_state_change(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.product_state_change(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.product_state_change, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.product_state_change_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Partial Order Execution
eurex_derivatives_eobi_t7_v13_1_size_of.partial_order_execution = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.side

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.ord_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.algorithmic_trade_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.hhi_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_match_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.price

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_reg_ts_time_priority

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_px

  return index
end

-- Display: Partial Order Execution
eurex_derivatives_eobi_t7_v13_1_display.partial_order_execution = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Partial Order Execution
eurex_derivatives_eobi_t7_v13_1_dissect.partial_order_execution_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eobi_t7_v13_1_dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ord_type = eurex_derivatives_eobi_t7_v13_1_dissect.ord_type(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, algorithmic_trade_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.algorithmic_trade_indicator(buffer, index, packet, parent)

  -- Hhi Indicator: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, hhi_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.hhi_indicator(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trd_match_id = eurex_derivatives_eobi_t7_v13_1_dissect.trd_match_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eobi_t7_v13_1_dissect.price(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = eurex_derivatives_eobi_t7_v13_1_dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v13_1_dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v13_1_dissect.last_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Partial Order Execution
eurex_derivatives_eobi_t7_v13_1_dissect.partial_order_execution = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.partial_order_execution then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.partial_order_execution(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.partial_order_execution(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.partial_order_execution, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.partial_order_execution_fields(buffer, offset, packet, parent)
end

-- Size: Prev Display Qty
eurex_derivatives_eobi_t7_v13_1_size_of.prev_display_qty = 8

-- Display: Prev Display Qty
eurex_derivatives_eobi_t7_v13_1_display.prev_display_qty = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Prev Display Qty: No Value"
  end

  return "Prev Display Qty: "..value
end

-- Translate: Prev Display Qty
translate.prev_display_qty = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Prev Display Qty
eurex_derivatives_eobi_t7_v13_1_dissect.prev_display_qty = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.prev_display_qty
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.prev_display_qty(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.prev_display_qty(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.prev_display_qty, range, value, display)

  return offset + length, value
end

-- Size: Request Time
eurex_derivatives_eobi_t7_v13_1_size_of.request_time = 8

-- Display: Request Time
eurex_derivatives_eobi_t7_v13_1_display.request_time = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Request Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Request Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Time
eurex_derivatives_eobi_t7_v13_1_dissect.request_time = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.request_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v13_1_display.request_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.request_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Modify Same Prio
eurex_derivatives_eobi_t7_v13_1_size_of.order_modify_same_prio = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.request_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.prev_display_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.order_details_comp(buffer, offset + index)

  return index
end

-- Display: Order Modify Same Prio
eurex_derivatives_eobi_t7_v13_1_display.order_modify_same_prio = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Modify Same Prio
eurex_derivatives_eobi_t7_v13_1_dissect.order_modify_same_prio_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = eurex_derivatives_eobi_t7_v13_1_dissect.request_time(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  -- Prev Display Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, prev_display_qty = eurex_derivatives_eobi_t7_v13_1_dissect.prev_display_qty(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Order Details Comp: Struct of 7 fields
  index, order_details_comp = eurex_derivatives_eobi_t7_v13_1_dissect.order_details_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Same Prio
eurex_derivatives_eobi_t7_v13_1_dissect.order_modify_same_prio = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_modify_same_prio then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.order_modify_same_prio(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.order_modify_same_prio(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.order_modify_same_prio, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.order_modify_same_prio_fields(buffer, offset, packet, parent)
end

-- Size: Prev Price Hhi Indicator
eurex_derivatives_eobi_t7_v13_1_size_of.prev_price_hhi_indicator = 1

-- Display: Prev Price Hhi Indicator
eurex_derivatives_eobi_t7_v13_1_display.prev_price_hhi_indicator = function(value)
  if value == -1 then
    return "Prev Price Hhi Indicator: No Update (-1)"
  end
  if value == 0x80 then
    return "Prev Price Hhi Indicator: No Value"
  end

  return "Prev Price Hhi Indicator: Unknown("..value..")"
end

-- Dissect: Prev Price Hhi Indicator
eurex_derivatives_eobi_t7_v13_1_dissect.prev_price_hhi_indicator = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.prev_price_hhi_indicator
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eobi_t7_v13_1_display.prev_price_hhi_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.prev_price_hhi_indicator, range, value, display)

  return offset + length, value
end

-- Size: Prev Price
eurex_derivatives_eobi_t7_v13_1_size_of.prev_price = 8

-- Display: Prev Price
eurex_derivatives_eobi_t7_v13_1_display.prev_price = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Prev Price: No Value"
  end

  return "Prev Price: "..value
end

-- Translate: Prev Price
translate.prev_price = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Prev Price
eurex_derivatives_eobi_t7_v13_1_dissect.prev_price = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.prev_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.prev_price(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.prev_price(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.prev_price, range, value, display)

  return offset + length, value
end

-- Size: Trd Reg Ts Prev Time Priority
eurex_derivatives_eobi_t7_v13_1_size_of.trd_reg_ts_prev_time_priority = 8

-- Display: Trd Reg Ts Prev Time Priority
eurex_derivatives_eobi_t7_v13_1_display.trd_reg_ts_prev_time_priority = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Trd Reg Ts Prev Time Priority: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trd Reg Ts Prev Time Priority: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trd Reg Ts Prev Time Priority
eurex_derivatives_eobi_t7_v13_1_dissect.trd_reg_ts_prev_time_priority = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.trd_reg_ts_prev_time_priority
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v13_1_display.trd_reg_ts_prev_time_priority(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trd_reg_ts_prev_time_priority, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Modify
eurex_derivatives_eobi_t7_v13_1_size_of.order_modify = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.request_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_reg_ts_prev_time_priority

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.prev_price

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.prev_display_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.order_details_comp(buffer, offset + index)

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.prev_price_hhi_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_7

  return index
end

-- Display: Order Modify
eurex_derivatives_eobi_t7_v13_1_display.order_modify = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Modify
eurex_derivatives_eobi_t7_v13_1_dissect.order_modify_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = eurex_derivatives_eobi_t7_v13_1_dissect.request_time(buffer, index, packet, parent)

  -- Trd Reg Ts Prev Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_prev_time_priority = eurex_derivatives_eobi_t7_v13_1_dissect.trd_reg_ts_prev_time_priority(buffer, index, packet, parent)

  -- Prev Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, prev_price = eurex_derivatives_eobi_t7_v13_1_dissect.prev_price(buffer, index, packet, parent)

  -- Prev Display Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, prev_display_qty = eurex_derivatives_eobi_t7_v13_1_dissect.prev_display_qty(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Order Details Comp: Struct of 7 fields
  index, order_details_comp = eurex_derivatives_eobi_t7_v13_1_dissect.order_details_comp(buffer, index, packet, parent)

  -- Prev Price Hhi Indicator: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, prev_price_hhi_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.prev_price_hhi_indicator(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify
eurex_derivatives_eobi_t7_v13_1_dissect.order_modify = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_modify then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.order_modify(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.order_modify(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.order_modify, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.order_modify_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Mass Delete
eurex_derivatives_eobi_t7_v13_1_size_of.order_mass_delete = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  return index
end

-- Display: Order Mass Delete
eurex_derivatives_eobi_t7_v13_1_display.order_mass_delete = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Mass Delete
eurex_derivatives_eobi_t7_v13_1_dissect.order_mass_delete_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Mass Delete
eurex_derivatives_eobi_t7_v13_1_dissect.order_mass_delete = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_mass_delete then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.order_mass_delete(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.order_mass_delete(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.order_mass_delete, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.order_mass_delete_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Delete
eurex_derivatives_eobi_t7_v13_1_size_of.order_delete = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.request_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.order_details_comp(buffer, offset + index)

  return index
end

-- Display: Order Delete
eurex_derivatives_eobi_t7_v13_1_display.order_delete = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Delete
eurex_derivatives_eobi_t7_v13_1_dissect.order_delete_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = eurex_derivatives_eobi_t7_v13_1_dissect.request_time(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Order Details Comp: Struct of 7 fields
  index, order_details_comp = eurex_derivatives_eobi_t7_v13_1_dissect.order_details_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete
eurex_derivatives_eobi_t7_v13_1_dissect.order_delete = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_delete then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.order_delete(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.order_delete(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.order_delete, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.order_delete_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Add
eurex_derivatives_eobi_t7_v13_1_size_of.order_add = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.request_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.order_details_comp(buffer, offset + index)

  return index
end

-- Display: Order Add
eurex_derivatives_eobi_t7_v13_1_display.order_add = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Add
eurex_derivatives_eobi_t7_v13_1_dissect.order_add_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = eurex_derivatives_eobi_t7_v13_1_dissect.request_time(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Order Details Comp: Struct of 7 fields
  index, order_details_comp = eurex_derivatives_eobi_t7_v13_1_dissect.order_details_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Add
eurex_derivatives_eobi_t7_v13_1_dissect.order_add = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_add then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.order_add(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.order_add(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.order_add, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.order_add_fields(buffer, offset, packet, parent)
end

-- Size: Tes Security Status
eurex_derivatives_eobi_t7_v13_1_size_of.tes_security_status = 1

-- Display: Tes Security Status
eurex_derivatives_eobi_t7_v13_1_display.tes_security_status = function(value)
  if value == 1 then
    return "Tes Security Status: Active (1)"
  end
  if value == 2 then
    return "Tes Security Status: Inactive (2)"
  end
  if value == 4 then
    return "Tes Security Status: Expired (4)"
  end
  if value == 9 then
    return "Tes Security Status: Suspended (9)"
  end
  if value == 0xFF then
    return "Tes Security Status: No Value"
  end

  return "Tes Security Status: Unknown("..value..")"
end

-- Dissect: Tes Security Status
eurex_derivatives_eobi_t7_v13_1_dissect.tes_security_status = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.tes_security_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.tes_security_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.tes_security_status, range, value, display)

  return offset + length, value
end

-- Size: Sold Out Indicator
eurex_derivatives_eobi_t7_v13_1_size_of.sold_out_indicator = 1

-- Display: Sold Out Indicator
eurex_derivatives_eobi_t7_v13_1_display.sold_out_indicator = function(value)
  if value == 1 then
    return "Sold Out Indicator: Sold Out (1)"
  end
  if value == 0xFF then
    return "Sold Out Indicator: No Value"
  end

  return "Sold Out Indicator: Unknown("..value..")"
end

-- Dissect: Sold Out Indicator
eurex_derivatives_eobi_t7_v13_1_dissect.sold_out_indicator = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.sold_out_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.sold_out_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.sold_out_indicator, range, value, display)

  return offset + length, value
end

-- Size: Security Trading Event
eurex_derivatives_eobi_t7_v13_1_size_of.security_trading_event = 1

-- Display: Security Trading Event
eurex_derivatives_eobi_t7_v13_1_display.security_trading_event = function(value)
  if value == 10 then
    return "Security Trading Event: Price Volatility Auction Is Extended (10)"
  end
  if value == 11 then
    return "Security Trading Event: Price Volatility Auction Is Extended Again (11)"
  end
  if value == 0xFF then
    return "Security Trading Event: No Value"
  end

  return "Security Trading Event: Unknown("..value..")"
end

-- Dissect: Security Trading Event
eurex_derivatives_eobi_t7_v13_1_dissect.security_trading_event = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.security_trading_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.security_trading_event(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.security_trading_event, range, value, display)

  return offset + length, value
end

-- Size: Security Trading Status
eurex_derivatives_eobi_t7_v13_1_size_of.security_trading_status = 1

-- Display: Security Trading Status
eurex_derivatives_eobi_t7_v13_1_display.security_trading_status = function(value)
  if value == 2 then
    return "Security Trading Status: Trading Halt (2)"
  end
  if value == 7 then
    return "Security Trading Status: Market Imbalance Buy (7)"
  end
  if value == 8 then
    return "Security Trading Status: Market Imbalance Sell (8)"
  end
  if value == 200 then
    return "Security Trading Status: Closed (200)"
  end
  if value == 201 then
    return "Security Trading Status: Restricted (201)"
  end
  if value == 202 then
    return "Security Trading Status: Book (202)"
  end
  if value == 203 then
    return "Security Trading Status: Continuous (203)"
  end
  if value == 204 then
    return "Security Trading Status: Opening Auction (204)"
  end
  if value == 205 then
    return "Security Trading Status: Opening Auction Freeze (205)"
  end
  if value == 206 then
    return "Security Trading Status: Intraday Auction (206)"
  end
  if value == 207 then
    return "Security Trading Status: Intraday Auction Freeze (207)"
  end
  if value == 208 then
    return "Security Trading Status: Circuit Breaker Auction (208)"
  end
  if value == 209 then
    return "Security Trading Status: Circuit Breaker Auction Freeze (209)"
  end
  if value == 210 then
    return "Security Trading Status: Closing Auction (210)"
  end
  if value == 211 then
    return "Security Trading Status: Closing Auction Freeze (211)"
  end
  if value == 212 then
    return "Security Trading Status: Ipo Auction (212)"
  end
  if value == 213 then
    return "Security Trading Status: Ipo Auction Freeze (213)"
  end
  if value == 214 then
    return "Security Trading Status: Pre Call (214)"
  end
  if value == 215 then
    return "Security Trading Status: Call (215)"
  end
  if value == 216 then
    return "Security Trading Status: Freeze (216)"
  end
  if value == 217 then
    return "Security Trading Status: Trade At Close (217)"
  end
  if value == 220 then
    return "Security Trading Status: Circuit Breaker Auction Triggered By Static Limit Breach (220)"
  end
  if value == 221 then
    return "Security Trading Status: Circuit Breaker Auction Triggered By Static Limit Breach Freeze (221)"
  end
  if value == 0xFF then
    return "Security Trading Status: No Value"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
eurex_derivatives_eobi_t7_v13_1_dissect.security_trading_status = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.security_trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.security_trading_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Size: Security Status
eurex_derivatives_eobi_t7_v13_1_size_of.security_status = 1

-- Display: Security Status
eurex_derivatives_eobi_t7_v13_1_display.security_status = function(value)
  if value == 1 then
    return "Security Status: Active (1)"
  end
  if value == 2 then
    return "Security Status: Inactive (2)"
  end
  if value == 4 then
    return "Security Status: Expired (4)"
  end
  if value == 6 then
    return "Security Status: Knocked Out (6)"
  end
  if value == 7 then
    return "Security Status: Knock Out Revoked (7)"
  end
  if value == 9 then
    return "Security Status: Suspended (9)"
  end
  if value == 11 then
    return "Security Status: Pending Deletion (11)"
  end
  if value == 12 then
    return "Security Status: Knocked Out And Suspended (12)"
  end
  if value == 0xFF then
    return "Security Status: No Value"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
eurex_derivatives_eobi_t7_v13_1_dissect.security_status = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.security_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.security_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.security_status, range, value, display)

  return offset + length, value
end

-- Size: Low Px
eurex_derivatives_eobi_t7_v13_1_size_of.low_px = 8

-- Display: Low Px
eurex_derivatives_eobi_t7_v13_1_display.low_px = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Low Px: No Value"
  end

  return "Low Px: "..value
end

-- Translate: Low Px
translate.low_px = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Low Px
eurex_derivatives_eobi_t7_v13_1_dissect.low_px = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.low_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.low_px(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.low_px(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.low_px, range, value, display)

  return offset + length, value
end

-- Size: High Px
eurex_derivatives_eobi_t7_v13_1_size_of.high_px = 8

-- Display: High Px
eurex_derivatives_eobi_t7_v13_1_display.high_px = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "High Px: No Value"
  end

  return "High Px: "..value
end

-- Translate: High Px
translate.high_px = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: High Px
eurex_derivatives_eobi_t7_v13_1_dissect.high_px = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.high_px
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.high_px(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.high_px(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.high_px, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sec Mass Stat Grp Comp
eurex_derivatives_eobi_t7_v13_1_size_of.sec_mass_stat_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.high_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.low_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_trading_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.market_condition

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_trading_event

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.sold_out_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.tes_security_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_2

  return index
end

-- Display: Sec Mass Stat Grp Comp
eurex_derivatives_eobi_t7_v13_1_display.sec_mass_stat_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sec Mass Stat Grp Comp
eurex_derivatives_eobi_t7_v13_1_dissect.sec_mass_stat_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- High Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, high_px = eurex_derivatives_eobi_t7_v13_1_dissect.high_px(buffer, index, packet, parent)

  -- Low Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, low_px = eurex_derivatives_eobi_t7_v13_1_dissect.low_px(buffer, index, packet, parent)

  -- Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_status = eurex_derivatives_eobi_t7_v13_1_dissect.security_status(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 24 values
  index, security_trading_status = eurex_derivatives_eobi_t7_v13_1_dissect.security_trading_status(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_condition = eurex_derivatives_eobi_t7_v13_1_dissect.market_condition(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_trading_event = eurex_derivatives_eobi_t7_v13_1_dissect.security_trading_event(buffer, index, packet, parent)

  -- Sold Out Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, sold_out_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.sold_out_indicator(buffer, index, packet, parent)

  -- Tes Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, tes_security_status = eurex_derivatives_eobi_t7_v13_1_dissect.tes_security_status(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Sec Mass Stat Grp Comp
eurex_derivatives_eobi_t7_v13_1_dissect.sec_mass_stat_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sec_mass_stat_grp_comp then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.sec_mass_stat_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.sec_mass_stat_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.sec_mass_stat_grp_comp, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.sec_mass_stat_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Related Sym
eurex_derivatives_eobi_t7_v13_1_size_of.no_related_sym = 1

-- Display: No Related Sym
eurex_derivatives_eobi_t7_v13_1_display.no_related_sym = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Related Sym: No Value"
  end

  return "No Related Sym: "..value
end

-- Dissect: No Related Sym
eurex_derivatives_eobi_t7_v13_1_dissect.no_related_sym = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.no_related_sym
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.no_related_sym(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.no_related_sym, range, value, display)

  return offset + length, value
end

-- Size: Last Fragment
eurex_derivatives_eobi_t7_v13_1_size_of.last_fragment = 1

-- Display: Last Fragment
eurex_derivatives_eobi_t7_v13_1_display.last_fragment = function(value)
  if value == 0 then
    return "Last Fragment: N (0)"
  end
  if value == 1 then
    return "Last Fragment: Y (1)"
  end
  if value == 0xFF then
    return "Last Fragment: No Value"
  end

  return "Last Fragment: Unknown("..value..")"
end

-- Dissect: Last Fragment
eurex_derivatives_eobi_t7_v13_1_dissect.last_fragment = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.last_fragment
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.last_fragment(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.last_fragment, range, value, display)

  return offset + length, value
end

-- Size: Tes Security Mass Status
eurex_derivatives_eobi_t7_v13_1_size_of.tes_security_mass_status = 1

-- Display: Tes Security Mass Status
eurex_derivatives_eobi_t7_v13_1_display.tes_security_mass_status = function(value)
  if value == 1 then
    return "Tes Security Mass Status: Active (1)"
  end
  if value == 2 then
    return "Tes Security Mass Status: Inactive (2)"
  end
  if value == 4 then
    return "Tes Security Mass Status: Expired (4)"
  end
  if value == 9 then
    return "Tes Security Mass Status: Suspended (9)"
  end
  if value == 0xFF then
    return "Tes Security Mass Status: No Value"
  end

  return "Tes Security Mass Status: Unknown("..value..")"
end

-- Dissect: Tes Security Mass Status
eurex_derivatives_eobi_t7_v13_1_dissect.tes_security_mass_status = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.tes_security_mass_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.tes_security_mass_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.tes_security_mass_status, range, value, display)

  return offset + length, value
end

-- Size: Mass Sold Out Indicator
eurex_derivatives_eobi_t7_v13_1_size_of.mass_sold_out_indicator = 1

-- Display: Mass Sold Out Indicator
eurex_derivatives_eobi_t7_v13_1_display.mass_sold_out_indicator = function(value)
  if value == 1 then
    return "Mass Sold Out Indicator: Sold Out (1)"
  end
  if value == 0xFF then
    return "Mass Sold Out Indicator: No Value"
  end

  return "Mass Sold Out Indicator: Unknown("..value..")"
end

-- Dissect: Mass Sold Out Indicator
eurex_derivatives_eobi_t7_v13_1_dissect.mass_sold_out_indicator = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.mass_sold_out_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.mass_sold_out_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.mass_sold_out_indicator, range, value, display)

  return offset + length, value
end

-- Size: Security Mass Trading Event
eurex_derivatives_eobi_t7_v13_1_size_of.security_mass_trading_event = 1

-- Display: Security Mass Trading Event
eurex_derivatives_eobi_t7_v13_1_display.security_mass_trading_event = function(value)
  if value == 10 then
    return "Security Mass Trading Event: Price Volatility Auction Is Extended (10)"
  end
  if value == 11 then
    return "Security Mass Trading Event: Price Volatility Auction Is Extended Again (11)"
  end
  if value == 0xFF then
    return "Security Mass Trading Event: No Value"
  end

  return "Security Mass Trading Event: Unknown("..value..")"
end

-- Dissect: Security Mass Trading Event
eurex_derivatives_eobi_t7_v13_1_dissect.security_mass_trading_event = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.security_mass_trading_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.security_mass_trading_event(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.security_mass_trading_event, range, value, display)

  return offset + length, value
end

-- Size: Mass Market Condition
eurex_derivatives_eobi_t7_v13_1_size_of.mass_market_condition = 1

-- Display: Mass Market Condition
eurex_derivatives_eobi_t7_v13_1_display.mass_market_condition = function(value)
  if value == 0 then
    return "Mass Market Condition: Normal (0)"
  end
  if value == 1 then
    return "Mass Market Condition: Stressed (1)"
  end
  if value == 0xFF then
    return "Mass Market Condition: No Value"
  end

  return "Mass Market Condition: Unknown("..value..")"
end

-- Dissect: Mass Market Condition
eurex_derivatives_eobi_t7_v13_1_dissect.mass_market_condition = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.mass_market_condition
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.mass_market_condition(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.mass_market_condition, range, value, display)

  return offset + length, value
end

-- Size: Security Mass Trading Status
eurex_derivatives_eobi_t7_v13_1_size_of.security_mass_trading_status = 1

-- Display: Security Mass Trading Status
eurex_derivatives_eobi_t7_v13_1_display.security_mass_trading_status = function(value)
  if value == 2 then
    return "Security Mass Trading Status: Trading Halt (2)"
  end
  if value == 7 then
    return "Security Mass Trading Status: Market Imbalance Buy (7)"
  end
  if value == 8 then
    return "Security Mass Trading Status: Market Imbalance Sell (8)"
  end
  if value == 200 then
    return "Security Mass Trading Status: Closed (200)"
  end
  if value == 201 then
    return "Security Mass Trading Status: Restricted (201)"
  end
  if value == 202 then
    return "Security Mass Trading Status: Book (202)"
  end
  if value == 203 then
    return "Security Mass Trading Status: Continuous (203)"
  end
  if value == 204 then
    return "Security Mass Trading Status: Opening Auction (204)"
  end
  if value == 205 then
    return "Security Mass Trading Status: Opening Auction Freeze (205)"
  end
  if value == 206 then
    return "Security Mass Trading Status: Intraday Auction (206)"
  end
  if value == 207 then
    return "Security Mass Trading Status: Intraday Auction Freeze (207)"
  end
  if value == 208 then
    return "Security Mass Trading Status: Circuit Breaker Auction (208)"
  end
  if value == 209 then
    return "Security Mass Trading Status: Circuit Breaker Auction Freeze (209)"
  end
  if value == 210 then
    return "Security Mass Trading Status: Closing Auction (210)"
  end
  if value == 211 then
    return "Security Mass Trading Status: Closing Auction Freeze (211)"
  end
  if value == 212 then
    return "Security Mass Trading Status: Ipo Auction (212)"
  end
  if value == 213 then
    return "Security Mass Trading Status: Ipo Auction Freeze (213)"
  end
  if value == 214 then
    return "Security Mass Trading Status: Pre Call (214)"
  end
  if value == 215 then
    return "Security Mass Trading Status: Call (215)"
  end
  if value == 216 then
    return "Security Mass Trading Status: Freeze (216)"
  end
  if value == 217 then
    return "Security Mass Trading Status: Trade At Close (217)"
  end
  if value == 220 then
    return "Security Mass Trading Status: Circuit Breaker Auction Triggered By Static Limit Breach (220)"
  end
  if value == 221 then
    return "Security Mass Trading Status: Circuit Breaker Auction Triggered By Static Limit Breach Freeze (221)"
  end
  if value == 0xFF then
    return "Security Mass Trading Status: No Value"
  end

  return "Security Mass Trading Status: Unknown("..value..")"
end

-- Dissect: Security Mass Trading Status
eurex_derivatives_eobi_t7_v13_1_dissect.security_mass_trading_status = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.security_mass_trading_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.security_mass_trading_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.security_mass_trading_status, range, value, display)

  return offset + length, value
end

-- Size: Security Mass Status
eurex_derivatives_eobi_t7_v13_1_size_of.security_mass_status = 1

-- Display: Security Mass Status
eurex_derivatives_eobi_t7_v13_1_display.security_mass_status = function(value)
  if value == 1 then
    return "Security Mass Status: Active (1)"
  end
  if value == 2 then
    return "Security Mass Status: Inactive (2)"
  end
  if value == 4 then
    return "Security Mass Status: Expired (4)"
  end
  if value == 6 then
    return "Security Mass Status: Knocked Out (6)"
  end
  if value == 7 then
    return "Security Mass Status: Knock Out Revoked (7)"
  end
  if value == 9 then
    return "Security Mass Status: Suspended (9)"
  end
  if value == 11 then
    return "Security Mass Status: Pending Deletion (11)"
  end
  if value == 12 then
    return "Security Mass Status: Knocked Out And Suspended (12)"
  end
  if value == 0xFF then
    return "Security Mass Status: No Value"
  end

  return "Security Mass Status: Unknown("..value..")"
end

-- Dissect: Security Mass Status
eurex_derivatives_eobi_t7_v13_1_dissect.security_mass_status = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.security_mass_status
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.security_mass_status(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.security_mass_status, range, value, display)

  return offset + length, value
end

-- Size: Instrument Scope Product Complex
eurex_derivatives_eobi_t7_v13_1_size_of.instrument_scope_product_complex = 1

-- Display: Instrument Scope Product Complex
eurex_derivatives_eobi_t7_v13_1_display.instrument_scope_product_complex = function(value)
  if value == 1 then
    return "Instrument Scope Product Complex: Simple Instrument (1)"
  end
  if value == 2 then
    return "Instrument Scope Product Complex: Standard Option Strategy (2)"
  end
  if value == 3 then
    return "Instrument Scope Product Complex: Non Standard Option Strategy (3)"
  end
  if value == 4 then
    return "Instrument Scope Product Complex: Volatility Strategy (4)"
  end
  if value == 5 then
    return "Instrument Scope Product Complex: Futures Spread (5)"
  end
  if value == 6 then
    return "Instrument Scope Product Complex: Inter Product Spread (6)"
  end
  if value == 7 then
    return "Instrument Scope Product Complex: Standard Futures Strategy (7)"
  end
  if value == 8 then
    return "Instrument Scope Product Complex: Pack And Bundle (8)"
  end
  if value == 9 then
    return "Instrument Scope Product Complex: Strip (9)"
  end
  if value == 10 then
    return "Instrument Scope Product Complex: Flexible Instrument (10)"
  end
  if value == 11 then
    return "Instrument Scope Product Complex: Commodity Strip (11)"
  end
  if value == 12 then
    return "Instrument Scope Product Complex: Scaled Simple Instrument (12)"
  end
  if value == 13 then
    return "Instrument Scope Product Complex: Non Standard Volatility Strategy (13)"
  end
  if value == 14 then
    return "Instrument Scope Product Complex: Total Return Future Strategy (14)"
  end
  if value == 0xFF then
    return "Instrument Scope Product Complex: No Value"
  end

  return "Instrument Scope Product Complex: Unknown("..value..")"
end

-- Dissect: Instrument Scope Product Complex
eurex_derivatives_eobi_t7_v13_1_dissect.instrument_scope_product_complex = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.instrument_scope_product_complex
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.instrument_scope_product_complex(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.instrument_scope_product_complex, range, value, display)

  return offset + length, value
end

-- Calculate size of: Mass Instrument State Change
eurex_derivatives_eobi_t7_v13_1_size_of.mass_instrument_state_change = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.instrument_scope_product_complex

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_mass_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_mass_trading_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.mass_market_condition

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.fast_market_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_mass_trading_event

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.mass_sold_out_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.tes_security_mass_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_fragment

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.no_related_sym

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_6

  -- Calculate field size from count
  local sec_mass_stat_grp_comp_count = buffer(offset + index - 7, 1):le_uint()
  index = index + sec_mass_stat_grp_comp_count * 32

  return index
end

-- Display: Mass Instrument State Change
eurex_derivatives_eobi_t7_v13_1_display.mass_instrument_state_change = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Mass Instrument State Change
eurex_derivatives_eobi_t7_v13_1_dissect.mass_instrument_state_change_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Scope Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, instrument_scope_product_complex = eurex_derivatives_eobi_t7_v13_1_dissect.instrument_scope_product_complex(buffer, index, packet, parent)

  -- Security Mass Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_mass_status = eurex_derivatives_eobi_t7_v13_1_dissect.security_mass_status(buffer, index, packet, parent)

  -- Security Mass Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 24 values
  index, security_mass_trading_status = eurex_derivatives_eobi_t7_v13_1_dissect.security_mass_trading_status(buffer, index, packet, parent)

  -- Mass Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, mass_market_condition = eurex_derivatives_eobi_t7_v13_1_dissect.mass_market_condition(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fast_market_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.fast_market_indicator(buffer, index, packet, parent)

  -- Security Mass Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_mass_trading_event = eurex_derivatives_eobi_t7_v13_1_dissect.security_mass_trading_event(buffer, index, packet, parent)

  -- Mass Sold Out Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, mass_sold_out_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.mass_sold_out_indicator(buffer, index, packet, parent)

  -- Tes Security Mass Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, tes_security_mass_status = eurex_derivatives_eobi_t7_v13_1_dissect.tes_security_mass_status(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = eurex_derivatives_eobi_t7_v13_1_dissect.last_fragment(buffer, index, packet, parent)

  -- No Related Sym: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_related_sym = eurex_derivatives_eobi_t7_v13_1_dissect.no_related_sym(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_6(buffer, index, packet, parent)

  -- Sec Mass Stat Grp Comp: Struct of 10 fields
  for i = 1, no_related_sym do
    index = eurex_derivatives_eobi_t7_v13_1_dissect.sec_mass_stat_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Instrument State Change
eurex_derivatives_eobi_t7_v13_1_dissect.mass_instrument_state_change = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.mass_instrument_state_change then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.mass_instrument_state_change(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.mass_instrument_state_change(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.mass_instrument_state_change, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.mass_instrument_state_change_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Md Instrument Entry Grp Comp
eurex_derivatives_eobi_t7_v13_1_size_of.md_instrument_entry_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.md_entry_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.md_entry_size

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.md_origin_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.md_entry_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trade_condition

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.multi_leg_reporting_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.multi_leg_price_model

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.non_disclosed_trade_volume

  return index
end

-- Display: Md Instrument Entry Grp Comp
eurex_derivatives_eobi_t7_v13_1_display.md_instrument_entry_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Md Instrument Entry Grp Comp
eurex_derivatives_eobi_t7_v13_1_dissect.md_instrument_entry_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Md Entry Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_px = eurex_derivatives_eobi_t7_v13_1_dissect.md_entry_px(buffer, index, packet, parent)

  -- Md Entry Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, md_entry_size = eurex_derivatives_eobi_t7_v13_1_dissect.md_entry_size(buffer, index, packet, parent)

  -- Md Origin Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, md_origin_type = eurex_derivatives_eobi_t7_v13_1_dissect.md_origin_type(buffer, index, packet, parent)

  -- Md Entry Type: 1 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, md_entry_type = eurex_derivatives_eobi_t7_v13_1_dissect.md_entry_type(buffer, index, packet, parent)

  -- Trade Condition: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_condition = eurex_derivatives_eobi_t7_v13_1_dissect.trade_condition(buffer, index, packet, parent)

  -- Trd Type: 2 Byte Unsigned Fixed Width Integer Enum with 13 values
  index, trd_type = eurex_derivatives_eobi_t7_v13_1_dissect.trd_type(buffer, index, packet, parent)

  -- Multi Leg Reporting Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, multi_leg_reporting_type = eurex_derivatives_eobi_t7_v13_1_dissect.multi_leg_reporting_type(buffer, index, packet, parent)

  -- Multi Leg Price Model: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, multi_leg_price_model = eurex_derivatives_eobi_t7_v13_1_dissect.multi_leg_price_model(buffer, index, packet, parent)

  -- Non Disclosed Trade Volume: 8 Byte Unsigned Fixed Width Integer Nullable
  index, non_disclosed_trade_volume = eurex_derivatives_eobi_t7_v13_1_dissect.non_disclosed_trade_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Md Instrument Entry Grp Comp
eurex_derivatives_eobi_t7_v13_1_dissect.md_instrument_entry_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.md_instrument_entry_grp_comp then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.md_instrument_entry_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.md_instrument_entry_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.md_instrument_entry_grp_comp, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.md_instrument_entry_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: Product Complex
eurex_derivatives_eobi_t7_v13_1_size_of.product_complex = 1

-- Display: Product Complex
eurex_derivatives_eobi_t7_v13_1_display.product_complex = function(value)
  if value == 1 then
    return "Product Complex: Simple Instrument (1)"
  end
  if value == 2 then
    return "Product Complex: Standard Option Strategy (2)"
  end
  if value == 3 then
    return "Product Complex: Non Standard Option Strategy (3)"
  end
  if value == 4 then
    return "Product Complex: Volatility Strategy (4)"
  end
  if value == 5 then
    return "Product Complex: Futures Spread (5)"
  end
  if value == 6 then
    return "Product Complex: Inter Product Spread (6)"
  end
  if value == 7 then
    return "Product Complex: Standard Futures Strategy (7)"
  end
  if value == 8 then
    return "Product Complex: Pack And Bundle (8)"
  end
  if value == 9 then
    return "Product Complex: Strip (9)"
  end
  if value == 10 then
    return "Product Complex: Flexible Instrument (10)"
  end
  if value == 11 then
    return "Product Complex: Commodity Strip (11)"
  end
  if value == 12 then
    return "Product Complex: Scaled Simple Instrument (12)"
  end
  if value == 13 then
    return "Product Complex: Non Standard Volatility Strategy (13)"
  end
  if value == 14 then
    return "Product Complex: Total Return Future Strategy (14)"
  end
  if value == 0xFF then
    return "Product Complex: No Value"
  end

  return "Product Complex: Unknown("..value..")"
end

-- Dissect: Product Complex
eurex_derivatives_eobi_t7_v13_1_dissect.product_complex = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.product_complex
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.product_complex(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.product_complex, range, value, display)

  return offset + length, value
end

-- Size: Tot No Orders
eurex_derivatives_eobi_t7_v13_1_size_of.tot_no_orders = 2

-- Display: Tot No Orders
eurex_derivatives_eobi_t7_v13_1_display.tot_no_orders = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Tot No Orders: No Value"
  end

  return "Tot No Orders: "..value
end

-- Dissect: Tot No Orders
eurex_derivatives_eobi_t7_v13_1_dissect.tot_no_orders = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.tot_no_orders
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.tot_no_orders(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.tot_no_orders, range, value, display)

  return offset + length, value
end

-- Size: Last Update Time
eurex_derivatives_eobi_t7_v13_1_size_of.last_update_time = 8

-- Display: Last Update Time
eurex_derivatives_eobi_t7_v13_1_display.last_update_time = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Last Update Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Last Update Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Last Update Time
eurex_derivatives_eobi_t7_v13_1_dissect.last_update_time = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.last_update_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v13_1_display.last_update_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.last_update_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Summary
eurex_derivatives_eobi_t7_v13_1_size_of.instrument_summary = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_update_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_reg_ts_execution_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.tot_no_orders

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_trading_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.market_condition

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.fast_market_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_trading_event

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.sold_out_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.high_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.low_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.product_complex

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.no_md_entries

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.tes_security_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_5

  -- Calculate field size from count
  local md_instrument_entry_grp_comp_count = buffer(offset + index - 7, 1):le_uint()
  index = index + md_instrument_entry_grp_comp_count * 32

  return index
end

-- Display: Instrument Summary
eurex_derivatives_eobi_t7_v13_1_display.instrument_summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Summary
eurex_derivatives_eobi_t7_v13_1_dissect.instrument_summary_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Last Update Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_update_time = eurex_derivatives_eobi_t7_v13_1_dissect.last_update_time(buffer, index, packet, parent)

  -- Trd Reg Ts Execution Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_execution_time = eurex_derivatives_eobi_t7_v13_1_dissect.trd_reg_ts_execution_time(buffer, index, packet, parent)

  -- Tot No Orders: 2 Byte Unsigned Fixed Width Integer Nullable
  index, tot_no_orders = eurex_derivatives_eobi_t7_v13_1_dissect.tot_no_orders(buffer, index, packet, parent)

  -- Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_status = eurex_derivatives_eobi_t7_v13_1_dissect.security_status(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 24 values
  index, security_trading_status = eurex_derivatives_eobi_t7_v13_1_dissect.security_trading_status(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_condition = eurex_derivatives_eobi_t7_v13_1_dissect.market_condition(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fast_market_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.fast_market_indicator(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_trading_event = eurex_derivatives_eobi_t7_v13_1_dissect.security_trading_event(buffer, index, packet, parent)

  -- Sold Out Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, sold_out_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.sold_out_indicator(buffer, index, packet, parent)

  -- High Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, high_px = eurex_derivatives_eobi_t7_v13_1_dissect.high_px(buffer, index, packet, parent)

  -- Low Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, low_px = eurex_derivatives_eobi_t7_v13_1_dissect.low_px(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, product_complex = eurex_derivatives_eobi_t7_v13_1_dissect.product_complex(buffer, index, packet, parent)

  -- No Md Entries: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_md_entries = eurex_derivatives_eobi_t7_v13_1_dissect.no_md_entries(buffer, index, packet, parent)

  -- Tes Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, tes_security_status = eurex_derivatives_eobi_t7_v13_1_dissect.tes_security_status(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_5(buffer, index, packet, parent)

  -- Md Instrument Entry Grp Comp: Struct of 9 fields
  for i = 1, no_md_entries do
    index = eurex_derivatives_eobi_t7_v13_1_dissect.md_instrument_entry_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Instrument Summary
eurex_derivatives_eobi_t7_v13_1_dissect.instrument_summary = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.instrument_summary then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.instrument_summary(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.instrument_summary(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.instrument_summary, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.instrument_summary_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument State Change
eurex_derivatives_eobi_t7_v13_1_size_of.instrument_state_change = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_trading_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.market_condition

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.fast_market_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_trading_event

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.sold_out_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_2

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.high_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.low_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.tes_security_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_7

  return index
end

-- Display: Instrument State Change
eurex_derivatives_eobi_t7_v13_1_display.instrument_state_change = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument State Change
eurex_derivatives_eobi_t7_v13_1_dissect.instrument_state_change_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, security_status = eurex_derivatives_eobi_t7_v13_1_dissect.security_status(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 24 values
  index, security_trading_status = eurex_derivatives_eobi_t7_v13_1_dissect.security_trading_status(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, market_condition = eurex_derivatives_eobi_t7_v13_1_dissect.market_condition(buffer, index, packet, parent)

  -- Fast Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, fast_market_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.fast_market_indicator(buffer, index, packet, parent)

  -- Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, security_trading_event = eurex_derivatives_eobi_t7_v13_1_dissect.security_trading_event(buffer, index, packet, parent)

  -- Sold Out Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, sold_out_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.sold_out_indicator(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- High Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, high_px = eurex_derivatives_eobi_t7_v13_1_dissect.high_px(buffer, index, packet, parent)

  -- Low Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, low_px = eurex_derivatives_eobi_t7_v13_1_dissect.low_px(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  -- Tes Security Status: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, tes_security_status = eurex_derivatives_eobi_t7_v13_1_dissect.tes_security_status(buffer, index, packet, parent)

  -- Pad 7: 7 Byte
  index, pad_7 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_7(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument State Change
eurex_derivatives_eobi_t7_v13_1_dissect.instrument_state_change = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_state_change then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.instrument_state_change(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.instrument_state_change(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.instrument_state_change, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.instrument_state_change_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Heartbeat
eurex_derivatives_eobi_t7_v13_1_size_of.heartbeat = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_msg_seq_num_processed

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_4

  return index
end

-- Display: Heartbeat
eurex_derivatives_eobi_t7_v13_1_display.heartbeat = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat
eurex_derivatives_eobi_t7_v13_1_dissect.heartbeat_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Msg Seq Num Processed: 4 Byte Unsigned Fixed Width Integer Nullable
  index, last_msg_seq_num_processed = eurex_derivatives_eobi_t7_v13_1_dissect.last_msg_seq_num_processed(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
eurex_derivatives_eobi_t7_v13_1_dissect.heartbeat = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.heartbeat(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.heartbeat(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.heartbeat, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.heartbeat_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Full Order Execution
eurex_derivatives_eobi_t7_v13_1_size_of.full_order_execution = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.side

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.ord_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.algorithmic_trade_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.hhi_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_match_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.price

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_reg_ts_time_priority

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_px

  return index
end

-- Display: Full Order Execution
eurex_derivatives_eobi_t7_v13_1_display.full_order_execution = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Full Order Execution
eurex_derivatives_eobi_t7_v13_1_dissect.full_order_execution_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eobi_t7_v13_1_dissect.side(buffer, index, packet, parent)

  -- Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, ord_type = eurex_derivatives_eobi_t7_v13_1_dissect.ord_type(buffer, index, packet, parent)

  -- Algorithmic Trade Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, algorithmic_trade_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.algorithmic_trade_indicator(buffer, index, packet, parent)

  -- Hhi Indicator: 1 Byte Signed Fixed Width Integer Enum with 2 values
  index, hhi_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.hhi_indicator(buffer, index, packet, parent)

  -- Trd Match Id: 4 Byte Unsigned Fixed Width Integer Nullable
  index, trd_match_id = eurex_derivatives_eobi_t7_v13_1_dissect.trd_match_id(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eobi_t7_v13_1_dissect.price(buffer, index, packet, parent)

  -- Trd Reg Ts Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_time_priority = eurex_derivatives_eobi_t7_v13_1_dissect.trd_reg_ts_time_priority(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v13_1_dissect.last_qty(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v13_1_dissect.last_px(buffer, index, packet, parent)

  return index
end

-- Dissect: Full Order Execution
eurex_derivatives_eobi_t7_v13_1_dissect.full_order_execution = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.full_order_execution then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.full_order_execution(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.full_order_execution(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.full_order_execution, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.full_order_execution_fields(buffer, offset, packet, parent)
end

-- Size: Aggressor Time
eurex_derivatives_eobi_t7_v13_1_size_of.aggressor_time = 8

-- Display: Aggressor Time
eurex_derivatives_eobi_t7_v13_1_display.aggressor_time = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Aggressor Time: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Aggressor Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Aggressor Time
eurex_derivatives_eobi_t7_v13_1_dissect.aggressor_time = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.aggressor_time
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v13_1_display.aggressor_time(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.aggressor_time, range, value, display)

  return offset + length, value
end

-- Size: Resting Cxl Qty
eurex_derivatives_eobi_t7_v13_1_size_of.resting_cxl_qty = 8

-- Display: Resting Cxl Qty
eurex_derivatives_eobi_t7_v13_1_display.resting_cxl_qty = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Resting Cxl Qty: No Value"
  end

  return "Resting Cxl Qty: "..value
end

-- Translate: Resting Cxl Qty
translate.resting_cxl_qty = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Resting Cxl Qty
eurex_derivatives_eobi_t7_v13_1_dissect.resting_cxl_qty = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.resting_cxl_qty
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.resting_cxl_qty(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.resting_cxl_qty(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.resting_cxl_qty, range, value, display)

  return offset + length, value
end

-- Size: Resting Hidden Qty
eurex_derivatives_eobi_t7_v13_1_size_of.resting_hidden_qty = 8

-- Display: Resting Hidden Qty
eurex_derivatives_eobi_t7_v13_1_display.resting_hidden_qty = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Resting Hidden Qty: No Value"
  end

  return "Resting Hidden Qty: "..value
end

-- Translate: Resting Hidden Qty
translate.resting_hidden_qty = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Resting Hidden Qty
eurex_derivatives_eobi_t7_v13_1_dissect.resting_hidden_qty = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.resting_hidden_qty
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.resting_hidden_qty(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.resting_hidden_qty(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.resting_hidden_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Remaining Order Details Comp
eurex_derivatives_eobi_t7_v13_1_size_of.remaining_order_details_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trd_reg_ts_prev_time_priority

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.display_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.price

  return index
end

-- Display: Remaining Order Details Comp
eurex_derivatives_eobi_t7_v13_1_display.remaining_order_details_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Remaining Order Details Comp
eurex_derivatives_eobi_t7_v13_1_dissect.remaining_order_details_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trd Reg Ts Prev Time Priority: 8 Byte Unsigned Fixed Width Integer Nullable
  index, trd_reg_ts_prev_time_priority = eurex_derivatives_eobi_t7_v13_1_dissect.trd_reg_ts_prev_time_priority(buffer, index, packet, parent)

  -- Display Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, display_qty = eurex_derivatives_eobi_t7_v13_1_dissect.display_qty(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, price = eurex_derivatives_eobi_t7_v13_1_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Remaining Order Details Comp
eurex_derivatives_eobi_t7_v13_1_dissect.remaining_order_details_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.remaining_order_details_comp then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.remaining_order_details_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.remaining_order_details_comp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.remaining_order_details_comp, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.remaining_order_details_comp_fields(buffer, offset, packet, parent)
end

-- Size: Pad 3
eurex_derivatives_eobi_t7_v13_1_size_of.pad_3 = 3

-- Display: Pad 3
eurex_derivatives_eobi_t7_v13_1_display.pad_3 = function(value)
  return "Pad 3: "..value
end

-- Dissect: Pad 3
eurex_derivatives_eobi_t7_v13_1_dissect.pad_3 = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.pad_3
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = eurex_derivatives_eobi_t7_v13_1_display.pad_3(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.pad_3, range, value, display)

  return offset + length, value
end

-- Size: Trading Hhi Indicator
eurex_derivatives_eobi_t7_v13_1_size_of.trading_hhi_indicator = 1

-- Display: Trading Hhi Indicator
eurex_derivatives_eobi_t7_v13_1_display.trading_hhi_indicator = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "Trading Hhi Indicator: No Value"
  end

  return "Trading Hhi Indicator: "..value
end

-- Dissect: Trading Hhi Indicator
eurex_derivatives_eobi_t7_v13_1_dissect.trading_hhi_indicator = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.trading_hhi_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.trading_hhi_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trading_hhi_indicator, range, value, display)

  return offset + length, value
end

-- Size: Aggressor Side
eurex_derivatives_eobi_t7_v13_1_size_of.aggressor_side = 1

-- Display: Aggressor Side
eurex_derivatives_eobi_t7_v13_1_display.aggressor_side = function(value)
  if value == 1 then
    return "Aggressor Side: Buy (1)"
  end
  if value == 2 then
    return "Aggressor Side: Sell (2)"
  end
  if value == 0xFF then
    return "Aggressor Side: No Value"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
eurex_derivatives_eobi_t7_v13_1_dissect.aggressor_side = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.aggressor_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Size: Exec Id
eurex_derivatives_eobi_t7_v13_1_size_of.exec_id = 8

-- Display: Exec Id
eurex_derivatives_eobi_t7_v13_1_display.exec_id = function(value)
  -- Check null sentinel value
  if value == UInt64(0xFFFFFFFF, 0xFFFFFFFF) then
    return "Exec Id: No Value"
  end
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Exec Id: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Exec Id
eurex_derivatives_eobi_t7_v13_1_dissect.exec_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.exec_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = eurex_derivatives_eobi_t7_v13_1_display.exec_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Execution Summary
eurex_derivatives_eobi_t7_v13_1_size_of.execution_summary = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.request_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.exec_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.aggressor_side

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_1

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trade_condition

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trading_hhi_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_3

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.remaining_order_details_comp(buffer, offset + index)

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.resting_hidden_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.resting_cxl_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.aggressor_time

  return index
end

-- Display: Execution Summary
eurex_derivatives_eobi_t7_v13_1_display.execution_summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Execution Summary
eurex_derivatives_eobi_t7_v13_1_dissect.execution_summary_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Request Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, request_time = eurex_derivatives_eobi_t7_v13_1_dissect.request_time(buffer, index, packet, parent)

  -- Exec Id: 8 Byte Unsigned Fixed Width Integer Nullable
  index, exec_id = eurex_derivatives_eobi_t7_v13_1_dissect.exec_id(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v13_1_dissect.last_qty(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, aggressor_side = eurex_derivatives_eobi_t7_v13_1_dissect.aggressor_side(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_1(buffer, index, packet, parent)

  -- Trade Condition: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, trade_condition = eurex_derivatives_eobi_t7_v13_1_dissect.trade_condition(buffer, index, packet, parent)

  -- Trading Hhi Indicator: 1 Byte Unsigned Fixed Width Integer Nullable
  index, trading_hhi_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.trading_hhi_indicator(buffer, index, packet, parent)

  -- Pad 3: 3 Byte
  index, pad_3 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_3(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v13_1_dissect.last_px(buffer, index, packet, parent)

  -- Remaining Order Details Comp: Struct of 3 fields
  index, remaining_order_details_comp = eurex_derivatives_eobi_t7_v13_1_dissect.remaining_order_details_comp(buffer, index, packet, parent)

  -- Resting Hidden Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, resting_hidden_qty = eurex_derivatives_eobi_t7_v13_1_dissect.resting_hidden_qty(buffer, index, packet, parent)

  -- Resting Cxl Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, resting_cxl_qty = eurex_derivatives_eobi_t7_v13_1_dissect.resting_cxl_qty(buffer, index, packet, parent)

  -- Aggressor Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, aggressor_time = eurex_derivatives_eobi_t7_v13_1_dissect.aggressor_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Execution Summary
eurex_derivatives_eobi_t7_v13_1_dissect.execution_summary = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.execution_summary then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.execution_summary(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.execution_summary(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.execution_summary, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.execution_summary_fields(buffer, offset, packet, parent)
end

-- Size: Input Source
eurex_derivatives_eobi_t7_v13_1_size_of.input_source = 1

-- Display: Input Source
eurex_derivatives_eobi_t7_v13_1_display.input_source = function(value)
  if value == 1 then
    return "Input Source: Clip Client Broker (1)"
  end
  if value == 0xFF then
    return "Input Source: No Value"
  end

  return "Input Source: Unknown("..value..")"
end

-- Dissect: Input Source
eurex_derivatives_eobi_t7_v13_1_dissect.input_source = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.input_source
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.input_source(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.input_source, range, value, display)

  return offset + length, value
end

-- Size: Cross Request Type
eurex_derivatives_eobi_t7_v13_1_size_of.cross_request_type = 1

-- Display: Cross Request Type
eurex_derivatives_eobi_t7_v13_1_display.cross_request_type = function(value)
  if value == 1 then
    return "Cross Request Type: Cross Announcement (1)"
  end
  if value == 2 then
    return "Cross Request Type: Liquidity Improvement Cross (2)"
  end
  if value == 0xFF then
    return "Cross Request Type: No Value"
  end

  return "Cross Request Type: Unknown("..value..")"
end

-- Dissect: Cross Request Type
eurex_derivatives_eobi_t7_v13_1_dissect.cross_request_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.cross_request_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.cross_request_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.cross_request_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Cross Request
eurex_derivatives_eobi_t7_v13_1_size_of.cross_request = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.side

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.cross_request_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.input_source

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_5

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  return index
end

-- Display: Cross Request
eurex_derivatives_eobi_t7_v13_1_display.cross_request = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Request
eurex_derivatives_eobi_t7_v13_1_dissect.cross_request_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v13_1_dissect.last_px(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v13_1_dissect.last_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, side = eurex_derivatives_eobi_t7_v13_1_dissect.side(buffer, index, packet, parent)

  -- Cross Request Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, cross_request_type = eurex_derivatives_eobi_t7_v13_1_dissect.cross_request_type(buffer, index, packet, parent)

  -- Input Source: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, input_source = eurex_derivatives_eobi_t7_v13_1_dissect.input_source(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_5(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Request
eurex_derivatives_eobi_t7_v13_1_dissect.cross_request = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cross_request then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.cross_request(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.cross_request(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.cross_request, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.cross_request_fields(buffer, offset, packet, parent)
end

-- Size: Potential Security Trading Event
eurex_derivatives_eobi_t7_v13_1_size_of.potential_security_trading_event = 1

-- Display: Potential Security Trading Event
eurex_derivatives_eobi_t7_v13_1_display.potential_security_trading_event = function(value)
  if value == 0 then
    return "Potential Security Trading Event: None (0)"
  end
  if value == 10 then
    return "Potential Security Trading Event: Price Volatility Auction Is Extended (10)"
  end
  if value == 0xFF then
    return "Potential Security Trading Event: No Value"
  end

  return "Potential Security Trading Event: Unknown("..value..")"
end

-- Dissect: Potential Security Trading Event
eurex_derivatives_eobi_t7_v13_1_dissect.potential_security_trading_event = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.potential_security_trading_event
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.potential_security_trading_event(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.potential_security_trading_event, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Qty
eurex_derivatives_eobi_t7_v13_1_size_of.imbalance_qty = 8

-- Display: Imbalance Qty
eurex_derivatives_eobi_t7_v13_1_display.imbalance_qty = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Imbalance Qty: No Value"
  end

  return "Imbalance Qty: "..value
end

-- Translate: Imbalance Qty
translate.imbalance_qty = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/10000
end

-- Dissect: Imbalance Qty
eurex_derivatives_eobi_t7_v13_1_dissect.imbalance_qty = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.imbalance_qty
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.imbalance_qty(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.imbalance_qty(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.imbalance_qty, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Clearing Price
eurex_derivatives_eobi_t7_v13_1_size_of.auction_clearing_price = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.imbalance_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_trading_status

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.potential_security_trading_event

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_6

  return index
end

-- Display: Auction Clearing Price
eurex_derivatives_eobi_t7_v13_1_display.auction_clearing_price = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Clearing Price
eurex_derivatives_eobi_t7_v13_1_dissect.auction_clearing_price_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Last Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_px = eurex_derivatives_eobi_t7_v13_1_dissect.last_px(buffer, index, packet, parent)

  -- Last Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, last_qty = eurex_derivatives_eobi_t7_v13_1_dissect.last_qty(buffer, index, packet, parent)

  -- Imbalance Qty: 8 Byte Unsigned Fixed Width Integer Nullable
  index, imbalance_qty = eurex_derivatives_eobi_t7_v13_1_dissect.imbalance_qty(buffer, index, packet, parent)

  -- Security Trading Status: 1 Byte Unsigned Fixed Width Integer Enum with 24 values
  index, security_trading_status = eurex_derivatives_eobi_t7_v13_1_dissect.security_trading_status(buffer, index, packet, parent)

  -- Potential Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, potential_security_trading_event = eurex_derivatives_eobi_t7_v13_1_dissect.potential_security_trading_event(buffer, index, packet, parent)

  -- Pad 6: 6 Byte
  index, pad_6 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_6(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Clearing Price
eurex_derivatives_eobi_t7_v13_1_dissect.auction_clearing_price = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_clearing_price then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.auction_clearing_price(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.auction_clearing_price(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.auction_clearing_price, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.auction_clearing_price_fields(buffer, offset, packet, parent)
end

-- Size: Offer Ord Type
eurex_derivatives_eobi_t7_v13_1_size_of.offer_ord_type = 1

-- Display: Offer Ord Type
eurex_derivatives_eobi_t7_v13_1_display.offer_ord_type = function(value)
  if value == 1 then
    return "Offer Ord Type: Market (1)"
  end
  if value == 0xFF then
    return "Offer Ord Type: No Value"
  end

  return "Offer Ord Type: Unknown("..value..")"
end

-- Dissect: Offer Ord Type
eurex_derivatives_eobi_t7_v13_1_dissect.offer_ord_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.offer_ord_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.offer_ord_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.offer_ord_type, range, value, display)

  return offset + length, value
end

-- Size: Bid Ord Type
eurex_derivatives_eobi_t7_v13_1_size_of.bid_ord_type = 1

-- Display: Bid Ord Type
eurex_derivatives_eobi_t7_v13_1_display.bid_ord_type = function(value)
  if value == 1 then
    return "Bid Ord Type: Market (1)"
  end
  if value == 0xFF then
    return "Bid Ord Type: No Value"
  end

  return "Bid Ord Type: Unknown("..value..")"
end

-- Dissect: Bid Ord Type
eurex_derivatives_eobi_t7_v13_1_dissect.bid_ord_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.bid_ord_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.bid_ord_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.bid_ord_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Bbo
eurex_derivatives_eobi_t7_v13_1_size_of.auction_bbo = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.bid_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.offer_px

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.bid_size

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.offer_size

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.potential_security_trading_event

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.bid_ord_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.offer_ord_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_5

  return index
end

-- Display: Auction Bbo
eurex_derivatives_eobi_t7_v13_1_display.auction_bbo = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Bbo
eurex_derivatives_eobi_t7_v13_1_dissect.auction_bbo_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Bid Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_px = eurex_derivatives_eobi_t7_v13_1_dissect.bid_px(buffer, index, packet, parent)

  -- Offer Px: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_px = eurex_derivatives_eobi_t7_v13_1_dissect.offer_px(buffer, index, packet, parent)

  -- Bid Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, bid_size = eurex_derivatives_eobi_t7_v13_1_dissect.bid_size(buffer, index, packet, parent)

  -- Offer Size: 8 Byte Unsigned Fixed Width Integer Nullable
  index, offer_size = eurex_derivatives_eobi_t7_v13_1_dissect.offer_size(buffer, index, packet, parent)

  -- Potential Security Trading Event: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, potential_security_trading_event = eurex_derivatives_eobi_t7_v13_1_dissect.potential_security_trading_event(buffer, index, packet, parent)

  -- Bid Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, bid_ord_type = eurex_derivatives_eobi_t7_v13_1_dissect.bid_ord_type(buffer, index, packet, parent)

  -- Offer Ord Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, offer_ord_type = eurex_derivatives_eobi_t7_v13_1_dissect.offer_ord_type(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_5(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Bbo
eurex_derivatives_eobi_t7_v13_1_dissect.auction_bbo = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_bbo then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.auction_bbo(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.auction_bbo(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.auction_bbo, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.auction_bbo_fields(buffer, offset, packet, parent)
end

-- Size: Related Security Id
eurex_derivatives_eobi_t7_v13_1_size_of.related_security_id = 8

-- Display: Related Security Id
eurex_derivatives_eobi_t7_v13_1_display.related_security_id = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Related Security Id: No Value"
  end

  return "Related Security Id: "..value
end

-- Dissect: Related Security Id
eurex_derivatives_eobi_t7_v13_1_dissect.related_security_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.related_security_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_derivatives_eobi_t7_v13_1_display.related_security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.related_security_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Related Instrument Grp Comp
eurex_derivatives_eobi_t7_v13_1_size_of.related_instrument_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.related_security_id

  return index
end

-- Display: Related Instrument Grp Comp
eurex_derivatives_eobi_t7_v13_1_display.related_instrument_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Related Instrument Grp Comp
eurex_derivatives_eobi_t7_v13_1_dissect.related_instrument_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Related Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, related_security_id = eurex_derivatives_eobi_t7_v13_1_dissect.related_security_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Related Instrument Grp Comp
eurex_derivatives_eobi_t7_v13_1_dissect.related_instrument_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.related_instrument_grp_comp then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.related_instrument_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.related_instrument_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.related_instrument_grp_comp, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.related_instrument_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: Quantity Scaling Factor
eurex_derivatives_eobi_t7_v13_1_size_of.quantity_scaling_factor = 2

-- Display: Quantity Scaling Factor
eurex_derivatives_eobi_t7_v13_1_display.quantity_scaling_factor = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Quantity Scaling Factor: No Value"
  end

  return "Quantity Scaling Factor: "..value
end

-- Dissect: Quantity Scaling Factor
eurex_derivatives_eobi_t7_v13_1_dissect.quantity_scaling_factor = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.quantity_scaling_factor
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.quantity_scaling_factor(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.quantity_scaling_factor, range, value, display)

  return offset + length, value
end

-- Size: Security Type
eurex_derivatives_eobi_t7_v13_1_size_of.security_type = 1

-- Display: Security Type
eurex_derivatives_eobi_t7_v13_1_display.security_type = function(value)
  if value == 1 then
    return "Security Type: Opt (1)"
  end
  if value == 2 then
    return "Security Type: Fut (2)"
  end
  if value == 3 then
    return "Security Type: Mleg (3)"
  end
  if value == 0xFF then
    return "Security Type: No Value"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
eurex_derivatives_eobi_t7_v13_1_dissect.security_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.security_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.security_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Security Desc
eurex_derivatives_eobi_t7_v13_1_size_of.security_desc = 40

-- Display: Security Desc
eurex_derivatives_eobi_t7_v13_1_display.security_desc = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Security Desc: No Value"
  end

  return "Security Desc: "..value
end

-- Dissect: Security Desc
eurex_derivatives_eobi_t7_v13_1_dissect.security_desc = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.security_desc
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = eurex_derivatives_eobi_t7_v13_1_display.security_desc(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.security_desc, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Scaled Simple Instrument
eurex_derivatives_eobi_t7_v13_1_size_of.add_scaled_simple_instrument = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_desc

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_1

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.quantity_scaling_factor

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_4

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.related_instrument_grp_comp(buffer, offset + index)

  return index
end

-- Display: Add Scaled Simple Instrument
eurex_derivatives_eobi_t7_v13_1_display.add_scaled_simple_instrument = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Scaled Simple Instrument
eurex_derivatives_eobi_t7_v13_1_dissect.add_scaled_simple_instrument_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  -- Security Desc: 40 Byte Ascii String Nullable
  index, security_desc = eurex_derivatives_eobi_t7_v13_1_dissect.security_desc(buffer, index, packet, parent)

  -- Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_type = eurex_derivatives_eobi_t7_v13_1_dissect.security_type(buffer, index, packet, parent)

  -- Pad 1: 1 Byte
  index, pad_1 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_1(buffer, index, packet, parent)

  -- Quantity Scaling Factor: 2 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_scaling_factor = eurex_derivatives_eobi_t7_v13_1_dissect.quantity_scaling_factor(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_4(buffer, index, packet, parent)

  -- Related Instrument Grp Comp: Struct of 1 fields
  index, related_instrument_grp_comp = eurex_derivatives_eobi_t7_v13_1_dissect.related_instrument_grp_comp(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Scaled Simple Instrument
eurex_derivatives_eobi_t7_v13_1_dissect.add_scaled_simple_instrument = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_scaled_simple_instrument then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.add_scaled_simple_instrument(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.add_scaled_simple_instrument(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.add_scaled_simple_instrument, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.add_scaled_simple_instrument_fields(buffer, offset, packet, parent)
end

-- Size: Security Reference Data Supplement
eurex_derivatives_eobi_t7_v13_1_size_of.security_reference_data_supplement = 4

-- Display: Security Reference Data Supplement
eurex_derivatives_eobi_t7_v13_1_display.security_reference_data_supplement = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Security Reference Data Supplement: No Value"
  end

  return "Security Reference Data Supplement: "..value
end

-- Dissect: Security Reference Data Supplement
eurex_derivatives_eobi_t7_v13_1_dissect.security_reference_data_supplement = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.security_reference_data_supplement
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.security_reference_data_supplement(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.security_reference_data_supplement, range, value, display)

  return offset + length, value
end

-- Size: Contract Date
eurex_derivatives_eobi_t7_v13_1_size_of.contract_date = 4

-- Display: Contract Date
eurex_derivatives_eobi_t7_v13_1_display.contract_date = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Contract Date: No Value"
  end

  return "Contract Date: "..value
end

-- Dissect: Contract Date
eurex_derivatives_eobi_t7_v13_1_dissect.contract_date = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.contract_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.contract_date(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.contract_date, range, value, display)

  return offset + length, value
end

-- Size: Opt Attribute
eurex_derivatives_eobi_t7_v13_1_size_of.opt_attribute = 4

-- Display: Opt Attribute
eurex_derivatives_eobi_t7_v13_1_display.opt_attribute = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Opt Attribute: No Value"
  end

  return "Opt Attribute: "..value
end

-- Dissect: Opt Attribute
eurex_derivatives_eobi_t7_v13_1_dissect.opt_attribute = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.opt_attribute
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.opt_attribute(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.opt_attribute, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
eurex_derivatives_eobi_t7_v13_1_size_of.strike_price = 8

-- Display: Strike Price
eurex_derivatives_eobi_t7_v13_1_display.strike_price = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Strike Price: No Value"
  end

  return "Strike Price: "..value
end

-- Translate: Strike Price
translate.strike_price = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Strike Price
eurex_derivatives_eobi_t7_v13_1_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.strike_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.strike_price(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.strike_price(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
eurex_derivatives_eobi_t7_v13_1_size_of.maturity_date = 4

-- Display: Maturity Date
eurex_derivatives_eobi_t7_v13_1_display.maturity_date = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
eurex_derivatives_eobi_t7_v13_1_dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Settl Method
eurex_derivatives_eobi_t7_v13_1_size_of.settl_method = 1

-- Display: Settl Method
eurex_derivatives_eobi_t7_v13_1_display.settl_method = function(value)
  if value == 0 then
    return "Settl Method: Cash (0)"
  end
  if value == 1 then
    return "Settl Method: Physical (1)"
  end
  if value == 0xFF then
    return "Settl Method: No Value"
  end

  return "Settl Method: Unknown("..value..")"
end

-- Dissect: Settl Method
eurex_derivatives_eobi_t7_v13_1_dissect.settl_method = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.settl_method
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.settl_method(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.settl_method, range, value, display)

  return offset + length, value
end

-- Size: Exercise Style
eurex_derivatives_eobi_t7_v13_1_size_of.exercise_style = 1

-- Display: Exercise Style
eurex_derivatives_eobi_t7_v13_1_display.exercise_style = function(value)
  if value == 0 then
    return "Exercise Style: European (0)"
  end
  if value == 1 then
    return "Exercise Style: American (1)"
  end
  if value == 0xFF then
    return "Exercise Style: No Value"
  end

  return "Exercise Style: Unknown("..value..")"
end

-- Dissect: Exercise Style
eurex_derivatives_eobi_t7_v13_1_dissect.exercise_style = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.exercise_style
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.exercise_style(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.exercise_style, range, value, display)

  return offset + length, value
end

-- Size: Put Or Call
eurex_derivatives_eobi_t7_v13_1_size_of.put_or_call = 1

-- Display: Put Or Call
eurex_derivatives_eobi_t7_v13_1_display.put_or_call = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end
  if value == 0xFF then
    return "Put Or Call: No Value"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
eurex_derivatives_eobi_t7_v13_1_dissect.put_or_call = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.put_or_call
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Flexible Instrument
eurex_derivatives_eobi_t7_v13_1_size_of.add_flexible_instrument = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_desc

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.put_or_call

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.exercise_style

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.settl_method

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.maturity_date

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.strike_price

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.opt_attribute

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.contract_date

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_reference_data_supplement

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_4

  return index
end

-- Display: Add Flexible Instrument
eurex_derivatives_eobi_t7_v13_1_display.add_flexible_instrument = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Flexible Instrument
eurex_derivatives_eobi_t7_v13_1_dissect.add_flexible_instrument_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  -- Security Desc: 40 Byte Ascii String Nullable
  index, security_desc = eurex_derivatives_eobi_t7_v13_1_dissect.security_desc(buffer, index, packet, parent)

  -- Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, security_type = eurex_derivatives_eobi_t7_v13_1_dissect.security_type(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, put_or_call = eurex_derivatives_eobi_t7_v13_1_dissect.put_or_call(buffer, index, packet, parent)

  -- Exercise Style: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, exercise_style = eurex_derivatives_eobi_t7_v13_1_dissect.exercise_style(buffer, index, packet, parent)

  -- Settl Method: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, settl_method = eurex_derivatives_eobi_t7_v13_1_dissect.settl_method(buffer, index, packet, parent)

  -- Maturity Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, maturity_date = eurex_derivatives_eobi_t7_v13_1_dissect.maturity_date(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, strike_price = eurex_derivatives_eobi_t7_v13_1_dissect.strike_price(buffer, index, packet, parent)

  -- Opt Attribute: 4 Byte Unsigned Fixed Width Integer Nullable
  index, opt_attribute = eurex_derivatives_eobi_t7_v13_1_dissect.opt_attribute(buffer, index, packet, parent)

  -- Contract Date: 4 Byte Unsigned Fixed Width Integer Nullable
  index, contract_date = eurex_derivatives_eobi_t7_v13_1_dissect.contract_date(buffer, index, packet, parent)

  -- Security Reference Data Supplement: 4 Byte Unsigned Fixed Width Integer Nullable
  index, security_reference_data_supplement = eurex_derivatives_eobi_t7_v13_1_dissect.security_reference_data_supplement(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Flexible Instrument
eurex_derivatives_eobi_t7_v13_1_dissect.add_flexible_instrument = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_flexible_instrument then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.add_flexible_instrument(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.add_flexible_instrument(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.add_flexible_instrument, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.add_flexible_instrument_fields(buffer, offset, packet, parent)
end

-- Size: Related Price
eurex_derivatives_eobi_t7_v13_1_size_of.related_price = 8

-- Display: Related Price
eurex_derivatives_eobi_t7_v13_1_display.related_price = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Related Price: No Value"
  end

  return "Related Price: "..value
end

-- Translate: Related Price
translate.related_price = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Related Price
eurex_derivatives_eobi_t7_v13_1_dissect.related_price = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.related_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.related_price(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.related_price(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.related_price, range, value, display)

  return offset + length, value
end

-- Size: Trading Style
eurex_derivatives_eobi_t7_v13_1_size_of.trading_style = 1

-- Display: Trading Style
eurex_derivatives_eobi_t7_v13_1_display.trading_style = function(value)
  if value == 1 then
    return "Trading Style: Regular (1)"
  end
  if value == 2 then
    return "Trading Style: Trftac (2)"
  end
  if value == 3 then
    return "Trading Style: Trftam (3)"
  end
  if value == 4 then
    return "Trading Style: Moc (4)"
  end
  if value == 0xFF then
    return "Trading Style: No Value"
  end

  return "Trading Style: Unknown("..value..")"
end

-- Dissect: Trading Style
eurex_derivatives_eobi_t7_v13_1_dissect.trading_style = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.trading_style
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.trading_style(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.trading_style, range, value, display)

  return offset + length, value
end

-- Size: Related Price Type
eurex_derivatives_eobi_t7_v13_1_size_of.related_price_type = 1

-- Display: Related Price Type
eurex_derivatives_eobi_t7_v13_1_display.related_price_type = function(value)
  if value == 1 then
    return "Related Price Type: Basis (1)"
  end
  if value == 0xFF then
    return "Related Price Type: No Value"
  end

  return "Related Price Type: Unknown("..value..")"
end

-- Dissect: Related Price Type
eurex_derivatives_eobi_t7_v13_1_dissect.related_price_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.related_price_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.related_price_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.related_price_type, range, value, display)

  return offset + length, value
end

-- Size: Leg Side
eurex_derivatives_eobi_t7_v13_1_size_of.leg_side = 1

-- Display: Leg Side
eurex_derivatives_eobi_t7_v13_1_display.leg_side = function(value)
  if value == 1 then
    return "Leg Side: Buy (1)"
  end
  if value == 2 then
    return "Leg Side: Sell (2)"
  end
  if value == 0xFF then
    return "Leg Side: No Value"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
eurex_derivatives_eobi_t7_v13_1_dissect.leg_side = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.leg_side
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.leg_side(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Type
eurex_derivatives_eobi_t7_v13_1_size_of.leg_security_type = 1

-- Display: Leg Security Type
eurex_derivatives_eobi_t7_v13_1_display.leg_security_type = function(value)
  if value == 1 then
    return "Leg Security Type: Leg Security Multi Leg (1)"
  end
  if value == 2 then
    return "Leg Security Type: Leg Security Underlying Leg (2)"
  end
  if value == 0xFF then
    return "Leg Security Type: No Value"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
eurex_derivatives_eobi_t7_v13_1_dissect.leg_security_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.leg_security_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.leg_security_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Qty
eurex_derivatives_eobi_t7_v13_1_size_of.leg_ratio_qty = 4

-- Display: Leg Ratio Qty
eurex_derivatives_eobi_t7_v13_1_display.leg_ratio_qty = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Leg Ratio Qty: No Value"
  end

  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
eurex_derivatives_eobi_t7_v13_1_dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.leg_ratio_qty
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eobi_t7_v13_1_display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Size: Leg Price
eurex_derivatives_eobi_t7_v13_1_size_of.leg_price = 8

-- Display: Leg Price
eurex_derivatives_eobi_t7_v13_1_display.leg_price = function(raw, value)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return "Leg Price: No Value"
  end

  return "Leg Price: "..value
end

-- Translate: Leg Price
translate.leg_price = function(raw)
  -- Check null sentinel value
  if raw == UInt64(0x00000000, 0x80000000) then
    return 0/0
  end

  return raw:tonumber()/100000000
end

-- Dissect: Leg Price
eurex_derivatives_eobi_t7_v13_1_dissect.leg_price = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.leg_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.leg_price(raw)
  local display = eurex_derivatives_eobi_t7_v13_1_display.leg_price(raw, value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.leg_price, range, value, display)

  return offset + length, value
end

-- Size: Leg Security Id
eurex_derivatives_eobi_t7_v13_1_size_of.leg_security_id = 8

-- Display: Leg Security Id
eurex_derivatives_eobi_t7_v13_1_display.leg_security_id = function(value)
  -- Check if field has value
  if value == Int64(0x00000000, 0x80000000) then
    return "Leg Security Id: No Value"
  end

  return "Leg Security Id: "..value
end

-- Dissect: Leg Security Id
eurex_derivatives_eobi_t7_v13_1_dissect.leg_security_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.leg_security_id
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = eurex_derivatives_eobi_t7_v13_1_display.leg_security_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.leg_security_id, range, value, display)

  return offset + length, value
end

-- Size: Leg Symbol
eurex_derivatives_eobi_t7_v13_1_size_of.leg_symbol = 4

-- Display: Leg Symbol
eurex_derivatives_eobi_t7_v13_1_display.leg_symbol = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Leg Symbol: No Value"
  end

  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
eurex_derivatives_eobi_t7_v13_1_dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.leg_symbol
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eobi_t7_v13_1_display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrmt Leg Grp Comp
eurex_derivatives_eobi_t7_v13_1_size_of.instrmt_leg_grp_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.leg_symbol

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_4

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.leg_security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.leg_price

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.leg_ratio_qty

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.leg_security_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.leg_side

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.related_price_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.trading_style

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.related_price

  return index
end

-- Display: Instrmt Leg Grp Comp
eurex_derivatives_eobi_t7_v13_1_display.instrmt_leg_grp_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrmt Leg Grp Comp
eurex_derivatives_eobi_t7_v13_1_dissect.instrmt_leg_grp_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Symbol: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_symbol = eurex_derivatives_eobi_t7_v13_1_dissect.leg_symbol(buffer, index, packet, parent)

  -- Pad 4: 4 Byte
  index, pad_4 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_4(buffer, index, packet, parent)

  -- Leg Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, leg_security_id = eurex_derivatives_eobi_t7_v13_1_dissect.leg_security_id(buffer, index, packet, parent)

  -- Leg Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, leg_price = eurex_derivatives_eobi_t7_v13_1_dissect.leg_price(buffer, index, packet, parent)

  -- Leg Ratio Qty: 4 Byte Signed Fixed Width Integer Nullable
  index, leg_ratio_qty = eurex_derivatives_eobi_t7_v13_1_dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_security_type = eurex_derivatives_eobi_t7_v13_1_dissect.leg_security_type(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, leg_side = eurex_derivatives_eobi_t7_v13_1_dissect.leg_side(buffer, index, packet, parent)

  -- Related Price Type: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, related_price_type = eurex_derivatives_eobi_t7_v13_1_dissect.related_price_type(buffer, index, packet, parent)

  -- Trading Style: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, trading_style = eurex_derivatives_eobi_t7_v13_1_dissect.trading_style(buffer, index, packet, parent)

  -- Related Price: 8 Byte Unsigned Fixed Width Integer Nullable
  index, related_price = eurex_derivatives_eobi_t7_v13_1_dissect.related_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrmt Leg Grp Comp
eurex_derivatives_eobi_t7_v13_1_dissect.instrmt_leg_grp_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrmt_leg_grp_comp then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.instrmt_leg_grp_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.instrmt_leg_grp_comp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.instrmt_leg_grp_comp, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.instrmt_leg_grp_comp_fields(buffer, offset, packet, parent)
end

-- Size: No Legs
eurex_derivatives_eobi_t7_v13_1_size_of.no_legs = 1

-- Display: No Legs
eurex_derivatives_eobi_t7_v13_1_display.no_legs = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "No Legs: No Value"
  end

  return "No Legs: "..value
end

-- Dissect: No Legs
eurex_derivatives_eobi_t7_v13_1_dissect.no_legs = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.no_legs
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.no_legs(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.no_legs, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Multiplier
eurex_derivatives_eobi_t7_v13_1_size_of.leg_ratio_multiplier = 4

-- Display: Leg Ratio Multiplier
eurex_derivatives_eobi_t7_v13_1_display.leg_ratio_multiplier = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Leg Ratio Multiplier: No Value"
  end

  return "Leg Ratio Multiplier: "..value
end

-- Dissect: Leg Ratio Multiplier
eurex_derivatives_eobi_t7_v13_1_dissect.leg_ratio_multiplier = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.leg_ratio_multiplier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.leg_ratio_multiplier(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.leg_ratio_multiplier, range, value, display)

  return offset + length, value
end

-- Size: Implied Market Indicator
eurex_derivatives_eobi_t7_v13_1_size_of.implied_market_indicator = 1

-- Display: Implied Market Indicator
eurex_derivatives_eobi_t7_v13_1_display.implied_market_indicator = function(value)
  if value == 0 then
    return "Implied Market Indicator: Not Implied (0)"
  end
  if value == 3 then
    return "Implied Market Indicator: Implied In Out (3)"
  end
  if value == 0xFF then
    return "Implied Market Indicator: No Value"
  end

  return "Implied Market Indicator: Unknown("..value..")"
end

-- Dissect: Implied Market Indicator
eurex_derivatives_eobi_t7_v13_1_dissect.implied_market_indicator = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.implied_market_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.implied_market_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.implied_market_indicator, range, value, display)

  return offset + length, value
end

-- Size: Security Sub Type
eurex_derivatives_eobi_t7_v13_1_size_of.security_sub_type = 4

-- Display: Security Sub Type
eurex_derivatives_eobi_t7_v13_1_display.security_sub_type = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Security Sub Type: No Value"
  end

  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
eurex_derivatives_eobi_t7_v13_1_dissect.security_sub_type = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.security_sub_type
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eobi_t7_v13_1_display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Complex Instrument
eurex_derivatives_eobi_t7_v13_1_size_of.add_complex_instrument = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_desc

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.security_sub_type

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.product_complex

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.implied_market_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.quantity_scaling_factor

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.leg_ratio_multiplier

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.no_legs

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_2

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.last_fragment

  -- Calculate field size from count
  local instrmt_leg_grp_comp_count = buffer(offset + index - 4, 1):le_uint()
  index = index + instrmt_leg_grp_comp_count * 40

  return index
end

-- Display: Add Complex Instrument
eurex_derivatives_eobi_t7_v13_1_display.add_complex_instrument = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Complex Instrument
eurex_derivatives_eobi_t7_v13_1_dissect.add_complex_instrument_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Id: 8 Byte Signed Fixed Width Integer Nullable
  index, security_id = eurex_derivatives_eobi_t7_v13_1_dissect.security_id(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  -- Security Desc: 40 Byte Ascii String Nullable
  index, security_desc = eurex_derivatives_eobi_t7_v13_1_dissect.security_desc(buffer, index, packet, parent)

  -- Security Sub Type: 4 Byte Signed Fixed Width Integer Nullable
  index, security_sub_type = eurex_derivatives_eobi_t7_v13_1_dissect.security_sub_type(buffer, index, packet, parent)

  -- Product Complex: 1 Byte Unsigned Fixed Width Integer Enum with 15 values
  index, product_complex = eurex_derivatives_eobi_t7_v13_1_dissect.product_complex(buffer, index, packet, parent)

  -- Implied Market Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, implied_market_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.implied_market_indicator(buffer, index, packet, parent)

  -- Quantity Scaling Factor: 2 Byte Unsigned Fixed Width Integer Nullable
  index, quantity_scaling_factor = eurex_derivatives_eobi_t7_v13_1_dissect.quantity_scaling_factor(buffer, index, packet, parent)

  -- Leg Ratio Multiplier: 4 Byte Unsigned Fixed Width Integer Nullable
  index, leg_ratio_multiplier = eurex_derivatives_eobi_t7_v13_1_dissect.leg_ratio_multiplier(buffer, index, packet, parent)

  -- No Legs: 1 Byte Unsigned Fixed Width Integer Nullable
  index, no_legs = eurex_derivatives_eobi_t7_v13_1_dissect.no_legs(buffer, index, packet, parent)

  -- Pad 2: 2 Byte
  index, pad_2 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_2(buffer, index, packet, parent)

  -- Last Fragment: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, last_fragment = eurex_derivatives_eobi_t7_v13_1_dissect.last_fragment(buffer, index, packet, parent)

  -- Instrmt Leg Grp Comp: Struct of 10 fields
  for i = 1, no_legs do
    index = eurex_derivatives_eobi_t7_v13_1_dissect.instrmt_leg_grp_comp(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Add Complex Instrument
eurex_derivatives_eobi_t7_v13_1_dissect.add_complex_instrument = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.add_complex_instrument then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.add_complex_instrument(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.add_complex_instrument(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.add_complex_instrument, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.add_complex_instrument_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
eurex_derivatives_eobi_t7_v13_1_size_of.payload = function(buffer, offset, template_id)
  -- Size of Add Complex Instrument
  if template_id == 13400 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.add_complex_instrument(buffer, offset)
  end
  -- Size of Add Flexible Instrument
  if template_id == 13401 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.add_flexible_instrument(buffer, offset)
  end
  -- Size of Add Scaled Simple Instrument
  if template_id == 13402 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.add_scaled_simple_instrument(buffer, offset)
  end
  -- Size of Auction Bbo
  if template_id == 13500 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.auction_bbo(buffer, offset)
  end
  -- Size of Auction Clearing Price
  if template_id == 13501 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.auction_clearing_price(buffer, offset)
  end
  -- Size of Cross Request
  if template_id == 13502 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.cross_request(buffer, offset)
  end
  -- Size of Execution Summary
  if template_id == 13202 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.execution_summary(buffer, offset)
  end
  -- Size of Full Order Execution
  if template_id == 13104 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.full_order_execution(buffer, offset)
  end
  -- Size of Heartbeat
  if template_id == 13001 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.heartbeat(buffer, offset)
  end
  -- Size of Instrument State Change
  if template_id == 13301 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.instrument_state_change(buffer, offset)
  end
  -- Size of Instrument Summary
  if template_id == 13601 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.instrument_summary(buffer, offset)
  end
  -- Size of Mass Instrument State Change
  if template_id == 13302 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.mass_instrument_state_change(buffer, offset)
  end
  -- Size of Order Add
  if template_id == 13100 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.order_add(buffer, offset)
  end
  -- Size of Order Delete
  if template_id == 13102 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.order_delete(buffer, offset)
  end
  -- Size of Order Mass Delete
  if template_id == 13103 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.order_mass_delete(buffer, offset)
  end
  -- Size of Order Modify
  if template_id == 13101 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.order_modify(buffer, offset)
  end
  -- Size of Order Modify Same Prio
  if template_id == 13106 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.order_modify_same_prio(buffer, offset)
  end
  -- Size of Partial Order Execution
  if template_id == 13105 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.partial_order_execution(buffer, offset)
  end
  -- Size of Product State Change
  if template_id == 13300 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.product_state_change(buffer, offset)
  end
  -- Size of Product Summary
  if template_id == 13600 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.product_summary(buffer, offset)
  end
  -- Size of Quote Request
  if template_id == 13503 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.quote_request(buffer, offset)
  end
  -- Size of Snapshot Order
  if template_id == 13602 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.snapshot_order(buffer, offset)
  end
  -- Size of Tes Trade Report
  if template_id == 13203 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.tes_trade_report(buffer, offset)
  end
  -- Size of Top Of Book
  if template_id == 13504 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.top_of_book(buffer, offset)
  end
  -- Size of Trade Report
  if template_id == 13201 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.trade_report(buffer, offset)
  end
  -- Size of Trade Reversal
  if template_id == 13200 then
    return eurex_derivatives_eobi_t7_v13_1_size_of.trade_reversal(buffer, offset)
  end

  return 0
end

-- Display: Payload
eurex_derivatives_eobi_t7_v13_1_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
eurex_derivatives_eobi_t7_v13_1_dissect.payload_branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Add Complex Instrument
  if template_id == 13400 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.add_complex_instrument(buffer, offset, packet, parent)
  end
  -- Dissect Add Flexible Instrument
  if template_id == 13401 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.add_flexible_instrument(buffer, offset, packet, parent)
  end
  -- Dissect Add Scaled Simple Instrument
  if template_id == 13402 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.add_scaled_simple_instrument(buffer, offset, packet, parent)
  end
  -- Dissect Auction Bbo
  if template_id == 13500 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.auction_bbo(buffer, offset, packet, parent)
  end
  -- Dissect Auction Clearing Price
  if template_id == 13501 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.auction_clearing_price(buffer, offset, packet, parent)
  end
  -- Dissect Cross Request
  if template_id == 13502 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.cross_request(buffer, offset, packet, parent)
  end
  -- Dissect Execution Summary
  if template_id == 13202 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.execution_summary(buffer, offset, packet, parent)
  end
  -- Dissect Full Order Execution
  if template_id == 13104 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.full_order_execution(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if template_id == 13001 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.heartbeat(buffer, offset, packet, parent)
  end
  -- Dissect Instrument State Change
  if template_id == 13301 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.instrument_state_change(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Summary
  if template_id == 13601 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.instrument_summary(buffer, offset, packet, parent)
  end
  -- Dissect Mass Instrument State Change
  if template_id == 13302 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.mass_instrument_state_change(buffer, offset, packet, parent)
  end
  -- Dissect Order Add
  if template_id == 13100 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.order_add(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete
  if template_id == 13102 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.order_delete(buffer, offset, packet, parent)
  end
  -- Dissect Order Mass Delete
  if template_id == 13103 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.order_mass_delete(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify
  if template_id == 13101 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.order_modify(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Same Prio
  if template_id == 13106 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.order_modify_same_prio(buffer, offset, packet, parent)
  end
  -- Dissect Partial Order Execution
  if template_id == 13105 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.partial_order_execution(buffer, offset, packet, parent)
  end
  -- Dissect Product State Change
  if template_id == 13300 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.product_state_change(buffer, offset, packet, parent)
  end
  -- Dissect Product Summary
  if template_id == 13600 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.product_summary(buffer, offset, packet, parent)
  end
  -- Dissect Quote Request
  if template_id == 13503 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.quote_request(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Order
  if template_id == 13602 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.snapshot_order(buffer, offset, packet, parent)
  end
  -- Dissect Tes Trade Report
  if template_id == 13203 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.tes_trade_report(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book
  if template_id == 13504 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.top_of_book(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report
  if template_id == 13201 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.trade_report(buffer, offset, packet, parent)
  end
  -- Dissect Trade Reversal
  if template_id == 13200 then
    return eurex_derivatives_eobi_t7_v13_1_dissect.trade_reversal(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
eurex_derivatives_eobi_t7_v13_1_dissect.payload = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return eurex_derivatives_eobi_t7_v13_1_dissect.payload_branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = eurex_derivatives_eobi_t7_v13_1_size_of.payload(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = eurex_derivatives_eobi_t7_v13_1_display.payload(buffer, packet, parent)
  local element = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.payload, range, display)

  return eurex_derivatives_eobi_t7_v13_1_dissect.payload_branches(buffer, offset, packet, parent, template_id)
end

-- Size: Msg Seq Num
eurex_derivatives_eobi_t7_v13_1_size_of.msg_seq_num = 4

-- Display: Msg Seq Num
eurex_derivatives_eobi_t7_v13_1_display.msg_seq_num = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Msg Seq Num: No Value"
  end

  return "Msg Seq Num: "..value
end

-- Dissect: Msg Seq Num
eurex_derivatives_eobi_t7_v13_1_dissect.msg_seq_num = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.msg_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.msg_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.msg_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Template Id
eurex_derivatives_eobi_t7_v13_1_size_of.template_id = 2

-- Display: Template Id
eurex_derivatives_eobi_t7_v13_1_display.template_id = function(value)
  if value == 0xFFFF then
    return "Template Id: No Value"
  end
  if value == 13400 then
    return "Template Id: Add Complex Instrument (13400)"
  end
  if value == 13401 then
    return "Template Id: Add Flexible Instrument (13401)"
  end
  if value == 13402 then
    return "Template Id: Add Scaled Simple Instrument (13402)"
  end
  if value == 13500 then
    return "Template Id: Auction Bbo (13500)"
  end
  if value == 13501 then
    return "Template Id: Auction Clearing Price (13501)"
  end
  if value == 13502 then
    return "Template Id: Cross Request (13502)"
  end
  if value == 13202 then
    return "Template Id: Execution Summary (13202)"
  end
  if value == 13104 then
    return "Template Id: Full Order Execution (13104)"
  end
  if value == 13001 then
    return "Template Id: Heartbeat (13001)"
  end
  if value == 13301 then
    return "Template Id: Instrument State Change (13301)"
  end
  if value == 13601 then
    return "Template Id: Instrument Summary (13601)"
  end
  if value == 13302 then
    return "Template Id: Mass Instrument State Change (13302)"
  end
  if value == 13100 then
    return "Template Id: Order Add (13100)"
  end
  if value == 13102 then
    return "Template Id: Order Delete (13102)"
  end
  if value == 13103 then
    return "Template Id: Order Mass Delete (13103)"
  end
  if value == 13101 then
    return "Template Id: Order Modify (13101)"
  end
  if value == 13106 then
    return "Template Id: Order Modify Same Prio (13106)"
  end
  if value == 13005 then
    return "Template Id: Packet Header (13005)"
  end
  if value == 13105 then
    return "Template Id: Partial Order Execution (13105)"
  end
  if value == 13300 then
    return "Template Id: Product State Change (13300)"
  end
  if value == 13600 then
    return "Template Id: Product Summary (13600)"
  end
  if value == 13503 then
    return "Template Id: Quote Request (13503)"
  end
  if value == 13602 then
    return "Template Id: Snapshot Order (13602)"
  end
  if value == 13203 then
    return "Template Id: Tes Trade Report (13203)"
  end
  if value == 13504 then
    return "Template Id: Top Of Book (13504)"
  end
  if value == 13201 then
    return "Template Id: Trade Report (13201)"
  end
  if value == 13200 then
    return "Template Id: Trade Reversal (13200)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
eurex_derivatives_eobi_t7_v13_1_dissect.template_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.template_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.template_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.template_id, range, value, display)

  return offset + length, value
end

-- Size: Body Len
eurex_derivatives_eobi_t7_v13_1_size_of.body_len = 2

-- Display: Body Len
eurex_derivatives_eobi_t7_v13_1_display.body_len = function(value)
  -- Check if field has value
  if value == 0xFFFF then
    return "Body Len: No Value"
  end

  return "Body Len: "..value
end

-- Dissect: Body Len
eurex_derivatives_eobi_t7_v13_1_dissect.body_len = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.body_len
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.body_len(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.body_len, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header Comp
eurex_derivatives_eobi_t7_v13_1_size_of.message_header_comp = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.body_len

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.template_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.msg_seq_num

  return index
end

-- Display: Message Header Comp
eurex_derivatives_eobi_t7_v13_1_display.message_header_comp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header Comp
eurex_derivatives_eobi_t7_v13_1_dissect.message_header_comp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Body Len: 2 Byte Unsigned Fixed Width Integer Nullable
  index, body_len = eurex_derivatives_eobi_t7_v13_1_dissect.body_len(buffer, index, packet, parent)

  -- Template Id: 2 Byte Unsigned Fixed Width Integer Enum with 28 values
  index, template_id = eurex_derivatives_eobi_t7_v13_1_dissect.template_id(buffer, index, packet, parent)

  -- Msg Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, msg_seq_num = eurex_derivatives_eobi_t7_v13_1_dissect.msg_seq_num(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header Comp
eurex_derivatives_eobi_t7_v13_1_dissect.message_header_comp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header_comp then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.message_header_comp(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.message_header_comp(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.message_header_comp, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.message_header_comp_fields(buffer, offset, packet, parent)
end

-- Display: Message
eurex_derivatives_eobi_t7_v13_1_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
eurex_derivatives_eobi_t7_v13_1_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header Comp: Struct of 3 fields
  index, message_header_comp = eurex_derivatives_eobi_t7_v13_1_dissect.message_header_comp(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 6, 2):le_uint()

  -- Payload: Runtime Type with 26 branches
  index = eurex_derivatives_eobi_t7_v13_1_dissect.payload(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Message
eurex_derivatives_eobi_t7_v13_1_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = eurex_derivatives_eobi_t7_v13_1_display.message(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.message, range, display)
  end

  eurex_derivatives_eobi_t7_v13_1_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Appl Seq Reset Indicator
eurex_derivatives_eobi_t7_v13_1_size_of.appl_seq_reset_indicator = 1

-- Display: Appl Seq Reset Indicator
eurex_derivatives_eobi_t7_v13_1_display.appl_seq_reset_indicator = function(value)
  if value == 0 then
    return "Appl Seq Reset Indicator: No Reset (0)"
  end
  if value == 1 then
    return "Appl Seq Reset Indicator: Reset (1)"
  end
  if value == 0xFF then
    return "Appl Seq Reset Indicator: No Value"
  end

  return "Appl Seq Reset Indicator: Unknown("..value..")"
end

-- Dissect: Appl Seq Reset Indicator
eurex_derivatives_eobi_t7_v13_1_dissect.appl_seq_reset_indicator = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.appl_seq_reset_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.appl_seq_reset_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.appl_seq_reset_indicator, range, value, display)

  return offset + length, value
end

-- Size: Completion Indicator
eurex_derivatives_eobi_t7_v13_1_size_of.completion_indicator = 1

-- Display: Completion Indicator
eurex_derivatives_eobi_t7_v13_1_display.completion_indicator = function(value)
  if value == 0 then
    return "Completion Indicator: Incomplete (0)"
  end
  if value == 1 then
    return "Completion Indicator: Complete (1)"
  end
  if value == 0xFF then
    return "Completion Indicator: No Value"
  end

  return "Completion Indicator: Unknown("..value..")"
end

-- Dissect: Completion Indicator
eurex_derivatives_eobi_t7_v13_1_dissect.completion_indicator = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.completion_indicator
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.completion_indicator(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.completion_indicator, range, value, display)

  return offset + length, value
end

-- Size: Partition Id
eurex_derivatives_eobi_t7_v13_1_size_of.partition_id = 1

-- Display: Partition Id
eurex_derivatives_eobi_t7_v13_1_display.partition_id = function(value)
  -- Check if field has value
  if value == 0xFF then
    return "Partition Id: No Value"
  end

  return "Partition Id: "..value
end

-- Dissect: Partition Id
eurex_derivatives_eobi_t7_v13_1_dissect.partition_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.partition_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.partition_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.partition_id, range, value, display)

  return offset + length, value
end

-- Size: Market Segment Id
eurex_derivatives_eobi_t7_v13_1_size_of.market_segment_id = 4

-- Display: Market Segment Id
eurex_derivatives_eobi_t7_v13_1_display.market_segment_id = function(value)
  -- Check if field has value
  if value == 0x80000000 then
    return "Market Segment Id: No Value"
  end

  return "Market Segment Id: "..value
end

-- Dissect: Market Segment Id
eurex_derivatives_eobi_t7_v13_1_dissect.market_segment_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.market_segment_id
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = eurex_derivatives_eobi_t7_v13_1_display.market_segment_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.market_segment_id, range, value, display)

  return offset + length, value
end

-- Size: Appl Seq Num
eurex_derivatives_eobi_t7_v13_1_size_of.appl_seq_num = 4

-- Display: Appl Seq Num
eurex_derivatives_eobi_t7_v13_1_display.appl_seq_num = function(value)
  -- Check if field has value
  if value == 0xFFFFFFFF then
    return "Appl Seq Num: No Value"
  end

  return "Appl Seq Num: "..value
end

-- Dissect: Appl Seq Num
eurex_derivatives_eobi_t7_v13_1_dissect.appl_seq_num = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.appl_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.appl_seq_num(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.appl_seq_num, range, value, display)

  return offset + length, value
end

-- Size: Packet Sequence Number
eurex_derivatives_eobi_t7_v13_1_size_of.packet_sequence_number = 4

-- Display: Packet Sequence Number
eurex_derivatives_eobi_t7_v13_1_display.packet_sequence_number = function(value)
  return "Packet Sequence Number: "..value
end

-- Dissect: Packet Sequence Number
eurex_derivatives_eobi_t7_v13_1_dissect.packet_sequence_number = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.packet_sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.packet_sequence_number(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.packet_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Packet Id
eurex_derivatives_eobi_t7_v13_1_size_of.packet_id = 2

-- Display: Packet Id
eurex_derivatives_eobi_t7_v13_1_display.packet_id = function(value)
  return "Packet Id: "..value
end

-- Dissect: Packet Id
eurex_derivatives_eobi_t7_v13_1_dissect.packet_id = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.packet_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.packet_id(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.packet_id, range, value, display)

  return offset + length, value
end

-- Size: Header Length
eurex_derivatives_eobi_t7_v13_1_size_of.header_length = 2

-- Display: Header Length
eurex_derivatives_eobi_t7_v13_1_display.header_length = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
eurex_derivatives_eobi_t7_v13_1_dissect.header_length = function(buffer, offset, packet, parent)
  local length = eurex_derivatives_eobi_t7_v13_1_size_of.header_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = eurex_derivatives_eobi_t7_v13_1_display.header_length(value, buffer, offset, packet, parent)

  parent:add(eurex_derivatives_eobi_t7_v13_1.fields.header_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Info
eurex_derivatives_eobi_t7_v13_1_size_of.packet_info = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.header_length

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.packet_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.packet_sequence_number

  return index
end

-- Display: Packet Info
eurex_derivatives_eobi_t7_v13_1_display.packet_info = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Info
eurex_derivatives_eobi_t7_v13_1_dissect.packet_info_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Header Length: 2 Byte Unsigned Fixed Width Integer
  index, header_length = eurex_derivatives_eobi_t7_v13_1_dissect.header_length(buffer, index, packet, parent)

  -- Packet Id: 2 Byte Unsigned Fixed Width Integer Static
  index, packet_id = eurex_derivatives_eobi_t7_v13_1_dissect.packet_id(buffer, index, packet, parent)

  -- Packet Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, packet_sequence_number = eurex_derivatives_eobi_t7_v13_1_dissect.packet_sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Info
eurex_derivatives_eobi_t7_v13_1_dissect.packet_info = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_info then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.packet_info(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.packet_info(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.packet_info, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.packet_info_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Packet Header
eurex_derivatives_eobi_t7_v13_1_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.packet_info(buffer, offset + index)

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.appl_seq_num

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.market_segment_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.partition_id

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.completion_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.appl_seq_reset_indicator

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.pad_5

  index = index + eurex_derivatives_eobi_t7_v13_1_size_of.transact_time

  return index
end

-- Display: Packet Header
eurex_derivatives_eobi_t7_v13_1_display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
eurex_derivatives_eobi_t7_v13_1_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Info: Struct of 3 fields
  index, packet_info = eurex_derivatives_eobi_t7_v13_1_dissect.packet_info(buffer, index, packet, parent)

  -- Appl Seq Num: 4 Byte Unsigned Fixed Width Integer Nullable
  index, appl_seq_num = eurex_derivatives_eobi_t7_v13_1_dissect.appl_seq_num(buffer, index, packet, parent)

  -- Market Segment Id: 4 Byte Signed Fixed Width Integer Nullable
  index, market_segment_id = eurex_derivatives_eobi_t7_v13_1_dissect.market_segment_id(buffer, index, packet, parent)

  -- Partition Id: 1 Byte Unsigned Fixed Width Integer Nullable
  index, partition_id = eurex_derivatives_eobi_t7_v13_1_dissect.partition_id(buffer, index, packet, parent)

  -- Completion Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, completion_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.completion_indicator(buffer, index, packet, parent)

  -- Appl Seq Reset Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, appl_seq_reset_indicator = eurex_derivatives_eobi_t7_v13_1_dissect.appl_seq_reset_indicator(buffer, index, packet, parent)

  -- Pad 5: 5 Byte
  index, pad_5 = eurex_derivatives_eobi_t7_v13_1_dissect.pad_5(buffer, index, packet, parent)

  -- Transact Time: 8 Byte Unsigned Fixed Width Integer Nullable
  index, transact_time = eurex_derivatives_eobi_t7_v13_1_dissect.transact_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
eurex_derivatives_eobi_t7_v13_1_dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = eurex_derivatives_eobi_t7_v13_1_size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = eurex_derivatives_eobi_t7_v13_1_display.packet_header(buffer, packet, parent)
    parent = parent:add(eurex_derivatives_eobi_t7_v13_1.fields.packet_header, range, display)
  end

  return eurex_derivatives_eobi_t7_v13_1_dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
eurex_derivatives_eobi_t7_v13_1_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 8 fields
  index, packet_header = eurex_derivatives_eobi_t7_v13_1_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Body Len
    local body_len = buffer(index, 2):le_uint()

    -- Message: Struct of 2 fields
    index = eurex_derivatives_eobi_t7_v13_1_dissect.message(buffer, index, packet, parent, body_len)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function eurex_derivatives_eobi_t7_v13_1.init()
end

-- Dissector for Eurex Derivatives Eobi T7 13.1
function eurex_derivatives_eobi_t7_v13_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = eurex_derivatives_eobi_t7_v13_1.name

  -- Dissect protocol
  local protocol = parent:add(eurex_derivatives_eobi_t7_v13_1, buffer(), eurex_derivatives_eobi_t7_v13_1.description, "("..buffer:len().." Bytes)")
  return eurex_derivatives_eobi_t7_v13_1_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, eurex_derivatives_eobi_t7_v13_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.eurex_derivatives_eobi_t7_v13_1_packet_size = function(buffer)

  return true
end

-- Verify Packet Id Field
verify.packet_id = function(buffer)
  -- Attempt to read field
  local value = buffer(2, 2):le_uint()

  if value == 13005 then
    return true
  end

  return false
end

-- Dissector Heuristic for Eurex Derivatives Eobi T7 13.1
local function eurex_derivatives_eobi_t7_v13_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.eurex_derivatives_eobi_t7_v13_1_packet_size(buffer) then return false end

  -- Verify Packet Id
  if not verify.packet_id(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = eurex_derivatives_eobi_t7_v13_1
  eurex_derivatives_eobi_t7_v13_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Eurex Derivatives Eobi T7 13.1
eurex_derivatives_eobi_t7_v13_1:register_heuristic("udp", eurex_derivatives_eobi_t7_v13_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Eurex Exchange
--   Version: 13.1
--   Date: Friday, March 14, 2025
--   Specification: T7_R.13.1_ EOBI_Manual_Version_2.pdf
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
