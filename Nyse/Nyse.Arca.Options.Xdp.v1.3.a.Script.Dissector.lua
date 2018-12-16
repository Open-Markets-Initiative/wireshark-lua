-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Arca Options Xdp 1.3.a Protocol
local nyse_arca_options_xdp_v1_3_a = Proto("Nyse.Arca.Options.Xdp.v1.3.a.Lua", "Nyse Arca Options Xdp 1.3.a")

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

-- Nyse Arca Options Xdp 1.3.a Fields
nyse_arca_options_xdp_v1_3_a.fields.ask_customer_volume = ProtoField.new("Ask Customer Volume", "nyse.arca.options.xdp.v1.3.a.askcustomervolume", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.ask_price = ProtoField.new("Ask Price", "nyse.arca.options.xdp.v1.3.a.askprice", ftypes.INT32)
nyse_arca_options_xdp_v1_3_a.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.arca.options.xdp.v1.3.a.askvolume", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.auction_type = ProtoField.new("Auction Type", "nyse.arca.options.xdp.v1.3.a.auctiontype", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.bid_customer_volume = ProtoField.new("Bid Customer Volume", "nyse.arca.options.xdp.v1.3.a.bidcustomervolume", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.bid_price = ProtoField.new("Bid Price", "nyse.arca.options.xdp.v1.3.a.bidprice", ftypes.INT32)
nyse_arca_options_xdp_v1_3_a.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.arca.options.xdp.v1.3.a.bidvolume", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.capacity = ProtoField.new("Capacity", "nyse.arca.options.xdp.v1.3.a.capacity", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.channel_id = ProtoField.new("Channel Id", "nyse.arca.options.xdp.v1.3.a.channelid", ftypes.UINT8)
nyse_arca_options_xdp_v1_3_a.fields.close = ProtoField.new("Close", "nyse.arca.options.xdp.v1.3.a.close", ftypes.INT32)
nyse_arca_options_xdp_v1_3_a.fields.complex_crossing_rfq_message = ProtoField.new("Complex Crossing Rfq Message", "nyse.arca.options.xdp.v1.3.a.complexcrossingrfqmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.complex_cube_rfq_message = ProtoField.new("Complex Cube Rfq Message", "nyse.arca.options.xdp.v1.3.a.complexcuberfqmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.complex_index = ProtoField.new("Complex Index", "nyse.arca.options.xdp.v1.3.a.complexindex", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.complex_quote_message = ProtoField.new("Complex Quote Message", "nyse.arca.options.xdp.v1.3.a.complexquotemessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.complex_status_message = ProtoField.new("Complex Status Message", "nyse.arca.options.xdp.v1.3.a.complexstatusmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.complex_symbol = ProtoField.new("Complex Symbol", "nyse.arca.options.xdp.v1.3.a.complexsymbol", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.complex_symbol_definition_message = ProtoField.new("Complex Symbol Definition Message", "nyse.arca.options.xdp.v1.3.a.complexsymboldefinitionmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.complex_trade_message = ProtoField.new("Complex Trade Message", "nyse.arca.options.xdp.v1.3.a.complextrademessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "nyse.arca.options.xdp.v1.3.a.contractmultiplier", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.contracts = ProtoField.new("Contracts", "nyse.arca.options.xdp.v1.3.a.contracts", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.arca.options.xdp.v1.3.a.deliveryflag", ftypes.UINT8)
nyse_arca_options_xdp_v1_3_a.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.arca.options.xdp.v1.3.a.exchangecode", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.first_level_customer_volume = ProtoField.new("First Level Customer Volume", "nyse.arca.options.xdp.v1.3.a.firstlevelcustomervolume", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.first_level_price = ProtoField.new("First Level Price", "nyse.arca.options.xdp.v1.3.a.firstlevelprice", ftypes.INT32)
nyse_arca_options_xdp_v1_3_a.fields.first_level_volume = ProtoField.new("First Level Volume", "nyse.arca.options.xdp.v1.3.a.firstlevelvolume", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.first_volume = ProtoField.new("First Volume", "nyse.arca.options.xdp.v1.3.a.firstvolume", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.group_id = ProtoField.new("Group Id", "nyse.arca.options.xdp.v1.3.a.groupid", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.arca.options.xdp.v1.3.a.haltcondition", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.high_price = ProtoField.new("High Price", "nyse.arca.options.xdp.v1.3.a.highprice", ftypes.INT32)
nyse_arca_options_xdp_v1_3_a.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.arca.options.xdp.v1.3.a.imbalanceside", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.leg_definition = ProtoField.new("Leg Definition", "nyse.arca.options.xdp.v1.3.a.legdefinition", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "nyse.arca.options.xdp.v1.3.a.legratioqty", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.leg_security_type = ProtoField.new("Leg Security Type", "nyse.arca.options.xdp.v1.3.a.legsecuritytype", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.low_price = ProtoField.new("Low Price", "nyse.arca.options.xdp.v1.3.a.lowprice", ftypes.INT32)
nyse_arca_options_xdp_v1_3_a.fields.market_id = ProtoField.new("Market Id", "nyse.arca.options.xdp.v1.3.a.marketid", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.arca.options.xdp.v1.3.a.marketimbalanceqty", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.market_imbalance_side = ProtoField.new("Market Imbalance Side", "nyse.arca.options.xdp.v1.3.a.marketimbalanceside", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.maturity_date = ProtoField.new("Maturity Date", "nyse.arca.options.xdp.v1.3.a.maturitydate", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.message = ProtoField.new("Message", "nyse.arca.options.xdp.v1.3.a.message", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.message_count = ProtoField.new("Message Count", "nyse.arca.options.xdp.v1.3.a.messagecount", ftypes.UINT8)
nyse_arca_options_xdp_v1_3_a.fields.message_header = ProtoField.new("Message Header", "nyse.arca.options.xdp.v1.3.a.messageheader", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.message_size = ProtoField.new("Message Size", "nyse.arca.options.xdp.v1.3.a.messagesize", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.message_type = ProtoField.new("Message Type", "nyse.arca.options.xdp.v1.3.a.messagetype", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.arca.options.xdp.v1.3.a.nanoseconds", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.no_of_legs = ProtoField.new("No Of Legs", "nyse.arca.options.xdp.v1.3.a.nooflegs", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.open = ProtoField.new("Open", "nyse.arca.options.xdp.v1.3.a.open", ftypes.INT32)
nyse_arca_options_xdp_v1_3_a.fields.option_symbol_root = ProtoField.new("Option Symbol Root", "nyse.arca.options.xdp.v1.3.a.optionsymbolroot", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.original_trade_id = ProtoField.new("Original Trade Id", "nyse.arca.options.xdp.v1.3.a.originaltradeid", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.outright_bold_rfq_message = ProtoField.new("Outright Bold Rfq Message", "nyse.arca.options.xdp.v1.3.a.outrightboldrfqmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.outright_crossing_rfq_message = ProtoField.new("Outright Crossing Rfq Message", "nyse.arca.options.xdp.v1.3.a.outrightcrossingrfqmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.outright_imbalance_message = ProtoField.new("Outright Imbalance Message", "nyse.arca.options.xdp.v1.3.a.outrightimbalancemessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.outright_market_depth_buy_message = ProtoField.new("Outright Market Depth Buy Message", "nyse.arca.options.xdp.v1.3.a.outrightmarketdepthbuymessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.outright_market_depth_sell_message = ProtoField.new("Outright Market Depth Sell Message", "nyse.arca.options.xdp.v1.3.a.outrightmarketdepthsellmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.outright_quote_message = ProtoField.new("Outright Quote Message", "nyse.arca.options.xdp.v1.3.a.outrightquotemessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.outright_series_status_message = ProtoField.new("Outright Series Status Message", "nyse.arca.options.xdp.v1.3.a.outrightseriesstatusmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.outright_summary_message = ProtoField.new("Outright Summary Message", "nyse.arca.options.xdp.v1.3.a.outrightsummarymessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.outright_trade_cancel_message = ProtoField.new("Outright Trade Cancel Message", "nyse.arca.options.xdp.v1.3.a.outrighttradecancelmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.outright_trade_correction_message = ProtoField.new("Outright Trade Correction Message", "nyse.arca.options.xdp.v1.3.a.outrighttradecorrectionmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.outright_trade_message = ProtoField.new("Outright Trade Message", "nyse.arca.options.xdp.v1.3.a.outrighttrademessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.packet = ProtoField.new("Packet", "nyse.arca.options.xdp.v1.3.a.packet", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.arca.options.xdp.v1.3.a.packetheader", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.packet_size = ProtoField.new("Packet Size", "nyse.arca.options.xdp.v1.3.a.packetsize", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.arca.options.xdp.v1.3.a.pairedqty", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.participant = ProtoField.new("Participant", "nyse.arca.options.xdp.v1.3.a.participant", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.payload = ProtoField.new("Payload", "nyse.arca.options.xdp.v1.3.a.payload", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.price = ProtoField.new("Price", "nyse.arca.options.xdp.v1.3.a.price", ftypes.INT32)
nyse_arca_options_xdp_v1_3_a.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.arca.options.xdp.v1.3.a.priceresolution", ftypes.UINT8)
nyse_arca_options_xdp_v1_3_a.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.arca.options.xdp.v1.3.a.pricescalecode", ftypes.UINT8)
nyse_arca_options_xdp_v1_3_a.fields.put_or_call = ProtoField.new("Put Or Call", "nyse.arca.options.xdp.v1.3.a.putorcall", ftypes.UINT8)
nyse_arca_options_xdp_v1_3_a.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.arca.options.xdp.v1.3.a.quotecondition", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.reference_price = ProtoField.new("Reference Price", "nyse.arca.options.xdp.v1.3.a.referenceprice", ftypes.INT32)
nyse_arca_options_xdp_v1_3_a.fields.refresh_complex_quote_message = ProtoField.new("Refresh Complex Quote Message", "nyse.arca.options.xdp.v1.3.a.refreshcomplexquotemessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.refresh_complex_trade_message = ProtoField.new("Refresh Complex Trade Message", "nyse.arca.options.xdp.v1.3.a.refreshcomplextrademessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.refresh_outright_imbalance_message = ProtoField.new("Refresh Outright Imbalance Message", "nyse.arca.options.xdp.v1.3.a.refreshoutrightimbalancemessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.refresh_outright_market_depth_buy_message = ProtoField.new("Refresh Outright Market Depth Buy Message", "nyse.arca.options.xdp.v1.3.a.refreshoutrightmarketdepthbuymessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.refresh_outright_market_depth_sell_message = ProtoField.new("Refresh Outright Market Depth Sell Message", "nyse.arca.options.xdp.v1.3.a.refreshoutrightmarketdepthsellmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.refresh_outright_quote_message = ProtoField.new("Refresh Outright Quote Message", "nyse.arca.options.xdp.v1.3.a.refreshoutrightquotemessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.refresh_outright_trade_message = ProtoField.new("Refresh Outright Trade Message", "nyse.arca.options.xdp.v1.3.a.refreshoutrighttrademessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.arca.options.xdp.v1.3.a.reserved1", ftypes.BYTES)
nyse_arca_options_xdp_v1_3_a.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.arca.options.xdp.v1.3.a.reserved2", ftypes.BYTES)
nyse_arca_options_xdp_v1_3_a.fields.reserved_3 = ProtoField.new("Reserved 3", "nyse.arca.options.xdp.v1.3.a.reserved3", ftypes.BYTES)
nyse_arca_options_xdp_v1_3_a.fields.second_level_customer_volume = ProtoField.new("Second Level Customer Volume", "nyse.arca.options.xdp.v1.3.a.secondlevelcustomervolume", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.second_level_price = ProtoField.new("Second Level Price", "nyse.arca.options.xdp.v1.3.a.secondlevelprice", ftypes.INT32)
nyse_arca_options_xdp_v1_3_a.fields.second_level_volume = ProtoField.new("Second Level Volume", "nyse.arca.options.xdp.v1.3.a.secondlevelvolume", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.second_volume = ProtoField.new("Second Volume", "nyse.arca.options.xdp.v1.3.a.secondvolume", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.security_status = ProtoField.new("Security Status", "nyse.arca.options.xdp.v1.3.a.securitystatus", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.security_type = ProtoField.new("Security Type", "nyse.arca.options.xdp.v1.3.a.securitytype", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.arca.options.xdp.v1.3.a.sequencenumber", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.series_index = ProtoField.new("Series Index", "nyse.arca.options.xdp.v1.3.a.seriesindex", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.series_index_mapping_message = ProtoField.new("Series Index Mapping Message", "nyse.arca.options.xdp.v1.3.a.seriesindexmappingmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.side = ProtoField.new("Side", "nyse.arca.options.xdp.v1.3.a.side", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.source_ns = ProtoField.new("Source Ns", "nyse.arca.options.xdp.v1.3.a.sourcens", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.source_time = ProtoField.new("Source Time", "nyse.arca.options.xdp.v1.3.a.sourcetime", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.arca.options.xdp.v1.3.a.sourcetimens", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.stream_id = ProtoField.new("Stream Id", "nyse.arca.options.xdp.v1.3.a.streamid", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.stream_id_message = ProtoField.new("Stream Id Message", "nyse.arca.options.xdp.v1.3.a.streamidmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.strike_price = ProtoField.new("Strike Price", "nyse.arca.options.xdp.v1.3.a.strikeprice", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.arca.options.xdp.v1.3.a.symbolindex", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.arca.options.xdp.v1.3.a.symbolseqnum", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.system_id = ProtoField.new("System Id", "nyse.arca.options.xdp.v1.3.a.systemid", ftypes.UINT8)
nyse_arca_options_xdp_v1_3_a.fields.third_level_customer_volume = ProtoField.new("Third Level Customer Volume", "nyse.arca.options.xdp.v1.3.a.thirdlevelcustomervolume", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.third_level_price = ProtoField.new("Third Level Price", "nyse.arca.options.xdp.v1.3.a.thirdlevelprice", ftypes.INT32)
nyse_arca_options_xdp_v1_3_a.fields.third_level_volume = ProtoField.new("Third Level Volume", "nyse.arca.options.xdp.v1.3.a.thirdlevelvolume", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.third_volume = ProtoField.new("Third Volume", "nyse.arca.options.xdp.v1.3.a.thirdvolume", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.timestamp = ProtoField.new("Timestamp", "nyse.arca.options.xdp.v1.3.a.timestamp", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.arca.options.xdp.v1.3.a.totalimbalanceqty", ftypes.UINT16)
nyse_arca_options_xdp_v1_3_a.fields.total_volume = ProtoField.new("Total Volume", "nyse.arca.options.xdp.v1.3.a.totalvolume", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.trade_cond_1 = ProtoField.new("Trade Cond 1", "nyse.arca.options.xdp.v1.3.a.tradecond1", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.trade_cond_2 = ProtoField.new("Trade Cond 2", "nyse.arca.options.xdp.v1.3.a.tradecond2", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.trade_id = ProtoField.new("Trade Id", "nyse.arca.options.xdp.v1.3.a.tradeid", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.underlying_index = ProtoField.new("Underlying Index", "nyse.arca.options.xdp.v1.3.a.underlyingindex", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.underlying_index_mapping_message = ProtoField.new("Underlying Index Mapping Message", "nyse.arca.options.xdp.v1.3.a.underlyingindexmappingmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.underlying_seq_num = ProtoField.new("Underlying Seq Num", "nyse.arca.options.xdp.v1.3.a.underlyingseqnum", ftypes.UINT32)
nyse_arca_options_xdp_v1_3_a.fields.underlying_status_message = ProtoField.new("Underlying Status Message", "nyse.arca.options.xdp.v1.3.a.underlyingstatusmessage", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nyse.arca.options.xdp.v1.3.a.underlyingsymbol", ftypes.STRING)
nyse_arca_options_xdp_v1_3_a.fields.volume = ProtoField.new("Volume", "nyse.arca.options.xdp.v1.3.a.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Arca Options Xdp 1.3.a Element Dissection Options
show.complex_crossing_rfq_message = true
show.complex_cube_rfq_message = true
show.complex_quote_message = true
show.complex_status_message = true
show.complex_symbol_definition_message = true
show.complex_trade_message = true
show.leg_definition = true
show.message = true
show.message_header = true
show.outright_bold_rfq_message = true
show.outright_crossing_rfq_message = true
show.outright_imbalance_message = true
show.outright_market_depth_buy_message = true
show.outright_market_depth_sell_message = true
show.outright_quote_message = true
show.outright_series_status_message = true
show.outright_summary_message = true
show.outright_trade_cancel_message = true
show.outright_trade_correction_message = true
show.outright_trade_message = true
show.packet = true
show.packet_header = true
show.refresh_complex_quote_message = true
show.refresh_complex_trade_message = true
show.refresh_outright_imbalance_message = true
show.refresh_outright_market_depth_buy_message = true
show.refresh_outright_market_depth_sell_message = true
show.refresh_outright_quote_message = true
show.refresh_outright_trade_message = true
show.series_index_mapping_message = true
show.stream_id_message = true
show.underlying_index_mapping_message = true
show.underlying_status_message = true
show.payload = false

-- Register Nyse Arca Options Xdp 1.3.a Show Options
nyse_arca_options_xdp_v1_3_a.prefs.show_complex_crossing_rfq_message = Pref.bool("Show Complex Crossing Rfq Message", show.complex_crossing_rfq_message, "Parse and add Complex Crossing Rfq Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_complex_cube_rfq_message = Pref.bool("Show Complex Cube Rfq Message", show.complex_cube_rfq_message, "Parse and add Complex Cube Rfq Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_complex_quote_message = Pref.bool("Show Complex Quote Message", show.complex_quote_message, "Parse and add Complex Quote Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_complex_status_message = Pref.bool("Show Complex Status Message", show.complex_status_message, "Parse and add Complex Status Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_complex_symbol_definition_message = Pref.bool("Show Complex Symbol Definition Message", show.complex_symbol_definition_message, "Parse and add Complex Symbol Definition Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_complex_trade_message = Pref.bool("Show Complex Trade Message", show.complex_trade_message, "Parse and add Complex Trade Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_leg_definition = Pref.bool("Show Leg Definition", show.leg_definition, "Parse and add Leg Definition to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_outright_bold_rfq_message = Pref.bool("Show Outright Bold Rfq Message", show.outright_bold_rfq_message, "Parse and add Outright Bold Rfq Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_outright_crossing_rfq_message = Pref.bool("Show Outright Crossing Rfq Message", show.outright_crossing_rfq_message, "Parse and add Outright Crossing Rfq Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_outright_imbalance_message = Pref.bool("Show Outright Imbalance Message", show.outright_imbalance_message, "Parse and add Outright Imbalance Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_outright_market_depth_buy_message = Pref.bool("Show Outright Market Depth Buy Message", show.outright_market_depth_buy_message, "Parse and add Outright Market Depth Buy Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_outright_market_depth_sell_message = Pref.bool("Show Outright Market Depth Sell Message", show.outright_market_depth_sell_message, "Parse and add Outright Market Depth Sell Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_outright_quote_message = Pref.bool("Show Outright Quote Message", show.outright_quote_message, "Parse and add Outright Quote Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_outright_series_status_message = Pref.bool("Show Outright Series Status Message", show.outright_series_status_message, "Parse and add Outright Series Status Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_outright_summary_message = Pref.bool("Show Outright Summary Message", show.outright_summary_message, "Parse and add Outright Summary Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_outright_trade_cancel_message = Pref.bool("Show Outright Trade Cancel Message", show.outright_trade_cancel_message, "Parse and add Outright Trade Cancel Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_outright_trade_correction_message = Pref.bool("Show Outright Trade Correction Message", show.outright_trade_correction_message, "Parse and add Outright Trade Correction Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_outright_trade_message = Pref.bool("Show Outright Trade Message", show.outright_trade_message, "Parse and add Outright Trade Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_complex_quote_message = Pref.bool("Show Refresh Complex Quote Message", show.refresh_complex_quote_message, "Parse and add Refresh Complex Quote Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_complex_trade_message = Pref.bool("Show Refresh Complex Trade Message", show.refresh_complex_trade_message, "Parse and add Refresh Complex Trade Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_imbalance_message = Pref.bool("Show Refresh Outright Imbalance Message", show.refresh_outright_imbalance_message, "Parse and add Refresh Outright Imbalance Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_market_depth_buy_message = Pref.bool("Show Refresh Outright Market Depth Buy Message", show.refresh_outright_market_depth_buy_message, "Parse and add Refresh Outright Market Depth Buy Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_market_depth_sell_message = Pref.bool("Show Refresh Outright Market Depth Sell Message", show.refresh_outright_market_depth_sell_message, "Parse and add Refresh Outright Market Depth Sell Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_quote_message = Pref.bool("Show Refresh Outright Quote Message", show.refresh_outright_quote_message, "Parse and add Refresh Outright Quote Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_trade_message = Pref.bool("Show Refresh Outright Trade Message", show.refresh_outright_trade_message, "Parse and add Refresh Outright Trade Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_series_index_mapping_message = Pref.bool("Show Series Index Mapping Message", show.series_index_mapping_message, "Parse and add Series Index Mapping Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_stream_id_message = Pref.bool("Show Stream Id Message", show.stream_id_message, "Parse and add Stream Id Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_underlying_index_mapping_message = Pref.bool("Show Underlying Index Mapping Message", show.underlying_index_mapping_message, "Parse and add Underlying Index Mapping Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_underlying_status_message = Pref.bool("Show Underlying Status Message", show.underlying_status_message, "Parse and add Underlying Status Message to protocol tree")
nyse_arca_options_xdp_v1_3_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nyse_arca_options_xdp_v1_3_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.complex_crossing_rfq_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_complex_crossing_rfq_message then
    show.complex_crossing_rfq_message = nyse_arca_options_xdp_v1_3_a.prefs.show_complex_crossing_rfq_message
    changed = true
  end
  if show.complex_cube_rfq_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_complex_cube_rfq_message then
    show.complex_cube_rfq_message = nyse_arca_options_xdp_v1_3_a.prefs.show_complex_cube_rfq_message
    changed = true
  end
  if show.complex_quote_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_complex_quote_message then
    show.complex_quote_message = nyse_arca_options_xdp_v1_3_a.prefs.show_complex_quote_message
    changed = true
  end
  if show.complex_status_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_complex_status_message then
    show.complex_status_message = nyse_arca_options_xdp_v1_3_a.prefs.show_complex_status_message
    changed = true
  end
  if show.complex_symbol_definition_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_complex_symbol_definition_message then
    show.complex_symbol_definition_message = nyse_arca_options_xdp_v1_3_a.prefs.show_complex_symbol_definition_message
    changed = true
  end
  if show.complex_trade_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_complex_trade_message then
    show.complex_trade_message = nyse_arca_options_xdp_v1_3_a.prefs.show_complex_trade_message
    changed = true
  end
  if show.leg_definition ~= nyse_arca_options_xdp_v1_3_a.prefs.show_leg_definition then
    show.leg_definition = nyse_arca_options_xdp_v1_3_a.prefs.show_leg_definition
    changed = true
  end
  if show.message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_message then
    show.message = nyse_arca_options_xdp_v1_3_a.prefs.show_message
    changed = true
  end
  if show.message_header ~= nyse_arca_options_xdp_v1_3_a.prefs.show_message_header then
    show.message_header = nyse_arca_options_xdp_v1_3_a.prefs.show_message_header
    changed = true
  end
  if show.outright_bold_rfq_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_outright_bold_rfq_message then
    show.outright_bold_rfq_message = nyse_arca_options_xdp_v1_3_a.prefs.show_outright_bold_rfq_message
    changed = true
  end
  if show.outright_crossing_rfq_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_outright_crossing_rfq_message then
    show.outright_crossing_rfq_message = nyse_arca_options_xdp_v1_3_a.prefs.show_outright_crossing_rfq_message
    changed = true
  end
  if show.outright_imbalance_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_outright_imbalance_message then
    show.outright_imbalance_message = nyse_arca_options_xdp_v1_3_a.prefs.show_outright_imbalance_message
    changed = true
  end
  if show.outright_market_depth_buy_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_outright_market_depth_buy_message then
    show.outright_market_depth_buy_message = nyse_arca_options_xdp_v1_3_a.prefs.show_outright_market_depth_buy_message
    changed = true
  end
  if show.outright_market_depth_sell_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_outright_market_depth_sell_message then
    show.outright_market_depth_sell_message = nyse_arca_options_xdp_v1_3_a.prefs.show_outright_market_depth_sell_message
    changed = true
  end
  if show.outright_quote_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_outright_quote_message then
    show.outright_quote_message = nyse_arca_options_xdp_v1_3_a.prefs.show_outright_quote_message
    changed = true
  end
  if show.outright_series_status_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_outright_series_status_message then
    show.outright_series_status_message = nyse_arca_options_xdp_v1_3_a.prefs.show_outright_series_status_message
    changed = true
  end
  if show.outright_summary_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_outright_summary_message then
    show.outright_summary_message = nyse_arca_options_xdp_v1_3_a.prefs.show_outright_summary_message
    changed = true
  end
  if show.outright_trade_cancel_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_outright_trade_cancel_message then
    show.outright_trade_cancel_message = nyse_arca_options_xdp_v1_3_a.prefs.show_outright_trade_cancel_message
    changed = true
  end
  if show.outright_trade_correction_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_outright_trade_correction_message then
    show.outright_trade_correction_message = nyse_arca_options_xdp_v1_3_a.prefs.show_outright_trade_correction_message
    changed = true
  end
  if show.outright_trade_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_outright_trade_message then
    show.outright_trade_message = nyse_arca_options_xdp_v1_3_a.prefs.show_outright_trade_message
    changed = true
  end
  if show.packet ~= nyse_arca_options_xdp_v1_3_a.prefs.show_packet then
    show.packet = nyse_arca_options_xdp_v1_3_a.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nyse_arca_options_xdp_v1_3_a.prefs.show_packet_header then
    show.packet_header = nyse_arca_options_xdp_v1_3_a.prefs.show_packet_header
    changed = true
  end
  if show.refresh_complex_quote_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_complex_quote_message then
    show.refresh_complex_quote_message = nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_complex_quote_message
    changed = true
  end
  if show.refresh_complex_trade_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_complex_trade_message then
    show.refresh_complex_trade_message = nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_complex_trade_message
    changed = true
  end
  if show.refresh_outright_imbalance_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_imbalance_message then
    show.refresh_outright_imbalance_message = nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_imbalance_message
    changed = true
  end
  if show.refresh_outright_market_depth_buy_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_market_depth_buy_message then
    show.refresh_outright_market_depth_buy_message = nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_market_depth_buy_message
    changed = true
  end
  if show.refresh_outright_market_depth_sell_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_market_depth_sell_message then
    show.refresh_outright_market_depth_sell_message = nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_market_depth_sell_message
    changed = true
  end
  if show.refresh_outright_quote_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_quote_message then
    show.refresh_outright_quote_message = nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_quote_message
    changed = true
  end
  if show.refresh_outright_trade_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_trade_message then
    show.refresh_outright_trade_message = nyse_arca_options_xdp_v1_3_a.prefs.show_refresh_outright_trade_message
    changed = true
  end
  if show.series_index_mapping_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_series_index_mapping_message then
    show.series_index_mapping_message = nyse_arca_options_xdp_v1_3_a.prefs.show_series_index_mapping_message
    changed = true
  end
  if show.stream_id_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_stream_id_message then
    show.stream_id_message = nyse_arca_options_xdp_v1_3_a.prefs.show_stream_id_message
    changed = true
  end
  if show.underlying_index_mapping_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_underlying_index_mapping_message then
    show.underlying_index_mapping_message = nyse_arca_options_xdp_v1_3_a.prefs.show_underlying_index_mapping_message
    changed = true
  end
  if show.underlying_status_message ~= nyse_arca_options_xdp_v1_3_a.prefs.show_underlying_status_message then
    show.underlying_status_message = nyse_arca_options_xdp_v1_3_a.prefs.show_underlying_status_message
    changed = true
  end
  if show.payload ~= nyse_arca_options_xdp_v1_3_a.prefs.show_payload then
    show.payload = nyse_arca_options_xdp_v1_3_a.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Arca Options Xdp 1.3.a
-----------------------------------------------------------------------

-- Size: Reserved 2
size_of.reserved_2 = 2

-- Display: Reserved 2
display.reserved_2 = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
dissect.reserved_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_2)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_2(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.reserved_2, range, value, display)

  return offset + size_of.reserved_2
end

-- Size: Stream Id
size_of.stream_id = 2

-- Display: Stream Id
display.stream_id = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
dissect.stream_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.stream_id)
  local value = range:le_uint()
  local display = display.stream_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.stream_id, range, value, display)

  return offset + size_of.stream_id
end

-- Display: Stream Id Message
display.stream_id_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stream Id Message
dissect.stream_id_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index = dissect.stream_id(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Id Message
dissect.stream_id_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stream_id_message then
    local range = buffer(offset, 4)
    local display = display.stream_id_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.stream_id_message, range, display)
  end

  return dissect.stream_id_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Security Type
size_of.leg_security_type = 1

-- Display: Leg Security Type
display.leg_security_type = function(value)
  if value == "O" then
    return "Leg Security Type: Options Series Leg (O)"
  end
  if value == "E" then
    return "Leg Security Type: Equity Stock Leg (E)"
  end

  return "Leg Security Type: Unknown("..value..")"
end

-- Dissect: Leg Security Type
dissect.leg_security_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_security_type)
  local value = range:string()
  local display = display.leg_security_type(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.leg_security_type, range, value, display)

  return offset + size_of.leg_security_type
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.side)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.side, range, value, display)

  return offset + size_of.side
end

-- Size: Leg Ratio Qty
size_of.leg_ratio_qty = 2

-- Display: Leg Ratio Qty
display.leg_ratio_qty = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
dissect.leg_ratio_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.leg_ratio_qty)
  local value = range:le_uint()
  local display = display.leg_ratio_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.leg_ratio_qty, range, value, display)

  return offset + size_of.leg_ratio_qty
end

-- Size: Symbol Index
size_of.symbol_index = 4

-- Display: Symbol Index
display.symbol_index = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
dissect.symbol_index = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbol_index)
  local value = range:le_uint()
  local display = display.symbol_index(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.symbol_index, range, value, display)

  return offset + size_of.symbol_index
end

-- Display: Leg Definition
display.leg_definition = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Leg Definition
dissect.leg_definition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_index(buffer, index, packet, parent)

  -- Leg Ratio Qty: 2 Byte Unsigned Fixed Width Integer
  index = dissect.leg_ratio_qty(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Ascii String Enum with 2 values
  index = dissect.leg_security_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Definition
dissect.leg_definition = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.leg_definition then
    local range = buffer(offset, 8)
    local display = display.leg_definition(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.leg_definition, range, display)
  end

  return dissect.leg_definition_fields(buffer, offset, packet, parent)
end

-- Size: No Of Legs
size_of.no_of_legs = 2

-- Display: No Of Legs
display.no_of_legs = function(value)
  return "No Of Legs: "..value
end

-- Dissect: No Of Legs
dissect.no_of_legs = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.no_of_legs)
  local value = range:le_uint()
  local display = display.no_of_legs(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.no_of_legs, range, value, display)

  return offset + size_of.no_of_legs
end

-- Size: Reserved 1
size_of.reserved_1 = 1

-- Display: Reserved 1
display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
dissect.reserved_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_1)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.reserved_1, range, value, display)

  return offset + size_of.reserved_1
end

-- Size: System Id
size_of.system_id = 1

-- Display: System Id
display.system_id = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
dissect.system_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.system_id)
  local value = range:le_uint()
  local display = display.system_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.system_id, range, value, display)

  return offset + size_of.system_id
end

-- Size: Market Id
size_of.market_id = 2

-- Display: Market Id
display.market_id = function(value)
  if value == 1 then
    return "Market Id: Nyse Cash (1)"
  end
  if value == 2 then
    return "Market Id: Europe Cash (2)"
  end
  if value == 3 then
    return "Market Id: Nyse Arca Cash (3)"
  end
  if value == 4 then
    return "Market Id: Nyse Arca Options (4)"
  end
  if value == 5 then
    return "Market Id: Nyse Arca Bonds (5)"
  end
  if value == 6 then
    return "Market Id: Arca Edge (6)"
  end
  if value == 7 then
    return "Market Id: Liffe (7)"
  end
  if value == 8 then
    return "Market Id: Nyse American Options (8)"
  end
  if value == 9 then
    return "Market Id: Nyse Mkt Cash (9)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
dissect.market_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_id)
  local value = range:le_uint()
  local display = display.market_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.market_id, range, value, display)

  return offset + size_of.market_id
end

-- Size: Channel Id
size_of.channel_id = 1

-- Display: Channel Id
display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
dissect.channel_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.channel_id)
  local value = range:le_uint()
  local display = display.channel_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.channel_id, range, value, display)

  return offset + size_of.channel_id
end

-- Size: Complex Symbol
size_of.complex_symbol = 21

-- Display: Complex Symbol
display.complex_symbol = function(value)
  return "Complex Symbol: "..value
end

-- Dissect: Complex Symbol
dissect.complex_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.complex_symbol)
  local value = range:string()
  local display = display.complex_symbol(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.complex_symbol, range, value, display)

  return offset + size_of.complex_symbol
end

-- Size: Complex Index
size_of.complex_index = 4

-- Display: Complex Index
display.complex_index = function(value)
  return "Complex Index: "..value
end

-- Dissect: Complex Index
dissect.complex_index = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.complex_index)
  local value = range:le_uint()
  local display = display.complex_index(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.complex_index, range, value, display)

  return offset + size_of.complex_index
end

-- Display: Complex Symbol Definition Message
display.complex_symbol_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Symbol Definition Message
dissect.complex_symbol_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Complex Symbol: 21 Byte Ascii String
  index = dissect.complex_symbol(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channel_id(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index = dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.system_id(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index = dissect.stream_id(buffer, index, packet, parent)

  -- No Of Legs: 2 Byte Unsigned Fixed Width Integer
  index = dissect.no_of_legs(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  -- Leg Definition: Struct of 4 fields
  index = dissect.leg_definition(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Symbol Definition Message
dissect.complex_symbol_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_symbol_definition_message then
    local range = buffer(offset, 44)
    local display = display.complex_symbol_definition_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.complex_symbol_definition_message, range, display)
  end

  return dissect.complex_symbol_definition_message_fields(buffer, offset, packet, parent)
end

-- Size: Group Id
size_of.group_id = 4

-- Display: Group Id
display.group_id = function(value)
  return "Group Id: "..value
end

-- Dissect: Group Id
dissect.group_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.group_id)
  local value = range:le_uint()
  local display = display.group_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.group_id, range, value, display)

  return offset + size_of.group_id
end

-- Size: Option Symbol Root
size_of.option_symbol_root = 5

-- Display: Option Symbol Root
display.option_symbol_root = function(value)
  return "Option Symbol Root: "..value
end

-- Dissect: Option Symbol Root
dissect.option_symbol_root = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.option_symbol_root)
  local value = range:string()
  local display = display.option_symbol_root(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.option_symbol_root, range, value, display)

  return offset + size_of.option_symbol_root
end

-- Size: Underlying Symbol
size_of.underlying_symbol = 11

-- Display: Underlying Symbol
display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_symbol)
  local value = range:string()
  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.underlying_symbol, range, value, display)

  return offset + size_of.underlying_symbol
end

-- Size: Price Scale Code
size_of.price_scale_code = 1

-- Display: Price Scale Code
display.price_scale_code = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
dissect.price_scale_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_scale_code)
  local value = range:le_uint()
  local display = display.price_scale_code(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.price_scale_code, range, value, display)

  return offset + size_of.price_scale_code
end

-- Size: Strike Price
size_of.strike_price = 10

-- Display: Strike Price
display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strike_price)
  local value = range:string()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.strike_price, range, value, display)

  return offset + size_of.strike_price
end

-- Size: Put Or Call
size_of.put_or_call = 1

-- Display: Put Or Call
display.put_or_call = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
dissect.put_or_call = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.put_or_call)
  local value = range:le_uint()
  local display = display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.put_or_call, range, value, display)

  return offset + size_of.put_or_call
end

-- Size: Maturity Date
size_of.maturity_date = 6

-- Display: Maturity Date
display.maturity_date = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
dissect.maturity_date = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.maturity_date)
  local value = range:string()
  local display = display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.maturity_date, range, value, display)

  return offset + size_of.maturity_date
end

-- Size: Contract Multiplier
size_of.contract_multiplier = 2

-- Display: Contract Multiplier
display.contract_multiplier = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
dissect.contract_multiplier = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contract_multiplier)
  local value = range:le_uint()
  local display = display.contract_multiplier(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.contract_multiplier, range, value, display)

  return offset + size_of.contract_multiplier
end

-- Size: Underlying Index
size_of.underlying_index = 4

-- Display: Underlying Index
display.underlying_index = function(value)
  return "Underlying Index: "..value
end

-- Dissect: Underlying Index
dissect.underlying_index = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_index)
  local value = range:le_uint()
  local display = display.underlying_index(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.underlying_index, range, value, display)

  return offset + size_of.underlying_index
end

-- Size: Series Index
size_of.series_index = 4

-- Display: Series Index
display.series_index = function(value)
  return "Series Index: "..value
end

-- Dissect: Series Index
dissect.series_index = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.series_index)
  local value = range:le_uint()
  local display = display.series_index(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.series_index, range, value, display)

  return offset + size_of.series_index
end

-- Display: Series Index Mapping Message
display.series_index_mapping_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Series Index Mapping Message
dissect.series_index_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channel_id(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index = dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.system_id(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index = dissect.stream_id(buffer, index, packet, parent)

  -- Underlying Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.underlying_index(buffer, index, packet, parent)

  -- Contract Multiplier: 2 Byte Unsigned Fixed Width Integer
  index = dissect.contract_multiplier(buffer, index, packet, parent)

  -- Maturity Date: 6 Byte Ascii String
  index = dissect.maturity_date(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.put_or_call(buffer, index, packet, parent)

  -- Strike Price: 10 Byte Ascii String
  index = dissect.strike_price(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index = dissect.price_scale_code(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Option Symbol Root: 5 Byte Ascii String
  index = dissect.option_symbol_root(buffer, index, packet, parent)

  -- Group Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Index Mapping Message
dissect.series_index_mapping_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.series_index_mapping_message then
    local range = buffer(offset, 56)
    local display = display.series_index_mapping_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.series_index_mapping_message, range, display)
  end

  return dissect.series_index_mapping_message_fields(buffer, offset, packet, parent)
end

-- Size: Price Resolution
size_of.price_resolution = 1

-- Display: Price Resolution
display.price_resolution = function(value)
  if value == 0 then
    return "Price Resolution: All Penny (0)"
  end
  if value == 1 then
    return "Price Resolution: Penny Nickel (1)"
  end
  if value == 5 then
    return "Price Resolution: Nickel Dime (5)"
  end

  return "Price Resolution: Unknown("..value..")"
end

-- Dissect: Price Resolution
dissect.price_resolution = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_resolution)
  local value = range:le_uint()
  local display = display.price_resolution(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.price_resolution, range, value, display)

  return offset + size_of.price_resolution
end

-- Size: Security Type
size_of.security_type = 1

-- Display: Security Type
display.security_type = function(value)
  if value == "A" then
    return "Security Type: Adr (A)"
  end
  if value == "C" then
    return "Security Type: Common Stock (C)"
  end
  if value == "D" then
    return "Security Type: Debentures (D)"
  end
  if value == "E" then
    return "Security Type: Etf (E)"
  end
  if value == "F" then
    return "Security Type: Foreign (F)"
  end
  if value == "H" then
    return "Security Type: American Depository Shares (H)"
  end
  if value == "I" then
    return "Security Type: Units (I)"
  end
  if value == "M" then
    return "Security Type: Miscliquid Trust (M)"
  end
  if value == "O" then
    return "Security Type: Ordinary Shares (O)"
  end
  if value == "P" then
    return "Security Type: Preferred Stock (P)"
  end
  if value == "R" then
    return "Security Type: Rights (R)"
  end
  if value == "S" then
    return "Security Type: Shares Of Beneficiary Interest (S)"
  end
  if value == "T" then
    return "Security Type: Test (T)"
  end
  if value == "U" then
    return "Security Type: Units (U)"
  end
  if value == "W" then
    return "Security Type: Warrant (W)"
  end
  if value == "X" then
    return "Security Type: Index (X)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
dissect.security_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_type)
  local value = range:string()
  local display = display.security_type(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.security_type, range, value, display)

  return offset + size_of.security_type
end

-- Size: Exchange Code
size_of.exchange_code = 1

-- Display: Exchange Code
display.exchange_code = function(value)
  if value == "N" then
    return "Exchange Code: Nyse (N)"
  end
  if value == "P" then
    return "Exchange Code: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Exchange Code: Nasdaq (Q)"
  end
  if value == "A" then
    return "Exchange Code: Nyse Mkt (A)"
  end
  if value == "1" then
    return "Exchange Code: Global Otc (1)"
  end
  if value == "2" then
    return "Exchange Code: Arca Local Nontapeb Index (2)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
dissect.exchange_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.exchange_code)
  local value = range:string()
  local display = display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.exchange_code, range, value, display)

  return offset + size_of.exchange_code
end

-- Display: Underlying Index Mapping Message
display.underlying_index_mapping_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Index Mapping Message
dissect.underlying_index_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.underlying_index(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channel_id(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index = dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.system_id(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 6 values
  index = dissect.exchange_code(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index = dissect.price_scale_code(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index = dissect.security_type(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.price_resolution(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Index Mapping Message
dissect.underlying_index_mapping_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_index_mapping_message then
    local range = buffer(offset, 24)
    local display = display.underlying_index_mapping_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.underlying_index_mapping_message, range, display)
  end

  return dissect.underlying_index_mapping_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Cond 2
size_of.trade_cond_2 = 1

-- Display: Trade Cond 2
display.trade_cond_2 = function(value)
  if value == "P" then
    return "Trade Cond 2: Complex Trade With Equity (P)"
  end
  if value == "L" then
    return "Trade Cond 2: Complex Trade (L)"
  end

  return "Trade Cond 2: Unknown("..value..")"
end

-- Dissect: Trade Cond 2
dissect.trade_cond_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_cond_2)
  local value = range:string()
  local display = display.trade_cond_2(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.trade_cond_2, range, value, display)

  return offset + size_of.trade_cond_2
end

-- Size: Trade Cond 1
size_of.trade_cond_1 = 1

-- Display: Trade Cond 1
display.trade_cond_1 = function(value)
  if value == " " then
    return "Trade Cond 1: Regular Trade (<whitespace>)"
  end
  if value == "I" then
    return "Trade Cond 1: Late Report (I)"
  end
  if value == "R" then
    return "Trade Cond 1: Floor Trade (R)"
  end
  if value == "S" then
    return "Trade Cond 1: So Sweep Trade (S)"
  end

  return "Trade Cond 1: Unknown("..value..")"
end

-- Dissect: Trade Cond 1
dissect.trade_cond_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_cond_1)
  local value = range:string()
  local display = display.trade_cond_1(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.trade_cond_1, range, value, display)

  return offset + size_of.trade_cond_1
end

-- Size: Volume
size_of.volume = 4

-- Display: Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.volume)
  local value = range:le_uint()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.volume, range, value, display)

  return offset + size_of.volume
end

-- Size: Price
size_of.price = 4

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price)
  local value = range:le_int()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.price, range, value, display)

  return offset + size_of.price
end

-- Size: Trade Id
size_of.trade_id = 4

-- Display: Trade Id
display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
dissect.trade_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_id)
  local value = range:le_uint()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.trade_id, range, value, display)

  return offset + size_of.trade_id
end

-- Size: Symbol Seq Num
size_of.symbol_seq_num = 4

-- Display: Symbol Seq Num
display.symbol_seq_num = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
dissect.symbol_seq_num = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbol_seq_num)
  local value = range:le_uint()
  local display = display.symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.symbol_seq_num, range, value, display)

  return offset + size_of.symbol_seq_num
end

-- Size: Source Time Ns
size_of.source_time_ns = 4

-- Display: Source Time Ns
display.source_time_ns = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
dissect.source_time_ns = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.source_time_ns)
  local value = range:le_uint()
  local display = display.source_time_ns(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.source_time_ns, range, value, display)

  return offset + size_of.source_time_ns
end

-- Size: Source Time
size_of.source_time = 4

-- Display: Source Time
display.source_time = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
dissect.source_time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.source_time)
  local value = range:le_uint()
  local display = display.source_time(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.source_time, range, value, display)

  return offset + size_of.source_time
end

-- Display: Refresh Complex Trade Message
display.refresh_complex_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Complex Trade Message
dissect.refresh_complex_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 4 values
  index = dissect.trade_cond_1(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_cond_2(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complex Trade Message
dissect.refresh_complex_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_complex_trade_message then
    local range = buffer(offset, 32)
    local display = display.refresh_complex_trade_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.refresh_complex_trade_message, range, display)
  end

  return dissect.refresh_complex_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Quote Condition
size_of.quote_condition = 1

-- Display: Quote Condition
display.quote_condition = function(value)
  if value == "1" then
    return "Quote Condition: Regular Trading (1)"
  end
  if value == "2" then
    return "Quote Condition: Rotation (2)"
  end
  if value == "3" then
    return "Quote Condition: Trading Halted (3)"
  end
  if value == "4" then
    return "Quote Condition: Preopen (4)"
  end
  if value == "5" then
    return "Quote Condition: Rotation Legal Width Quote Pending (5)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
dissect.quote_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_condition)
  local value = range:string()
  local display = display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.quote_condition, range, value, display)

  return offset + size_of.quote_condition
end

-- Size: Bid Customer Volume
size_of.bid_customer_volume = 2

-- Display: Bid Customer Volume
display.bid_customer_volume = function(value)
  return "Bid Customer Volume: "..value
end

-- Dissect: Bid Customer Volume
dissect.bid_customer_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_customer_volume)
  local value = range:le_uint()
  local display = display.bid_customer_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.bid_customer_volume, range, value, display)

  return offset + size_of.bid_customer_volume
end

-- Size: Ask Customer Volume
size_of.ask_customer_volume = 2

-- Display: Ask Customer Volume
display.ask_customer_volume = function(value)
  return "Ask Customer Volume: "..value
end

-- Dissect: Ask Customer Volume
dissect.ask_customer_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_customer_volume)
  local value = range:le_uint()
  local display = display.ask_customer_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.ask_customer_volume, range, value, display)

  return offset + size_of.ask_customer_volume
end

-- Size: Bid Volume
size_of.bid_volume = 2

-- Display: Bid Volume
display.bid_volume = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
dissect.bid_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_volume)
  local value = range:le_uint()
  local display = display.bid_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.bid_volume, range, value, display)

  return offset + size_of.bid_volume
end

-- Size: Ask Volume
size_of.ask_volume = 2

-- Display: Ask Volume
display.ask_volume = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
dissect.ask_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_volume)
  local value = range:le_uint()
  local display = display.ask_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.ask_volume, range, value, display)

  return offset + size_of.ask_volume
end

-- Size: Bid Price
size_of.bid_price = 4

-- Display: Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_price)
  local value = range:le_int()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.bid_price, range, value, display)

  return offset + size_of.bid_price
end

-- Size: Ask Price
size_of.ask_price = 4

-- Display: Ask Price
display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
dissect.ask_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_price)
  local value = range:le_int()
  local display = display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.ask_price, range, value, display)

  return offset + size_of.ask_price
end

-- Display: Refresh Complex Quote Message
display.refresh_complex_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Complex Quote Message
dissect.refresh_complex_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Ask Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_volume(buffer, index, packet, parent)

  -- Bid Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_volume(buffer, index, packet, parent)

  -- Ask Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_customer_volume(buffer, index, packet, parent)

  -- Bid Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_customer_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complex Quote Message
dissect.refresh_complex_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_complex_quote_message then
    local range = buffer(offset, 36)
    local display = display.refresh_complex_quote_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.refresh_complex_quote_message, range, display)
  end

  return dissect.refresh_complex_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Halt Condition
size_of.halt_condition = 1

-- Display: Halt Condition
display.halt_condition = function(value)
  return "Halt Condition: "..value
end

-- Dissect: Halt Condition
dissect.halt_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.halt_condition)
  local value = range:string()
  local display = display.halt_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.halt_condition, range, value, display)

  return offset + size_of.halt_condition
end

-- Size: Security Status
size_of.security_status = 1

-- Display: Security Status
display.security_status = function(value)
  if value == "L" then
    return "Security Status: Light Up A Dark Series (L)"
  end
  if value == "N" then
    return "Security Status: Open A Dark Series (N)"
  end
  if value == "O" then
    return "Security Status: Open (O)"
  end
  if value == "X" then
    return "Security Status: Close (X)"
  end
  if value == "S" then
    return "Security Status: Halt (S)"
  end
  if value == "U" then
    return "Security Status: Unhalt (U)"
  end
  if value == "T" then
    return "Security Status: Unhalt A Dark Series (T)"
  end
  if value == "Q" then
    return "Security Status: End Of Rfq Auction (Q)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
dissect.security_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_status)
  local value = range:string()
  local display = display.security_status(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.security_status, range, value, display)

  return offset + size_of.security_status
end

-- Display: Complex Status Message
display.complex_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Status Message
dissect.complex_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 8 values
  index = dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String
  index = dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Status Message
dissect.complex_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_status_message then
    local range = buffer(offset, 20)
    local display = display.complex_status_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.complex_status_message, range, display)
  end

  return dissect.complex_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Source Ns
size_of.source_ns = 4

-- Display: Source Ns
display.source_ns = function(value)
  return "Source Ns: "..value
end

-- Dissect: Source Ns
dissect.source_ns = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.source_ns)
  local value = range:le_uint()
  local display = display.source_ns(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.source_ns, range, value, display)

  return offset + size_of.source_ns
end

-- Display: Complex Cube Rfq Message
display.complex_cube_rfq_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Cube Rfq Message
dissect.complex_cube_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Cube Rfq Message
dissect.complex_cube_rfq_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_cube_rfq_message then
    local range = buffer(offset, 26)
    local display = display.complex_cube_rfq_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.complex_cube_rfq_message, range, display)
  end

  return dissect.complex_cube_rfq_message_fields(buffer, offset, packet, parent)
end

-- Display: Complex Crossing Rfq Message
display.complex_crossing_rfq_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Crossing Rfq Message
dissect.complex_crossing_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Crossing Rfq Message
dissect.complex_crossing_rfq_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_crossing_rfq_message then
    local range = buffer(offset, 26)
    local display = display.complex_crossing_rfq_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.complex_crossing_rfq_message, range, display)
  end

  return dissect.complex_crossing_rfq_message_fields(buffer, offset, packet, parent)
end

-- Display: Complex Trade Message
display.complex_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Trade Message
dissect.complex_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 4 values
  index = dissect.trade_cond_1(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_cond_2(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Trade Message
dissect.complex_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_trade_message then
    local range = buffer(offset, 32)
    local display = display.complex_trade_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.complex_trade_message, range, display)
  end

  return dissect.complex_trade_message_fields(buffer, offset, packet, parent)
end

-- Display: Complex Quote Message
display.complex_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Complex Quote Message
dissect.complex_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Complex Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.complex_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Ask Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_volume(buffer, index, packet, parent)

  -- Bid Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_volume(buffer, index, packet, parent)

  -- Ask Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_customer_volume(buffer, index, packet, parent)

  -- Bid Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_customer_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Complex Quote Message
dissect.complex_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.complex_quote_message then
    local range = buffer(offset, 36)
    local display = display.complex_quote_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.complex_quote_message, range, display)
  end

  return dissect.complex_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Third Level Customer Volume
size_of.third_level_customer_volume = 2

-- Display: Third Level Customer Volume
display.third_level_customer_volume = function(value)
  return "Third Level Customer Volume: "..value
end

-- Dissect: Third Level Customer Volume
dissect.third_level_customer_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.third_level_customer_volume)
  local value = range:le_uint()
  local display = display.third_level_customer_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.third_level_customer_volume, range, value, display)

  return offset + size_of.third_level_customer_volume
end

-- Size: Second Level Customer Volume
size_of.second_level_customer_volume = 2

-- Display: Second Level Customer Volume
display.second_level_customer_volume = function(value)
  return "Second Level Customer Volume: "..value
end

-- Dissect: Second Level Customer Volume
dissect.second_level_customer_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.second_level_customer_volume)
  local value = range:le_uint()
  local display = display.second_level_customer_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.second_level_customer_volume, range, value, display)

  return offset + size_of.second_level_customer_volume
