-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Arca Options ComplexFeed Pillar 1.0.d Protocol
local omi_nyse_arca_options_complexfeed_pillar_v1_0_d = Proto("Nyse.Arca.Options.ComplexFeed.Pillar.v1.0.d.Lua", "Nyse Arca Options ComplexFeed Pillar 1.0.d")

-- Protocol table
local nyse_arca_options_complexfeed_pillar_v1_0_d = {}

-- Component Tables
local show = {}
local format = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Arca Options ComplexFeed Pillar 1.0.d Fields
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.ask_customer_volume = ProtoField.new("Ask Customer Volume", "nyse.arca.options.complexfeed.pillar.v1.0.d.askcustomervolume", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.ask_price = ProtoField.new("Ask Price", "nyse.arca.options.complexfeed.pillar.v1.0.d.askprice", ftypes.INT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.arca.options.complexfeed.pillar.v1.0.d.askvolume", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.auction_id = ProtoField.new("Auction Id", "nyse.arca.options.complexfeed.pillar.v1.0.d.auctionid", ftypes.UINT64)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.arca.options.complexfeed.pillar.v1.0.d.beginseqnum", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.bid_customer_volume = ProtoField.new("Bid Customer Volume", "nyse.arca.options.complexfeed.pillar.v1.0.d.bidcustomervolume", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.bid_price = ProtoField.new("Bid Price", "nyse.arca.options.complexfeed.pillar.v1.0.d.bidprice", ftypes.INT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.arca.options.complexfeed.pillar.v1.0.d.bidvolume", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.capacity = ProtoField.new("Capacity", "nyse.arca.options.complexfeed.pillar.v1.0.d.capacity", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.channel_id = ProtoField.new("Channel Id", "nyse.arca.options.complexfeed.pillar.v1.0.d.channelid", ftypes.UINT8)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.closing_only_indicator = ProtoField.new("Closing Only Indicator", "nyse.arca.options.complexfeed.pillar.v1.0.d.closingonlyindicator", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.contract_multiplier = ProtoField.new("Contract Multiplier", "nyse.arca.options.complexfeed.pillar.v1.0.d.contractmultiplier", ftypes.UINT16)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.arca.options.complexfeed.pillar.v1.0.d.currentrefreshpkt", ftypes.UINT16)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.arca.options.complexfeed.pillar.v1.0.d.deliveryflag", ftypes.UINT8)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.arca.options.complexfeed.pillar.v1.0.d.endseqnum", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.arca.options.complexfeed.pillar.v1.0.d.exchangecode", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.arca.options.complexfeed.pillar.v1.0.d.haltcondition", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.id = ProtoField.new("Id", "nyse.arca.options.complexfeed.pillar.v1.0.d.id", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.arca.options.complexfeed.pillar.v1.0.d.lastseqnum", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.arca.options.complexfeed.pillar.v1.0.d.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.leg_definition = ProtoField.new("Leg Definition", "nyse.arca.options.complexfeed.pillar.v1.0.d.legdefinition", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.leg_ratio_qty = ProtoField.new("Leg Ratio Qty", "nyse.arca.options.complexfeed.pillar.v1.0.d.legratioqty", ftypes.UINT16)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.leg_security_type = ProtoField.new("Leg Security Type", "nyse.arca.options.complexfeed.pillar.v1.0.d.legsecuritytype", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.lot_size = ProtoField.new("Lot Size", "nyse.arca.options.complexfeed.pillar.v1.0.d.lotsize", ftypes.UINT16)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.market_id = ProtoField.new("Market Id", "nyse.arca.options.complexfeed.pillar.v1.0.d.marketid", ftypes.UINT16)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.market_state = ProtoField.new("Market State", "nyse.arca.options.complexfeed.pillar.v1.0.d.marketstate", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.maturity_date = ProtoField.new("Maturity Date", "nyse.arca.options.complexfeed.pillar.v1.0.d.maturitydate", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message = ProtoField.new("Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.message", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message_count = ProtoField.new("Message Count", "nyse.arca.options.complexfeed.pillar.v1.0.d.messagecount", ftypes.UINT8)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message_header = ProtoField.new("Message Header", "nyse.arca.options.complexfeed.pillar.v1.0.d.messageheader", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message_size = ProtoField.new("Message Size", "nyse.arca.options.complexfeed.pillar.v1.0.d.messagesize", ftypes.UINT16)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message_type = ProtoField.new("Message Type", "nyse.arca.options.complexfeed.pillar.v1.0.d.messagetype", ftypes.UINT16)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.arca.options.complexfeed.pillar.v1.0.d.nanoseconds", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.arca.options.complexfeed.pillar.v1.0.d.nextsourceseqnum", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.no_of_legs = ProtoField.new("No Of Legs", "nyse.arca.options.complexfeed.pillar.v1.0.d.nooflegs", ftypes.UINT16)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.option_symbol_root = ProtoField.new("Option Symbol Root", "nyse.arca.options.complexfeed.pillar.v1.0.d.optionsymbolroot", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.packet = ProtoField.new("Packet", "nyse.arca.options.complexfeed.pillar.v1.0.d.packet", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.packet_header = ProtoField.new("Packet Header", "nyse.arca.options.complexfeed.pillar.v1.0.d.packetheader", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.packet_size = ProtoField.new("Packet Size", "nyse.arca.options.complexfeed.pillar.v1.0.d.packetsize", ftypes.UINT16)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.participant = ProtoField.new("Participant", "nyse.arca.options.complexfeed.pillar.v1.0.d.participant", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.payload = ProtoField.new("Payload", "nyse.arca.options.complexfeed.pillar.v1.0.d.payload", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.arca.options.complexfeed.pillar.v1.0.d.prevcloseprice", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.arca.options.complexfeed.pillar.v1.0.d.prevclosevolume", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.price = ProtoField.new("Price", "nyse.arca.options.complexfeed.pillar.v1.0.d.price", ftypes.INT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.price_1 = ProtoField.new("Price 1", "nyse.arca.options.complexfeed.pillar.v1.0.d.price1", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.price_2 = ProtoField.new("Price 2", "nyse.arca.options.complexfeed.pillar.v1.0.d.price2", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.arca.options.complexfeed.pillar.v1.0.d.priceresolution", ftypes.UINT8)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.arca.options.complexfeed.pillar.v1.0.d.pricescalecode", ftypes.UINT8)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.product_id = ProtoField.new("Product Id", "nyse.arca.options.complexfeed.pillar.v1.0.d.productid", ftypes.UINT8)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.put_or_call = ProtoField.new("Put Or Call", "nyse.arca.options.complexfeed.pillar.v1.0.d.putorcall", ftypes.UINT8)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.arca.options.complexfeed.pillar.v1.0.d.quotecondition", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.arca.options.complexfeed.pillar.v1.0.d.requestseqnum", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.arca.options.complexfeed.pillar.v1.0.d.reserved1", ftypes.BYTES)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.reserved_3 = ProtoField.new("Reserved 3", "nyse.arca.options.complexfeed.pillar.v1.0.d.reserved3", ftypes.BYTES)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.arca.options.complexfeed.pillar.v1.0.d.reserved4", ftypes.BYTES)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.reserved_6 = ProtoField.new("Reserved 6", "nyse.arca.options.complexfeed.pillar.v1.0.d.reserved6", ftypes.BYTES)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.arca.options.complexfeed.pillar.v1.0.d.retransmitmethod", ftypes.UINT8)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.rfq_status = ProtoField.new("Rfq Status", "nyse.arca.options.complexfeed.pillar.v1.0.d.rfqstatus", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.round_lot = ProtoField.new("Round Lot", "nyse.arca.options.complexfeed.pillar.v1.0.d.roundlot", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.security_status = ProtoField.new("Security Status", "nyse.arca.options.complexfeed.pillar.v1.0.d.securitystatus", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.security_type = ProtoField.new("Security Type", "nyse.arca.options.complexfeed.pillar.v1.0.d.securitytype", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.arca.options.complexfeed.pillar.v1.0.d.sequencenumber", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.series = ProtoField.new("Series", "nyse.arca.options.complexfeed.pillar.v1.0.d.series", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.series_index = ProtoField.new("Series Index", "nyse.arca.options.complexfeed.pillar.v1.0.d.seriesindex", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.series_seq_num = ProtoField.new("Series Seq Num", "nyse.arca.options.complexfeed.pillar.v1.0.d.seriesseqnum", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.series_status = ProtoField.new("Series Status", "nyse.arca.options.complexfeed.pillar.v1.0.d.seriesstatus", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.series_type = ProtoField.new("Series Type", "nyse.arca.options.complexfeed.pillar.v1.0.d.seriestype", ftypes.UINT8)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.session_state = ProtoField.new("Session State", "nyse.arca.options.complexfeed.pillar.v1.0.d.sessionstate", ftypes.UINT8)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.side = ProtoField.new("Side", "nyse.arca.options.complexfeed.pillar.v1.0.d.side", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.source_id = ProtoField.new("Source Id", "nyse.arca.options.complexfeed.pillar.v1.0.d.sourceid", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.source_time = ProtoField.new("Source Time", "nyse.arca.options.complexfeed.pillar.v1.0.d.sourcetime", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.arca.options.complexfeed.pillar.v1.0.d.sourcetimens", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.ssr_state = ProtoField.new("Ssr State", "nyse.arca.options.complexfeed.pillar.v1.0.d.ssrstate", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.arca.options.complexfeed.pillar.v1.0.d.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.arca.options.complexfeed.pillar.v1.0.d.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.status = ProtoField.new("Status", "nyse.arca.options.complexfeed.pillar.v1.0.d.status", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.strike_price = ProtoField.new("Strike Price", "nyse.arca.options.complexfeed.pillar.v1.0.d.strikeprice", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.symbol = ProtoField.new("Symbol", "nyse.arca.options.complexfeed.pillar.v1.0.d.symbol", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.arca.options.complexfeed.pillar.v1.0.d.symbolindex", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.arca.options.complexfeed.pillar.v1.0.d.symbolseqnum", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.system_id = ProtoField.new("System Id", "nyse.arca.options.complexfeed.pillar.v1.0.d.systemid", ftypes.UINT8)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.time = ProtoField.new("Time", "nyse.arca.options.complexfeed.pillar.v1.0.d.time", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.timestamp = ProtoField.new("Timestamp", "nyse.arca.options.complexfeed.pillar.v1.0.d.timestamp", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.total_quantity = ProtoField.new("Total Quantity", "nyse.arca.options.complexfeed.pillar.v1.0.d.totalquantity", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.arca.options.complexfeed.pillar.v1.0.d.totalrefreshpkts", ftypes.UINT16)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.trade_condition = ProtoField.new("Trade Condition", "nyse.arca.options.complexfeed.pillar.v1.0.d.tradecondition", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.trade_id = ProtoField.new("Trade Id", "nyse.arca.options.complexfeed.pillar.v1.0.d.tradeid", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.type = ProtoField.new("Type", "nyse.arca.options.complexfeed.pillar.v1.0.d.type", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.underlying_index = ProtoField.new("Underlying Index", "nyse.arca.options.complexfeed.pillar.v1.0.d.underlyingindex", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nyse.arca.options.complexfeed.pillar.v1.0.d.underlyingsymbol", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.volume = ProtoField.new("Volume", "nyse.arca.options.complexfeed.pillar.v1.0.d.volume", ftypes.UINT32)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.working_price = ProtoField.new("Working Price", "nyse.arca.options.complexfeed.pillar.v1.0.d.workingprice", ftypes.INT32)

-- Nyse Arca Options ComplexFeed Pillar 1.0.d messages
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.complex_series_index_mapping_message = ProtoField.new("Complex Series Index Mapping Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.complexseriesindexmappingmessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.messageunavailablemessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.options_quote_message = ProtoField.new("Options Quote Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.optionsquotemessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.options_status_message = ProtoField.new("Options Status Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.optionsstatusmessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.options_trade_message = ProtoField.new("Options Trade Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.optionstrademessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.outright_series_index_mapping_message = ProtoField.new("Outright Series Index Mapping Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.outrightseriesindexmappingmessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.refreshheadermessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.refreshrequestmessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.requestresponsemessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.securitystatusmessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.series_rfq_message = ProtoField.new("Series Rfq Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.seriesrfqmessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.symbolclearmessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.symbolindexmappingrequestmessage", ftypes.STRING)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.time_reference_message = ProtoField.new("Time Reference Message", "nyse.arca.options.complexfeed.pillar.v1.0.d.timereferencemessage", ftypes.STRING)

-- Nyse Arca Options ComplexFeed Pillar 1.0.d generated fields
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.leg_definition_index = ProtoField.new("Leg Definition Index", "nyse.arca.options.complexfeed.pillar.v1.0.d.legdefinitionindex", ftypes.UINT16)
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message_index = ProtoField.new("Message Index", "nyse.arca.options.complexfeed.pillar.v1.0.d.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse Arca Options ComplexFeed Pillar 1.0.d Element Dissection Options
show.complex_series_index_mapping_message = true
show.heartbeat_response_message = true
show.leg_definition = true
show.message = true
show.message_header = true
show.message_unavailable_message = true
show.options_quote_message = true
show.options_status_message = true
show.options_trade_message = true
show.outright_series_index_mapping_message = true
show.packet = true
show.packet_header = true
show.refresh_header_message = true
show.refresh_request_message = true
show.request_response_message = true
show.retransmission_request_message = true
show.security_status_message = true
show.sequence_number_reset_message = true
show.series_rfq_message = true
show.symbol_clear_message = true
show.symbol_index_mapping_message = true
show.symbol_index_mapping_request_message = true
show.time_reference_message = true
show.trade_condition = true
show.payload = false

-- Register Nyse Arca Options ComplexFeed Pillar 1.0.d Show Options
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_complex_series_index_mapping_message = Pref.bool("Show Complex Series Index Mapping Message", show.complex_series_index_mapping_message, "Parse and add Complex Series Index Mapping Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_leg_definition = Pref.bool("Show Leg Definition", show.leg_definition, "Parse and add Leg Definition to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_options_quote_message = Pref.bool("Show Options Quote Message", show.options_quote_message, "Parse and add Options Quote Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_options_status_message = Pref.bool("Show Options Status Message", show.options_status_message, "Parse and add Options Status Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_options_trade_message = Pref.bool("Show Options Trade Message", show.options_trade_message, "Parse and add Options Trade Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_outright_series_index_mapping_message = Pref.bool("Show Outright Series Index Mapping Message", show.outright_series_index_mapping_message, "Parse and add Outright Series Index Mapping Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_series_rfq_message = Pref.bool("Show Series Rfq Message", show.series_rfq_message, "Parse and add Series Rfq Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_time_reference_message = Pref.bool("Show Time Reference Message", show.time_reference_message, "Parse and add Time Reference Message to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_trade_condition = Pref.bool("Show Trade Condition", show.trade_condition, "Parse and add Trade Condition to protocol tree")
omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.complex_series_index_mapping_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_complex_series_index_mapping_message then
    show.complex_series_index_mapping_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_complex_series_index_mapping_message
    changed = true
  end
  if show.heartbeat_response_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.leg_definition ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_leg_definition then
    show.leg_definition = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_leg_definition
    changed = true
  end
  if show.message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_message then
    show.message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_message_header then
    show.message_header = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_message_unavailable_message then
    show.message_unavailable_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_message_unavailable_message
    changed = true
  end
  if show.options_quote_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_options_quote_message then
    show.options_quote_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_options_quote_message
    changed = true
  end
  if show.options_status_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_options_status_message then
    show.options_status_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_options_status_message
    changed = true
  end
  if show.options_trade_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_options_trade_message then
    show.options_trade_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_options_trade_message
    changed = true
  end
  if show.outright_series_index_mapping_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_outright_series_index_mapping_message then
    show.outright_series_index_mapping_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_outright_series_index_mapping_message
    changed = true
  end
  if show.packet ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_packet then
    show.packet = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_packet_header then
    show.packet_header = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_packet_header
    changed = true
  end
  if show.refresh_header_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_refresh_header_message then
    show.refresh_header_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_refresh_request_message then
    show.refresh_request_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_refresh_request_message
    changed = true
  end
  if show.request_response_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_request_response_message then
    show.request_response_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_request_response_message
    changed = true
  end
  if show.retransmission_request_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_retransmission_request_message then
    show.retransmission_request_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_retransmission_request_message
    changed = true
  end
  if show.security_status_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_security_status_message then
    show.security_status_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_security_status_message
    changed = true
  end
  if show.sequence_number_reset_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.series_rfq_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_series_rfq_message then
    show.series_rfq_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_series_rfq_message
    changed = true
  end
  if show.symbol_clear_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_symbol_clear_message then
    show.symbol_clear_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.time_reference_message ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_time_reference_message then
    show.time_reference_message = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_time_reference_message
    changed = true
  end
  if show.trade_condition ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_trade_condition then
    show.trade_condition = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_trade_condition
    changed = true
  end
  if show.payload ~= omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_payload then
    show.payload = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse Arca Options ComplexFeed Pillar 1.0.d
-----------------------------------------------------------------------

-- Rfq Status
nyse_arca_options_complexfeed_pillar_v1_0_d.rfq_status = {}

-- Size: Rfq Status
nyse_arca_options_complexfeed_pillar_v1_0_d.rfq_status.size = 1

-- Display: Rfq Status
nyse_arca_options_complexfeed_pillar_v1_0_d.rfq_status.display = function(value)
  if value == "O" then
    return "Rfq Status: Start (O)"
  end
  if value == "Q" then
    return "Rfq Status: End (Q)"
  end

  return "Rfq Status: Unknown("..value..")"
end

-- Dissect: Rfq Status
nyse_arca_options_complexfeed_pillar_v1_0_d.rfq_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.rfq_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.rfq_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.rfq_status, range, value, display)

  return offset + length, value
end

-- Auction Id
nyse_arca_options_complexfeed_pillar_v1_0_d.auction_id = {}

-- Size: Auction Id
nyse_arca_options_complexfeed_pillar_v1_0_d.auction_id.size = 8

-- Display: Auction Id
nyse_arca_options_complexfeed_pillar_v1_0_d.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nyse_arca_options_complexfeed_pillar_v1_0_d.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.auction_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Participant
nyse_arca_options_complexfeed_pillar_v1_0_d.participant = {}

-- Size: Participant
nyse_arca_options_complexfeed_pillar_v1_0_d.participant.size = 4

-- Display: Participant
nyse_arca_options_complexfeed_pillar_v1_0_d.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nyse_arca_options_complexfeed_pillar_v1_0_d.participant.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.participant.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.participant, range, value, display)

  return offset + length, value
end

-- Working Price
nyse_arca_options_complexfeed_pillar_v1_0_d.working_price = {}

-- Size: Working Price
nyse_arca_options_complexfeed_pillar_v1_0_d.working_price.size = 4

-- Display: Working Price
nyse_arca_options_complexfeed_pillar_v1_0_d.working_price.display = function(value)
  return "Working Price: "..value
end

-- Dissect: Working Price
nyse_arca_options_complexfeed_pillar_v1_0_d.working_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.working_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.working_price, range, value, display)

  return offset + length, value
end

-- Total Quantity
nyse_arca_options_complexfeed_pillar_v1_0_d.total_quantity = {}

-- Size: Total Quantity
nyse_arca_options_complexfeed_pillar_v1_0_d.total_quantity.size = 4

-- Display: Total Quantity
nyse_arca_options_complexfeed_pillar_v1_0_d.total_quantity.display = function(value)
  return "Total Quantity: "..value
end

-- Dissect: Total Quantity
nyse_arca_options_complexfeed_pillar_v1_0_d.total_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.total_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.total_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.total_quantity, range, value, display)

  return offset + length, value
end

-- Capacity
nyse_arca_options_complexfeed_pillar_v1_0_d.capacity = {}

-- Size: Capacity
nyse_arca_options_complexfeed_pillar_v1_0_d.capacity.size = 1

-- Display: Capacity
nyse_arca_options_complexfeed_pillar_v1_0_d.capacity.display = function(value)
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
nyse_arca_options_complexfeed_pillar_v1_0_d.capacity.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.capacity, range, value, display)

  return offset + length, value
end

-- Type
nyse_arca_options_complexfeed_pillar_v1_0_d.type = {}

-- Size: Type
nyse_arca_options_complexfeed_pillar_v1_0_d.type.size = 1

-- Display: Type
nyse_arca_options_complexfeed_pillar_v1_0_d.type.display = function(value)
  if value == "P" then
    return "Type: Price Improvement (P)"
  end
  if value == "F" then
    return "Type: Facilitation (F)"
  end
  if value == "S" then
    return "Type: Solicitation (S)"
  end
  if value == "B" then
    return "Type: Bold (B)"
  end
  if value == "C" then
    return "Type: Coa (C)"
  end

  return "Type: Unknown("..value..")"
end

-- Dissect: Type
nyse_arca_options_complexfeed_pillar_v1_0_d.type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.type, range, value, display)

  return offset + length, value
end

-- Side
nyse_arca_options_complexfeed_pillar_v1_0_d.side = {}

-- Size: Side
nyse_arca_options_complexfeed_pillar_v1_0_d.side.size = 1

-- Display: Side
nyse_arca_options_complexfeed_pillar_v1_0_d.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_arca_options_complexfeed_pillar_v1_0_d.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.side, range, value, display)

  return offset + length, value
end

-- Series Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num = {}

-- Size: Series Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num.size = 4

-- Display: Series Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num.display = function(value)
  return "Series Seq Num: "..value
end

-- Dissect: Series Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.series_seq_num, range, value, display)

  return offset + length, value
end

-- Series Index
nyse_arca_options_complexfeed_pillar_v1_0_d.series_index = {}

-- Size: Series Index
nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.size = 4

-- Display: Series Index
nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.display = function(value)
  return "Series Index: "..value
end

-- Dissect: Series Index
nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.series_index, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns = {}

-- Size: Source Time Ns
nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_arca_options_complexfeed_pillar_v1_0_d.source_time = {}

-- Size: Source Time
nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.size = 4

-- Display: Source Time
nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.source_time, range, value, display)

  return offset + length, value
end

-- Series Rfq Message
nyse_arca_options_complexfeed_pillar_v1_0_d.series_rfq_message = {}

-- Calculate size of: Series Rfq Message
nyse_arca_options_complexfeed_pillar_v1_0_d.series_rfq_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.side.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.type.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.capacity.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.total_quantity.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.working_price.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.participant.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.auction_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.rfq_status.size

  return index
end

-- Display: Series Rfq Message
nyse_arca_options_complexfeed_pillar_v1_0_d.series_rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Series Rfq Message
nyse_arca_options_complexfeed_pillar_v1_0_d.series_rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_arca_options_complexfeed_pillar_v1_0_d.side.dissect(buffer, index, packet, parent)

  -- Type: 1 Byte Ascii String Enum with 5 values
  index, type = nyse_arca_options_complexfeed_pillar_v1_0_d.type.dissect(buffer, index, packet, parent)

  -- Capacity: 1 Byte Ascii String Enum with 6 values
  index, capacity = nyse_arca_options_complexfeed_pillar_v1_0_d.capacity.dissect(buffer, index, packet, parent)

  -- Total Quantity: 4 Byte Unsigned Fixed Width Integer
  index, total_quantity = nyse_arca_options_complexfeed_pillar_v1_0_d.total_quantity.dissect(buffer, index, packet, parent)

  -- Working Price: 4 Byte Signed Fixed Width Integer
  index, working_price = nyse_arca_options_complexfeed_pillar_v1_0_d.working_price.dissect(buffer, index, packet, parent)

  -- Participant: 4 Byte Unsigned Fixed Width Integer
  index, participant = nyse_arca_options_complexfeed_pillar_v1_0_d.participant.dissect(buffer, index, packet, parent)

  -- Auction Id: 8 Byte Unsigned Fixed Width Integer
  index, auction_id = nyse_arca_options_complexfeed_pillar_v1_0_d.auction_id.dissect(buffer, index, packet, parent)

  -- Rfq Status: 1 Byte Ascii String Enum with 2 values
  index, rfq_status = nyse_arca_options_complexfeed_pillar_v1_0_d.rfq_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Series Rfq Message
nyse_arca_options_complexfeed_pillar_v1_0_d.series_rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.series_rfq_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.series_rfq_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.series_rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.series_rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.series_rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 3
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_3 = {}

-- Size: Reserved 3
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_3.size = 3

-- Display: Reserved 3
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_3.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Series
nyse_arca_options_complexfeed_pillar_v1_0_d.series = {}

-- Size: Series
nyse_arca_options_complexfeed_pillar_v1_0_d.series.size = 1

-- Display: Series
nyse_arca_options_complexfeed_pillar_v1_0_d.series.display = function(value)
  if value == "a" then
    return "Series: Cube (a)"
  end
  if value == "c" then
    return "Series: Occ (c)"
  end
  if value == "e" then
    return "Series: Floor Trade (e)"
  end
  if value == "I" then
    return "Series: Other Outright Series (I)"
  end
  if value == "S" then
    return "Series: Iso Sweep (S)"
  end
  if value == "D" then
    return "Series: After 90 Seconds (D)"
  end
  if value == "f" then
    return "Series: Complex Orders (f)"
  end
  if value == "f" then
    return "Series: Other Complex Orders (f)"
  end
  if value == "g" then
    return "Series: Complex Cube (g)"
  end
  if value == "H" then
    return "Series: Complex Qcc Order (H)"
  end
  if value == "i" then
    return "Series: Complex Floor Order (i)"
  end
  if value == "j" then
    return "Series: Complex Order Trading With The Outright Series (j)"
  end
  if value == "m" then
    return "Series: Complex Order To Outright Series Orderfloor Trade (m)"
  end
  if value == "p" then
    return "Series: Complex Order With Stock To Complex Order With Stock Floor Trade (p)"
  end
  if value == "s" then
    return "Series: Complex Order With Stock To Outright Series Order Floor Trade (s)"
  end

  return "Series: Unknown("..value..")"
end

-- Dissect: Series
nyse_arca_options_complexfeed_pillar_v1_0_d.series.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.series.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.series.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.series, range, value, display)

  return offset + length, value
end

-- Trade Condition
nyse_arca_options_complexfeed_pillar_v1_0_d.trade_condition = {}

-- Calculate size of: Trade Condition
nyse_arca_options_complexfeed_pillar_v1_0_d.trade_condition.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.series.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_3.size

  return index
end

-- Display: Trade Condition
nyse_arca_options_complexfeed_pillar_v1_0_d.trade_condition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Condition
nyse_arca_options_complexfeed_pillar_v1_0_d.trade_condition.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series: 1 Byte Ascii String Enum with 15 values
  index, series = nyse_arca_options_complexfeed_pillar_v1_0_d.series.dissect(buffer, index, packet, parent)

  -- Reserved 3: 3 Byte
  index, reserved_3 = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Condition
nyse_arca_options_complexfeed_pillar_v1_0_d.trade_condition.dissect = function(buffer, offset, packet, parent)
  if show.trade_condition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.trade_condition, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.trade_condition.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.trade_condition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.trade_condition.fields(buffer, offset, packet, parent)
  end
end

-- Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.volume = {}

-- Size: Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.volume.size = 4

-- Display: Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.volume, range, value, display)

  return offset + length, value
end

-- Price
nyse_arca_options_complexfeed_pillar_v1_0_d.price = {}

-- Size: Price
nyse_arca_options_complexfeed_pillar_v1_0_d.price.size = 4

-- Display: Price
nyse_arca_options_complexfeed_pillar_v1_0_d.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_arca_options_complexfeed_pillar_v1_0_d.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.price, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_arca_options_complexfeed_pillar_v1_0_d.trade_id = {}

-- Size: Trade Id
nyse_arca_options_complexfeed_pillar_v1_0_d.trade_id.size = 4

-- Display: Trade Id
nyse_arca_options_complexfeed_pillar_v1_0_d.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_arca_options_complexfeed_pillar_v1_0_d.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Options Trade Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_trade_message = {}

-- Calculate size of: Options Trade Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.trade_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.price.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.volume.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.trade_condition.size(buffer, offset + index)

  return index
end

-- Display: Options Trade Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Trade Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: 4 Byte Unsigned Fixed Width Integer
  index, trade_id = nyse_arca_options_complexfeed_pillar_v1_0_d.trade_id.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = nyse_arca_options_complexfeed_pillar_v1_0_d.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = nyse_arca_options_complexfeed_pillar_v1_0_d.volume.dissect(buffer, index, packet, parent)

  -- Trade Condition: Struct of 2 fields
  index, trade_condition = nyse_arca_options_complexfeed_pillar_v1_0_d.trade_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Trade Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.options_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.options_trade_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.options_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.options_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.options_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Customer Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.bid_customer_volume = {}

-- Size: Bid Customer Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.bid_customer_volume.size = 4

-- Display: Bid Customer Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.bid_customer_volume.display = function(value)
  return "Bid Customer Volume: "..value
end

-- Dissect: Bid Customer Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.bid_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.bid_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.bid_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.bid_customer_volume, range, value, display)

  return offset + length, value
end

-- Ask Customer Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.ask_customer_volume = {}

-- Size: Ask Customer Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.ask_customer_volume.size = 4

-- Display: Ask Customer Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.ask_customer_volume.display = function(value)
  return "Ask Customer Volume: "..value
end

-- Dissect: Ask Customer Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.ask_customer_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.ask_customer_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.ask_customer_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.ask_customer_volume, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_1 = {}

-- Size: Reserved 1
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_1.size = 1

-- Display: Reserved 1
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_1.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_arca_options_complexfeed_pillar_v1_0_d.quote_condition = {}

-- Size: Quote Condition
nyse_arca_options_complexfeed_pillar_v1_0_d.quote_condition.size = 1

-- Display: Quote Condition
nyse_arca_options_complexfeed_pillar_v1_0_d.quote_condition.display = function(value)
  if value == "1" then
    return "Quote Condition: Nyse Equities (1)"
  end
  if value == "3" then
    return "Quote Condition: Nyse Arca Equities (3)"
  end
  if value == "4" then
    return "Quote Condition: Nyse Arca Options (4)"
  end
  if value == "8" then
    return "Quote Condition: Nyse American Options (8)"
  end
  if value == "9" then
    return "Quote Condition: Nyse American Equities (9)"
  end
  if value == "10" then
    return "Quote Condition: Nyse National Equities (10)"
  end
  if value == "11" then
    return "Quote Condition: Nyse Chicago (11)"
  end
  if value == "1" then
    return "Quote Condition: Regular Trading (1)"
  end
  if value == "2" then
    return "Quote Condition: Rotation (2)"
  end
  if value == "3" then
    return "Quote Condition: Trading Halted (3)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_arca_options_complexfeed_pillar_v1_0_d.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Bid Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.bid_volume = {}

-- Size: Bid Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.bid_volume.size = 4

-- Display: Bid Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.bid_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Bid Price
nyse_arca_options_complexfeed_pillar_v1_0_d.bid_price = {}

-- Size: Bid Price
nyse_arca_options_complexfeed_pillar_v1_0_d.bid_price.size = 4

-- Display: Bid Price
nyse_arca_options_complexfeed_pillar_v1_0_d.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nyse_arca_options_complexfeed_pillar_v1_0_d.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.bid_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Ask Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.ask_volume = {}

-- Size: Ask Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.ask_volume.size = 4

-- Display: Ask Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.ask_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Ask Price
nyse_arca_options_complexfeed_pillar_v1_0_d.ask_price = {}

-- Size: Ask Price
nyse_arca_options_complexfeed_pillar_v1_0_d.ask_price.size = 4

-- Display: Ask Price
nyse_arca_options_complexfeed_pillar_v1_0_d.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nyse_arca_options_complexfeed_pillar_v1_0_d.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.ask_price.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Options Quote Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_quote_message = {}

-- Calculate size of: Options Quote Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.ask_price.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.ask_volume.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.bid_price.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.bid_volume.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.quote_condition.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_1.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.ask_customer_volume.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.bid_customer_volume.size

  return index
end

-- Display: Options Quote Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Quote Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num.dissect(buffer, index, packet, parent)

  -- Ask Price: 4 Byte Signed Fixed Width Integer
  index, ask_price = nyse_arca_options_complexfeed_pillar_v1_0_d.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: 4 Byte Unsigned Fixed Width Integer
  index, ask_volume = nyse_arca_options_complexfeed_pillar_v1_0_d.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index, bid_price = nyse_arca_options_complexfeed_pillar_v1_0_d.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Volume: 4 Byte Unsigned Fixed Width Integer
  index, bid_volume = nyse_arca_options_complexfeed_pillar_v1_0_d.bid_volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 10 values
  index, quote_condition = nyse_arca_options_complexfeed_pillar_v1_0_d.quote_condition.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_1.dissect(buffer, index, packet, parent)

  -- Ask Customer Volume: 4 Byte Unsigned Fixed Width Integer
  index, ask_customer_volume = nyse_arca_options_complexfeed_pillar_v1_0_d.ask_customer_volume.dissect(buffer, index, packet, parent)

  -- Bid Customer Volume: 4 Byte Unsigned Fixed Width Integer
  index, bid_customer_volume = nyse_arca_options_complexfeed_pillar_v1_0_d.bid_customer_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Quote Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.options_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.options_quote_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.options_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.options_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.options_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Security Type
nyse_arca_options_complexfeed_pillar_v1_0_d.leg_security_type = {}

-- Size: Leg Security Type
nyse_arca_options_complexfeed_pillar_v1_0_d.leg_security_type.size = 1

-- Display: Leg Security Type
nyse_arca_options_complexfeed_pillar_v1_0_d.leg_security_type.display = function(value)
  return "Leg Security Type: "..value
end

-- Dissect: Leg Security Type
nyse_arca_options_complexfeed_pillar_v1_0_d.leg_security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.leg_security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.leg_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.leg_security_type, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty
nyse_arca_options_complexfeed_pillar_v1_0_d.leg_ratio_qty = {}

-- Size: Leg Ratio Qty
nyse_arca_options_complexfeed_pillar_v1_0_d.leg_ratio_qty.size = 2

-- Display: Leg Ratio Qty
nyse_arca_options_complexfeed_pillar_v1_0_d.leg_ratio_qty.display = function(value)
  return "Leg Ratio Qty: "..value
end

-- Dissect: Leg Ratio Qty
nyse_arca_options_complexfeed_pillar_v1_0_d.leg_ratio_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.leg_ratio_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.leg_ratio_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.leg_ratio_qty, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index = {}

-- Size: Symbol Index
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.size = 4

-- Display: Symbol Index
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Leg Definition
nyse_arca_options_complexfeed_pillar_v1_0_d.leg_definition = {}

-- Calculate size of: Leg Definition
nyse_arca_options_complexfeed_pillar_v1_0_d.leg_definition.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.leg_ratio_qty.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.side.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.leg_security_type.size

  return index
end

-- Display: Leg Definition
nyse_arca_options_complexfeed_pillar_v1_0_d.leg_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Definition
nyse_arca_options_complexfeed_pillar_v1_0_d.leg_definition.fields = function(buffer, offset, packet, parent, leg_definition_index)
  local index = offset

  -- Implicit Leg Definition Index
  if leg_definition_index ~= nil then
    local iteration = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.leg_definition_index, leg_definition_index)
    iteration:set_generated()
  end

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty: 2 Byte Unsigned Fixed Width Integer
  index, leg_ratio_qty = nyse_arca_options_complexfeed_pillar_v1_0_d.leg_ratio_qty.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = nyse_arca_options_complexfeed_pillar_v1_0_d.side.dissect(buffer, index, packet, parent)

  -- Leg Security Type: 1 Byte Ascii String
  index, leg_security_type = nyse_arca_options_complexfeed_pillar_v1_0_d.leg_security_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Definition
nyse_arca_options_complexfeed_pillar_v1_0_d.leg_definition.dissect = function(buffer, offset, packet, parent, leg_definition_index)
  if show.leg_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.leg_definition, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.leg_definition.fields(buffer, offset, packet, parent, leg_definition_index)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.leg_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.leg_definition.fields(buffer, offset, packet, parent, leg_definition_index)
  end
end

-- No Of Legs
nyse_arca_options_complexfeed_pillar_v1_0_d.no_of_legs = {}

-- Size: No Of Legs
nyse_arca_options_complexfeed_pillar_v1_0_d.no_of_legs.size = 2

-- Display: No Of Legs
nyse_arca_options_complexfeed_pillar_v1_0_d.no_of_legs.display = function(value)
  return "No Of Legs: "..value
end

-- Dissect: No Of Legs
nyse_arca_options_complexfeed_pillar_v1_0_d.no_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.no_of_legs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.no_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.no_of_legs, range, value, display)

  return offset + length, value
end

-- System Id
nyse_arca_options_complexfeed_pillar_v1_0_d.system_id = {}

-- Size: System Id
nyse_arca_options_complexfeed_pillar_v1_0_d.system_id.size = 1

-- Display: System Id
nyse_arca_options_complexfeed_pillar_v1_0_d.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_arca_options_complexfeed_pillar_v1_0_d.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.system_id, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_arca_options_complexfeed_pillar_v1_0_d.market_id = {}

-- Size: Market Id
nyse_arca_options_complexfeed_pillar_v1_0_d.market_id.size = 2

-- Display: Market Id
nyse_arca_options_complexfeed_pillar_v1_0_d.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
nyse_arca_options_complexfeed_pillar_v1_0_d.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.market_id, range, value, display)

  return offset + length, value
end

-- Complex Series Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.complex_series_index_mapping_message = {}

-- Calculate size of: Complex Series Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.complex_series_index_mapping_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.market_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.system_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.no_of_legs.size

  -- Calculate field size from count
  local leg_definition_count = buffer(offset + index - 2, 2):le_uint()
  index = index + leg_definition_count * 8

  return index
end

-- Display: Complex Series Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.complex_series_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Complex Series Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.complex_series_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer
  index, market_id = nyse_arca_options_complexfeed_pillar_v1_0_d.market_id.dissect(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_arca_options_complexfeed_pillar_v1_0_d.system_id.dissect(buffer, index, packet, parent)

  -- No Of Legs: 2 Byte Unsigned Fixed Width Integer
  index, no_of_legs = nyse_arca_options_complexfeed_pillar_v1_0_d.no_of_legs.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Definition
  for leg_definition_index = 1, no_of_legs do
    index, leg_definition = nyse_arca_options_complexfeed_pillar_v1_0_d.leg_definition.dissect(buffer, index, packet, parent, leg_definition_index)
  end

  return index
end

-- Dissect: Complex Series Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.complex_series_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.complex_series_index_mapping_message then
    local length = nyse_arca_options_complexfeed_pillar_v1_0_d.complex_series_index_mapping_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.complex_series_index_mapping_message.display(buffer, packet, parent)
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.complex_series_index_mapping_message, range, display)
  end

  return nyse_arca_options_complexfeed_pillar_v1_0_d.complex_series_index_mapping_message.fields(buffer, offset, packet, parent)
end

-- Halt Condition
nyse_arca_options_complexfeed_pillar_v1_0_d.halt_condition = {}

-- Size: Halt Condition
nyse_arca_options_complexfeed_pillar_v1_0_d.halt_condition.size = 1

-- Display: Halt Condition
nyse_arca_options_complexfeed_pillar_v1_0_d.halt_condition.display = function(value)
  if value == "~" then
    return "Halt Condition: Security Not Delayed Or Halted (~)"
  end
  if value == "D" then
    return "Halt Condition: News Released (D)"
  end
  if value == "I" then
    return "Halt Condition: Order Imbalance (I)"
  end
  if value == "P" then
    return "Halt Condition: News Pending (P)"
  end
  if value == "M" then
    return "Halt Condition: Luld Pause (M)"
  end
  if value == "X" then
    return "Halt Condition: Equipment Changeover (X)"
  end
  if value == "A" then
    return "Halt Condition: Additional Information Requested (A)"
  end
  if value == "C" then
    return "Halt Condition: Regulatory Concern (C)"
  end
  if value == "E" then
    return "Halt Condition: Merger Effective (E)"
  end
  if value == "F" then
    return "Halt Condition: Etf Component Prices Not Available (F)"
  end
  if value == "N" then
    return "Halt Condition: Corporate Action (N)"
  end
  if value == "O" then
    return "Halt Condition: New Security Offering (O)"
  end
  if value == "V" then
    return "Halt Condition: Intraday Indicative Value Not Available (V)"
  end
  if value == "1" then
    return "Halt Condition: Market Wide Circuit Breaker Halt Level 1 (1)"
  end
  if value == "2" then
    return "Halt Condition: Market Wide Circuit Breaker Halt Level 2 (2)"
  end
  if value == "3" then
    return "Halt Condition: Market Wide Circuit Breaker Halt Level 3 (3)"
  end

  return "Halt Condition: Unknown("..value..")"
end

-- Dissect: Halt Condition
nyse_arca_options_complexfeed_pillar_v1_0_d.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- Market State
nyse_arca_options_complexfeed_pillar_v1_0_d.market_state = {}

-- Size: Market State
nyse_arca_options_complexfeed_pillar_v1_0_d.market_state.size = 1

-- Display: Market State
nyse_arca_options_complexfeed_pillar_v1_0_d.market_state.display = function(value)
  if value == "P" then
    return "Market State: Preopening (P)"
  end
  if value == "E" then
    return "Market State: Early Session (E)"
  end
  if value == "O" then
    return "Market State: Core Session (O)"
  end
  if value == "L" then
    return "Market State: Late Session (L)"
  end
  if value == "X" then
    return "Market State: Closed (X)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
nyse_arca_options_complexfeed_pillar_v1_0_d.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.market_state, range, value, display)

  return offset + length, value
end

-- Series Status
nyse_arca_options_complexfeed_pillar_v1_0_d.series_status = {}

-- Size: Series Status
nyse_arca_options_complexfeed_pillar_v1_0_d.series_status.size = 1

-- Display: Series Status
nyse_arca_options_complexfeed_pillar_v1_0_d.series_status.display = function(value)
  if value == "4" then
    return "Series Status: Trading Halt (4)"
  end
  if value == "5" then
    return "Series Status: Resume (5)"
  end
  if value == "6" then
    return "Series Status: Suspend (6)"
  end
  if value == "P" then
    return "Series Status: Preopening (P)"
  end
  if value == "B" then
    return "Series Status: Begin Accepting Orders (B)"
  end
  if value == "O" then
    return "Series Status: Core Session (O)"
  end
  if value == "X" then
    return "Series Status: Closed (X)"
  end

  return "Series Status: Unknown("..value..")"
end

-- Dissect: Series Status
nyse_arca_options_complexfeed_pillar_v1_0_d.series_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.series_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.series_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.series_status, range, value, display)

  return offset + length, value
end

-- Options Status Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_status_message = {}

-- Calculate size of: Options Status Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_status_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.series_status.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.market_state.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.halt_condition.size

  return index
end

-- Display: Options Status Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Options Status Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.dissect(buffer, index, packet, parent)

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.dissect(buffer, index, packet, parent)

  -- Series Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, series_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.series_seq_num.dissect(buffer, index, packet, parent)

  -- Series Status: 1 Byte Ascii String Enum with 7 values
  index, series_status = nyse_arca_options_complexfeed_pillar_v1_0_d.series_status.dissect(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String Enum with 5 values
  index, market_state = nyse_arca_options_complexfeed_pillar_v1_0_d.market_state.dissect(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 16 values
  index, halt_condition = nyse_arca_options_complexfeed_pillar_v1_0_d.halt_condition.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Options Status Message
nyse_arca_options_complexfeed_pillar_v1_0_d.options_status_message.dissect = function(buffer, offset, packet, parent)
  if show.options_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.options_status_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.options_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.options_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.options_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Closing Only Indicator
nyse_arca_options_complexfeed_pillar_v1_0_d.closing_only_indicator = {}

-- Size: Closing Only Indicator
nyse_arca_options_complexfeed_pillar_v1_0_d.closing_only_indicator.size = 1

-- Display: Closing Only Indicator
nyse_arca_options_complexfeed_pillar_v1_0_d.closing_only_indicator.display = function(value)
  if value == "0" then
    return "Closing Only Indicator: Standard Series (0)"
  end
  if value == "1" then
    return "Closing Only Indicator: Call (1)"
  end

  return "Closing Only Indicator: Unknown("..value..")"
end

-- Dissect: Closing Only Indicator
nyse_arca_options_complexfeed_pillar_v1_0_d.closing_only_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.closing_only_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.closing_only_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.closing_only_indicator, range, value, display)

  return offset + length, value
end

-- Strike Price
nyse_arca_options_complexfeed_pillar_v1_0_d.strike_price = {}

-- Size: Strike Price
nyse_arca_options_complexfeed_pillar_v1_0_d.strike_price.size = 10

-- Display: Strike Price
nyse_arca_options_complexfeed_pillar_v1_0_d.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
nyse_arca_options_complexfeed_pillar_v1_0_d.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.strike_price.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Put Or Call
nyse_arca_options_complexfeed_pillar_v1_0_d.put_or_call = {}

-- Size: Put Or Call
nyse_arca_options_complexfeed_pillar_v1_0_d.put_or_call.size = 1

-- Display: Put Or Call
nyse_arca_options_complexfeed_pillar_v1_0_d.put_or_call.display = function(value)
  if value == 0 then
    return "Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Put Or Call: Call (1)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
nyse_arca_options_complexfeed_pillar_v1_0_d.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.put_or_call.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Maturity Date
nyse_arca_options_complexfeed_pillar_v1_0_d.maturity_date = {}

-- Size: Maturity Date
nyse_arca_options_complexfeed_pillar_v1_0_d.maturity_date.size = 6

-- Display: Maturity Date
nyse_arca_options_complexfeed_pillar_v1_0_d.maturity_date.display = function(value)
  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
nyse_arca_options_complexfeed_pillar_v1_0_d.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.maturity_date.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Contract Multiplier
nyse_arca_options_complexfeed_pillar_v1_0_d.contract_multiplier = {}

-- Size: Contract Multiplier
nyse_arca_options_complexfeed_pillar_v1_0_d.contract_multiplier.size = 2

-- Display: Contract Multiplier
nyse_arca_options_complexfeed_pillar_v1_0_d.contract_multiplier.display = function(value)
  return "Contract Multiplier: "..value
end

-- Dissect: Contract Multiplier
nyse_arca_options_complexfeed_pillar_v1_0_d.contract_multiplier.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.contract_multiplier.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.contract_multiplier.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.contract_multiplier, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_arca_options_complexfeed_pillar_v1_0_d.price_scale_code = {}

-- Size: Price Scale Code
nyse_arca_options_complexfeed_pillar_v1_0_d.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_arca_options_complexfeed_pillar_v1_0_d.price_scale_code.display = function(value)
  if value == 6 then
    return "Price Scale Code: Low Priced Securities (6)"
  end
  if value == 4 then
    return "Price Scale Code: Medium Priced Securities (4)"
  end
  if value == 3 then
    return "Price Scale Code: High Priced Securities (3)"
  end

  return "Price Scale Code: Unknown("..value..")"
end

-- Dissect: Price Scale Code
nyse_arca_options_complexfeed_pillar_v1_0_d.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.price_scale_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Underlying Index
nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_index = {}

-- Size: Underlying Index
nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_index.size = 4

-- Display: Underlying Index
nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_index.display = function(value)
  return "Underlying Index: "..value
end

-- Dissect: Underlying Index
nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.underlying_index, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_symbol = {}

-- Size: Underlying Symbol
nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_symbol.size = 11

-- Display: Underlying Symbol
nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Option Symbol Root
nyse_arca_options_complexfeed_pillar_v1_0_d.option_symbol_root = {}

-- Size: Option Symbol Root
nyse_arca_options_complexfeed_pillar_v1_0_d.option_symbol_root.size = 6

-- Display: Option Symbol Root
nyse_arca_options_complexfeed_pillar_v1_0_d.option_symbol_root.display = function(value)
  return "Option Symbol Root: "..value
end

-- Dissect: Option Symbol Root
nyse_arca_options_complexfeed_pillar_v1_0_d.option_symbol_root.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.option_symbol_root.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.option_symbol_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.option_symbol_root, range, value, display)

  return offset + length, value
end

-- Series Type
nyse_arca_options_complexfeed_pillar_v1_0_d.series_type = {}

-- Size: Series Type
nyse_arca_options_complexfeed_pillar_v1_0_d.series_type.size = 1

-- Display: Series Type
nyse_arca_options_complexfeed_pillar_v1_0_d.series_type.display = function(value)
  if value == 0 then
    return "Series Type: Standard (0)"
  end
  if value == 1 then
    return "Series Type: Flex (1)"
  end
  if value == 1 then
    return "Series Type: Flex Percentage (1)"
  end

  return "Series Type: Unknown("..value..")"
end

-- Dissect: Series Type
nyse_arca_options_complexfeed_pillar_v1_0_d.series_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.series_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.series_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.series_type, range, value, display)

  return offset + length, value
end

-- Outright Series Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.outright_series_index_mapping_message = {}

-- Calculate size of: Outright Series Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.outright_series_index_mapping_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.series_type.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.market_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.system_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.option_symbol_root.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_symbol.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_index.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.price_scale_code.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.contract_multiplier.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.maturity_date.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.put_or_call.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.strike_price.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.closing_only_indicator.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_1.size

  return index
end

-- Display: Outright Series Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.outright_series_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Outright Series Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.outright_series_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Series Index: 4 Byte Unsigned Fixed Width Integer
  index, series_index = nyse_arca_options_complexfeed_pillar_v1_0_d.series_index.dissect(buffer, index, packet, parent)

  -- Series Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, series_type = nyse_arca_options_complexfeed_pillar_v1_0_d.series_type.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer
  index, market_id = nyse_arca_options_complexfeed_pillar_v1_0_d.market_id.dissect(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_arca_options_complexfeed_pillar_v1_0_d.system_id.dissect(buffer, index, packet, parent)

  -- Option Symbol Root: 6 Byte Ascii String
  index, option_symbol_root = nyse_arca_options_complexfeed_pillar_v1_0_d.option_symbol_root.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: 11 Byte Ascii String
  index, underlying_symbol = nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Underlying Index: 4 Byte Unsigned Fixed Width Integer
  index, underlying_index = nyse_arca_options_complexfeed_pillar_v1_0_d.underlying_index.dissect(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_scale_code = nyse_arca_options_complexfeed_pillar_v1_0_d.price_scale_code.dissect(buffer, index, packet, parent)

  -- Contract Multiplier: 2 Byte Unsigned Fixed Width Integer
  index, contract_multiplier = nyse_arca_options_complexfeed_pillar_v1_0_d.contract_multiplier.dissect(buffer, index, packet, parent)

  -- Maturity Date: 6 Byte Ascii String
  index, maturity_date = nyse_arca_options_complexfeed_pillar_v1_0_d.maturity_date.dissect(buffer, index, packet, parent)

  -- Put Or Call: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, put_or_call = nyse_arca_options_complexfeed_pillar_v1_0_d.put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: 10 Byte Ascii String
  index, strike_price = nyse_arca_options_complexfeed_pillar_v1_0_d.strike_price.dissect(buffer, index, packet, parent)

  -- Closing Only Indicator: 1 Byte Ascii String Enum with 2 values
  index, closing_only_indicator = nyse_arca_options_complexfeed_pillar_v1_0_d.closing_only_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Outright Series Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.outright_series_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.outright_series_index_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.outright_series_index_mapping_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.outright_series_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.outright_series_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.outright_series_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Last Symbol Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.last_seq_num = {}

-- Size: Last Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_arca_options_complexfeed_pillar_v1_0_d.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_arca_options_complexfeed_pillar_v1_0_d.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_arca_options_complexfeed_pillar_v1_0_d.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_arca_options_complexfeed_pillar_v1_0_d.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_arca_options_complexfeed_pillar_v1_0_d.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_arca_options_complexfeed_pillar_v1_0_d.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_arca_options_complexfeed_pillar_v1_0_d.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_arca_options_complexfeed_pillar_v1_0_d.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Refresh Header Message
nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_header_message = {}

-- Calculate size of: Refresh Header Message
nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_header_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.current_refresh_pkt.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.total_refresh_pkts.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.last_seq_num.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.last_symbol_seq_num.size

  return index
end

-- Display: Refresh Header Message
nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: 2 Byte Unsigned Fixed Width Integer
  index, current_refresh_pkt = nyse_arca_options_complexfeed_pillar_v1_0_d.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: 2 Byte Unsigned Fixed Width Integer
  index, total_refresh_pkts = nyse_arca_options_complexfeed_pillar_v1_0_d.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, last_symbol_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_header_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Session State
nyse_arca_options_complexfeed_pillar_v1_0_d.session_state = {}

-- Size: Session State
nyse_arca_options_complexfeed_pillar_v1_0_d.session_state.size = 1

-- Display: Session State
nyse_arca_options_complexfeed_pillar_v1_0_d.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_arca_options_complexfeed_pillar_v1_0_d.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.session_state.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.session_state, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_state = {}

-- Size: Ssr State
nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_state.size = 1

-- Display: Ssr State
nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_state.display = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Time
nyse_arca_options_complexfeed_pillar_v1_0_d.time = {}

-- Size: Time
nyse_arca_options_complexfeed_pillar_v1_0_d.time.size = 4

-- Display: Time
nyse_arca_options_complexfeed_pillar_v1_0_d.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_arca_options_complexfeed_pillar_v1_0_d.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.time, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_exchange_id.display = function(value)
  if value == "A" then
    return "Ssr Triggering Exchange Id: Nyse American (A)"
  end
  if value == "B" then
    return "Ssr Triggering Exchange Id: Nasdaq Omx Bx (B)"
  end
  if value == "C" then
    return "Ssr Triggering Exchange Id: Nyse National (C)"
  end
  if value == "D" then
    return "Ssr Triggering Exchange Id: Finra (D)"
  end
  if value == "I" then
    return "Ssr Triggering Exchange Id: Ise (I)"
  end
  if value == "J" then
    return "Ssr Triggering Exchange Id: Edga (J)"
  end
  if value == "K" then
    return "Ssr Triggering Exchange Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "Ssr Triggering Exchange Id: Ltse (L)"
  end
  if value == "M" then
    return "Ssr Triggering Exchange Id: Nyse Chicago (M)"
  end
  if value == "N" then
    return "Ssr Triggering Exchange Id: Nyse (N)"
  end
  if value == "P" then
    return "Ssr Triggering Exchange Id: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Ssr Triggering Exchange Id: Nasdaq (Q)"
  end
  if value == "S" then
    return "Ssr Triggering Exchange Id: Cts (S)"
  end
  if value == "T" then
    return "Ssr Triggering Exchange Id: Nasdaq Omx (T)"
  end
  if value == "V" then
    return "Ssr Triggering Exchange Id: Iex (V)"
  end
  if value == "W" then
    return "Ssr Triggering Exchange Id: Cbsx (W)"
  end
  if value == "X" then
    return "Ssr Triggering Exchange Id: Nasdaq Omx Psx (X)"
  end
  if value == "Y" then
    return "Ssr Triggering Exchange Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "Ssr Triggering Exchange Id: Cboe Bzx (Z)"
  end
  if value == "H" then
    return "Ssr Triggering Exchange Id: Miax (H)"
  end
  if value == "U" then
    return "Ssr Triggering Exchange Id: Memx (U)"
  end

  return "Ssr Triggering Exchange Id: Unknown("..value..")"
end

-- Dissect: Ssr Triggering Exchange Id
nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_arca_options_complexfeed_pillar_v1_0_d.price_2 = {}

-- Size: Price 2
nyse_arca_options_complexfeed_pillar_v1_0_d.price_2.size = 4

-- Display: Price 2
nyse_arca_options_complexfeed_pillar_v1_0_d.price_2.display = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
nyse_arca_options_complexfeed_pillar_v1_0_d.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.price_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_arca_options_complexfeed_pillar_v1_0_d.price_1 = {}

-- Size: Price 1
nyse_arca_options_complexfeed_pillar_v1_0_d.price_1.size = 4

-- Display: Price 1
nyse_arca_options_complexfeed_pillar_v1_0_d.price_1.display = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
nyse_arca_options_complexfeed_pillar_v1_0_d.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.price_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.price_1, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_4 = {}

-- Size: Reserved 4
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_4.size = 4

-- Display: Reserved 4
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_arca_options_complexfeed_pillar_v1_0_d.security_status = {}

-- Size: Security Status
nyse_arca_options_complexfeed_pillar_v1_0_d.security_status.size = 1

-- Display: Security Status
nyse_arca_options_complexfeed_pillar_v1_0_d.security_status.display = function(value)
  if value == "4" then
    return "Security Status: Trading Halt (4)"
  end
  if value == "5" then
    return "Security Status: Resume (5)"
  end
  if value == "6" then
    return "Security Status: Suspend (6)"
  end
  if value == "A" then
    return "Security Status: Short Sale Restriction Activated Day 1 (A)"
  end
  if value == "C" then
    return "Security Status: Short Sale Restriction Continued Day 2 (C)"
  end
  if value == "D" then
    return "Security Status: Short Sale Restriction Deactivated (D)"
  end
  if value == "P" then
    return "Security Status: Preopening (P)"
  end
  if value == "B" then
    return "Security Status: Begin Accepting Orders (B)"
  end
  if value == "E" then
    return "Security Status: Early Session (E)"
  end
  if value == "O" then
    return "Security Status: Core Session (O)"
  end
  if value == "L" then
    return "Security Status: Late Session (L)"
  end
  if value == "X" then
    return "Security Status: Closed (X)"
  end
  if value == "I" then
    return "Security Status: Halt Resume Price Indication (I)"
  end
  if value == "G" then
    return "Security Status: Pre Opening Price Indication (G)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
nyse_arca_options_complexfeed_pillar_v1_0_d.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.security_status, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Security Status Message
nyse_arca_options_complexfeed_pillar_v1_0_d.security_status_message = {}

-- Calculate size of: Security Status Message
nyse_arca_options_complexfeed_pillar_v1_0_d.security_status_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_seq_num.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.security_status.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.halt_condition.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_4.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.price_1.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.price_2.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_exchange_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_volume.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.time.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_state.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.market_state.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.session_state.size

  return index
end

-- Display: Security Status Message
nyse_arca_options_complexfeed_pillar_v1_0_d.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_arca_options_complexfeed_pillar_v1_0_d.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, symbol_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 14 values
  index, security_status = nyse_arca_options_complexfeed_pillar_v1_0_d.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 16 values
  index, halt_condition = nyse_arca_options_complexfeed_pillar_v1_0_d.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index, price_1 = nyse_arca_options_complexfeed_pillar_v1_0_d.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index, price_2 = nyse_arca_options_complexfeed_pillar_v1_0_d.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: 1 Byte Ascii String Enum with 21 values
  index, ssr_triggering_exchange_id = nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index, ssr_triggering_volume = nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index, time = nyse_arca_options_complexfeed_pillar_v1_0_d.time.dissect(buffer, index, packet, parent)

  -- Ssr State: 1 Byte Ascii String Enum with 2 values
  index, ssr_state = nyse_arca_options_complexfeed_pillar_v1_0_d.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: 1 Byte Ascii String Enum with 5 values
  index, market_state = nyse_arca_options_complexfeed_pillar_v1_0_d.market_state.dissect(buffer, index, packet, parent)

  -- Session State: 1 Byte Unsigned Fixed Width Integer
  index, session_state = nyse_arca_options_complexfeed_pillar_v1_0_d.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_arca_options_complexfeed_pillar_v1_0_d.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.security_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.security_status_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Next Source Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Symbol Clear Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_clear_message = {}

-- Calculate size of: Symbol Clear Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_clear_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.next_source_seq_num.size

  return index
end

-- Display: Symbol Clear Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, next_source_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_clear_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Channel Id
nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id = {}

-- Size: Channel Id
nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.size = 1

-- Display: Channel Id
nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_arca_options_complexfeed_pillar_v1_0_d.product_id = {}

-- Size: Product Id
nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.size = 1

-- Display: Product Id
nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.product_id, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.end_seq_num = {}

-- Size: End Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.end_seq_num.size = 4

-- Display: End Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Begin Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Message Unavailable Message
nyse_arca_options_complexfeed_pillar_v1_0_d.message_unavailable_message = {}

-- Calculate size of: Message Unavailable Message
nyse_arca_options_complexfeed_pillar_v1_0_d.message_unavailable_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.begin_seq_num.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.end_seq_num.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.size

  return index
end

-- Display: Message Unavailable Message
nyse_arca_options_complexfeed_pillar_v1_0_d.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_arca_options_complexfeed_pillar_v1_0_d.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_arca_options_complexfeed_pillar_v1_0_d.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.message_unavailable_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Id
nyse_arca_options_complexfeed_pillar_v1_0_d.source_id = {}

-- Size: Source Id
nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.size = 10

-- Display: Source Id
nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.source_id, range, value, display)

  return offset + length, value
end

-- Refresh Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_request_message = {}

-- Calculate size of: Refresh Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_request_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.size

  return index
end

-- Display: Refresh Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.refresh_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmit Method
nyse_arca_options_complexfeed_pillar_v1_0_d.retransmit_method = {}

-- Size: Retransmit Method
nyse_arca_options_complexfeed_pillar_v1_0_d.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_arca_options_complexfeed_pillar_v1_0_d.retransmit_method.display = function(value)
  return "Retransmit Method: "..value
end

-- Dissect: Retransmit Method
nyse_arca_options_complexfeed_pillar_v1_0_d.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Symbol Index Mapping Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_request_message = {}

-- Calculate size of: Symbol Index Mapping Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_request_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.retransmit_method.size

  return index
end

-- Display: Symbol Index Mapping Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: 1 Byte Unsigned Fixed Width Integer
  index, retransmit_method = nyse_arca_options_complexfeed_pillar_v1_0_d.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_arca_options_complexfeed_pillar_v1_0_d.heartbeat_response_message = {}

-- Calculate size of: Heartbeat Response Message
nyse_arca_options_complexfeed_pillar_v1_0_d.heartbeat_response_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.size

  return index
end

-- Display: Heartbeat Response Message
nyse_arca_options_complexfeed_pillar_v1_0_d.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_arca_options_complexfeed_pillar_v1_0_d.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_arca_options_complexfeed_pillar_v1_0_d.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.heartbeat_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Status
nyse_arca_options_complexfeed_pillar_v1_0_d.status = {}

-- Size: Status
nyse_arca_options_complexfeed_pillar_v1_0_d.status.size = 1

-- Display: Status
nyse_arca_options_complexfeed_pillar_v1_0_d.status.display = function(value)
  if value == "0" then
    return "Status: Accepted (0)"
  end
  if value == "1" then
    return "Status: Rejected (1)"
  end
  if value == "2" then
    return "Status: Invalid Sequence Range (2)"
  end
  if value == "3" then
    return "Status: Maximum Sequence Range (3)"
  end
  if value == "4" then
    return "Status: Maximum Request In A Day (4)"
  end
  if value == "5" then
    return "Status: Maximum Refresh Requests In A Day (5)"
  end
  if value == "6" then
    return "Status: Old Seq Num Ttl (6)"
  end
  if value == "7" then
    return "Status: Invalid Channel Id (7)"
  end
  if value == "8" then
    return "Status: Invalid Product Id (8)"
  end
  if value == "9" then
    return "Status: Invalid Msg Type Or Msg Size (9)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_arca_options_complexfeed_pillar_v1_0_d.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.status, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.request_seq_num = {}

-- Size: Request Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_arca_options_complexfeed_pillar_v1_0_d.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Request Response Message
nyse_arca_options_complexfeed_pillar_v1_0_d.request_response_message = {}

-- Calculate size of: Request Response Message
nyse_arca_options_complexfeed_pillar_v1_0_d.request_response_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.request_seq_num.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.begin_seq_num.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.end_seq_num.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.status.size

  return index
end

-- Display: Request Response Message
nyse_arca_options_complexfeed_pillar_v1_0_d.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_arca_options_complexfeed_pillar_v1_0_d.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, request_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String Enum with 10 values
  index, status = nyse_arca_options_complexfeed_pillar_v1_0_d.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_arca_options_complexfeed_pillar_v1_0_d.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.request_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.request_response_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.retransmission_request_message = {}

-- Calculate size of: Retransmission Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.retransmission_request_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.begin_seq_num.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.end_seq_num.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.size

  return index
end

-- Display: Retransmission Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, begin_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, end_seq_num = nyse_arca_options_complexfeed_pillar_v1_0_d.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: 10 Byte Ascii String
  index, source_id = nyse_arca_options_complexfeed_pillar_v1_0_d.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_arca_options_complexfeed_pillar_v1_0_d.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.retransmission_request_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Reserved 6
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_6 = {}

-- Size: Reserved 6
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_6.size = 6

-- Display: Reserved 6
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_6.display = function(value)
  return "Reserved 6: "..value
end

-- Dissect: Reserved 6
nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_6.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_6.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.reserved_6, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_arca_options_complexfeed_pillar_v1_0_d.round_lot = {}

-- Size: Round Lot
nyse_arca_options_complexfeed_pillar_v1_0_d.round_lot.size = 1

-- Display: Round Lot
nyse_arca_options_complexfeed_pillar_v1_0_d.round_lot.display = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_arca_options_complexfeed_pillar_v1_0_d.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_arca_options_complexfeed_pillar_v1_0_d.price_resolution = {}

-- Size: Price Resolution
nyse_arca_options_complexfeed_pillar_v1_0_d.price_resolution.size = 1

-- Display: Price Resolution
nyse_arca_options_complexfeed_pillar_v1_0_d.price_resolution.display = function(value)
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
nyse_arca_options_complexfeed_pillar_v1_0_d.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.price_resolution.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_price = {}

-- Size: Prev Close Price
nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Dissect: Prev Close Price
nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_arca_options_complexfeed_pillar_v1_0_d.lot_size = {}

-- Size: Lot Size
nyse_arca_options_complexfeed_pillar_v1_0_d.lot_size.size = 2

-- Display: Lot Size
nyse_arca_options_complexfeed_pillar_v1_0_d.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_arca_options_complexfeed_pillar_v1_0_d.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_arca_options_complexfeed_pillar_v1_0_d.security_type = {}

-- Size: Security Type
nyse_arca_options_complexfeed_pillar_v1_0_d.security_type.size = 1

-- Display: Security Type
nyse_arca_options_complexfeed_pillar_v1_0_d.security_type.display = function(value)
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
    return "Security Type: Us Depositary Shares (H)"
  end
  if value == "I" then
    return "Security Type: Units (I)"
  end
  if value == "L" then
    return "Security Type: Index Linked Notes (L)"
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
    return "Security Type: Closed End Fund (U)"
  end
  if value == "W" then
    return "Security Type: Warrant (W)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
nyse_arca_options_complexfeed_pillar_v1_0_d.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.security_type, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_arca_options_complexfeed_pillar_v1_0_d.exchange_code = {}

-- Size: Exchange Code
nyse_arca_options_complexfeed_pillar_v1_0_d.exchange_code.size = 1

-- Display: Exchange Code
nyse_arca_options_complexfeed_pillar_v1_0_d.exchange_code.display = function(value)
  if value == "A" then
    return "Exchange Code: Nyse American (A)"
  end
  if value == "L" then
    return "Exchange Code: Ltse (L)"
  end
  if value == "N" then
    return "Exchange Code: Nyse (N)"
  end
  if value == "P" then
    return "Exchange Code: Nyse Arca (P)"
  end
  if value == "Q" then
    return "Exchange Code: Nasdaq (Q)"
  end
  if value == "V" then
    return "Exchange Code: Iex (V)"
  end
  if value == "Z" then
    return "Exchange Code: Cboe (Z)"
  end
  if value == " " then
    return "Exchange Code: Otc Or Indexed Product (<whitespace>)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_arca_options_complexfeed_pillar_v1_0_d.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol = {}

-- Size: Symbol
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol.size = 11

-- Display: Symbol
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_message = {}

-- Calculate size of: Symbol Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.symbol.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_1.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.market_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.system_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.exchange_code.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.price_scale_code.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.security_type.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.lot_size.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_price.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_volume.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.price_resolution.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.round_lot.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_6.size

  return index
end

-- Display: Symbol Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: 4 Byte Unsigned Fixed Width Integer
  index, symbol_index = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index, symbol = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: 2 Byte Unsigned Fixed Width Integer
  index, market_id = nyse_arca_options_complexfeed_pillar_v1_0_d.market_id.dissect(buffer, index, packet, parent)

  -- System Id: 1 Byte Unsigned Fixed Width Integer
  index, system_id = nyse_arca_options_complexfeed_pillar_v1_0_d.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 8 values
  index, exchange_code = nyse_arca_options_complexfeed_pillar_v1_0_d.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_scale_code = nyse_arca_options_complexfeed_pillar_v1_0_d.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index, security_type = nyse_arca_options_complexfeed_pillar_v1_0_d.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index, lot_size = nyse_arca_options_complexfeed_pillar_v1_0_d.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_price = nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: 4 Byte Unsigned Fixed Width Integer
  index, prev_close_volume = nyse_arca_options_complexfeed_pillar_v1_0_d.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, price_resolution = nyse_arca_options_complexfeed_pillar_v1_0_d.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String Enum with 2 values
  index, round_lot = nyse_arca_options_complexfeed_pillar_v1_0_d.round_lot.dissect(buffer, index, packet, parent)

  -- Reserved 6: 6 Byte
  index, reserved_6 = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_6.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_index_mapping_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Id
nyse_arca_options_complexfeed_pillar_v1_0_d.id = {}

-- Size: Id
nyse_arca_options_complexfeed_pillar_v1_0_d.id.size = 4

-- Display: Id
nyse_arca_options_complexfeed_pillar_v1_0_d.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_arca_options_complexfeed_pillar_v1_0_d.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.id, range, value, display)

  return offset + length, value
end

-- Time Reference Message
nyse_arca_options_complexfeed_pillar_v1_0_d.time_reference_message = {}

-- Calculate size of: Time Reference Message
nyse_arca_options_complexfeed_pillar_v1_0_d.time_reference_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_4.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.size

  return index
end

-- Display: Time Reference Message
nyse_arca_options_complexfeed_pillar_v1_0_d.time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Reference Message
nyse_arca_options_complexfeed_pillar_v1_0_d.time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: 4 Byte Unsigned Fixed Width Integer
  index, id = nyse_arca_options_complexfeed_pillar_v1_0_d.id.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_arca_options_complexfeed_pillar_v1_0_d.reserved_4.dissect(buffer, index, packet, parent)

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Reference Message
nyse_arca_options_complexfeed_pillar_v1_0_d.time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.time_reference_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.time_reference_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number_reset_message = {}

-- Calculate size of: Sequence Number Reset Message
nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number_reset_message.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.size

  return index
end

-- Display: Sequence Number Reset Message
nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: 4 Byte Unsigned Fixed Width Integer
  index, source_time = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: 4 Byte Unsigned Fixed Width Integer
  index, source_time_ns = nyse_arca_options_complexfeed_pillar_v1_0_d.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: 1 Byte Unsigned Fixed Width Integer
  index, product_id = nyse_arca_options_complexfeed_pillar_v1_0_d.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: 1 Byte Unsigned Fixed Width Integer
  index, channel_id = nyse_arca_options_complexfeed_pillar_v1_0_d.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.sequence_number_reset_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_arca_options_complexfeed_pillar_v1_0_d.payload = {}

-- Calculate runtime size of: Payload
nyse_arca_options_complexfeed_pillar_v1_0_d.payload.size = function(buffer, offset, message_type)
  -- Size of Sequence Number Reset Message
  if message_type == 1 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number_reset_message.size(buffer, offset)
  end
  -- Size of Time Reference Message
  if message_type == 2 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.time_reference_message.size(buffer, offset)
  end
  -- Size of Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_message.size(buffer, offset)
  end
  -- Size of Retransmission Request Message
  if message_type == 10 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.retransmission_request_message.size(buffer, offset)
  end
  -- Size of Request Response Message
  if message_type == 11 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.request_response_message.size(buffer, offset)
  end
  -- Size of Heartbeat Response Message
  if message_type == 12 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.heartbeat_response_message.size(buffer, offset)
  end
  -- Size of Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_request_message.size(buffer, offset)
  end
  -- Size of Refresh Request Message
  if message_type == 15 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_request_message.size(buffer, offset)
  end
  -- Size of Message Unavailable Message
  if message_type == 31 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.message_unavailable_message.size(buffer, offset)
  end
  -- Size of Symbol Clear Message
  if message_type == 32 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_clear_message.size(buffer, offset)
  end
  -- Size of Security Status Message
  if message_type == 34 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.security_status_message.size(buffer, offset)
  end
  -- Size of Refresh Header Message
  if message_type == 35 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_header_message.size(buffer, offset)
  end
  -- Size of Outright Series Index Mapping Message
  if message_type == 50 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.outright_series_index_mapping_message.size(buffer, offset)
  end
  -- Size of Options Status Message
  if message_type == 51 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.options_status_message.size(buffer, offset)
  end
  -- Size of Complex Series Index Mapping Message
  if message_type == 60 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.complex_series_index_mapping_message.size(buffer, offset)
  end
  -- Size of Options Quote Message
  if message_type == 340 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.options_quote_message.size(buffer, offset)
  end
  -- Size of Options Trade Message
  if message_type == 320 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.options_trade_message.size(buffer, offset)
  end
  -- Size of Series Rfq Message
  if message_type == 307 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.series_rfq_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
nyse_arca_options_complexfeed_pillar_v1_0_d.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
nyse_arca_options_complexfeed_pillar_v1_0_d.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Time Reference Message
  if message_type == 2 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Outright Series Index Mapping Message
  if message_type == 50 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.outright_series_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Status Message
  if message_type == 51 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.options_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Complex Series Index Mapping Message
  if message_type == 60 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.complex_series_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Quote Message
  if message_type == 340 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.options_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Options Trade Message
  if message_type == 320 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.options_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Series Rfq Message
  if message_type == 307 then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.series_rfq_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
nyse_arca_options_complexfeed_pillar_v1_0_d.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return nyse_arca_options_complexfeed_pillar_v1_0_d.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = nyse_arca_options_complexfeed_pillar_v1_0_d.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.payload.display(buffer, packet, parent)
  local element = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.payload, range, display)

  return nyse_arca_options_complexfeed_pillar_v1_0_d.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
nyse_arca_options_complexfeed_pillar_v1_0_d.message_type = {}

-- Size: Message Type
nyse_arca_options_complexfeed_pillar_v1_0_d.message_type.size = 2

-- Display: Message Type
nyse_arca_options_complexfeed_pillar_v1_0_d.message_type.display = function(value)
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end
  if value == 2 then
    return "Message Type: Time Reference Message (2)"
  end
  if value == 3 then
    return "Message Type: Symbol Index Mapping Message (3)"
  end
  if value == 10 then
    return "Message Type: Retransmission Request Message (10)"
  end
  if value == 11 then
    return "Message Type: Request Response Message (11)"
  end
  if value == 12 then
    return "Message Type: Heartbeat Response Message (12)"
  end
  if value == 13 then
    return "Message Type: Symbol Index Mapping Request Message (13)"
  end
  if value == 15 then
    return "Message Type: Refresh Request Message (15)"
  end
  if value == 31 then
    return "Message Type: Message Unavailable Message (31)"
  end
  if value == 32 then
    return "Message Type: Symbol Clear Message (32)"
  end
  if value == 34 then
    return "Message Type: Security Status Message (34)"
  end
  if value == 35 then
    return "Message Type: Refresh Header Message (35)"
  end
  if value == 50 then
    return "Message Type: Outright Series Index Mapping Message (50)"
  end
  if value == 51 then
    return "Message Type: Options Status Message (51)"
  end
  if value == 60 then
    return "Message Type: Complex Series Index Mapping Message (60)"
  end
  if value == 340 then
    return "Message Type: Options Quote Message (340)"
  end
  if value == 320 then
    return "Message Type: Options Trade Message (320)"
  end
  if value == 307 then
    return "Message Type: Series Rfq Message (307)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_arca_options_complexfeed_pillar_v1_0_d.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_arca_options_complexfeed_pillar_v1_0_d.message_size = {}

-- Size: Message Size
nyse_arca_options_complexfeed_pillar_v1_0_d.message_size.size = 2

-- Display: Message Size
nyse_arca_options_complexfeed_pillar_v1_0_d.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_arca_options_complexfeed_pillar_v1_0_d.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Header
nyse_arca_options_complexfeed_pillar_v1_0_d.message_header = {}

-- Calculate size of: Message Header
nyse_arca_options_complexfeed_pillar_v1_0_d.message_header.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.message_size.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.message_type.size

  return index
end

-- Display: Message Header
nyse_arca_options_complexfeed_pillar_v1_0_d.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_arca_options_complexfeed_pillar_v1_0_d.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_arca_options_complexfeed_pillar_v1_0_d.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 18 values
  index, message_type = nyse_arca_options_complexfeed_pillar_v1_0_d.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_arca_options_complexfeed_pillar_v1_0_d.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message_header, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_arca_options_complexfeed_pillar_v1_0_d.message = {}

-- Display: Message
nyse_arca_options_complexfeed_pillar_v1_0_d.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_arca_options_complexfeed_pillar_v1_0_d.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_arca_options_complexfeed_pillar_v1_0_d.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 18 branches
  index = nyse_arca_options_complexfeed_pillar_v1_0_d.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_arca_options_complexfeed_pillar_v1_0_d.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message, buffer(offset, 0))
    local current = nyse_arca_options_complexfeed_pillar_v1_0_d.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_arca_options_complexfeed_pillar_v1_0_d.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Nanoseconds
