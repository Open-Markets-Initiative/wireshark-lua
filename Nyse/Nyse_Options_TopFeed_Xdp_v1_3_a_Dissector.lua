-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Options TopFeed Xdp 1.3.a Protocol
local nyse_options_topfeed_xdp_v1_3_a = Proto("Nyse.Options.TopFeed.Xdp.v1.3.a.Lua", "Nyse Options TopFeed Xdp 1.3.a")

-- Component Tables
local show = {}
local format = {}
local nyse_options_topfeed_xdp_v1_3_a_display = {}
local nyse_options_topfeed_xdp_v1_3_a_dissect = {}
local nyse_options_topfeed_xdp_v1_3_a_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Options TopFeed Xdp 1.3.a Fields
nyse_options_topfeed_xdp_v1_3_a.fields.ask_customer_volume = ProtoField.new("Ask Customer Volume", "nyse.options.topfeed.xdp.v1.3.a.askcustomervolume", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.ask_price = ProtoField.new("Ask Price", "nyse.options.topfeed.xdp.v1.3.a.askprice", ftypes.INT32)
nyse_options_topfeed_xdp_v1_3_a.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.options.topfeed.xdp.v1.3.a.askvolume", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.auction_type = ProtoField.new("Auction Type", "nyse.options.topfeed.xdp.v1.3.a.auctiontype", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.bid_customer_volume = ProtoField.new("Bid Customer Volume", "nyse.options.topfeed.xdp.v1.3.a.bidcustomervolume", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.bid_price = ProtoField.new("Bid Price", "nyse.options.topfeed.xdp.v1.3.a.bidprice", ftypes.INT32)
nyse_options_topfeed_xdp_v1_3_a.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.options.topfeed.xdp.v1.3.a.bidvolume", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.capacity = ProtoField.new("Capacity", "nyse.options.topfeed.xdp.v1.3.a.capacity", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.channel_id = ProtoField.new("Channel Id", "nyse.options.topfeed.xdp.v1.3.a.channelid", ftypes.UINT8)
nyse_options_topfeed_xdp_v1_3_a.fields.close = ProtoField.new("Close", "nyse.options.topfeed.xdp.v1.3.a.close", ftypes.INT32)
nyse_options_topfeed_xdp_v1_3_a.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "nyse.options.topfeed.xdp.v1.3.a.contractmultiplier", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.contracts = ProtoField.new("Contracts", "nyse.options.topfeed.xdp.v1.3.a.contracts", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.options.topfeed.xdp.v1.3.a.deliveryflag", ftypes.UINT8)
nyse_options_topfeed_xdp_v1_3_a.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.options.topfeed.xdp.v1.3.a.exchangecode", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.group_id = ProtoField.new("Group Id", "nyse.options.topfeed.xdp.v1.3.a.groupid", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.options.topfeed.xdp.v1.3.a.haltcondition", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.high_price = ProtoField.new("High Price", "nyse.options.topfeed.xdp.v1.3.a.highprice", ftypes.INT32)
nyse_options_topfeed_xdp_v1_3_a.fields.imbalance_side = ProtoField.new("Imbalance Side", "nyse.options.topfeed.xdp.v1.3.a.imbalanceside", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.low_price = ProtoField.new("Low Price", "nyse.options.topfeed.xdp.v1.3.a.lowprice", ftypes.INT32)
nyse_options_topfeed_xdp_v1_3_a.fields.market_id = ProtoField.new("Market Id", "nyse.options.topfeed.xdp.v1.3.a.marketid", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.market_imbalance_qty = ProtoField.new("Market Imbalance Qty", "nyse.options.topfeed.xdp.v1.3.a.marketimbalanceqty", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.market_imbalance_side = ProtoField.new("Market Imbalance Side", "nyse.options.topfeed.xdp.v1.3.a.marketimbalanceside", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.maturity_date = ProtoField.new("Maturity Date", "nyse.options.topfeed.xdp.v1.3.a.maturitydate", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.message = ProtoField.new("Message", "nyse.options.topfeed.xdp.v1.3.a.message", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.message_count = ProtoField.new("Message Count", "nyse.options.topfeed.xdp.v1.3.a.messagecount", ftypes.UINT8)
nyse_options_topfeed_xdp_v1_3_a.fields.message_header = ProtoField.new("Message Header", "nyse.options.topfeed.xdp.v1.3.a.messageheader", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.message_size = ProtoField.new("Message Size", "nyse.options.topfeed.xdp.v1.3.a.messagesize", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.message_type = ProtoField.new("Message Type", "nyse.options.topfeed.xdp.v1.3.a.messagetype", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.options.topfeed.xdp.v1.3.a.nanoseconds", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.open = ProtoField.new("Open", "nyse.options.topfeed.xdp.v1.3.a.open", ftypes.INT32)
nyse_options_topfeed_xdp_v1_3_a.fields.option_symbol_root = ProtoField.new("Option Symbol Root", "nyse.options.topfeed.xdp.v1.3.a.optionsymbolroot", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.original_trade_id = ProtoField.new("Original Trade Id", "nyse.options.topfeed.xdp.v1.3.a.originaltradeid", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.outright_bold_rfq_message = ProtoField.new("Outright Bold Rfq Message", "nyse.options.topfeed.xdp.v1.3.a.outrightboldrfqmessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.outright_crossing_rfq_message = ProtoField.new("Outright Crossing Rfq Message", "nyse.options.topfeed.xdp.v1.3.a.outrightcrossingrfqmessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.outright_imbalance_message = ProtoField.new("Outright Imbalance Message", "nyse.options.topfeed.xdp.v1.3.a.outrightimbalancemessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.outright_quote_message = ProtoField.new("Outright Quote Message", "nyse.options.topfeed.xdp.v1.3.a.outrightquotemessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.outright_series_status_message = ProtoField.new("Outright Series Status Message", "nyse.options.topfeed.xdp.v1.3.a.outrightseriesstatusmessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.outright_summary_message = ProtoField.new("Outright Summary Message", "nyse.options.topfeed.xdp.v1.3.a.outrightsummarymessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.outright_trade_cancel_message = ProtoField.new("Outright Trade Cancel Message", "nyse.options.topfeed.xdp.v1.3.a.outrighttradecancelmessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.outright_trade_correction_message = ProtoField.new("Outright Trade Correction Message", "nyse.options.topfeed.xdp.v1.3.a.outrighttradecorrectionmessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.outright_trade_message = ProtoField.new("Outright Trade Message", "nyse.options.topfeed.xdp.v1.3.a.outrighttrademessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.packet = ProtoField.new("Packet", "nyse.options.topfeed.xdp.v1.3.a.packet", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.options.topfeed.xdp.v1.3.a.packetheader", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.packet_size = ProtoField.new("Packet Size", "nyse.options.topfeed.xdp.v1.3.a.packetsize", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.paired_qty = ProtoField.new("Paired Qty", "nyse.options.topfeed.xdp.v1.3.a.pairedqty", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.participant = ProtoField.new("Participant", "nyse.options.topfeed.xdp.v1.3.a.participant", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.payload = ProtoField.new("Payload", "nyse.options.topfeed.xdp.v1.3.a.payload", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.price = ProtoField.new("Price", "nyse.options.topfeed.xdp.v1.3.a.price", ftypes.INT32)
nyse_options_topfeed_xdp_v1_3_a.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.options.topfeed.xdp.v1.3.a.priceresolution", ftypes.UINT8)
nyse_options_topfeed_xdp_v1_3_a.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.options.topfeed.xdp.v1.3.a.pricescalecode", ftypes.UINT8)
nyse_options_topfeed_xdp_v1_3_a.fields.product_id = ProtoField.new("Product Id", "nyse.options.topfeed.xdp.v1.3.a.productid", ftypes.UINT8)
nyse_options_topfeed_xdp_v1_3_a.fields.put_or_call = ProtoField.new("Put Or Call", "nyse.options.topfeed.xdp.v1.3.a.putorcall", ftypes.UINT8)
nyse_options_topfeed_xdp_v1_3_a.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.options.topfeed.xdp.v1.3.a.quotecondition", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.reference_price = ProtoField.new("Reference Price", "nyse.options.topfeed.xdp.v1.3.a.referenceprice", ftypes.INT32)
nyse_options_topfeed_xdp_v1_3_a.fields.refresh_outright_imbalance_message = ProtoField.new("Refresh Outright Imbalance Message", "nyse.options.topfeed.xdp.v1.3.a.refreshoutrightimbalancemessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.refresh_outright_quote_message = ProtoField.new("Refresh Outright Quote Message", "nyse.options.topfeed.xdp.v1.3.a.refreshoutrightquotemessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.refresh_outright_trade_message = ProtoField.new("Refresh Outright Trade Message", "nyse.options.topfeed.xdp.v1.3.a.refreshoutrighttrademessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.options.topfeed.xdp.v1.3.a.reserved1", ftypes.BYTES)
nyse_options_topfeed_xdp_v1_3_a.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.options.topfeed.xdp.v1.3.a.reserved2", ftypes.BYTES)
nyse_options_topfeed_xdp_v1_3_a.fields.reserved_3 = ProtoField.new("Reserved 3", "nyse.options.topfeed.xdp.v1.3.a.reserved3", ftypes.BYTES)
nyse_options_topfeed_xdp_v1_3_a.fields.reserved_a_1 = ProtoField.new("Reserved A 1", "nyse.options.topfeed.xdp.v1.3.a.reserveda1", ftypes.BYTES)
nyse_options_topfeed_xdp_v1_3_a.fields.reserved_b_1 = ProtoField.new("Reserved B 1", "nyse.options.topfeed.xdp.v1.3.a.reservedb1", ftypes.BYTES)
nyse_options_topfeed_xdp_v1_3_a.fields.security_status = ProtoField.new("Security Status", "nyse.options.topfeed.xdp.v1.3.a.securitystatus", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.security_type = ProtoField.new("Security Type", "nyse.options.topfeed.xdp.v1.3.a.securitytype", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.options.topfeed.xdp.v1.3.a.sequencenumber", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.options.topfeed.xdp.v1.3.a.sequencenumberresetmessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.series_index = ProtoField.new("Series Index", "nyse.options.topfeed.xdp.v1.3.a.seriesindex", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.series_index_mapping_message = ProtoField.new("Series Index Mapping Message", "nyse.options.topfeed.xdp.v1.3.a.seriesindexmappingmessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.side = ProtoField.new("Side", "nyse.options.topfeed.xdp.v1.3.a.side", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.source_ns = ProtoField.new("Source Ns", "nyse.options.topfeed.xdp.v1.3.a.sourcens", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.source_time = ProtoField.new("Source Time", "nyse.options.topfeed.xdp.v1.3.a.sourcetime", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.options.topfeed.xdp.v1.3.a.sourcetimens", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.stream_id = ProtoField.new("Stream Id", "nyse.options.topfeed.xdp.v1.3.a.streamid", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.stream_id_message = ProtoField.new("Stream Id Message", "nyse.options.topfeed.xdp.v1.3.a.streamidmessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.strike_price = ProtoField.new("Strike Price", "nyse.options.topfeed.xdp.v1.3.a.strikeprice", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.options.topfeed.xdp.v1.3.a.symbolseqnum", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.system_id = ProtoField.new("System Id", "nyse.options.topfeed.xdp.v1.3.a.systemid", ftypes.UINT8)
nyse_options_topfeed_xdp_v1_3_a.fields.timestamp = ProtoField.new("Timestamp", "nyse.options.topfeed.xdp.v1.3.a.timestamp", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.total_imbalance_qty = ProtoField.new("Total Imbalance Qty", "nyse.options.topfeed.xdp.v1.3.a.totalimbalanceqty", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.total_volume = ProtoField.new("Total Volume", "nyse.options.topfeed.xdp.v1.3.a.totalvolume", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.trade_cond_1 = ProtoField.new("Trade Cond 1", "nyse.options.topfeed.xdp.v1.3.a.tradecond1", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.trade_cond_2 = ProtoField.new("Trade Cond 2", "nyse.options.topfeed.xdp.v1.3.a.tradecond2", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.trade_id = ProtoField.new("Trade Id", "nyse.options.topfeed.xdp.v1.3.a.tradeid", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.underlying_index = ProtoField.new("Underlying Index", "nyse.options.topfeed.xdp.v1.3.a.underlyingindex", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.underlying_index_mapping_message = ProtoField.new("Underlying Index Mapping Message", "nyse.options.topfeed.xdp.v1.3.a.underlyingindexmappingmessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.underlying_seq_num = ProtoField.new("Underlying Seq Num", "nyse.options.topfeed.xdp.v1.3.a.underlyingseqnum", ftypes.UINT32)
nyse_options_topfeed_xdp_v1_3_a.fields.underlying_status_message = ProtoField.new("Underlying Status Message", "nyse.options.topfeed.xdp.v1.3.a.underlyingstatusmessage", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nyse.options.topfeed.xdp.v1.3.a.underlyingsymbol", ftypes.STRING)
nyse_options_topfeed_xdp_v1_3_a.fields.volume_2 = ProtoField.new("Volume 2", "nyse.options.topfeed.xdp.v1.3.a.volume2", ftypes.UINT16)
nyse_options_topfeed_xdp_v1_3_a.fields.volume_4 = ProtoField.new("Volume 4", "nyse.options.topfeed.xdp.v1.3.a.volume4", ftypes.UINT32)

-- Nyse Options TopFeed Xdp 1.3.a generated fields
nyse_options_topfeed_xdp_v1_3_a.fields.message_index = ProtoField.new("Message Index", "nyse.options.topfeed.xdp.v1.3.a.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Options TopFeed Xdp 1.3.a Element Dissection Options
show.message = true
show.message_header = true
show.outright_bold_rfq_message = true
show.outright_crossing_rfq_message = true
show.outright_imbalance_message = true
show.outright_quote_message = true
show.outright_series_status_message = true
show.outright_summary_message = true
show.outright_trade_cancel_message = true
show.outright_trade_correction_message = true
show.outright_trade_message = true
show.packet = true
show.packet_header = true
show.refresh_outright_imbalance_message = true
show.refresh_outright_quote_message = true
show.refresh_outright_trade_message = true
show.sequence_number_reset_message = true
show.series_index_mapping_message = true
show.stream_id_message = true
show.underlying_index_mapping_message = true
show.underlying_status_message = true
show.payload = false

-- Register Nyse Options TopFeed Xdp 1.3.a Show Options
nyse_options_topfeed_xdp_v1_3_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_bold_rfq_message = Pref.bool("Show Outright Bold Rfq Message", show.outright_bold_rfq_message, "Parse and add Outright Bold Rfq Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_crossing_rfq_message = Pref.bool("Show Outright Crossing Rfq Message", show.outright_crossing_rfq_message, "Parse and add Outright Crossing Rfq Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_imbalance_message = Pref.bool("Show Outright Imbalance Message", show.outright_imbalance_message, "Parse and add Outright Imbalance Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_quote_message = Pref.bool("Show Outright Quote Message", show.outright_quote_message, "Parse and add Outright Quote Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_series_status_message = Pref.bool("Show Outright Series Status Message", show.outright_series_status_message, "Parse and add Outright Series Status Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_summary_message = Pref.bool("Show Outright Summary Message", show.outright_summary_message, "Parse and add Outright Summary Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_trade_cancel_message = Pref.bool("Show Outright Trade Cancel Message", show.outright_trade_cancel_message, "Parse and add Outright Trade Cancel Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_trade_correction_message = Pref.bool("Show Outright Trade Correction Message", show.outright_trade_correction_message, "Parse and add Outright Trade Correction Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_trade_message = Pref.bool("Show Outright Trade Message", show.outright_trade_message, "Parse and add Outright Trade Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_refresh_outright_imbalance_message = Pref.bool("Show Refresh Outright Imbalance Message", show.refresh_outright_imbalance_message, "Parse and add Refresh Outright Imbalance Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_refresh_outright_quote_message = Pref.bool("Show Refresh Outright Quote Message", show.refresh_outright_quote_message, "Parse and add Refresh Outright Quote Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_refresh_outright_trade_message = Pref.bool("Show Refresh Outright Trade Message", show.refresh_outright_trade_message, "Parse and add Refresh Outright Trade Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_series_index_mapping_message = Pref.bool("Show Series Index Mapping Message", show.series_index_mapping_message, "Parse and add Series Index Mapping Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_stream_id_message = Pref.bool("Show Stream Id Message", show.stream_id_message, "Parse and add Stream Id Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_underlying_index_mapping_message = Pref.bool("Show Underlying Index Mapping Message", show.underlying_index_mapping_message, "Parse and add Underlying Index Mapping Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_underlying_status_message = Pref.bool("Show Underlying Status Message", show.underlying_status_message, "Parse and add Underlying Status Message to protocol tree")
nyse_options_topfeed_xdp_v1_3_a.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nyse_options_topfeed_xdp_v1_3_a.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_message then
    show.message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_message
    changed = true
  end
  if show.message_header ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_message_header then
    show.message_header = nyse_options_topfeed_xdp_v1_3_a.prefs.show_message_header
    changed = true
  end
  if show.outright_bold_rfq_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_bold_rfq_message then
    show.outright_bold_rfq_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_bold_rfq_message
    changed = true
  end
  if show.outright_crossing_rfq_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_crossing_rfq_message then
    show.outright_crossing_rfq_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_crossing_rfq_message
    changed = true
  end
  if show.outright_imbalance_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_imbalance_message then
    show.outright_imbalance_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_imbalance_message
    changed = true
  end
  if show.outright_quote_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_quote_message then
    show.outright_quote_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_quote_message
    changed = true
  end
  if show.outright_series_status_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_series_status_message then
    show.outright_series_status_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_series_status_message
    changed = true
  end
  if show.outright_summary_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_summary_message then
    show.outright_summary_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_summary_message
    changed = true
  end
  if show.outright_trade_cancel_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_trade_cancel_message then
    show.outright_trade_cancel_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_trade_cancel_message
    changed = true
  end
  if show.outright_trade_correction_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_trade_correction_message then
    show.outright_trade_correction_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_trade_correction_message
    changed = true
  end
  if show.outright_trade_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_trade_message then
    show.outright_trade_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_outright_trade_message
    changed = true
  end
  if show.packet ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_packet then
    show.packet = nyse_options_topfeed_xdp_v1_3_a.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_packet_header then
    show.packet_header = nyse_options_topfeed_xdp_v1_3_a.prefs.show_packet_header
    changed = true
  end
  if show.refresh_outright_imbalance_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_refresh_outright_imbalance_message then
    show.refresh_outright_imbalance_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_refresh_outright_imbalance_message
    changed = true
  end
  if show.refresh_outright_quote_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_refresh_outright_quote_message then
    show.refresh_outright_quote_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_refresh_outright_quote_message
    changed = true
  end
  if show.refresh_outright_trade_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_refresh_outright_trade_message then
    show.refresh_outright_trade_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_refresh_outright_trade_message
    changed = true
  end
  if show.sequence_number_reset_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.series_index_mapping_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_series_index_mapping_message then
    show.series_index_mapping_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_series_index_mapping_message
    changed = true
  end
  if show.stream_id_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_stream_id_message then
    show.stream_id_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_stream_id_message
    changed = true
  end
  if show.underlying_index_mapping_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_underlying_index_mapping_message then
    show.underlying_index_mapping_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_underlying_index_mapping_message
    changed = true
  end
  if show.underlying_status_message ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_underlying_status_message then
    show.underlying_status_message = nyse_options_topfeed_xdp_v1_3_a.prefs.show_underlying_status_message
    changed = true
  end
  if show.payload ~= nyse_options_topfeed_xdp_v1_3_a.prefs.show_payload then
    show.payload = nyse_options_topfeed_xdp_v1_3_a.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Options TopFeed Xdp 1.3.a
-----------------------------------------------------------------------

-- Size: Channel Id
nyse_options_topfeed_xdp_v1_3_a_size_of.channel_id = 1

-- Display: Channel Id
nyse_options_topfeed_xdp_v1_3_a_display.channel_id = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_options_topfeed_xdp_v1_3_a_dissect.channel_id = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.channel_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.channel_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Size: Product Id
nyse_options_topfeed_xdp_v1_3_a_size_of.product_id = 1

-- Display: Product Id
nyse_options_topfeed_xdp_v1_3_a_display.product_id = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_options_topfeed_xdp_v1_3_a_dissect.product_id = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.product_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.product_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.product_id, range, value, display)

  return offset + length, value
end

-- Size: Source Time Ns
nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns = 4

-- Display: Source Time Ns
nyse_options_topfeed_xdp_v1_3_a_display.source_time_ns = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_options_topfeed_xdp_v1_3_a_dissect.source_time_ns = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.source_time_ns(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Size: Source Time
nyse_options_topfeed_xdp_v1_3_a_size_of.source_time = 4

-- Display: Source Time
nyse_options_topfeed_xdp_v1_3_a_display.source_time = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_options_topfeed_xdp_v1_3_a_dissect.source_time = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.source_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.source_time(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.source_time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sequence Number Reset Message
nyse_options_topfeed_xdp_v1_3_a_size_of.sequence_number_reset_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.product_id

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.channel_id

  return index
end

-- Display: Sequence Number Reset Message
nyse_options_topfeed_xdp_v1_3_a_display.sequence_number_reset_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_options_topfeed_xdp_v1_3_a_dissect.sequence_number_reset_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_options_topfeed_xdp_v1_3_a_dissect.product_id(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_options_topfeed_xdp_v1_3_a_dissect.channel_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_options_topfeed_xdp_v1_3_a_dissect.sequence_number_reset_message = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.sequence_number_reset_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.sequence_number_reset_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.sequence_number_reset_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Reserved 2
nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_2 = 2

-- Display: Reserved 2
nyse_options_topfeed_xdp_v1_3_a_display.reserved_2 = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_2 = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_topfeed_xdp_v1_3_a_display.reserved_2(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Size: Stream Id
nyse_options_topfeed_xdp_v1_3_a_size_of.stream_id = 2

-- Display: Stream Id
nyse_options_topfeed_xdp_v1_3_a_display.stream_id = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
nyse_options_topfeed_xdp_v1_3_a_dissect.stream_id = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.stream_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.stream_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stream Id Message
nyse_options_topfeed_xdp_v1_3_a_size_of.stream_id_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.stream_id

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_2

  return index
end

-- Display: Stream Id Message
nyse_options_topfeed_xdp_v1_3_a_display.stream_id_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Id Message
nyse_options_topfeed_xdp_v1_3_a_dissect.stream_id_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = nyse_options_topfeed_xdp_v1_3_a_dissect.stream_id(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Id Message
nyse_options_topfeed_xdp_v1_3_a_dissect.stream_id_message = function(buffer, offset, packet, parent)
  if show.stream_id_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.stream_id_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.stream_id_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.stream_id_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.stream_id_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Group Id
nyse_options_topfeed_xdp_v1_3_a_size_of.group_id = 4

-- Display: Group Id
nyse_options_topfeed_xdp_v1_3_a_display.group_id = function(value)
  return "Group Id: "..value
end

-- Dissect: Group Id
nyse_options_topfeed_xdp_v1_3_a_dissect.group_id = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.group_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.group_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.group_id, range, value, display)

  return offset + length, value
end

-- Size: Option Symbol Root
nyse_options_topfeed_xdp_v1_3_a_size_of.option_symbol_root = 5

-- Display: Option Symbol Root
nyse_options_topfeed_xdp_v1_3_a_display.option_symbol_root = function(value)
  return "Option Symbol Root: "..value
end

-- Dissect: Option Symbol Root
nyse_options_topfeed_xdp_v1_3_a_dissect.option_symbol_root = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.option_symbol_root
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.option_symbol_root(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.option_symbol_root, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol
nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_symbol = 11

-- Display: Underlying Symbol
nyse_options_topfeed_xdp_v1_3_a_display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Price Scale Code
nyse_options_topfeed_xdp_v1_3_a_size_of.price_scale_code = 1

-- Display: Price Scale Code
nyse_options_topfeed_xdp_v1_3_a_display.price_scale_code = function(value)
  return "Price Scale Code: "..value
end

-- Dissect: Price Scale Code
nyse_options_topfeed_xdp_v1_3_a_dissect.price_scale_code = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.price_scale_code
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.price_scale_code(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
nyse_options_topfeed_xdp_v1_3_a_size_of.strike_price = 10

-- Display: Strike Price
nyse_options_topfeed_xdp_v1_3_a_display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
nyse_options_topfeed_xdp_v1_3_a_dissect.strike_price = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.strike_price
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.strike_price(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Put Or Call
nyse_options_topfeed_xdp_v1_3_a_size_of.put_or_call = 1

-- Display: Put Or Call
nyse_options_topfeed_xdp_v1_3_a_display.put_or_call = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
nyse_options_topfeed_xdp_v1_3_a_dissect.put_or_call = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.put_or_call
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.put_or_call(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Size: Maturity Date
nyse_options_topfeed_xdp_v1_3_a_size_of.maturity_date = 6

-- Display: Maturity Date
nyse_options_topfeed_xdp_v1_3_a_display.maturity_date = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
nyse_options_topfeed_xdp_v1_3_a_dissect.maturity_date = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.maturity_date
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.maturity_date(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Size: Contract Multiplier
nyse_options_topfeed_xdp_v1_3_a_size_of.contract_multiplier = 2

-- Display: Contract Multiplier
nyse_options_topfeed_xdp_v1_3_a_display.contract_multiplier = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
nyse_options_topfeed_xdp_v1_3_a_dissect.contract_multiplier = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.contract_multiplier
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.contract_multiplier(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Size: Underlying Index
nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_index = 4

-- Display: Underlying Index
nyse_options_topfeed_xdp_v1_3_a_display.underlying_index = function(value)
  return "Underlying Index: "..value
end

-- Dissect: Underlying Index
nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_index = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.underlying_index(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.underlying_index, range, value, display)

  return offset + length, value
end

-- Size: Reserved B 1
nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_b_1 = 1

-- Display: Reserved B 1
nyse_options_topfeed_xdp_v1_3_a_display.reserved_b_1 = function(value)
  return "Reserved B 1: "..value
end

-- Dissect: Reserved B 1
nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_b_1 = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_b_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_topfeed_xdp_v1_3_a_display.reserved_b_1(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.reserved_b_1, range, value, display)

  return offset + length, value
end

-- Size: System Id
nyse_options_topfeed_xdp_v1_3_a_size_of.system_id = 1

-- Display: System Id
nyse_options_topfeed_xdp_v1_3_a_display.system_id = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_options_topfeed_xdp_v1_3_a_dissect.system_id = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.system_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.system_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.system_id, range, value, display)

  return offset + length, value
end

-- Size: Market Id
nyse_options_topfeed_xdp_v1_3_a_size_of.market_id = 2

-- Display: Market Id
nyse_options_topfeed_xdp_v1_3_a_display.market_id = function(value)
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
nyse_options_topfeed_xdp_v1_3_a_dissect.market_id = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.market_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.market_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.market_id, range, value, display)

  return offset + length, value
end

-- Size: Reserved A 1
nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_a_1 = 1

-- Display: Reserved A 1
nyse_options_topfeed_xdp_v1_3_a_display.reserved_a_1 = function(value)
  return "Reserved A 1: "..value
end

-- Dissect: Reserved A 1
nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_a_1 = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_a_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_topfeed_xdp_v1_3_a_display.reserved_a_1(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.reserved_a_1, range, value, display)

  return offset + length, value
end

-- Size: Series Index
nyse_options_topfeed_xdp_v1_3_a_size_of.series_index = 4

-- Display: Series Index
nyse_options_topfeed_xdp_v1_3_a_display.series_index = function(value)
  return "Series Index: "..value
end

-- Dissect: Series Index
nyse_options_topfeed_xdp_v1_3_a_dissect.series_index = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.series_index
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.series_index(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.series_index, range, value, display)

  return offset + length, value
end

-- Calculate size of: Series Index Mapping Message
nyse_options_topfeed_xdp_v1_3_a_size_of.series_index_mapping_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.series_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.channel_id

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_a_1

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.market_id

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.system_id

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_b_1

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.stream_id

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.contract_multiplier

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.maturity_date

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.put_or_call

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.strike_price

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.price_scale_code

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_symbol

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.option_symbol_root

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.group_id

  return index
end

-- Display: Series Index Mapping Message
nyse_options_topfeed_xdp_v1_3_a_display.series_index_mapping_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Index Mapping Message
nyse_options_topfeed_xdp_v1_3_a_dissect.series_index_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_options_topfeed_xdp_v1_3_a_dissect.channel_id(buffer, index, packet, parent)

  -- Reserved A 1: 1 Byte
  index, reserved_a_1 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_a_1(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_options_topfeed_xdp_v1_3_a_dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_options_topfeed_xdp_v1_3_a_dissect.system_id(buffer, index, packet, parent)

  -- Reserved B 1: 1 Byte
  index, reserved_b_1 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_b_1(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = nyse_options_topfeed_xdp_v1_3_a_dissect.stream_id(buffer, index, packet, parent)

  -- Underlying Index: 4 Byte Unsigned Fixed Width Integer
  index, underlying_index = nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_index(buffer, index, packet, parent)

  -- Contract Multiplier: 2 Byte Unsigned Fixed Width Integer
  index, contract_multiplier = nyse_options_topfeed_xdp_v1_3_a_dissect.contract_multiplier(buffer, index, packet, parent)

  -- Maturity Date: 6 Byte Ascii String
  index, maturity_date = nyse_options_topfeed_xdp_v1_3_a_dissect.maturity_date(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = nyse_options_topfeed_xdp_v1_3_a_dissect.put_or_call(buffer, index, packet, parent)

  -- Strike Price: 10 Byte Ascii String
  index, strike_price = nyse_options_topfeed_xdp_v1_3_a_dissect.strike_price(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_options_topfeed_xdp_v1_3_a_dissect.price_scale_code(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index, underlying_symbol = nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Option Symbol Root: 5 Byte Ascii String
  index, option_symbol_root = nyse_options_topfeed_xdp_v1_3_a_dissect.option_symbol_root(buffer, index, packet, parent)

  -- Group Id: 4 Byte Unsigned Fixed Width Integer
  index, group_id = nyse_options_topfeed_xdp_v1_3_a_dissect.group_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Index Mapping Message
nyse_options_topfeed_xdp_v1_3_a_dissect.series_index_mapping_message = function(buffer, offset, packet, parent)
  if show.series_index_mapping_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.series_index_mapping_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index_mapping_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.series_index_mapping_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.series_index_mapping_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Reserved 1
nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_1 = 1

-- Display: Reserved 1
nyse_options_topfeed_xdp_v1_3_a_display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_topfeed_xdp_v1_3_a_display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Size: Price Resolution
nyse_options_topfeed_xdp_v1_3_a_size_of.price_resolution = 1

-- Display: Price Resolution
nyse_options_topfeed_xdp_v1_3_a_display.price_resolution = function(value)
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
nyse_options_topfeed_xdp_v1_3_a_dissect.price_resolution = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.price_resolution
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.price_resolution(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Size: Security Type
nyse_options_topfeed_xdp_v1_3_a_size_of.security_type = 1

-- Display: Security Type
nyse_options_topfeed_xdp_v1_3_a_display.security_type = function(value)
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
nyse_options_topfeed_xdp_v1_3_a_dissect.security_type = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.security_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.security_type(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.security_type, range, value, display)

  return offset + length, value
end

-- Size: Exchange Code
nyse_options_topfeed_xdp_v1_3_a_size_of.exchange_code = 1

-- Display: Exchange Code
nyse_options_topfeed_xdp_v1_3_a_display.exchange_code = function(value)
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
nyse_options_topfeed_xdp_v1_3_a_dissect.exchange_code = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.exchange_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Index Mapping Message
nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_index_mapping_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_symbol

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.channel_id

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.market_id

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.system_id

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.exchange_code

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.price_scale_code

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.security_type

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.price_resolution

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_1

  return index
end

-- Display: Underlying Index Mapping Message
nyse_options_topfeed_xdp_v1_3_a_display.underlying_index_mapping_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Index Mapping Message
nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_index_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Index: 4 Byte Unsigned Fixed Width Integer
  index, underlying_index = nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_index(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index, underlying_symbol = nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_symbol(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_options_topfeed_xdp_v1_3_a_dissect.channel_id(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, market_id = nyse_options_topfeed_xdp_v1_3_a_dissect.market_id(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_options_topfeed_xdp_v1_3_a_dissect.system_id(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 6 values
  index, exchange_code = nyse_options_topfeed_xdp_v1_3_a_dissect.exchange_code(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer
  index, price_scale_code = nyse_options_topfeed_xdp_v1_3_a_dissect.price_scale_code(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index, security_type = nyse_options_topfeed_xdp_v1_3_a_dissect.security_type(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_resolution = nyse_options_topfeed_xdp_v1_3_a_dissect.price_resolution(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Index Mapping Message
nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_index_mapping_message = function(buffer, offset, packet, parent)
  if show.underlying_index_mapping_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.underlying_index_mapping_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_index_mapping_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.underlying_index_mapping_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_index_mapping_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Reserved 3
nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_3 = 3

-- Display: Reserved 3
nyse_options_topfeed_xdp_v1_3_a_display.reserved_3 = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_3 = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_3
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_options_topfeed_xdp_v1_3_a_display.reserved_3(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Size: Market Imbalance Side
nyse_options_topfeed_xdp_v1_3_a_size_of.market_imbalance_side = 1

-- Display: Market Imbalance Side
nyse_options_topfeed_xdp_v1_3_a_display.market_imbalance_side = function(value)
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
nyse_options_topfeed_xdp_v1_3_a_dissect.market_imbalance_side = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.market_imbalance_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.market_imbalance_side(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.market_imbalance_side, range, value, display)

  return offset + length, value
end

-- Size: Imbalance Side
nyse_options_topfeed_xdp_v1_3_a_size_of.imbalance_side = 1

-- Display: Imbalance Side
nyse_options_topfeed_xdp_v1_3_a_display.imbalance_side = function(value)
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
nyse_options_topfeed_xdp_v1_3_a_dissect.imbalance_side = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.imbalance_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.imbalance_side(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Size: Auction Type
nyse_options_topfeed_xdp_v1_3_a_size_of.auction_type = 1

-- Display: Auction Type
nyse_options_topfeed_xdp_v1_3_a_display.auction_type = function(value)
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "H" then
    return "Auction Type: Halt (H)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nyse_options_topfeed_xdp_v1_3_a_dissect.auction_type = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.auction_type(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Market Imbalance Qty
nyse_options_topfeed_xdp_v1_3_a_size_of.market_imbalance_qty = 2

-- Display: Market Imbalance Qty
nyse_options_topfeed_xdp_v1_3_a_display.market_imbalance_qty = function(value)
  return "Market Imbalance Qty: "..value
end

-- Dissect: Market Imbalance Qty
nyse_options_topfeed_xdp_v1_3_a_dissect.market_imbalance_qty = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.market_imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.market_imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.market_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Size: Total Imbalance Qty
nyse_options_topfeed_xdp_v1_3_a_size_of.total_imbalance_qty = 2

-- Display: Total Imbalance Qty
nyse_options_topfeed_xdp_v1_3_a_display.total_imbalance_qty = function(value)
  return "Total Imbalance Qty: "..value
end

-- Dissect: Total Imbalance Qty
nyse_options_topfeed_xdp_v1_3_a_dissect.total_imbalance_qty = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.total_imbalance_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.total_imbalance_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.total_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Size: Paired Qty
nyse_options_topfeed_xdp_v1_3_a_size_of.paired_qty = 2

-- Display: Paired Qty
nyse_options_topfeed_xdp_v1_3_a_display.paired_qty = function(value)
  return "Paired Qty: "..value
end

-- Dissect: Paired Qty
nyse_options_topfeed_xdp_v1_3_a_dissect.paired_qty = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.paired_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.paired_qty(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.paired_qty, range, value, display)

  return offset + length, value
end

-- Size: Reference Price
nyse_options_topfeed_xdp_v1_3_a_size_of.reference_price = 4

-- Display: Reference Price
nyse_options_topfeed_xdp_v1_3_a_display.reference_price = function(value)
  return "Reference Price: "..value
end

-- Dissect: Reference Price
nyse_options_topfeed_xdp_v1_3_a_dissect.reference_price = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.reference_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.reference_price(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Size: Symbol Seq Num
nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num = 4

-- Display: Symbol Seq Num
nyse_options_topfeed_xdp_v1_3_a_display.symbol_seq_num = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_options_topfeed_xdp_v1_3_a_dissect.symbol_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.symbol_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Outright Imbalance Message
nyse_options_topfeed_xdp_v1_3_a_size_of.refresh_outright_imbalance_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.series_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reference_price

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.paired_qty

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.total_imbalance_qty

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.market_imbalance_qty

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.auction_type

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.imbalance_side

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.market_imbalance_side

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_3

  return index
end

-- Display: Refresh Outright Imbalance Message
nyse_options_topfeed_xdp_v1_3_a_display.refresh_outright_imbalance_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Outright Imbalance Message
nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_imbalance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_topfeed_xdp_v1_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Reference Price: 4 Byte Signed Fixed Width Integer
  index, reference_price = nyse_options_topfeed_xdp_v1_3_a_dissect.reference_price(buffer, index, packet, parent)

  -- Paired Qty: 2 Byte Unsigned Fixed Width Integer
  index, paired_qty = nyse_options_topfeed_xdp_v1_3_a_dissect.paired_qty(buffer, index, packet, parent)

  -- Total Imbalance Qty: 2 Byte Unsigned Fixed Width Integer
  index, total_imbalance_qty = nyse_options_topfeed_xdp_v1_3_a_dissect.total_imbalance_qty(buffer, index, packet, parent)

  -- Market Imbalance Qty: 2 Byte Unsigned Fixed Width Integer
  index, market_imbalance_qty = nyse_options_topfeed_xdp_v1_3_a_dissect.market_imbalance_qty(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 2 values
  index, auction_type = nyse_options_topfeed_xdp_v1_3_a_dissect.auction_type(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, imbalance_side = nyse_options_topfeed_xdp_v1_3_a_dissect.imbalance_side(buffer, index, packet, parent)

  -- Market Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, market_imbalance_side = nyse_options_topfeed_xdp_v1_3_a_dissect.market_imbalance_side(buffer, index, packet, parent)

  -- Reserved 3: 3 Byte
  index, reserved_3 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Outright Imbalance Message
nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_imbalance_message = function(buffer, offset, packet, parent)
  if show.refresh_outright_imbalance_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.refresh_outright_imbalance_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_imbalance_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.refresh_outright_imbalance_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_imbalance_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Trade Cond 2
nyse_options_topfeed_xdp_v1_3_a_size_of.trade_cond_2 = 1

-- Display: Trade Cond 2
nyse_options_topfeed_xdp_v1_3_a_display.trade_cond_2 = function(value)
  if value == "P" then
    return "Trade Cond 2: Complex Trade With Equity (P)"
  end
  if value == "L" then
    return "Trade Cond 2: Complex Trade (L)"
  end

  return "Trade Cond 2: Unknown("..value..")"
end

-- Dissect: Trade Cond 2
nyse_options_topfeed_xdp_v1_3_a_dissect.trade_cond_2 = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.trade_cond_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.trade_cond_2(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.trade_cond_2, range, value, display)

  return offset + length, value
end

-- Size: Trade Cond 1
nyse_options_topfeed_xdp_v1_3_a_size_of.trade_cond_1 = 1

-- Display: Trade Cond 1
nyse_options_topfeed_xdp_v1_3_a_display.trade_cond_1 = function(value)
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
nyse_options_topfeed_xdp_v1_3_a_dissect.trade_cond_1 = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.trade_cond_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.trade_cond_1(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.trade_cond_1, range, value, display)

  return offset + length, value
end

-- Size: Volume 4
nyse_options_topfeed_xdp_v1_3_a_size_of.volume_4 = 4

-- Display: Volume 4
nyse_options_topfeed_xdp_v1_3_a_display.volume_4 = function(value)
  return "Volume 4: "..value
end

-- Dissect: Volume 4
nyse_options_topfeed_xdp_v1_3_a_dissect.volume_4 = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.volume_4
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.volume_4(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.volume_4, range, value, display)

  return offset + length, value
end

-- Size: Price
nyse_options_topfeed_xdp_v1_3_a_size_of.price = 4

-- Display: Price
nyse_options_topfeed_xdp_v1_3_a_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_options_topfeed_xdp_v1_3_a_dissect.price = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.price(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Trade Id
nyse_options_topfeed_xdp_v1_3_a_size_of.trade_id = 4

-- Display: Trade Id
nyse_options_topfeed_xdp_v1_3_a_display.trade_id = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_options_topfeed_xdp_v1_3_a_dissect.trade_id = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.trade_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Outright Trade Message
nyse_options_topfeed_xdp_v1_3_a_size_of.refresh_outright_trade_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.series_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.trade_id

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.price

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.volume_4

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.trade_cond_1

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.trade_cond_2

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_2

  return index
end

-- Display: Refresh Outright Trade Message
nyse_options_topfeed_xdp_v1_3_a_display.refresh_outright_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Outright Trade Message
nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_topfeed_xdp_v1_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_options_topfeed_xdp_v1_3_a_dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_options_topfeed_xdp_v1_3_a_dissect.price(buffer, index, packet, parent)

  -- Volume 4: 4 Byte Unsigned Fixed Width Integer
  index, volume_4 = nyse_options_topfeed_xdp_v1_3_a_dissect.volume_4(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 4 values
  index, trade_cond_1 = nyse_options_topfeed_xdp_v1_3_a_dissect.trade_cond_1(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 2 values
  index, trade_cond_2 = nyse_options_topfeed_xdp_v1_3_a_dissect.trade_cond_2(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Outright Trade Message
nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_trade_message = function(buffer, offset, packet, parent)
  if show.refresh_outright_trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.refresh_outright_trade_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.refresh_outright_trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_trade_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Quote Condition
nyse_options_topfeed_xdp_v1_3_a_size_of.quote_condition = 1

-- Display: Quote Condition
nyse_options_topfeed_xdp_v1_3_a_display.quote_condition = function(value)
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
nyse_options_topfeed_xdp_v1_3_a_dissect.quote_condition = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Bid Customer Volume
nyse_options_topfeed_xdp_v1_3_a_size_of.bid_customer_volume = 2

-- Display: Bid Customer Volume
nyse_options_topfeed_xdp_v1_3_a_display.bid_customer_volume = function(value)
  return "Bid Customer Volume: "..value
end

-- Dissect: Bid Customer Volume
nyse_options_topfeed_xdp_v1_3_a_dissect.bid_customer_volume = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.bid_customer_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.bid_customer_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.bid_customer_volume, range, value, display)

  return offset + length, value
end

-- Size: Ask Customer Volume
nyse_options_topfeed_xdp_v1_3_a_size_of.ask_customer_volume = 2

-- Display: Ask Customer Volume
nyse_options_topfeed_xdp_v1_3_a_display.ask_customer_volume = function(value)
  return "Ask Customer Volume: "..value
end

-- Dissect: Ask Customer Volume
nyse_options_topfeed_xdp_v1_3_a_dissect.ask_customer_volume = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.ask_customer_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.ask_customer_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.ask_customer_volume, range, value, display)

  return offset + length, value
end

-- Size: Bid Volume
nyse_options_topfeed_xdp_v1_3_a_size_of.bid_volume = 2

-- Display: Bid Volume
nyse_options_topfeed_xdp_v1_3_a_display.bid_volume = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_options_topfeed_xdp_v1_3_a_dissect.bid_volume = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.bid_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.bid_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Size: Ask Volume
nyse_options_topfeed_xdp_v1_3_a_size_of.ask_volume = 2

-- Display: Ask Volume
nyse_options_topfeed_xdp_v1_3_a_display.ask_volume = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_options_topfeed_xdp_v1_3_a_dissect.ask_volume = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.ask_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.ask_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
nyse_options_topfeed_xdp_v1_3_a_size_of.bid_price = 4

-- Display: Bid Price
nyse_options_topfeed_xdp_v1_3_a_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nyse_options_topfeed_xdp_v1_3_a_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.bid_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
nyse_options_topfeed_xdp_v1_3_a_size_of.ask_price = 4

-- Display: Ask Price
nyse_options_topfeed_xdp_v1_3_a_display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nyse_options_topfeed_xdp_v1_3_a_dissect.ask_price = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.ask_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.ask_price(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Refresh Outright Quote Message
nyse_options_topfeed_xdp_v1_3_a_size_of.refresh_outright_quote_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.series_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.ask_price

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.bid_price

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.ask_volume

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.bid_volume

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.ask_customer_volume

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.bid_customer_volume

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.quote_condition

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_1

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_2

  return index
end

-- Display: Refresh Outright Quote Message
nyse_options_topfeed_xdp_v1_3_a_display.refresh_outright_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Outright Quote Message
nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_topfeed_xdp_v1_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index, ask_price = nyse_options_topfeed_xdp_v1_3_a_dissect.ask_price(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index, bid_price = nyse_options_topfeed_xdp_v1_3_a_dissect.bid_price(buffer, index, packet, parent)

  -- Ask Volume: 2 Byte Unsigned Fixed Width Integer
  index, ask_volume = nyse_options_topfeed_xdp_v1_3_a_dissect.ask_volume(buffer, index, packet, parent)

  -- Bid Volume: 2 Byte Unsigned Fixed Width Integer
  index, bid_volume = nyse_options_topfeed_xdp_v1_3_a_dissect.bid_volume(buffer, index, packet, parent)

  -- Ask Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, ask_customer_volume = nyse_options_topfeed_xdp_v1_3_a_dissect.ask_customer_volume(buffer, index, packet, parent)

  -- Bid Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, bid_customer_volume = nyse_options_topfeed_xdp_v1_3_a_dissect.bid_customer_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nyse_options_topfeed_xdp_v1_3_a_dissect.quote_condition(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_1(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Outright Quote Message
nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_quote_message = function(buffer, offset, packet, parent)
  if show.refresh_outright_quote_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.refresh_outright_quote_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_quote_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.refresh_outright_quote_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_quote_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Halt Condition
nyse_options_topfeed_xdp_v1_3_a_size_of.halt_condition = 1

-- Display: Halt Condition
nyse_options_topfeed_xdp_v1_3_a_display.halt_condition = function(value)
  return "Halt Condition: "..value
end

-- Dissect: Halt Condition
nyse_options_topfeed_xdp_v1_3_a_dissect.halt_condition = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.halt_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.halt_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Size: Security Status
nyse_options_topfeed_xdp_v1_3_a_size_of.security_status = 1

-- Display: Security Status
nyse_options_topfeed_xdp_v1_3_a_display.security_status = function(value)
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
nyse_options_topfeed_xdp_v1_3_a_dissect.security_status = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.security_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.security_status(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.security_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Outright Series Status Message
nyse_options_topfeed_xdp_v1_3_a_size_of.outright_series_status_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.series_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.security_status

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.halt_condition

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_2

  return index
end

-- Display: Outright Series Status Message
nyse_options_topfeed_xdp_v1_3_a_display.outright_series_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Series Status Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_series_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_topfeed_xdp_v1_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 8 values
  index, security_status = nyse_options_topfeed_xdp_v1_3_a_dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String
  index, halt_condition = nyse_options_topfeed_xdp_v1_3_a_dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Series Status Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_series_status_message = function(buffer, offset, packet, parent)
  if show.outright_series_status_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.outright_series_status_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.outright_series_status_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.outright_series_status_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_series_status_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Underlying Seq Num
nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_seq_num = 4

-- Display: Underlying Seq Num
nyse_options_topfeed_xdp_v1_3_a_display.underlying_seq_num = function(value)
  return "Underlying Seq Num: "..value
end

-- Dissect: Underlying Seq Num
nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_seq_num = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_seq_num
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.underlying_seq_num(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.underlying_seq_num, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Status Message
nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_status_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_seq_num

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.security_status

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.halt_condition

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_2

  return index
end

-- Display: Underlying Status Message
nyse_options_topfeed_xdp_v1_3_a_display.underlying_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Status Message
nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Underlying Index: 4 Byte Unsigned Fixed Width Integer
  index, underlying_index = nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_index(buffer, index, packet, parent)

  -- Underlying Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, underlying_seq_num = nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_seq_num(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 8 values
  index, security_status = nyse_options_topfeed_xdp_v1_3_a_dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String
  index, halt_condition = nyse_options_topfeed_xdp_v1_3_a_dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Status Message
nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_status_message = function(buffer, offset, packet, parent)
  if show.underlying_status_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.underlying_status_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_status_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.underlying_status_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_status_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Total Volume
nyse_options_topfeed_xdp_v1_3_a_size_of.total_volume = 4

-- Display: Total Volume
nyse_options_topfeed_xdp_v1_3_a_display.total_volume = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_options_topfeed_xdp_v1_3_a_dissect.total_volume = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.total_volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.total_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Size: Close
nyse_options_topfeed_xdp_v1_3_a_size_of.close = 4

-- Display: Close
nyse_options_topfeed_xdp_v1_3_a_display.close = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_options_topfeed_xdp_v1_3_a_dissect.close = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.close
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.close(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.close, range, value, display)

  return offset + length, value
end

-- Size: Open
nyse_options_topfeed_xdp_v1_3_a_size_of.open = 4

-- Display: Open
nyse_options_topfeed_xdp_v1_3_a_display.open = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_options_topfeed_xdp_v1_3_a_dissect.open = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.open
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.open(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.open, range, value, display)

  return offset + length, value
end

-- Size: Low Price
nyse_options_topfeed_xdp_v1_3_a_size_of.low_price = 4

-- Display: Low Price
nyse_options_topfeed_xdp_v1_3_a_display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
nyse_options_topfeed_xdp_v1_3_a_dissect.low_price = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.low_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.low_price(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: High Price
nyse_options_topfeed_xdp_v1_3_a_size_of.high_price = 4

-- Display: High Price
nyse_options_topfeed_xdp_v1_3_a_display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
nyse_options_topfeed_xdp_v1_3_a_dissect.high_price = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.high_price
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.high_price(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.high_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Outright Summary Message
nyse_options_topfeed_xdp_v1_3_a_size_of.outright_summary_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.series_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.high_price

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.low_price

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.open

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.close

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.total_volume

  return index
end

-- Display: Outright Summary Message
nyse_options_topfeed_xdp_v1_3_a_display.outright_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Summary Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_topfeed_xdp_v1_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- High Price: 4 Byte Signed Fixed Width Integer
  index, high_price = nyse_options_topfeed_xdp_v1_3_a_dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 4 Byte Signed Fixed Width Integer
  index, low_price = nyse_options_topfeed_xdp_v1_3_a_dissect.low_price(buffer, index, packet, parent)

  -- Open: 4 Byte Signed Fixed Width Integer
  index, open = nyse_options_topfeed_xdp_v1_3_a_dissect.open(buffer, index, packet, parent)

  -- Close: 4 Byte Signed Fixed Width Integer
  index, close = nyse_options_topfeed_xdp_v1_3_a_dissect.close(buffer, index, packet, parent)

  -- Total Volume: 4 Byte Unsigned Fixed Width Integer
  index, total_volume = nyse_options_topfeed_xdp_v1_3_a_dissect.total_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Summary Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_summary_message = function(buffer, offset, packet, parent)
  if show.outright_summary_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.outright_summary_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.outright_summary_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.outright_summary_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_summary_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Participant
nyse_options_topfeed_xdp_v1_3_a_size_of.participant = 4

-- Display: Participant
nyse_options_topfeed_xdp_v1_3_a_display.participant = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nyse_options_topfeed_xdp_v1_3_a_dissect.participant = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.participant
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.participant(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.participant, range, value, display)

  return offset + length, value
end

-- Size: Contracts
nyse_options_topfeed_xdp_v1_3_a_size_of.contracts = 2

-- Display: Contracts
nyse_options_topfeed_xdp_v1_3_a_display.contracts = function(value)
  return "Contracts: "..value
end

-- Dissect: Contracts
nyse_options_topfeed_xdp_v1_3_a_dissect.contracts = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.contracts
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.contracts(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.contracts, range, value, display)

  return offset + length, value
end

-- Size: Capacity
nyse_options_topfeed_xdp_v1_3_a_size_of.capacity = 1

-- Display: Capacity
nyse_options_topfeed_xdp_v1_3_a_display.capacity = function(value)
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
nyse_options_topfeed_xdp_v1_3_a_dissect.capacity = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.capacity
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.capacity(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.capacity, range, value, display)

  return offset + length, value
end

-- Size: Side
nyse_options_topfeed_xdp_v1_3_a_size_of.side = 1

-- Display: Side
nyse_options_topfeed_xdp_v1_3_a_display.side = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_options_topfeed_xdp_v1_3_a_dissect.side = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.side(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Source Ns
nyse_options_topfeed_xdp_v1_3_a_size_of.source_ns = 4

-- Display: Source Ns
nyse_options_topfeed_xdp_v1_3_a_display.source_ns = function(value)
  return "Source Ns: "..value
end

-- Dissect: Source Ns
nyse_options_topfeed_xdp_v1_3_a_dissect.source_ns = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.source_ns
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.source_ns(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.source_ns, range, value, display)

  return offset + length, value
end

-- Calculate size of: Outright Bold Rfq Message
nyse_options_topfeed_xdp_v1_3_a_size_of.outright_bold_rfq_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.series_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.side

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.capacity

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.contracts

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.price

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.participant

  return index
end

-- Display: Outright Bold Rfq Message
nyse_options_topfeed_xdp_v1_3_a_display.outright_bold_rfq_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Bold Rfq Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_bold_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_topfeed_xdp_v1_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_options_topfeed_xdp_v1_3_a_dissect.side(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 6 values
  index, capacity = nyse_options_topfeed_xdp_v1_3_a_dissect.capacity(buffer, index, packet, parent)

  -- Contracts: 2 Byte Unsigned Fixed Width Integer
  index, contracts = nyse_options_topfeed_xdp_v1_3_a_dissect.contracts(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_options_topfeed_xdp_v1_3_a_dissect.price(buffer, index, packet, parent)

  -- Participant: 4 Byte Ascii String
  index, participant = nyse_options_topfeed_xdp_v1_3_a_dissect.participant(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Bold Rfq Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_bold_rfq_message = function(buffer, offset, packet, parent)
  if show.outright_bold_rfq_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.outright_bold_rfq_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.outright_bold_rfq_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.outright_bold_rfq_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_bold_rfq_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Volume 2
nyse_options_topfeed_xdp_v1_3_a_size_of.volume_2 = 2

-- Display: Volume 2
nyse_options_topfeed_xdp_v1_3_a_display.volume_2 = function(value)
  return "Volume 2: "..value
end

-- Dissect: Volume 2
nyse_options_topfeed_xdp_v1_3_a_dissect.volume_2 = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.volume_2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.volume_2(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.volume_2, range, value, display)

  return offset + length, value
end

-- Calculate size of: Outright Crossing Rfq Message
nyse_options_topfeed_xdp_v1_3_a_size_of.outright_crossing_rfq_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.series_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.side

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_1

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.volume_2

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.price

  return index
end

-- Display: Outright Crossing Rfq Message
nyse_options_topfeed_xdp_v1_3_a_display.outright_crossing_rfq_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Crossing Rfq Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_crossing_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_topfeed_xdp_v1_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_options_topfeed_xdp_v1_3_a_dissect.side(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_1(buffer, index, packet, parent)

  -- Volume 2: 2 Byte Unsigned Fixed Width Integer
  index, volume_2 = nyse_options_topfeed_xdp_v1_3_a_dissect.volume_2(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_options_topfeed_xdp_v1_3_a_dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Crossing Rfq Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_crossing_rfq_message = function(buffer, offset, packet, parent)
  if show.outright_crossing_rfq_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.outright_crossing_rfq_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.outright_crossing_rfq_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.outright_crossing_rfq_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_crossing_rfq_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Outright Imbalance Message
nyse_options_topfeed_xdp_v1_3_a_size_of.outright_imbalance_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.series_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reference_price

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.paired_qty

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.total_imbalance_qty

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.market_imbalance_qty

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.auction_type

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.imbalance_side

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.market_imbalance_side

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_3

  return index
end

-- Display: Outright Imbalance Message
nyse_options_topfeed_xdp_v1_3_a_display.outright_imbalance_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Imbalance Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_imbalance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_topfeed_xdp_v1_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Reference Price: 4 Byte Signed Fixed Width Integer
  index, reference_price = nyse_options_topfeed_xdp_v1_3_a_dissect.reference_price(buffer, index, packet, parent)

  -- Paired Qty: 2 Byte Unsigned Fixed Width Integer
  index, paired_qty = nyse_options_topfeed_xdp_v1_3_a_dissect.paired_qty(buffer, index, packet, parent)

  -- Total Imbalance Qty: 2 Byte Unsigned Fixed Width Integer
  index, total_imbalance_qty = nyse_options_topfeed_xdp_v1_3_a_dissect.total_imbalance_qty(buffer, index, packet, parent)

  -- Market Imbalance Qty: 2 Byte Unsigned Fixed Width Integer
  index, market_imbalance_qty = nyse_options_topfeed_xdp_v1_3_a_dissect.market_imbalance_qty(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 2 values
  index, auction_type = nyse_options_topfeed_xdp_v1_3_a_dissect.auction_type(buffer, index, packet, parent)

  -- Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, imbalance_side = nyse_options_topfeed_xdp_v1_3_a_dissect.imbalance_side(buffer, index, packet, parent)

  -- Market Imbalance Side: 1 Byte Ascii String Enum with 3 values
  index, market_imbalance_side = nyse_options_topfeed_xdp_v1_3_a_dissect.market_imbalance_side(buffer, index, packet, parent)

  -- Reserved 3: 3 Byte
  index, reserved_3 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_3(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Imbalance Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_imbalance_message = function(buffer, offset, packet, parent)
  if show.outright_imbalance_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.outright_imbalance_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.outright_imbalance_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.outright_imbalance_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_imbalance_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Original Trade Id
nyse_options_topfeed_xdp_v1_3_a_size_of.original_trade_id = 4

-- Display: Original Trade Id
nyse_options_topfeed_xdp_v1_3_a_display.original_trade_id = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
nyse_options_topfeed_xdp_v1_3_a_dissect.original_trade_id = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.original_trade_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.original_trade_id(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Outright Trade Correction Message
nyse_options_topfeed_xdp_v1_3_a_size_of.outright_trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.series_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.original_trade_id

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.trade_id

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.price

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.volume_4

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.trade_cond_1

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.trade_cond_2

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_2

  return index
end

-- Display: Outright Trade Correction Message
nyse_options_topfeed_xdp_v1_3_a_display.outright_trade_correction_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Trade Correction Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_topfeed_xdp_v1_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Original Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_id = nyse_options_topfeed_xdp_v1_3_a_dissect.original_trade_id(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_options_topfeed_xdp_v1_3_a_dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_options_topfeed_xdp_v1_3_a_dissect.price(buffer, index, packet, parent)

  -- Volume 4: 4 Byte Unsigned Fixed Width Integer
  index, volume_4 = nyse_options_topfeed_xdp_v1_3_a_dissect.volume_4(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 4 values
  index, trade_cond_1 = nyse_options_topfeed_xdp_v1_3_a_dissect.trade_cond_1(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 2 values
  index, trade_cond_2 = nyse_options_topfeed_xdp_v1_3_a_dissect.trade_cond_2(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Trade Correction Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_correction_message = function(buffer, offset, packet, parent)
  if show.outright_trade_correction_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.outright_trade_correction_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_correction_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.outright_trade_correction_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_correction_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Outright Trade Cancel Message
nyse_options_topfeed_xdp_v1_3_a_size_of.outright_trade_cancel_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.series_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.original_trade_id

  return index
end

-- Display: Outright Trade Cancel Message
nyse_options_topfeed_xdp_v1_3_a_display.outright_trade_cancel_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Trade Cancel Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_topfeed_xdp_v1_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Original Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, original_trade_id = nyse_options_topfeed_xdp_v1_3_a_dissect.original_trade_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Trade Cancel Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_cancel_message = function(buffer, offset, packet, parent)
  if show.outright_trade_cancel_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.outright_trade_cancel_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_cancel_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.outright_trade_cancel_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_cancel_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Outright Trade Message
nyse_options_topfeed_xdp_v1_3_a_size_of.outright_trade_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.series_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.trade_id

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.price

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.volume_4

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.trade_cond_1

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.trade_cond_2

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_2

  return index
end

-- Display: Outright Trade Message
nyse_options_topfeed_xdp_v1_3_a_display.outright_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Trade Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_topfeed_xdp_v1_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_options_topfeed_xdp_v1_3_a_dissect.trade_id(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_options_topfeed_xdp_v1_3_a_dissect.price(buffer, index, packet, parent)

  -- Volume 4: 4 Byte Unsigned Fixed Width Integer
  index, volume_4 = nyse_options_topfeed_xdp_v1_3_a_dissect.volume_4(buffer, index, packet, parent)

  -- Trade Cond 1: 1 Byte Ascii String Enum with 4 values
  index, trade_cond_1 = nyse_options_topfeed_xdp_v1_3_a_dissect.trade_cond_1(buffer, index, packet, parent)

  -- Trade Cond 2: 1 Byte Ascii String Enum with 2 values
  index, trade_cond_2 = nyse_options_topfeed_xdp_v1_3_a_dissect.trade_cond_2(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Trade Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_message = function(buffer, offset, packet, parent)
  if show.outright_trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.outright_trade_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.outright_trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Outright Quote Message
nyse_options_topfeed_xdp_v1_3_a_size_of.outright_quote_message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.source_time_ns

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.series_index

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.symbol_seq_num

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.ask_price

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.bid_price

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.ask_volume

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.bid_volume

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.ask_customer_volume

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.bid_customer_volume

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.quote_condition

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_1

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.reserved_2

  return index
end

-- Display: Outright Quote Message
nyse_options_topfeed_xdp_v1_3_a_display.outright_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Quote Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_options_topfeed_xdp_v1_3_a_dissect.source_time_ns(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_options_topfeed_xdp_v1_3_a_dissect.series_index(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_options_topfeed_xdp_v1_3_a_dissect.symbol_seq_num(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index, ask_price = nyse_options_topfeed_xdp_v1_3_a_dissect.ask_price(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index, bid_price = nyse_options_topfeed_xdp_v1_3_a_dissect.bid_price(buffer, index, packet, parent)

  -- Ask Volume: 2 Byte Unsigned Fixed Width Integer
  index, ask_volume = nyse_options_topfeed_xdp_v1_3_a_dissect.ask_volume(buffer, index, packet, parent)

  -- Bid Volume: 2 Byte Unsigned Fixed Width Integer
  index, bid_volume = nyse_options_topfeed_xdp_v1_3_a_dissect.bid_volume(buffer, index, packet, parent)

  -- Ask Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, ask_customer_volume = nyse_options_topfeed_xdp_v1_3_a_dissect.ask_customer_volume(buffer, index, packet, parent)

  -- Bid Customer Volume: 2 Byte Unsigned Fixed Width Integer
  index, bid_customer_volume = nyse_options_topfeed_xdp_v1_3_a_dissect.bid_customer_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 5 values
  index, quote_condition = nyse_options_topfeed_xdp_v1_3_a_dissect.quote_condition(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_1(buffer, index, packet, parent)

  -- Reserved 2: 2 Byte
  index, reserved_2 = nyse_options_topfeed_xdp_v1_3_a_dissect.reserved_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Quote Message
nyse_options_topfeed_xdp_v1_3_a_dissect.outright_quote_message = function(buffer, offset, packet, parent)
  if show.outright_quote_message then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.outright_quote_message, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.outright_quote_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.outright_quote_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_quote_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
nyse_options_topfeed_xdp_v1_3_a_size_of.payload = function(buffer, offset, message_type)
  -- Size of Outright Quote Message
  if message_type == 401 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.outright_quote_message(buffer, offset)
  end
  -- Size of Outright Trade Message
  if message_type == 407 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.outright_trade_message(buffer, offset)
  end
  -- Size of Outright Trade Cancel Message
  if message_type == 409 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.outright_trade_cancel_message(buffer, offset)
  end
  -- Size of Outright Trade Correction Message
  if message_type == 411 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.outright_trade_correction_message(buffer, offset)
  end
  -- Size of Outright Imbalance Message
  if message_type == 413 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.outright_imbalance_message(buffer, offset)
  end
  -- Size of Outright Crossing Rfq Message
  if message_type == 415 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.outright_crossing_rfq_message(buffer, offset)
  end
  -- Size of Outright Bold Rfq Message
  if message_type == 471 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.outright_bold_rfq_message(buffer, offset)
  end
  -- Size of Outright Summary Message
  if message_type == 417 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.outright_summary_message(buffer, offset)
  end
  -- Size of Underlying Status Message
  if message_type == 419 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_status_message(buffer, offset)
  end
  -- Size of Outright Series Status Message
  if message_type == 421 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.outright_series_status_message(buffer, offset)
  end
  -- Size of Refresh Outright Quote Message
  if message_type == 501 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.refresh_outright_quote_message(buffer, offset)
  end
  -- Size of Refresh Outright Trade Message
  if message_type == 507 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.refresh_outright_trade_message(buffer, offset)
  end
  -- Size of Refresh Outright Imbalance Message
  if message_type == 509 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.refresh_outright_imbalance_message(buffer, offset)
  end
  -- Size of Underlying Index Mapping Message
  if message_type == 435 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.underlying_index_mapping_message(buffer, offset)
  end
  -- Size of Series Index Mapping Message
  if message_type == 437 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.series_index_mapping_message(buffer, offset)
  end
  -- Size of Stream Id Message
  if message_type == 455 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.stream_id_message(buffer, offset)
  end
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_options_topfeed_xdp_v1_3_a_size_of.sequence_number_reset_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
nyse_options_topfeed_xdp_v1_3_a_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_options_topfeed_xdp_v1_3_a_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Outright Quote Message
  if message_type == 401 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Trade Message
  if message_type == 407 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Trade Cancel Message
  if message_type == 409 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Trade Correction Message
  if message_type == 411 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Imbalance Message
  if message_type == 413 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_imbalance_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Crossing Rfq Message
  if message_type == 415 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_crossing_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Bold Rfq Message
  if message_type == 471 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_bold_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Summary Message
  if message_type == 417 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Status Message
  if message_type == 419 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Outright Series Status Message
  if message_type == 421 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.outright_series_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Outright Quote Message
  if message_type == 501 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Outright Trade Message
  if message_type == 507 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Outright Imbalance Message
  if message_type == 509 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.refresh_outright_imbalance_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Index Mapping Message
  if message_type == 435 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.underlying_index_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Series Index Mapping Message
  if message_type == 437 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.series_index_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Stream Id Message
  if message_type == 455 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.stream_id_message(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_options_topfeed_xdp_v1_3_a_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_options_topfeed_xdp_v1_3_a_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_options_topfeed_xdp_v1_3_a_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_options_topfeed_xdp_v1_3_a_display.payload(buffer, packet, parent)
  local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.payload, range, display)

  return nyse_options_topfeed_xdp_v1_3_a_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
nyse_options_topfeed_xdp_v1_3_a_size_of.message_type = 2

-- Display: Message Type
nyse_options_topfeed_xdp_v1_3_a_display.message_type = function(value)
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
  if value == 435 then
    return "Message Type: Underlying Index Mapping Message (435)"
  end
  if value == 437 then
    return "Message Type: Series Index Mapping Message (437)"
  end
  if value == 455 then
    return "Message Type: Stream Id Message (455)"
  end
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_options_topfeed_xdp_v1_3_a_dissect.message_type = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.message_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Size
nyse_options_topfeed_xdp_v1_3_a_size_of.message_size = 2

-- Display: Message Size
nyse_options_topfeed_xdp_v1_3_a_display.message_size = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_options_topfeed_xdp_v1_3_a_dissect.message_size = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.message_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.message_size(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.message_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
nyse_options_topfeed_xdp_v1_3_a_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.message_size

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.message_type

  return index
end

-- Display: Message Header
nyse_options_topfeed_xdp_v1_3_a_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_options_topfeed_xdp_v1_3_a_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_options_topfeed_xdp_v1_3_a_dissect.message_size(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 17 values
  index, message_type = nyse_options_topfeed_xdp_v1_3_a_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_options_topfeed_xdp_v1_3_a_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.message_header, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Message
nyse_options_topfeed_xdp_v1_3_a_size_of.message = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 2, 2):le_uint()
  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
nyse_options_topfeed_xdp_v1_3_a_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_options_topfeed_xdp_v1_3_a_dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_options_topfeed_xdp_v1_3_a_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 17 branches
  index = nyse_options_topfeed_xdp_v1_3_a_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_options_topfeed_xdp_v1_3_a_dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = nyse_options_topfeed_xdp_v1_3_a_size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.message(buffer, packet, parent)
    parent = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.message, range, display)
  end

  return nyse_options_topfeed_xdp_v1_3_a_dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Nanoseconds
nyse_options_topfeed_xdp_v1_3_a_size_of.nanoseconds = 4

-- Display: Nanoseconds
nyse_options_topfeed_xdp_v1_3_a_display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_options_topfeed_xdp_v1_3_a_dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
nyse_options_topfeed_xdp_v1_3_a_size_of.timestamp = 4

-- Display: Timestamp
nyse_options_topfeed_xdp_v1_3_a_display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_options_topfeed_xdp_v1_3_a_dissect.timestamp = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.timestamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.timestamp(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
nyse_options_topfeed_xdp_v1_3_a_size_of.sequence_number = 4

-- Display: Sequence Number
nyse_options_topfeed_xdp_v1_3_a_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_options_topfeed_xdp_v1_3_a_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Message Count
nyse_options_topfeed_xdp_v1_3_a_size_of.message_count = 1

-- Display: Message Count
nyse_options_topfeed_xdp_v1_3_a_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_options_topfeed_xdp_v1_3_a_dissect.message_count = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.message_count(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Delivery Flag
nyse_options_topfeed_xdp_v1_3_a_size_of.delivery_flag = 1

-- Display: Delivery Flag
nyse_options_topfeed_xdp_v1_3_a_display.delivery_flag = function(value)
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
    return "Delivery Flag: One Retransmission Packet (13)"
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
nyse_options_topfeed_xdp_v1_3_a_dissect.delivery_flag = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.delivery_flag
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.delivery_flag(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Size: Packet Size
nyse_options_topfeed_xdp_v1_3_a_size_of.packet_size = 2

-- Display: Packet Size
nyse_options_topfeed_xdp_v1_3_a_display.packet_size = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_options_topfeed_xdp_v1_3_a_dissect.packet_size = function(buffer, offset, packet, parent)
  local length = nyse_options_topfeed_xdp_v1_3_a_size_of.packet_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_options_topfeed_xdp_v1_3_a_display.packet_size(value, buffer, offset, packet, parent)

  parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
nyse_options_topfeed_xdp_v1_3_a_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.packet_size

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.delivery_flag

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.message_count

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.sequence_number

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.timestamp

  index = index + nyse_options_topfeed_xdp_v1_3_a_size_of.nanoseconds

  return index
end

-- Display: Packet Header
nyse_options_topfeed_xdp_v1_3_a_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_options_topfeed_xdp_v1_3_a_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_options_topfeed_xdp_v1_3_a_dissect.packet_size(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_options_topfeed_xdp_v1_3_a_dissect.delivery_flag(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_options_topfeed_xdp_v1_3_a_dissect.message_count(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_options_topfeed_xdp_v1_3_a_dissect.sequence_number(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_options_topfeed_xdp_v1_3_a_dissect.timestamp(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_options_topfeed_xdp_v1_3_a_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_options_topfeed_xdp_v1_3_a_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(nyse_options_topfeed_xdp_v1_3_a.fields.packet_header, buffer(offset, 0))
    local index = nyse_options_topfeed_xdp_v1_3_a_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = nyse_options_topfeed_xdp_v1_3_a_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return nyse_options_topfeed_xdp_v1_3_a_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
nyse_options_topfeed_xdp_v1_3_a_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_options_topfeed_xdp_v1_3_a_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = nyse_options_topfeed_xdp_v1_3_a_dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function nyse_options_topfeed_xdp_v1_3_a.init()
end

-- Dissector for Nyse Options TopFeed Xdp 1.3.a
function nyse_options_topfeed_xdp_v1_3_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_options_topfeed_xdp_v1_3_a.name

  -- Dissect protocol
  local protocol = parent:add(nyse_options_topfeed_xdp_v1_3_a, buffer(), nyse_options_topfeed_xdp_v1_3_a.description, "("..buffer:len().." Bytes)")
  return nyse_options_topfeed_xdp_v1_3_a_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_options_topfeed_xdp_v1_3_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_options_topfeed_xdp_v1_3_a_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Options TopFeed Xdp 1.3.a
local function nyse_options_topfeed_xdp_v1_3_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_options_topfeed_xdp_v1_3_a_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_options_topfeed_xdp_v1_3_a
  nyse_options_topfeed_xdp_v1_3_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Options TopFeed Xdp 1.3.a
nyse_options_topfeed_xdp_v1_3_a:register_heuristic("udp", nyse_options_topfeed_xdp_v1_3_a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.3.a
--   Date: Wednesday, February 28, 2018
--   Specification: XDP_Options_Client_Specification_v1.3a.pdf
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