end

-- Size: First Level Customer Volume
size_of.first_level_customer_volume = 2

-- Display: First Level Customer Volume
display.first_level_customer_volume = function(value)
  return "First Level Customer Volume: "..value
end

-- Dissect: First Level Customer Volume
dissect.first_level_customer_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.first_level_customer_volume)
  local value = range:le_uint()
  local display = display.first_level_customer_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.first_level_customer_volume, range, value, display)

  return offset + size_of.first_level_customer_volume
end

-- Size: Third Volume
size_of.third_volume = 2

-- Display: Third Volume
display.third_volume = function(value)
  return "Third Volume: "..value
end

-- Dissect: Third Volume
dissect.third_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.third_volume)
  local value = range:le_uint()
  local display = display.third_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.third_volume, range, value, display)

  return offset + size_of.third_volume
end

-- Size: Second Volume
size_of.second_volume = 2

-- Display: Second Volume
display.second_volume = function(value)
  return "Second Volume: "..value
end

-- Dissect: Second Volume
dissect.second_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.second_volume)
  local value = range:le_uint()
  local display = display.second_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.second_volume, range, value, display)

  return offset + size_of.second_volume
end

-- Size: First Volume
size_of.first_volume = 2

-- Display: First Volume
display.first_volume = function(value)
  return "First Volume: "..value