nyse_arca_options_complexfeed_pillar_v1_0_d.nanoseconds = {}

-- Size: Nanoseconds
nyse_arca_options_complexfeed_pillar_v1_0_d.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_arca_options_complexfeed_pillar_v1_0_d.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_arca_options_complexfeed_pillar_v1_0_d.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_arca_options_complexfeed_pillar_v1_0_d.timestamp = {}

-- Size: Timestamp
nyse_arca_options_complexfeed_pillar_v1_0_d.timestamp.size = 4

-- Display: Timestamp
nyse_arca_options_complexfeed_pillar_v1_0_d.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_arca_options_complexfeed_pillar_v1_0_d.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number = {}

-- Size: Sequence Number
nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number.size = 4

-- Display: Sequence Number
nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_arca_options_complexfeed_pillar_v1_0_d.message_count = {}

-- Size: Message Count
nyse_arca_options_complexfeed_pillar_v1_0_d.message_count.size = 1

-- Display: Message Count
nyse_arca_options_complexfeed_pillar_v1_0_d.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_arca_options_complexfeed_pillar_v1_0_d.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.message_count, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_arca_options_complexfeed_pillar_v1_0_d.delivery_flag = {}

-- Size: Delivery Flag
nyse_arca_options_complexfeed_pillar_v1_0_d.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_arca_options_complexfeed_pillar_v1_0_d.delivery_flag.display = function(value)
  if value == 1 then
    return "Delivery Flag: Heartbeat (1)"
  end
  if value == 10 then
    return "Delivery Flag: Pillar Failover (10)"
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
nyse_arca_options_complexfeed_pillar_v1_0_d.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_arca_options_complexfeed_pillar_v1_0_d.packet_size = {}