end

-- Dissect: First Volume
dissect.first_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.first_volume)
  local value = range:le_uint()
  local display = display.first_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.first_volume, range, value, display)

  return offset + size_of.first_volume
end

-- Size: Third Level Price
size_of.third_level_price = 4

-- Display: Third Level Price
display.third_level_price = function(value)
  return "Third Level Price: "..value
end

-- Dissect: Third Level Price
dissect.third_level_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.third_level_price)
  local value = range:le_int()
  local display = display.third_level_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.third_level_price, range, value, display)

  return offset + size_of.third_level_price
end

-- Size: Second Level Price
size_of.second_level_price = 4

-- Display: Second Level Price
display.second_level_price = function(value)
  return "Second Level Price: "..value
end

-- Dissect: Second Level Price
dissect.second_level_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.second_level_price)
  local value = range:le_int()
  local display = display.second_level_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.second_level_price, range, value, display)

  return offset + size_of.second_level_price
end

-- Size: First Level Price
size_of.first_level_price = 4

-- Display: First Level Price
display.first_level_price = function(value)
  return "First Level Price: "..value
end

-- Dissect: First Level Price
dissect.first_level_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.first_level_price)
  local value = range:le_int()
  local display = display.first_level_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.first_level_price, range, value, display)

  return offset + size_of.first_level_price
end

-- Display: Refresh Outright Market Depth Sell Message
display.refresh_outright_market_depth_sell_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Outright Market Depth Sell Message
dissect.refresh_outright_market_depth_sell_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- First Level Price: 4 Byte Signed Fixed Width Integer
  index = dissect.first_level_price(buffer, index, packet, parent)

  -- Second Level Price: 4 Byte Signed Fixed Width Integer
  index = dissect.second_level_price(buffer, index, packet, parent)

  -- Third Level Price: 4 Byte Signed Fixed Width Integer
  index = dissect.third_level_price(buffer, index, packet, parent)

  -- First Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.first_volume(buffer, index, packet, parent)

  -- Second Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.second_volume(buffer, index, packet, parent)

  -- Third Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.third_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- First Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.first_level_customer_volume(buffer, index, packet, parent)

  -- Second Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.second_level_customer_volume(buffer, index, packet, parent)

  -- Third Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.third_level_customer_volume(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Outright Market Depth Sell Message
dissect.refresh_outright_market_depth_sell_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_outright_market_depth_sell_message then
    local range = buffer(offset, 44)
    local display = display.refresh_outright_market_depth_sell_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.refresh_outright_market_depth_sell_message, range, display)
  end

  return dissect.refresh_outright_market_depth_sell_message_fields(buffer, offset, packet, parent)