-- Size: Packet Size
nyse_arca_options_complexfeed_pillar_v1_0_d.packet_size.size = 2

-- Display: Packet Size
nyse_arca_options_complexfeed_pillar_v1_0_d.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_arca_options_complexfeed_pillar_v1_0_d.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_arca_options_complexfeed_pillar_v1_0_d.packet_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_arca_options_complexfeed_pillar_v1_0_d.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Packet Header
nyse_arca_options_complexfeed_pillar_v1_0_d.packet_header = {}

-- Calculate size of: Packet Header
nyse_arca_options_complexfeed_pillar_v1_0_d.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.packet_size.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.delivery_flag.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.message_count.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.timestamp.size

  index = index + nyse_arca_options_complexfeed_pillar_v1_0_d.nanoseconds.size

  return index
end

-- Display: Packet Header
nyse_arca_options_complexfeed_pillar_v1_0_d.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_arca_options_complexfeed_pillar_v1_0_d.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_arca_options_complexfeed_pillar_v1_0_d.packet_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_arca_options_complexfeed_pillar_v1_0_d.delivery_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_arca_options_complexfeed_pillar_v1_0_d.message_count.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_arca_options_complexfeed_pillar_v1_0_d.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_arca_options_complexfeed_pillar_v1_0_d.timestamp.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_arca_options_complexfeed_pillar_v1_0_d.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_arca_options_complexfeed_pillar_v1_0_d.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d.fields.packet_header, buffer(offset, 0))
    local index = nyse_arca_options_complexfeed_pillar_v1_0_d.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_arca_options_complexfeed_pillar_v1_0_d.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_arca_options_complexfeed_pillar_v1_0_d.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_arca_options_complexfeed_pillar_v1_0_d.packet = {}