end

-- Display: Refresh Outright Market Depth Buy Message
display.refresh_outright_market_depth_buy_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Outright Market Depth Buy Message
dissect.refresh_outright_market_depth_buy_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- First Level Price: 4 Byte Signed Fixed Width Integer
  index = dissect.first_level_price(buffer, index, packet, parent)

  -- Second Level Price: 4 Byte Signed Fixed Width Integer
  index = dissect.second_level_price(buffer, index, packet, parent)

  -- Third Level Price: 4 Byte Signed Fixed Width Integer
  index = dissect.third_level_price(buffer, index, packet, parent)

  -- First Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.first_volume(buffer, index, packet, parent)

  -- Second Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.second_volume(buffer, index, packet, parent)

  -- Third Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.third_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- First Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.first_level_customer_volume(buffer, index, packet, parent)

  -- Second Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.second_level_customer_volume(buffer, index, packet, parent)

  -- Third Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.third_level_customer_volume(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Outright Market Depth Buy Message
dissect.refresh_outright_market_depth_buy_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_outright_market_depth_buy_message then
    local range = buffer(offset, 44)
    local display = display.refresh_outright_market_depth_buy_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.refresh_outright_market_depth_buy_message, range, display)
  end

  return dissect.refresh_outright_market_depth_buy_message_fields(buffer, offset, packet, parent)
end

-- Display: Outright Market Depth Sell Message
display.outright_market_depth_sell_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Market Depth Sell Message
dissect.outright_market_depth_sell_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- First Level Price: 4 Byte Signed Fixed Width Integer
  index = dissect.first_level_price(buffer, index, packet, parent)

  -- Second Level Price: 4 Byte Signed Fixed Width Integer
  index = dissect.second_level_price(buffer, index, packet, parent)

  -- Third Level Price: 4 Byte Signed Fixed Width Integer
  index = dissect.third_level_price(buffer, index, packet, parent)

  -- First Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.first_volume(buffer, index, packet, parent)

  -- Second Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.second_volume(buffer, index, packet, parent)

  -- Third Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.third_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- First Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.first_level_customer_volume(buffer, index, packet, parent)

  -- Second Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.second_level_customer_volume(buffer, index, packet, parent)

  -- Third Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.third_level_customer_volume(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Market Depth Sell Message
dissect.outright_market_depth_sell_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_market_depth_sell_message then
    local range = buffer(offset, 44)
    local display = display.outright_market_depth_sell_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.outright_market_depth_sell_message, range, display)
  end

  return dissect.outright_market_depth_sell_message_fields(buffer, offset, packet, parent)
end

-- Size: Third Level Volume
size_of.third_level_volume = 2

-- Display: Third Level Volume
display.third_level_volume = function(value)
  return "Third Level Volume: "..value
end

-- Dissect: Third Level Volume
dissect.third_level_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.third_level_volume)
  local value = range:le_uint()
  local display = display.third_level_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.third_level_volume, range, value, display)

  return offset + size_of.third_level_volume
end

-- Size: Second Level Volume
size_of.second_level_volume = 2

-- Display: Second Level Volume
display.second_level_volume = function(value)
  return "Second Level Volume: "..value
end

-- Dissect: Second Level Volume
dissect.second_level_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.second_level_volume)
  local value = range:le_uint()
  local display = display.second_level_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.second_level_volume, range, value, display)

  return offset + size_of.second_level_volume
end

-- Size: First Level Volume
size_of.first_level_volume = 2

-- Display: First Level Volume
display.first_level_volume = function(value)
  return "First Level Volume: "..value
end

-- Dissect: First Level Volume
dissect.first_level_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.first_level_volume)
  local value = range:le_uint()
  local display = display.first_level_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.first_level_volume, range, value, display)

  return offset + size_of.first_level_volume
end

-- Display: Outright Market Depth Buy Message
display.outright_market_depth_buy_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Market Depth Buy Message
dissect.outright_market_depth_buy_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- First Level Price: 4 Byte Signed Fixed Width Integer
  index = dissect.first_level_price(buffer, index, packet, parent)

  -- Second Level Price: 4 Byte Signed Fixed Width Integer
  index = dissect.second_level_price(buffer, index, packet, parent)

  -- Third Level Price: 4 Byte Signed Fixed Width Integer
  index = dissect.third_level_price(buffer, index, packet, parent)

  -- First Level Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.first_level_volume(buffer, index, packet, parent)

  -- Second Level Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.second_level_volume(buffer, index, packet, parent)

  -- Third Level Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.third_level_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- First Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.first_level_customer_volume(buffer, index, packet, parent)

  -- Second Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.second_level_customer_volume(buffer, index, packet, parent)

  -- Third Level Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.third_level_customer_volume(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Market Depth Buy Message
dissect.outright_market_depth_buy_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_market_depth_buy_message then
    local range = buffer(offset, 44)
    local display = display.outright_market_depth_buy_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.outright_market_depth_buy_message, range, display)
  end

  return dissect.outright_market_depth_buy_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 3
size_of.reserved_3 = 3

-- Display: Reserved 3
display.reserved_3 = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
dissect.reserved_3 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_3)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_3(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.reserved_3, range, value, display)

  return offset + size_of.reserved_3
end

-- Size: Market Imbalance Side
size_of.market_imbalance_side = 1

-- Display: Market Imbalance Side
display.market_imbalance_side = function(value)
  if value == "B" then
    return "Market Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Market Imbalance Side: Sell (S)"
  end
  if value == " " then
    return "Market Imbalance Side: No Imbalance (<whitespace>)"
  end

  return "Market Imbalance Side: Unknown("..value..")"
end

-- Dissect: Market Imbalance Side
dissect.market_imbalance_side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_imbalance_side)
  local value = range:string()
  local display = display.market_imbalance_side(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.market_imbalance_side, range, value, display)

  return offset + size_of.market_imbalance_side
end

-- Size: Imbalance Side
size_of.imbalance_side = 1

-- Display: Imbalance Side
display.imbalance_side = function(value)
  if value == "B" then
    return "Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell (S)"
  end
  if value == " " then
    return "Imbalance Side: No Imbalance (<whitespace>)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
dissect.imbalance_side = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.imbalance_side)
  local value = range:string()
  local display = display.imbalance_side(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.imbalance_side, range, value, display)

  return offset + size_of.imbalance_side
end

-- Size: Auction Type
size_of.auction_type = 1

-- Display: Auction Type
display.auction_type = function(value)
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "H" then
    return "Auction Type: Halt (H)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
dissect.auction_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auction_type)
  local value = range:string()
  local display = display.auction_type(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.auction_type, range, value, display)

  return offset + size_of.auction_type
end

-- Size: Market Imbalance Qty
size_of.market_imbalance_qty = 2

-- Display: Market Imbalance Qty
display.market_imbalance_qty = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
dissect.market_imbalance_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_imbalance_qty)
  local value = range:le_uint()
  local display = display.market_imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.market_imbalance_qty, range, value, display)

  return offset + size_of.market_imbalance_qty
end

-- Size: Total Imbalance Qty
size_of.total_imbalance_qty = 2

-- Display: Total Imbalance Qty
display.total_imbalance_qty = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
dissect.total_imbalance_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.total_imbalance_qty)
  local value = range:le_uint()
  local display = display.total_imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.total_imbalance_qty, range, value, display)

  return offset + size_of.total_imbalance_qty
end

-- Size: Paired Qty
size_of.paired_qty = 2

-- Display: Paired Qty
display.paired_qty = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
dissect.paired_qty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.paired_qty)
  local value = range:le_uint()
  local display = display.paired_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.paired_qty, range, value, display)

  return offset + size_of.paired_qty
end

-- Size: Reference Price
size_of.reference_price = 4

-- Display: Reference Price
display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
dissect.reference_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reference_price)
  local value = range:le_int()
  local display = display.reference_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.reference_price, range, value, display)

  return offset + size_of.reference_price
end