-- Dissect Packet
nyse_arca_options_complexfeed_pillar_v1_0_d.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_arca_options_complexfeed_pillar_v1_0_d.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_arca_options_complexfeed_pillar_v1_0_d.message.dissect(buffer, index, packet, parent, message_size)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_arca_options_complexfeed_pillar_v1_0_d.init()
end

-- Dissector for Nyse Arca Options ComplexFeed Pillar 1.0.d
function omi_nyse_arca_options_complexfeed_pillar_v1_0_d.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_arca_options_complexfeed_pillar_v1_0_d.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_arca_options_complexfeed_pillar_v1_0_d, buffer(), omi_nyse_arca_options_complexfeed_pillar_v1_0_d.description, "("..buffer:len().." Bytes)")
  return nyse_arca_options_complexfeed_pillar_v1_0_d.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_arca_options_complexfeed_pillar_v1_0_d)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_nyse_arca_options_complexfeed_pillar_v1_0_d_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Arca Options ComplexFeed Pillar 1.0.d
local function omi_nyse_arca_options_complexfeed_pillar_v1_0_d_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_nyse_arca_options_complexfeed_pillar_v1_0_d_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_arca_options_complexfeed_pillar_v1_0_d
  omi_nyse_arca_options_complexfeed_pillar_v1_0_d.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Arca Options ComplexFeed Pillar 1.0.d
omi_nyse_arca_options_complexfeed_pillar_v1_0_d:register_heuristic("udp", omi_nyse_arca_options_complexfeed_pillar_v1_0_d_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 1.0.d
--   Date: Monday, March 21, 2022
--   Specification: Pillar_Complex_Client_Specification.pdf
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