-- Display: Refresh Outright Imbalance Message
display.refresh_outright_imbalance_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Outright Imbalance Message
dissect.refresh_outright_imbalance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Reference Price: 4 Byte Signed Fixed Width Integer
  index = dissect.reference_price(buffer, index, packet, parent)

  -- Paired Qty: 2 Byte Unsigned Fixed Width Integer
  index = dissect.paired_qty(buffer, index, packet, parent)

  -- Total Imbalance Qty: 2 Byte Unsigned Fixed Width Integer
  index = dissect.total_imbalance_qty(buffer, index, packet, parent)

  -- Market Imbalance Qty: 2 Byte Unsigned Fixed Width Integer
  index = dissect.market_imbalance_qty(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 2 values
  index = dissect.auction_type(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index = dissect.imbalance_side(buffer, index, packet, parent)

  -- Market Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index = dissect.market_imbalance_side(buffer, index, packet, parent)

  -- Reserved 3: 3 Byte
  index = dissect.reserved_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Outright Imbalance Message
dissect.refresh_outright_imbalance_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_outright_imbalance_message then
    local range = buffer(offset, 32)
    local display = display.refresh_outright_imbalance_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.refresh_outright_imbalance_message, range, display)
  end

  return dissect.refresh_outright_imbalance_message_fields(buffer, offset, packet, parent)
end

-- Display: Refresh Outright Trade Message
display.refresh_outright_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Outright Trade Message
dissect.refresh_outright_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 4 values
  index = dissect.trade_cond_1(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_cond_2(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Outright Trade Message
dissect.refresh_outright_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_outright_trade_message then
    local range = buffer(offset, 32)
    local display = display.refresh_outright_trade_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.refresh_outright_trade_message, range, display)
  end

  return dissect.refresh_outright_trade_message_fields(buffer, offset, packet, parent)
end

-- Display: Refresh Outright Quote Message
display.refresh_outright_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Outright Quote Message
dissect.refresh_outright_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Ask Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_volume(buffer, index, packet, parent)

  -- Bid Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_volume(buffer, index, packet, parent)

  -- Ask Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_customer_volume(buffer, index, packet, parent)

  -- Bid Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_customer_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Outright Quote Message
dissect.refresh_outright_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_outright_quote_message then
    local range = buffer(offset, 36)
    local display = display.refresh_outright_quote_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.refresh_outright_quote_message, range, display)
  end

  return dissect.refresh_outright_quote_message_fields(buffer, offset, packet, parent)
end

-- Display: Outright Series Status Message
display.outright_series_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Series Status Message
dissect.outright_series_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 8 values
  index = dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String
  index = dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Series Status Message
dissect.outright_series_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_series_status_message then
    local range = buffer(offset, 20)
    local display = display.outright_series_status_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.outright_series_status_message, range, display)
  end

  return dissect.outright_series_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Seq Num
size_of.underlying_seq_num = 4

-- Display: Underlying Seq Num
display.underlying_seq_num = function(value)
  return "Underlying Seq Num: "..value
end

-- Dissect: Underlying Seq Num
dissect.underlying_seq_num = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_seq_num)
  local value = range:le_uint()
  local display = display.underlying_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.underlying_seq_num, range, value, display)

  return offset + size_of.underlying_seq_num
end

-- Display: Underlying Status Message
display.underlying_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Status Message
dissect.underlying_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Underlying Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.underlying_index(buffer, index, packet, parent)

  -- Underlying Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.underlying_seq_num(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 8 values
  index = dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String
  index = dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Status Message
dissect.underlying_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_status_message then
    local range = buffer(offset, 20)
    local display = display.underlying_status_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.underlying_status_message, range, display)
  end

  return dissect.underlying_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Total Volume
size_of.total_volume = 4

-- Display: Total Volume
display.total_volume = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
dissect.total_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.total_volume)
  local value = range:le_uint()
  local display = display.total_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.total_volume, range, value, display)

  return offset + size_of.total_volume
end

-- Size: Close
size_of.close = 4

-- Display: Close
display.close = function(value)
  return "Close: "..value
end

-- Dissect: Close
dissect.close = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.close)
  local value = range:le_int()
  local display = display.close(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.close, range, value, display)

  return offset + size_of.close
end

-- Size: Open
size_of.open = 4

-- Display: Open
display.open = function(value)
  return "Open: "..value
end

-- Dissect: Open
dissect.open = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.open)
  local value = range:le_int()
  local display = display.open(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.open, range, value, display)

  return offset + size_of.open
end

-- Size: Low Price
size_of.low_price = 4

-- Display: Low Price
display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
dissect.low_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.low_price)
  local value = range:le_int()
  local display = display.low_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.low_price, range, value, display)

  return offset + size_of.low_price
end

-- Size: High Price
size_of.high_price = 4

-- Display: High Price
display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
dissect.high_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.high_price)
  local value = range:le_int()
  local display = display.high_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.high_price, range, value, display)

  return offset + size_of.high_price
end

-- Display: Outright Summary Message
display.outright_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Summary Message
dissect.outright_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- High Price: 4 Byte Signed Fixed Width Integer
  index = dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 4 Byte Signed Fixed Width Integer
  index = dissect.low_price(buffer, index, packet, parent)

  -- Open: 4 Byte Signed Fixed Width Integer
  index = dissect.open(buffer, index, packet, parent)

  -- Close: 4 Byte Signed Fixed Width Integer
  index = dissect.close(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.total_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Summary Message
dissect.outright_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_summary_message then
    local range = buffer(offset, 36)
    local display = display.outright_summary_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.outright_summary_message, range, display)
  end

  return dissect.outright_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Participant
size_of.participant = 4

-- Display: Participant
display.participant = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
dissect.participant = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.participant)
  local value = range:string()
  local display = display.participant(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.participant, range, value, display)

  return offset + size_of.participant
end

-- Size: Contracts
size_of.contracts = 2

-- Display: Contracts
display.contracts = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
dissect.contracts = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.contracts)
  local value = range:le_uint()
  local display = display.contracts(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.contracts, range, value, display)

  return offset + size_of.contracts
end

-- Size: Capacity
size_of.capacity = 1

-- Display: Capacity
display.capacity = function(value)
  if value == " " then
    return "Capacity: Not Specified (<whitespace>)"
  end
  if value == "0" then
    return "Capacity: Customer (0)"
  end
  if value == "1" then
    return "Capacity: Firm (1)"
  end
  if value == "2" then
    return "Capacity: Broker Dealer (2)"
  end
  if value == "3" then
    return "Capacity: Market Maker (3)"
  end
  if value == "8" then
    return "Capacity: Professional Customer (8)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
dissect.capacity = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.capacity)
  local value = range:string()
  local display = display.capacity(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.capacity, range, value, display)

  return offset + size_of.capacity
end

-- Display: Outright Bold Rfq Message
display.outright_bold_rfq_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Bold Rfq Message
dissect.outright_bold_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 6 values
  index = dissect.capacity(buffer, index, packet, parent)

  -- Contracts: 2 Byte Unsigned Fixed Width Integer
  index = dissect.contracts(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Participant: 4 Byte Ascii String
  index = dissect.participant(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Bold Rfq Message
dissect.outright_bold_rfq_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_bold_rfq_message then
    local range = buffer(offset, 28)
    local display = display.outright_bold_rfq_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.outright_bold_rfq_message, range, display)
  end

  return dissect.outright_bold_rfq_message_fields(buffer, offset, packet, parent)
end

-- Display: Outright Crossing Rfq Message
display.outright_crossing_rfq_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Crossing Rfq Message
dissect.outright_crossing_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Crossing Rfq Message
dissect.outright_crossing_rfq_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_crossing_rfq_message then
    local range = buffer(offset, 26)
    local display = display.outright_crossing_rfq_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.outright_crossing_rfq_message, range, display)
  end

  return dissect.outright_crossing_rfq_message_fields(buffer, offset, packet, parent)
end

-- Display: Outright Imbalance Message
display.outright_imbalance_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Imbalance Message
dissect.outright_imbalance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Reference Price: 4 Byte Signed Fixed Width Integer
  index = dissect.reference_price(buffer, index, packet, parent)

  -- Paired Qty: 2 Byte Unsigned Fixed Width Integer
  index = dissect.paired_qty(buffer, index, packet, parent)

  -- Total Imbalance Qty: 2 Byte Unsigned Fixed Width Integer
  index = dissect.total_imbalance_qty(buffer, index, packet, parent)

  -- Market Imbalance Qty: 2 Byte Unsigned Fixed Width Integer
  index = dissect.market_imbalance_qty(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 2 values
  index = dissect.auction_type(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index = dissect.imbalance_side(buffer, index, packet, parent)

  -- Market Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index = dissect.market_imbalance_side(buffer, index, packet, parent)

  -- Reserved 3: 3 Byte
  index = dissect.reserved_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Imbalance Message
dissect.outright_imbalance_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_imbalance_message then
    local range = buffer(offset, 32)
    local display = display.outright_imbalance_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.outright_imbalance_message, range, display)
  end

  return dissect.outright_imbalance_message_fields(buffer, offset, packet, parent)
end

-- Size: Original Trade Id
size_of.original_trade_id = 4

-- Display: Original Trade Id
display.original_trade_id = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
dissect.original_trade_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.original_trade_id)
  local value = range:le_uint()
  local display = display.original_trade_id(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.original_trade_id, range, value, display)

  return offset + size_of.original_trade_id
end

-- Display: Outright Trade Correction Message
display.outright_trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Trade Correction Message
dissect.outright_trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Original Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_trade_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 4 values
  index = dissect.trade_cond_1(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_cond_2(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Trade Correction Message
dissect.outright_trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_trade_correction_message then
    local range = buffer(offset, 36)
    local display = display.outright_trade_correction_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.outright_trade_correction_message, range, display)
  end

  return dissect.outright_trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Display: Outright Trade Cancel Message
display.outright_trade_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Trade Cancel Message
dissect.outright_trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Original Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.original_trade_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Trade Cancel Message
dissect.outright_trade_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_trade_cancel_message then
    local range = buffer(offset, 20)
    local display = display.outright_trade_cancel_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.outright_trade_cancel_message, range, display)
  end

  return dissect.outright_trade_cancel_message_fields(buffer, offset, packet, parent)
end

-- Display: Outright Trade Message
display.outright_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Trade Message
dissect.outright_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 4 values
  index = dissect.trade_cond_1(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 2 values
  index = dissect.trade_cond_2(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Trade Message
dissect.outright_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_trade_message then
    local range = buffer(offset, 32)
    local display = display.outright_trade_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.outright_trade_message, range, display)
  end

  return dissect.outright_trade_message_fields(buffer, offset, packet, parent)
end

-- Display: Outright Quote Message
display.outright_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Outright Quote Message
dissect.outright_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index = dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index = dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index = dissect.ask_price(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Ask Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_volume(buffer, index, packet, parent)

  -- Bid Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_volume(buffer, index, packet, parent)

  -- Ask Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.ask_customer_volume(buffer, index, packet, parent)

  -- Bid Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_customer_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index = dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Quote Message
dissect.outright_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.outright_quote_message then
    local range = buffer(offset, 36)
    local display = display.outright_quote_message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.outright_quote_message, range, display)
  end

  return dissect.outright_quote_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Outright Quote Message
  if code == 401 then
    return 36
  end
  -- Size of Outright Trade Message
  if code == 407 then
    return 32
  end
  -- Size of Outright Trade Cancel Message
  if code == 409 then
    return 20
  end
  -- Size of Outright Trade Correction Message
  if code == 411 then
    return 36
  end
  -- Size of Outright Imbalance Message
  if code == 413 then
    return 32
  end
  -- Size of Outright Crossing Rfq Message
  if code == 415 then
    return 26
  end
  -- Size of Outright Bold Rfq Message
  if code == 471 then
    return 28
  end
  -- Size of Outright Summary Message
  if code == 417 then
    return 36
  end
  -- Size of Underlying Status Message
  if code == 419 then
    return 20
  end
  -- Size of Outright Series Status Message
  if code == 421 then
    return 20
  end
  -- Size of Refresh Outright Quote Message
  if code == 501 then
    return 36
  end
  -- Size of Refresh Outright Trade Message
  if code == 507 then
    return 32
  end
  -- Size of Refresh Outright Imbalance Message
  if code == 509 then
    return 32
  end
  -- Size of Outright Market Depth Buy Message
  if code == 403 then
    return 44
  end
  -- Size of Outright Market Depth Sell Message
  if code == 405 then
    return 44
  end
  -- Size of Refresh Outright Market Depth Buy Message
  if code == 503 then
    return 44
  end
  -- Size of Refresh Outright Market Depth Sell Message
  if code == 505 then
    return 44
  end
  -- Size of Complex Quote Message
  if code == 423 then
    return 36
  end
  -- Size of Complex Trade Message
  if code == 425 then
    return 32
  end
  -- Size of Complex Crossing Rfq Message
  if code == 429 then
    return 26
  end
  -- Size of Complex Cube Rfq Message
  if code == 472 then
    return 26
  end
  -- Size of Complex Status Message
  if code == 433 then
    return 20
  end
  -- Size of Refresh Complex Quote Message
  if code == 511 then
    return 36
  end
  -- Size of Refresh Complex Trade Message
  if code == 513 then
    return 32
  end
  -- Size of Underlying Index Mapping Message
  if code == 435 then
    return 24
  end
  -- Size of Series Index Mapping Message
  if code == 437 then
    return 56
  end
  -- Size of Complex Symbol Definition Message
  if code == 439 then
    return 44
  end
  -- Size of Stream Id Message
  if code == 455 then
    return 4
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(buffer, offset, packet, parent, code)
  -- Dissect Outright Quote Message
  if code == 401 then
    return dissect.outright_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Trade Message
  if code == 407 then
    return dissect.outright_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Trade Cancel Message
  if code == 409 then
    return dissect.outright_trade_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Trade Correction Message
  if code == 411 then
    return dissect.outright_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Imbalance Message
  if code == 413 then
    return dissect.outright_imbalance_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Crossing Rfq Message
  if code == 415 then
    return dissect.outright_crossing_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Bold Rfq Message
  if code == 471 then
    return dissect.outright_bold_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Summary Message
  if code == 417 then
    return dissect.outright_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Status Message
  if code == 419 then
    return dissect.underlying_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Series Status Message
  if code == 421 then
    return dissect.outright_series_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Outright Quote Message
  if code == 501 then
    return dissect.refresh_outright_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Outright Trade Message
  if code == 507 then
    return dissect.refresh_outright_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Outright Imbalance Message
  if code == 509 then
    return dissect.refresh_outright_imbalance_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Market Depth Buy Message
  if code == 403 then
    return dissect.outright_market_depth_buy_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Market Depth Sell Message
  if code == 405 then
    return dissect.outright_market_depth_sell_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Outright Market Depth Buy Message
  if code == 503 then
    return dissect.refresh_outright_market_depth_buy_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Outright Market Depth Sell Message
  if code == 505 then
    return dissect.refresh_outright_market_depth_sell_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Quote Message
  if code == 423 then
    return dissect.complex_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Trade Message
  if code == 425 then
    return dissect.complex_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Crossing Rfq Message
  if code == 429 then
    return dissect.complex_crossing_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Cube Rfq Message
  if code == 472 then
    return dissect.complex_cube_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Status Message
  if code == 433 then
    return dissect.complex_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Complex Quote Message
  if code == 511 then
    return dissect.refresh_complex_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Complex Trade Message
  if code == 513 then
    return dissect.refresh_complex_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Index Mapping Message
  if code == 435 then
    return dissect.underlying_index_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Series Index Mapping Message
  if code == 437 then
    return dissect.series_index_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Complex Symbol Definition Message
  if code == 439 then
    return dissect.complex_symbol_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Id Message
  if code == 455 then
    return dissect.stream_id_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, code)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(nyse_arca_options_xdp_v1_3_a.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, code)
end

-- Size: Message Type
size_of.message_type = 2

-- Display: Message Type
display.message_type = function(value)
  if value == 401 then
    return "Message Type: Outright Quote Message (401)"
  end
  if value == 407 then
    return "Message Type: Outright Trade Message (407)"
  end
  if value == 409 then
    return "Message Type: Outright Trade Cancel Message (409)"
  end
  if value == 411 then
    return "Message Type: Outright Trade Correction Message (411)"
  end
  if value == 413 then
    return "Message Type: Outright Imbalance Message (413)"
  end
  if value == 415 then
    return "Message Type: Outright Crossing Rfq Message (415)"
  end
  if value == 471 then
    return "Message Type: Outright Bold Rfq Message (471)"
  end
  if value == 417 then
    return "Message Type: Outright Summary Message (417)"
  end
  if value == 419 then
    return "Message Type: Underlying Status Message (419)"
  end
  if value == 421 then
    return "Message Type: Outright Series Status Message (421)"
  end
  if value == 501 then
    return "Message Type: Refresh Outright Quote Message (501)"
  end
  if value == 507 then
    return "Message Type: Refresh Outright Trade Message (507)"
  end
  if value == 509 then
    return "Message Type: Refresh Outright Imbalance Message (509)"
  end
  if value == 403 then
    return "Message Type: Outright Market Depth Buy Message (403)"
  end
  if value == 405 then
    return "Message Type: Outright Market Depth Sell Message (405)"
  end
  if value == 503 then
    return "Message Type: Refresh Outright Market Depth Buy Message (503)"
  end
  if value == 505 then
    return "Message Type: Refresh Outright Market Depth Sell Message (505)"
  end
  if value == 423 then
    return "Message Type: Complex Quote Message (423)"
  end
  if value == 425 then
    return "Message Type: Complex Trade Message (425)"
  end
  if value == 429 then
    return "Message Type: Complex Crossing Rfq Message (429)"
  end
  if value == 472 then
    return "Message Type: Complex Cube Rfq Message (472)"
  end
  if value == 433 then
    return "Message Type: Complex Status Message (433)"
  end
  if value == 511 then
    return "Message Type: Refresh Complex Quote Message (511)"
  end
  if value == 513 then
    return "Message Type: Refresh Complex Trade Message (513)"
  end
  if value == 435 then
    return "Message Type: Underlying Index Mapping Message (435)"
  end
  if value == 437 then
    return "Message Type: Series Index Mapping Message (437)"
  end
  if value == 439 then
    return "Message Type: Complex Symbol Definition Message (439)"
  end
  if value == 455 then
    return "Message Type: Stream Id Message (455)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Size
size_of.message_size = 2

-- Display: Message Size
display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
dissect.message_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_size)
  local value = range:le_uint()
  local display = display.message_size(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.message_size, range, value, display)

  return offset + size_of.message_size
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.message_size(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 28 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 4)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 4

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):le_uint()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Payload: Runtime Type with 28 branches
  local code = buffer(index - 2, 2):le_uint()
  index = dissect.payload(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Nanoseconds
size_of.nanoseconds = 4

-- Display: Nanoseconds
display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
dissect.nanoseconds = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.nanoseconds)
  local value = range:le_uint()
  local display = display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.nanoseconds, range, value, display)

  return offset + size_of.nanoseconds
end

-- Size: Timestamp
size_of.timestamp = 4

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.timestamp)
  local value = range:le_uint()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.timestamp, range, value, display)

  return offset + size_of.timestamp
end

-- Size: Sequence Number
size_of.sequence_number = 4

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sequence_number)
  local value = range:le_uint()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.sequence_number, range, value, display)

  return offset + size_of.sequence_number
end

-- Size: Message Count
size_of.message_count = 1

-- Display: Message Count
display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
dissect.message_count = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_count(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Delivery Flag
size_of.delivery_flag = 1

-- Display: Delivery Flag
display.delivery_flag = function(value)
  if value == 1 then
    return "Delivery Flag: Heartbeat (1)"
  end
  if value == 10 then
    return "Delivery Flag: Xdp Failover (10)"
  end
  if value == 11 then
    return "Delivery Flag: Original Message (11)"
  end
  if value == 12 then
    return "Delivery Flag: Sequence Number Reset Message (12)"
  end
  if value == 13 then
    return "Delivery Flag: One Retransmission Packet  (13)"
  end
  if value == 15 then
    return "Delivery Flag: Retransmission Sequence Message (15)"
  end
  if value == 17 then
    return "Delivery Flag: One Refresh Packet (17)"
  end
  if value == 18 then
    return "Delivery Flag: Refresh Sequence Start (18)"
  end
  if value == 19 then
    return "Delivery Flag: Refresh Sequence Message (19)"
  end
  if value == 20 then
    return "Delivery Flag: Refresh Sequence End (20)"
  end
  if value == 21 then
    return "Delivery Flag: Message Unavailable (21)"
  end

  return "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
dissect.delivery_flag = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.delivery_flag)
  local value = range:le_uint()
  local display = display.delivery_flag(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.delivery_flag, range, value, display)

  return offset + size_of.delivery_flag
end

-- Size: Packet Size
size_of.packet_size = 2

-- Display: Packet Size
display.packet_size = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
dissect.packet_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.packet_size)
  local value = range:le_uint()
  local display = display.packet_size(value, buffer, offset, packet, parent)

  parent:add(nyse_arca_options_xdp_v1_3_a.fields.packet_size, range, value, display)

  return offset + size_of.packet_size
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.packet_size(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index = dissect.delivery_flag(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index = dissect.message_count(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sequence_number(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index = dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local range = buffer(offset, 16)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(nyse_arca_options_xdp_v1_3_a.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  while index < buffer:len() do
    index = dissect.message(buffer, index, packet, parent)
  end


  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_arca_options_xdp_v1_3_a.init()
end

-- Dissector for Nyse Arca Options Xdp 1.3.a
function nyse_arca_options_xdp_v1_3_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_arca_options_xdp_v1_3_a.name

  -- Dissect protocol
  local protocol = parent:add(nyse_arca_options_xdp_v1_3_a, buffer(), nyse_arca_options_xdp_v1_3_a.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_arca_options_xdp_v1_3_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_arca_options_xdp_v1_3_a_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Arca Options Xdp 1.3.a
local function nyse_arca_options_xdp_v1_3_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_arca_options_xdp_v1_3_a_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_arca_options_xdp_v1_3_a
  nyse_arca_options_xdp_v1_3_a.dissector(buffer, packet, parent)

  return true
end

-- Register Nyse Arca Options Xdp 1.3.a Heuristic
nyse_arca_options_xdp_v1_3_a:register_heuristic("udp", nyse_arca_options_xdp_v1_3_a_heuristic)

-----------------------------------------------------------------------
-- This script was generated by the open markets initiative
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- Protocol:
-- Version: 1.3.a
-- Date: Wednesday, February 28, 2018
-- Script:
-- Source Version: 1.5.0.0
-- Compiler Version: 1.1
-- License: Public/GPLv3
-- Authors: Omi Developers
-----------------------------------------------------------------------
