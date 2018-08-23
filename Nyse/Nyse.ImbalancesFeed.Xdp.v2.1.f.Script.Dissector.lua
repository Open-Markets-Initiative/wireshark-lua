-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse ImbalancesFeed Xdp 2.1.f Protocol
local nyse_imbalancesfeed_xdp_v2_1_f = Proto("Nyse.ImbalancesFeed.Xdp.v2.1.f.Lua", "Nyse ImbalancesFeed Xdp 2.1.f")

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

-- Nyse ImbalancesFeed Xdp 2.1.f Fields
nyse_imbalancesfeed_xdp_v2_1_f.fields.auctionstatus = ProtoField.new("AuctionStatus", "nyse.imbalancesfeed.xdp.v2.1.f.auctionstatus", ftypes.UINT8)
nyse_imbalancesfeed_xdp_v2_1_f.fields.auctiontime = ProtoField.new("AuctionTime", "nyse.imbalancesfeed.xdp.v2.1.f.auctiontime", ftypes.UINT16)
nyse_imbalancesfeed_xdp_v2_1_f.fields.auctiontype = ProtoField.new("AuctionType", "nyse.imbalancesfeed.xdp.v2.1.f.auctiontype", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.beginseqnum = ProtoField.new("BeginSeqNum", "nyse.imbalancesfeed.xdp.v2.1.f.beginseqnum", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.channelid = ProtoField.new("ChannelID", "nyse.imbalancesfeed.xdp.v2.1.f.channelid", ftypes.UINT8)
nyse_imbalancesfeed_xdp_v2_1_f.fields.closingonlyclearingprice = ProtoField.new("ClosingOnlyClearingPrice", "nyse.imbalancesfeed.xdp.v2.1.f.closingonlyclearingprice", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.continuousbookclearingprice = ProtoField.new("ContinuousBookClearingPrice", "nyse.imbalancesfeed.xdp.v2.1.f.continuousbookclearingprice", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.currentrefreshpkt = ProtoField.new("CurrentRefreshPkt", "nyse.imbalancesfeed.xdp.v2.1.f.currentrefreshpkt", ftypes.UINT16)
nyse_imbalancesfeed_xdp_v2_1_f.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.imbalancesfeed.xdp.v2.1.f.deliveryflag", ftypes.UINT8)
nyse_imbalancesfeed_xdp_v2_1_f.fields.endseqnum = ProtoField.new("EndSeqNum", "nyse.imbalancesfeed.xdp.v2.1.f.endseqnum", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.imbalancesfeed.xdp.v2.1.f.exchangecode", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.freezestatus = ProtoField.new("FreezeStatus", "nyse.imbalancesfeed.xdp.v2.1.f.freezestatus", ftypes.UINT8)
nyse_imbalancesfeed_xdp_v2_1_f.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.imbalancesfeed.xdp.v2.1.f.haltcondition", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.imbalancesfeed.xdp.v2.1.f.heartbeatresponsemessage", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.imbalancesfeed.xdp.v2.1.f.imbalancemessage", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.imbalanceside = ProtoField.new("ImbalanceSide", "nyse.imbalancesfeed.xdp.v2.1.f.imbalanceside", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.indicativematchprice = ProtoField.new("IndicativeMatchPrice", "nyse.imbalancesfeed.xdp.v2.1.f.indicativematchprice", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.lastseqnum = ProtoField.new("LastSeqNum", "nyse.imbalancesfeed.xdp.v2.1.f.lastseqnum", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.lastsymbolseqnum = ProtoField.new("LastSymbolSeqNum", "nyse.imbalancesfeed.xdp.v2.1.f.lastsymbolseqnum", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.lot_size = ProtoField.new("Lot Size", "nyse.imbalancesfeed.xdp.v2.1.f.lotsize", ftypes.UINT16)
nyse_imbalancesfeed_xdp_v2_1_f.fields.lowercollar = ProtoField.new("LowerCollar", "nyse.imbalancesfeed.xdp.v2.1.f.lowercollar", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.market_id = ProtoField.new("Market ID", "nyse.imbalancesfeed.xdp.v2.1.f.marketid", ftypes.UINT16)
nyse_imbalancesfeed_xdp_v2_1_f.fields.marketimbalanceqty = ProtoField.new("MarketImbalanceQty", "nyse.imbalancesfeed.xdp.v2.1.f.marketimbalanceqty", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.marketstate = ProtoField.new("MarketState", "nyse.imbalancesfeed.xdp.v2.1.f.marketstate", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.message = ProtoField.new("Message", "nyse.imbalancesfeed.xdp.v2.1.f.message", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.message_count = ProtoField.new("Message Count", "nyse.imbalancesfeed.xdp.v2.1.f.messagecount", ftypes.UINT8)
nyse_imbalancesfeed_xdp_v2_1_f.fields.message_header = ProtoField.new("Message Header", "nyse.imbalancesfeed.xdp.v2.1.f.messageheader", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.message_size = ProtoField.new("Message Size", "nyse.imbalancesfeed.xdp.v2.1.f.messagesize", ftypes.UINT16)
nyse_imbalancesfeed_xdp_v2_1_f.fields.message_type = ProtoField.new("Message Type", "nyse.imbalancesfeed.xdp.v2.1.f.messagetype", ftypes.UINT16)
nyse_imbalancesfeed_xdp_v2_1_f.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.imbalancesfeed.xdp.v2.1.f.messageunavailablemessage", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.mpv = ProtoField.new("MPV", "nyse.imbalancesfeed.xdp.v2.1.f.mpv", ftypes.UINT16)
nyse_imbalancesfeed_xdp_v2_1_f.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.imbalancesfeed.xdp.v2.1.f.nanoseconds", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.nextsourceseqnum = ProtoField.new("NextSourceSeqNum", "nyse.imbalancesfeed.xdp.v2.1.f.nextsourceseqnum", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.numextensions = ProtoField.new("NumExtensions", "nyse.imbalancesfeed.xdp.v2.1.f.numextensions", ftypes.UINT8)
nyse_imbalancesfeed_xdp_v2_1_f.fields.packet = ProtoField.new("Packet", "nyse.imbalancesfeed.xdp.v2.1.f.packet", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.packet_header = ProtoField.new("Packet Header", "nyse.imbalancesfeed.xdp.v2.1.f.packetheader", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.packet_size = ProtoField.new("Packet Size", "nyse.imbalancesfeed.xdp.v2.1.f.packetsize", ftypes.UINT16)
nyse_imbalancesfeed_xdp_v2_1_f.fields.pairedqty = ProtoField.new("PairedQty", "nyse.imbalancesfeed.xdp.v2.1.f.pairedqty", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.payload = ProtoField.new("Payload", "nyse.imbalancesfeed.xdp.v2.1.f.payload", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.prevcloseprice = ProtoField.new("PrevClosePrice", "nyse.imbalancesfeed.xdp.v2.1.f.prevcloseprice", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.prevclosevolume = ProtoField.new("PrevCloseVolume", "nyse.imbalancesfeed.xdp.v2.1.f.prevclosevolume", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.price_1 = ProtoField.new("Price 1", "nyse.imbalancesfeed.xdp.v2.1.f.price1", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.price_2 = ProtoField.new("Price 2", "nyse.imbalancesfeed.xdp.v2.1.f.price2", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.imbalancesfeed.xdp.v2.1.f.priceresolution", ftypes.UINT8)
nyse_imbalancesfeed_xdp_v2_1_f.fields.pricescalecode = ProtoField.new("PriceScaleCode", "nyse.imbalancesfeed.xdp.v2.1.f.pricescalecode", ftypes.UINT8)
nyse_imbalancesfeed_xdp_v2_1_f.fields.productid = ProtoField.new("ProductID", "nyse.imbalancesfeed.xdp.v2.1.f.productid", ftypes.UINT8)
nyse_imbalancesfeed_xdp_v2_1_f.fields.referenceprice = ProtoField.new("ReferencePrice", "nyse.imbalancesfeed.xdp.v2.1.f.referenceprice", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.imbalancesfeed.xdp.v2.1.f.refreshheadermessage", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.imbalancesfeed.xdp.v2.1.f.refreshrequestmessage", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.imbalancesfeed.xdp.v2.1.f.requestresponsemessage", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.requestseqnum = ProtoField.new("RequestSeqNum", "nyse.imbalancesfeed.xdp.v2.1.f.requestseqnum", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.reserved1 = ProtoField.new("Reserved1", "nyse.imbalancesfeed.xdp.v2.1.f.reserved1", ftypes.BYTES)
nyse_imbalancesfeed_xdp_v2_1_f.fields.reserved2 = ProtoField.new("Reserved2", "nyse.imbalancesfeed.xdp.v2.1.f.reserved2", ftypes.BYTES)
nyse_imbalancesfeed_xdp_v2_1_f.fields.reserved4 = ProtoField.new("Reserved4", "nyse.imbalancesfeed.xdp.v2.1.f.reserved4", ftypes.BYTES)
nyse_imbalancesfeed_xdp_v2_1_f.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.imbalancesfeed.xdp.v2.1.f.retransmissionrequestmessage", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.retransmitmethod = ProtoField.new("RetransmitMethod", "nyse.imbalancesfeed.xdp.v2.1.f.retransmitmethod", ftypes.UINT8)
nyse_imbalancesfeed_xdp_v2_1_f.fields.round_lot = ProtoField.new("Round Lot", "nyse.imbalancesfeed.xdp.v2.1.f.roundlot", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.security_status = ProtoField.new("Security Status", "nyse.imbalancesfeed.xdp.v2.1.f.securitystatus", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.imbalancesfeed.xdp.v2.1.f.securitystatusmessage", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.security_type = ProtoField.new("Security Type", "nyse.imbalancesfeed.xdp.v2.1.f.securitytype", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.imbalancesfeed.xdp.v2.1.f.sequencenumber", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.imbalancesfeed.xdp.v2.1.f.sequencenumberresetmessage", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.sessionstate = ProtoField.new("SessionState", "nyse.imbalancesfeed.xdp.v2.1.f.sessionstate", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.sourceid = ProtoField.new("SourceID", "nyse.imbalancesfeed.xdp.v2.1.f.sourceid", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.sourcetime = ProtoField.new("SourceTime", "nyse.imbalancesfeed.xdp.v2.1.f.sourcetime", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.sourcetimens = ProtoField.new("SourceTimeNS", "nyse.imbalancesfeed.xdp.v2.1.f.sourcetimens", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.ssr_triggering_exchange_id = ProtoField.new("SSR Triggering Exchange ID", "nyse.imbalancesfeed.xdp.v2.1.f.ssrtriggeringexchangeid", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.ssr_triggering_volume = ProtoField.new("SSR Triggering Volume", "nyse.imbalancesfeed.xdp.v2.1.f.ssrtriggeringvolume", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.ssrfilingprice = ProtoField.new("SSRFilingPrice", "nyse.imbalancesfeed.xdp.v2.1.f.ssrfilingprice", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.ssrstate = ProtoField.new("SSRState", "nyse.imbalancesfeed.xdp.v2.1.f.ssrstate", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.status = ProtoField.new("Status", "nyse.imbalancesfeed.xdp.v2.1.f.status", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.symbol = ProtoField.new("Symbol", "nyse.imbalancesfeed.xdp.v2.1.f.symbol", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.imbalancesfeed.xdp.v2.1.f.symbolclearmessage", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.imbalancesfeed.xdp.v2.1.f.symbolindexmappingmessage", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.imbalancesfeed.xdp.v2.1.f.symbolindexmappingrequestmessage", ftypes.STRING)
nyse_imbalancesfeed_xdp_v2_1_f.fields.symbolindex = ProtoField.new("SymbolIndex", "nyse.imbalancesfeed.xdp.v2.1.f.symbolindex", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.symbolseqnum = ProtoField.new("SymbolSeqNum", "nyse.imbalancesfeed.xdp.v2.1.f.symbolseqnum", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.system_id = ProtoField.new("System ID", "nyse.imbalancesfeed.xdp.v2.1.f.systemid", ftypes.UINT8)
nyse_imbalancesfeed_xdp_v2_1_f.fields.time = ProtoField.new("Time", "nyse.imbalancesfeed.xdp.v2.1.f.time", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.timestamp = ProtoField.new("Timestamp", "nyse.imbalancesfeed.xdp.v2.1.f.timestamp", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.totalimbalanceqty = ProtoField.new("TotalImbalanceQty", "nyse.imbalancesfeed.xdp.v2.1.f.totalimbalanceqty", ftypes.UINT32)
nyse_imbalancesfeed_xdp_v2_1_f.fields.totalrefreshpkts = ProtoField.new("TotalRefreshPkts", "nyse.imbalancesfeed.xdp.v2.1.f.totalrefreshpkts", ftypes.UINT16)
nyse_imbalancesfeed_xdp_v2_1_f.fields.unit_of_trade = ProtoField.new("Unit of Trade", "nyse.imbalancesfeed.xdp.v2.1.f.unitoftrade", ftypes.UINT16)
nyse_imbalancesfeed_xdp_v2_1_f.fields.uppercollar = ProtoField.new("UpperCollar", "nyse.imbalancesfeed.xdp.v2.1.f.uppercollar", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse ImbalancesFeed Xdp 2.1.f Element Dissection Options
show.heartbeat_response_message = true
show.imbalance_message = true
show.message = true
show.message_header = true
show.message_unavailable_message = true
show.packet = true
show.packet_header = true
show.refresh_header_message = true
show.refresh_request_message = true
show.request_response_message = true
show.retransmission_request_message = true
show.security_status_message = true
show.sequence_number_reset_message = true
show.symbol_clear_message = true
show.symbol_index_mapping_message = true
show.symbol_index_mapping_request_message = true
show.payload = false

-- Register Nyse ImbalancesFeed Xdp 2.1.f Show Options
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_heartbeat_response_message = Pref.bool("Show Heartbeat Response Message", show.heartbeat_response_message, "Parse and add Heartbeat Response Message to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_imbalance_message = Pref.bool("Show Imbalance Message", show.imbalance_message, "Parse and add Imbalance Message to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_message_unavailable_message = Pref.bool("Show Message Unavailable Message", show.message_unavailable_message, "Parse and add Message Unavailable Message to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_refresh_header_message = Pref.bool("Show Refresh Header Message", show.refresh_header_message, "Parse and add Refresh Header Message to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_refresh_request_message = Pref.bool("Show Refresh Request Message", show.refresh_request_message, "Parse and add Refresh Request Message to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_request_response_message = Pref.bool("Show Request Response Message", show.request_response_message, "Parse and add Request Response Message to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_retransmission_request_message = Pref.bool("Show Retransmission Request Message", show.retransmission_request_message, "Parse and add Retransmission Request Message to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_security_status_message = Pref.bool("Show Security Status Message", show.security_status_message, "Parse and add Security Status Message to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_sequence_number_reset_message = Pref.bool("Show Sequence Number Reset Message", show.sequence_number_reset_message, "Parse and add Sequence Number Reset Message to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_clear_message = Pref.bool("Show Symbol Clear Message", show.symbol_clear_message, "Parse and add Symbol Clear Message to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_index_mapping_message = Pref.bool("Show Symbol Index Mapping Message", show.symbol_index_mapping_message, "Parse and add Symbol Index Mapping Message to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_index_mapping_request_message = Pref.bool("Show Symbol Index Mapping Request Message", show.symbol_index_mapping_request_message, "Parse and add Symbol Index Mapping Request Message to protocol tree")
nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function nyse_imbalancesfeed_xdp_v2_1_f.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.heartbeat_response_message ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_heartbeat_response_message then
    show.heartbeat_response_message = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_heartbeat_response_message
    changed = true
  end
  if show.imbalance_message ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_imbalance_message then
    show.imbalance_message = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_imbalance_message
    changed = true
  end
  if show.message ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_message then
    show.message = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_message
    changed = true
  end
  if show.message_header ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_message_header then
    show.message_header = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_message_header
    changed = true
  end
  if show.message_unavailable_message ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_message_unavailable_message then
    show.message_unavailable_message = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_message_unavailable_message
    changed = true
  end
  if show.packet ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_packet then
    show.packet = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_packet_header then
    show.packet_header = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_packet_header
    changed = true
  end
  if show.refresh_header_message ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_refresh_header_message then
    show.refresh_header_message = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_refresh_header_message
    changed = true
  end
  if show.refresh_request_message ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_refresh_request_message then
    show.refresh_request_message = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_refresh_request_message
    changed = true
  end
  if show.request_response_message ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_request_response_message then
    show.request_response_message = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_request_response_message
    changed = true
  end
  if show.retransmission_request_message ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_retransmission_request_message then
    show.retransmission_request_message = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_retransmission_request_message
    changed = true
  end
  if show.security_status_message ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_security_status_message then
    show.security_status_message = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_security_status_message
    changed = true
  end
  if show.sequence_number_reset_message ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_sequence_number_reset_message then
    show.sequence_number_reset_message = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_sequence_number_reset_message
    changed = true
  end
  if show.symbol_clear_message ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_clear_message then
    show.symbol_clear_message = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_clear_message
    changed = true
  end
  if show.symbol_index_mapping_message ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_index_mapping_message then
    show.symbol_index_mapping_message = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_index_mapping_message
    changed = true
  end
  if show.symbol_index_mapping_request_message ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_index_mapping_request_message then
    show.symbol_index_mapping_request_message = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_symbol_index_mapping_request_message
    changed = true
  end
  if show.payload ~= nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_payload then
    show.payload = nyse_imbalancesfeed_xdp_v2_1_f.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Nyse ImbalancesFeed Xdp 2.1.f
-----------------------------------------------------------------------

-- Size: NumExtensions
size_of.numextensions = 1

-- Display: NumExtensions
display.numextensions = function(value)
  return "NumExtensions: "..value
end

-- Dissect: NumExtensions
dissect.numextensions = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.numextensions)
  local value = range:le_uint()
  local display = display.numextensions(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.numextensions, range, value, display)

  return offset + size_of.numextensions
end

-- Size: FreezeStatus
size_of.freezestatus = 1

-- Display: FreezeStatus
display.freezestatus = function(value)
  if value == 0 then
    return "FreezeStatus: No imbalance freeze (0)"
  end
  if value == 1 then
    return "FreezeStatus: Imbalance freeze (1)"
  end

  return "FreezeStatus: Unknown("..value..")"
end

-- Dissect: FreezeStatus
dissect.freezestatus = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.freezestatus)
  local value = range:le_uint()
  local display = display.freezestatus(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.freezestatus, range, value, display)

  return offset + size_of.freezestatus
end

-- Size: AuctionStatus
size_of.auctionstatus = 1

-- Display: AuctionStatus
display.auctionstatus = function(value)
  if value == 0 then
    return "AuctionStatus: Will run OpenClose (0)"
  end
  if value == 1 then
    return "AuctionStatus: Will run Interest (1)"
  end
  if value == 2 then
    return "AuctionStatus: Will not run Imbalance (2)"
  end
  if value == 3 then
    return "AuctionStatus: Will not run transition to Closing (3)"
  end

  return "AuctionStatus: Unknown("..value..")"
end

-- Dissect: AuctionStatus
dissect.auctionstatus = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auctionstatus)
  local value = range:le_uint()
  local display = display.auctionstatus(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.auctionstatus, range, value, display)

  return offset + size_of.auctionstatus
end

-- Size: LowerCollar
size_of.lowercollar = 4

-- Display: LowerCollar
display.lowercollar = function(value)
  return "LowerCollar: "..value
end

-- Dissect: LowerCollar
dissect.lowercollar = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.lowercollar)
  local value = range:le_uint()
  local display = display.lowercollar(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.lowercollar, range, value, display)

  return offset + size_of.lowercollar
end

-- Size: UpperCollar
size_of.uppercollar = 4

-- Display: UpperCollar
display.uppercollar = function(value)
  return "UpperCollar: "..value
end

-- Dissect: UpperCollar
dissect.uppercollar = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.uppercollar)
  local value = range:le_uint()
  local display = display.uppercollar(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.uppercollar, range, value, display)

  return offset + size_of.uppercollar
end

-- Size: IndicativeMatchPrice
size_of.indicativematchprice = 4

-- Display: IndicativeMatchPrice
display.indicativematchprice = function(value)
  return "IndicativeMatchPrice: "..value
end

-- Dissect: IndicativeMatchPrice
dissect.indicativematchprice = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.indicativematchprice)
  local value = range:le_uint()
  local display = display.indicativematchprice(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.indicativematchprice, range, value, display)

  return offset + size_of.indicativematchprice
end

-- Size: SSRFilingPrice
size_of.ssrfilingprice = 4

-- Display: SSRFilingPrice
display.ssrfilingprice = function(value)
  return "SSRFilingPrice: "..value
end

-- Dissect: SSRFilingPrice
dissect.ssrfilingprice = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ssrfilingprice)
  local value = range:le_uint()
  local display = display.ssrfilingprice(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.ssrfilingprice, range, value, display)

  return offset + size_of.ssrfilingprice
end

-- Size: ClosingOnlyClearingPrice
size_of.closingonlyclearingprice = 4

-- Display: ClosingOnlyClearingPrice
display.closingonlyclearingprice = function(value)
  return "ClosingOnlyClearingPrice: "..value
end

-- Dissect: ClosingOnlyClearingPrice
dissect.closingonlyclearingprice = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.closingonlyclearingprice)
  local value = range:le_uint()
  local display = display.closingonlyclearingprice(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.closingonlyclearingprice, range, value, display)

  return offset + size_of.closingonlyclearingprice
end

-- Size: ContinuousBookClearingPrice
size_of.continuousbookclearingprice = 4

-- Display: ContinuousBookClearingPrice
display.continuousbookclearingprice = function(value)
  return "ContinuousBookClearingPrice: "..value
end

-- Dissect: ContinuousBookClearingPrice
dissect.continuousbookclearingprice = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.continuousbookclearingprice)
  local value = range:le_uint()
  local display = display.continuousbookclearingprice(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.continuousbookclearingprice, range, value, display)

  return offset + size_of.continuousbookclearingprice
end

-- Size: ImbalanceSide
size_of.imbalanceside = 1

-- Display: ImbalanceSide
display.imbalanceside = function(value)
  if value == " " then
    return "ImbalanceSide: No imbalance (<whitespace>)"
  end
  if value == "B" then
    return "ImbalanceSide: Buy side (B)"
  end
  if value == "S" then
    return "ImbalanceSide: Sell side (S)"
  end

  return "ImbalanceSide: Unknown("..value..")"
end

-- Dissect: ImbalanceSide
dissect.imbalanceside = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.imbalanceside)
  local value = range:string()
  local display = display.imbalanceside(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.imbalanceside, range, value, display)

  return offset + size_of.imbalanceside
end

-- Size: AuctionType
size_of.auctiontype = 1

-- Display: AuctionType
display.auctiontype = function(value)
  if value == "O" then
    return "AuctionType: Early Opening (O)"
  end
  if value == "M" then
    return "AuctionType: Core Opening (M)"
  end
  if value == "H" then
    return "AuctionType: Reopening (H)"
  end
  if value == "C" then
    return "AuctionType: Closing (C)"
  end
  if value == "R" then
    return "AuctionType: Regulatory Imbalance (R)"
  end

  return "AuctionType: Unknown("..value..")"
end

-- Dissect: AuctionType
dissect.auctiontype = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auctiontype)
  local value = range:string()
  local display = display.auctiontype(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.auctiontype, range, value, display)

  return offset + size_of.auctiontype
end

-- Size: AuctionTime
size_of.auctiontime = 2

-- Display: AuctionTime
display.auctiontime = function(value)
  return "AuctionTime: "..value
end

-- Dissect: AuctionTime
dissect.auctiontime = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.auctiontime)
  local value = range:le_uint()
  local display = display.auctiontime(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.auctiontime, range, value, display)

  return offset + size_of.auctiontime
end

-- Size: MarketImbalanceQty
size_of.marketimbalanceqty = 4

-- Display: MarketImbalanceQty
display.marketimbalanceqty = function(value)
  return "MarketImbalanceQty: "..value
end

-- Dissect: MarketImbalanceQty
dissect.marketimbalanceqty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.marketimbalanceqty)
  local value = range:le_uint()
  local display = display.marketimbalanceqty(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.marketimbalanceqty, range, value, display)

  return offset + size_of.marketimbalanceqty
end

-- Size: TotalImbalanceQty
size_of.totalimbalanceqty = 4

-- Display: TotalImbalanceQty
display.totalimbalanceqty = function(value)
  return "TotalImbalanceQty: "..value
end

-- Dissect: TotalImbalanceQty
dissect.totalimbalanceqty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.totalimbalanceqty)
  local value = range:le_uint()
  local display = display.totalimbalanceqty(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.totalimbalanceqty, range, value, display)

  return offset + size_of.totalimbalanceqty
end

-- Size: PairedQty
size_of.pairedqty = 4

-- Display: PairedQty
display.pairedqty = function(value)
  return "PairedQty: "..value
end

-- Dissect: PairedQty
dissect.pairedqty = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.pairedqty)
  local value = range:le_uint()
  local display = display.pairedqty(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.pairedqty, range, value, display)

  return offset + size_of.pairedqty
end

-- Size: ReferencePrice
size_of.referenceprice = 4

-- Display: ReferencePrice
display.referenceprice = function(value)
  return "ReferencePrice: "..value
end

-- Dissect: ReferencePrice
dissect.referenceprice = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.referenceprice)
  local value = range:le_uint()
  local display = display.referenceprice(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.referenceprice, range, value, display)

  return offset + size_of.referenceprice
end

-- Size: SymbolSeqNum
size_of.symbolseqnum = 4

-- Display: SymbolSeqNum
display.symbolseqnum = function(value)
  return "SymbolSeqNum: "..value
end

-- Dissect: SymbolSeqNum
dissect.symbolseqnum = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbolseqnum)
  local value = range:le_uint()
  local display = display.symbolseqnum(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.symbolseqnum, range, value, display)

  return offset + size_of.symbolseqnum
end

-- Size: SymbolIndex
size_of.symbolindex = 4

-- Display: SymbolIndex
display.symbolindex = function(value)
  return "SymbolIndex: "..value
end

-- Dissect: SymbolIndex
dissect.symbolindex = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbolindex)
  local value = range:le_uint()
  local display = display.symbolindex(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.symbolindex, range, value, display)

  return offset + size_of.symbolindex
end

-- Size: SourceTimeNS
size_of.sourcetimens = 4

-- Display: SourceTimeNS
display.sourcetimens = function(value)
  return "SourceTimeNS: "..value
end

-- Dissect: SourceTimeNS
dissect.sourcetimens = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sourcetimens)
  local value = range:le_uint()
  local display = display.sourcetimens(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.sourcetimens, range, value, display)

  return offset + size_of.sourcetimens
end

-- Size: SourceTime
size_of.sourcetime = 4

-- Display: SourceTime
display.sourcetime = function(value)
  return "SourceTime: "..value
end

-- Dissect: SourceTime
dissect.sourcetime = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sourcetime)
  local value = range:le_uint()
  local display = display.sourcetime(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.sourcetime, range, value, display)

  return offset + size_of.sourcetime
end

-- Display: Imbalance Message
display.imbalance_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Imbalance Message
dissect.imbalance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTime: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetime(buffer, index, packet, parent)

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- ReferencePrice: 4 Byte Unsigned Fixed Width Integer
  index = dissect.referenceprice(buffer, index, packet, parent)

  -- PairedQty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.pairedqty(buffer, index, packet, parent)

  -- TotalImbalanceQty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.totalimbalanceqty(buffer, index, packet, parent)

  -- MarketImbalanceQty: 4 Byte Unsigned Fixed Width Integer
  index = dissect.marketimbalanceqty(buffer, index, packet, parent)

  -- AuctionTime: 2 Byte Unsigned Fixed Width Integer
  index = dissect.auctiontime(buffer, index, packet, parent)

  -- AuctionType: 1 Byte Ascii String Enum with 5 values
  index = dissect.auctiontype(buffer, index, packet, parent)

  -- ImbalanceSide: 1 Byte Ascii String Enum with 3 values
  index = dissect.imbalanceside(buffer, index, packet, parent)

  -- ContinuousBookClearingPrice: 4 Byte Unsigned Fixed Width Integer
  index = dissect.continuousbookclearingprice(buffer, index, packet, parent)

  -- ClosingOnlyClearingPrice: 4 Byte Unsigned Fixed Width Integer
  index = dissect.closingonlyclearingprice(buffer, index, packet, parent)

  -- SSRFilingPrice: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ssrfilingprice(buffer, index, packet, parent)

  -- IndicativeMatchPrice: 4 Byte Unsigned Fixed Width Integer
  index = dissect.indicativematchprice(buffer, index, packet, parent)

  -- UpperCollar: 4 Byte Unsigned Fixed Width Integer
  index = dissect.uppercollar(buffer, index, packet, parent)

  -- LowerCollar: 4 Byte Unsigned Fixed Width Integer
  index = dissect.lowercollar(buffer, index, packet, parent)

  -- AuctionStatus: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index = dissect.auctionstatus(buffer, index, packet, parent)

  -- FreezeStatus: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.freezestatus(buffer, index, packet, parent)

  -- NumExtensions: 1 Byte Unsigned Fixed Width Integer
  index = dissect.numextensions(buffer, index, packet, parent)

  return index
end

-- Dissect: Imbalance Message
dissect.imbalance_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.imbalance_message then
    local range = buffer(offset, 63)
    local display = display.imbalance_message(buffer, packet, parent)
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.imbalance_message, range, display)
  end

  return dissect.imbalance_message_fields(buffer, offset, packet, parent)
end

-- Size: LastSymbolSeqNum
size_of.lastsymbolseqnum = 4

-- Display: LastSymbolSeqNum
display.lastsymbolseqnum = function(value)
  return "LastSymbolSeqNum: "..value
end

-- Dissect: LastSymbolSeqNum
dissect.lastsymbolseqnum = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.lastsymbolseqnum)
  local value = range:le_uint()
  local display = display.lastsymbolseqnum(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.lastsymbolseqnum, range, value, display)

  return offset + size_of.lastsymbolseqnum
end

-- Size: LastSeqNum
size_of.lastseqnum = 4

-- Display: LastSeqNum
display.lastseqnum = function(value)
  return "LastSeqNum: "..value
end

-- Dissect: LastSeqNum
dissect.lastseqnum = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.lastseqnum)
  local value = range:le_uint()
  local display = display.lastseqnum(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.lastseqnum, range, value, display)

  return offset + size_of.lastseqnum
end

-- Size: TotalRefreshPkts
size_of.totalrefreshpkts = 2

-- Display: TotalRefreshPkts
display.totalrefreshpkts = function(value)
  return "TotalRefreshPkts: "..value
end

-- Dissect: TotalRefreshPkts
dissect.totalrefreshpkts = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.totalrefreshpkts)
  local value = range:le_uint()
  local display = display.totalrefreshpkts(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.totalrefreshpkts, range, value, display)

  return offset + size_of.totalrefreshpkts
end

-- Size: CurrentRefreshPkt
size_of.currentrefreshpkt = 2

-- Display: CurrentRefreshPkt
display.currentrefreshpkt = function(value)
  return "CurrentRefreshPkt: "..value
end

-- Dissect: CurrentRefreshPkt
dissect.currentrefreshpkt = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.currentrefreshpkt)
  local value = range:le_uint()
  local display = display.currentrefreshpkt(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.currentrefreshpkt, range, value, display)

  return offset + size_of.currentrefreshpkt
end

-- Display: Refresh Header Message
display.refresh_header_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Header Message
dissect.refresh_header_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- CurrentRefreshPkt: 2 Byte Unsigned Fixed Width Integer
  index = dissect.currentrefreshpkt(buffer, index, packet, parent)

  -- TotalRefreshPkts: 2 Byte Unsigned Fixed Width Integer
  index = dissect.totalrefreshpkts(buffer, index, packet, parent)

  -- LastSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.lastseqnum(buffer, index, packet, parent)

  -- LastSymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.lastsymbolseqnum(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
dissect.refresh_header_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_header_message then
    local range = buffer(offset, 12)
    local display = display.refresh_header_message(buffer, packet, parent)
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.refresh_header_message, range, display)
  end

  return dissect.refresh_header_message_fields(buffer, offset, packet, parent)
end

-- Size: SessionState
size_of.sessionstate = 1

-- Display: SessionState
display.sessionstate = function(value)
  return "SessionState: "..value
end

-- Dissect: SessionState
dissect.sessionstate = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sessionstate)
  local value = range:string()
  local display = display.sessionstate(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.sessionstate, range, value, display)

  return offset + size_of.sessionstate
end

-- Size: MarketState
size_of.marketstate = 1

-- Display: MarketState
display.marketstate = function(value)
  return "MarketState: "..value
end

-- Dissect: MarketState
dissect.marketstate = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.marketstate)
  local value = range:string()
  local display = display.marketstate(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.marketstate, range, value, display)

  return offset + size_of.marketstate
end

-- Size: SSRState
size_of.ssrstate = 1

-- Display: SSRState
display.ssrstate = function(value)
  return "SSRState: "..value
end

-- Dissect: SSRState
dissect.ssrstate = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ssrstate)
  local value = range:string()
  local display = display.ssrstate(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.ssrstate, range, value, display)

  return offset + size_of.ssrstate
end

-- Size: Time
size_of.time = 4

-- Display: Time
display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
dissect.time = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.time)
  local value = range:le_uint()
  local display = display.time(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.time, range, value, display)

  return offset + size_of.time
end

-- Size: SSR Triggering Volume
size_of.ssr_triggering_volume = 4

-- Display: SSR Triggering Volume
display.ssr_triggering_volume = function(value)
  return "SSR Triggering Volume: "..value
end

-- Dissect: SSR Triggering Volume
dissect.ssr_triggering_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ssr_triggering_volume)
  local value = range:le_uint()
  local display = display.ssr_triggering_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.ssr_triggering_volume, range, value, display)

  return offset + size_of.ssr_triggering_volume
end

-- Size: SSR Triggering Exchange ID
size_of.ssr_triggering_exchange_id = 1

-- Display: SSR Triggering Exchange ID
display.ssr_triggering_exchange_id = function(value)
  return "SSR Triggering Exchange ID: "..value
end

-- Dissect: SSR Triggering Exchange ID
dissect.ssr_triggering_exchange_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ssr_triggering_exchange_id)
  local value = range:string()
  local display = display.ssr_triggering_exchange_id(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + size_of.ssr_triggering_exchange_id
end

-- Size: Price 2
size_of.price_2 = 4

-- Display: Price 2
display.price_2 = function(value)
  return "Price 2: "..value
end

-- Dissect: Price 2
dissect.price_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_2)
  local value = range:le_uint()
  local display = display.price_2(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.price_2, range, value, display)

  return offset + size_of.price_2
end

-- Size: Price 1
size_of.price_1 = 4

-- Display: Price 1
display.price_1 = function(value)
  return "Price 1: "..value
end

-- Dissect: Price 1
dissect.price_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_1)
  local value = range:le_uint()
  local display = display.price_1(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.price_1, range, value, display)

  return offset + size_of.price_1
end

-- Size: Reserved4
size_of.reserved4 = 4

-- Display: Reserved4
display.reserved4 = function(value)
  return "Reserved4: "..value
end

-- Dissect: Reserved4
dissect.reserved4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved4)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved4(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.reserved4, range, value, display)

  return offset + size_of.reserved4
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

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.halt_condition, range, value, display)

  return offset + size_of.halt_condition
end

-- Size: Security Status
size_of.security_status = 1

-- Display: Security Status
display.security_status = function(value)
  return "Security Status: "..value
end

-- Dissect: Security Status
dissect.security_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_status)
  local value = range:string()
  local display = display.security_status(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.security_status, range, value, display)

  return offset + size_of.security_status
end

-- Display: Security Status Message
display.security_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Security Status Message
dissect.security_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTime: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetime(buffer, index, packet, parent)

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String
  index = dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String
  index = dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved4: 4 Byte
  index = dissect.reserved4(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price_1(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price_2(buffer, index, packet, parent)

  -- SSR Triggering Exchange ID: 1 Byte Ascii String
  index = dissect.ssr_triggering_exchange_id(buffer, index, packet, parent)

  -- SSR Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ssr_triggering_volume(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time(buffer, index, packet, parent)

  -- SSRState: 1 Byte Ascii String
  index = dissect.ssrstate(buffer, index, packet, parent)

  -- MarketState: 1 Byte Ascii String
  index = dissect.marketstate(buffer, index, packet, parent)

  -- SessionState: 1 Byte Ascii String
  index = dissect.sessionstate(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
dissect.security_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.security_status_message then
    local range = buffer(offset, 42)
    local display = display.security_status_message(buffer, packet, parent)
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.security_status_message, range, display)
  end

  return dissect.security_status_message_fields(buffer, offset, packet, parent)
end

-- Size: NextSourceSeqNum
size_of.nextsourceseqnum = 4

-- Display: NextSourceSeqNum
display.nextsourceseqnum = function(value)
  return "NextSourceSeqNum: "..value
end

-- Dissect: NextSourceSeqNum
dissect.nextsourceseqnum = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.nextsourceseqnum)
  local value = range:le_uint()
  local display = display.nextsourceseqnum(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.nextsourceseqnum, range, value, display)

  return offset + size_of.nextsourceseqnum
end

-- Display: Symbol Clear Message
display.symbol_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Clear Message
dissect.symbol_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTime: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetime(buffer, index, packet, parent)

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- NextSourceSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.nextsourceseqnum(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
dissect.symbol_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_clear_message then
    local range = buffer(offset, 16)
    local display = display.symbol_clear_message(buffer, packet, parent)
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.symbol_clear_message, range, display)
  end

  return dissect.symbol_clear_message_fields(buffer, offset, packet, parent)
end

-- Size: ChannelID
size_of.channelid = 1

-- Display: ChannelID
display.channelid = function(value)
  return "ChannelID: "..value
end

-- Dissect: ChannelID
dissect.channelid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.channelid)
  local value = range:le_uint()
  local display = display.channelid(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.channelid, range, value, display)

  return offset + size_of.channelid
end

-- Size: ProductID
size_of.productid = 1

-- Display: ProductID
display.productid = function(value)
  return "ProductID: "..value
end

-- Dissect: ProductID
dissect.productid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.productid)
  local value = range:le_uint()
  local display = display.productid(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.productid, range, value, display)

  return offset + size_of.productid
end

-- Size: EndSeqNum
size_of.endseqnum = 4

-- Display: EndSeqNum
display.endseqnum = function(value)
  return "EndSeqNum: "..value
end

-- Dissect: EndSeqNum
dissect.endseqnum = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.endseqnum)
  local value = range:le_uint()
  local display = display.endseqnum(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.endseqnum, range, value, display)

  return offset + size_of.endseqnum
end

-- Size: BeginSeqNum
size_of.beginseqnum = 4

-- Display: BeginSeqNum
display.beginseqnum = function(value)
  return "BeginSeqNum: "..value
end

-- Dissect: BeginSeqNum
dissect.beginseqnum = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.beginseqnum)
  local value = range:le_uint()
  local display = display.beginseqnum(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.beginseqnum, range, value, display)

  return offset + size_of.beginseqnum
end

-- Display: Message Unavailable Message
display.message_unavailable_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Unavailable Message
dissect.message_unavailable_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- BeginSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.beginseqnum(buffer, index, packet, parent)

  -- EndSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.endseqnum(buffer, index, packet, parent)

  -- ProductID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.productid(buffer, index, packet, parent)

  -- ChannelID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channelid(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
dissect.message_unavailable_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_unavailable_message then
    local range = buffer(offset, 10)
    local display = display.message_unavailable_message(buffer, packet, parent)
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.message_unavailable_message, range, display)
  end

  return dissect.message_unavailable_message_fields(buffer, offset, packet, parent)
end

-- Size: SourceID
size_of.sourceid = 10

-- Display: SourceID
display.sourceid = function(value)
  return "SourceID: "..value
end

-- Dissect: SourceID
dissect.sourceid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.sourceid)
  local value = range:string()
  local display = display.sourceid(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.sourceid, range, value, display)

  return offset + size_of.sourceid
end

-- Display: Refresh Request Message
display.refresh_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Refresh Request Message
dissect.refresh_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SourceID: 10 Byte Ascii String
  index = dissect.sourceid(buffer, index, packet, parent)

  -- ProductID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.productid(buffer, index, packet, parent)

  -- ChannelID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channelid(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
dissect.refresh_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.refresh_request_message then
    local range = buffer(offset, 16)
    local display = display.refresh_request_message(buffer, packet, parent)
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.refresh_request_message, range, display)
  end

  return dissect.refresh_request_message_fields(buffer, offset, packet, parent)
end

-- Size: RetransmitMethod
size_of.retransmitmethod = 1

-- Display: RetransmitMethod
display.retransmitmethod = function(value)
  return "RetransmitMethod: "..value
end

-- Dissect: RetransmitMethod
dissect.retransmitmethod = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.retransmitmethod)
  local value = range:le_uint()
  local display = display.retransmitmethod(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.retransmitmethod, range, value, display)

  return offset + size_of.retransmitmethod
end

-- Display: Symbol Index Mapping Request Message
display.symbol_index_mapping_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
dissect.symbol_index_mapping_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SourceID: 10 Byte Ascii String
  index = dissect.sourceid(buffer, index, packet, parent)

  -- ProductID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.productid(buffer, index, packet, parent)

  -- ChannelID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channelid(buffer, index, packet, parent)

  -- RetransmitMethod: 1 Byte Unsigned Fixed Width Integer
  index = dissect.retransmitmethod(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
dissect.symbol_index_mapping_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_index_mapping_request_message then
    local range = buffer(offset, 17)
    local display = display.symbol_index_mapping_request_message(buffer, packet, parent)
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.symbol_index_mapping_request_message, range, display)
  end

  return dissect.symbol_index_mapping_request_message_fields(buffer, offset, packet, parent)
end

-- Display: Heartbeat Response Message
display.heartbeat_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
dissect.heartbeat_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceID: 10 Byte Ascii String
  index = dissect.sourceid(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
dissect.heartbeat_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.heartbeat_response_message then
    local range = buffer(offset, 10)
    local display = display.heartbeat_response_message(buffer, packet, parent)
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.heartbeat_response_message, range, display)
  end

  return dissect.heartbeat_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Status
size_of.status = 1

-- Display: Status
display.status = function(value)
  return "Status: "..value
end

-- Dissect: Status
dissect.status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.status)
  local value = range:string()
  local display = display.status(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.status, range, value, display)

  return offset + size_of.status
end

-- Size: RequestSeqNum
size_of.requestseqnum = 4

-- Display: RequestSeqNum
display.requestseqnum = function(value)
  return "RequestSeqNum: "..value
end

-- Dissect: RequestSeqNum
dissect.requestseqnum = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.requestseqnum)
  local value = range:le_uint()
  local display = display.requestseqnum(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.requestseqnum, range, value, display)

  return offset + size_of.requestseqnum
end

-- Display: Request Response Message
display.request_response_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Request Response Message
dissect.request_response_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- RequestSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.requestseqnum(buffer, index, packet, parent)

  -- BeginSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.beginseqnum(buffer, index, packet, parent)

  -- EndSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.endseqnum(buffer, index, packet, parent)

  -- SourceID: 10 Byte Ascii String
  index = dissect.sourceid(buffer, index, packet, parent)

  -- ProductID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.productid(buffer, index, packet, parent)

  -- ChannelID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channelid(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String
  index = dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
dissect.request_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_response_message then
    local range = buffer(offset, 25)
    local display = display.request_response_message(buffer, packet, parent)
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.request_response_message, range, display)
  end

  return dissect.request_response_message_fields(buffer, offset, packet, parent)
end

-- Display: Retransmission Request Message
display.retransmission_request_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retransmission Request Message
dissect.retransmission_request_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- BeginSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.beginseqnum(buffer, index, packet, parent)

  -- EndSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.endseqnum(buffer, index, packet, parent)

  -- SourceID: 10 Byte Ascii String
  index = dissect.sourceid(buffer, index, packet, parent)

  -- ProductID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.productid(buffer, index, packet, parent)

  -- ChannelID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channelid(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
dissect.retransmission_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retransmission_request_message then
    local range = buffer(offset, 20)
    local display = display.retransmission_request_message(buffer, packet, parent)
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.retransmission_request_message, range, display)
  end

  return dissect.retransmission_request_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved2
size_of.reserved2 = 2

-- Display: Reserved2
display.reserved2 = function(value)
  return "Reserved2: "..value
end

-- Dissect: Reserved2
dissect.reserved2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved2)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved2(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.reserved2, range, value, display)

  return offset + size_of.reserved2
end

-- Size: Unit of Trade
size_of.unit_of_trade = 2

-- Display: Unit of Trade
display.unit_of_trade = function(value)
  return "Unit of Trade: "..value
end

-- Dissect: Unit of Trade
dissect.unit_of_trade = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.unit_of_trade)
  local value = range:le_uint()
  local display = display.unit_of_trade(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.unit_of_trade, range, value, display)

  return offset + size_of.unit_of_trade
end

-- Size: MPV
size_of.mpv = 2

-- Display: MPV
display.mpv = function(value)
  return "MPV: "..value
end

-- Dissect: MPV
dissect.mpv = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.mpv)
  local value = range:le_uint()
  local display = display.mpv(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.mpv, range, value, display)

  return offset + size_of.mpv
end

-- Size: Round Lot
size_of.round_lot = 1

-- Display: Round Lot
display.round_lot = function(value)
  return "Round Lot: "..value
end

-- Dissect: Round Lot
dissect.round_lot = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.round_lot)
  local value = range:string()
  local display = display.round_lot(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.round_lot, range, value, display)

  return offset + size_of.round_lot
end

-- Size: Price Resolution
size_of.price_resolution = 1

-- Display: Price Resolution
display.price_resolution = function(value)
  return "Price Resolution: "..value
end

-- Dissect: Price Resolution
dissect.price_resolution = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_resolution)
  local value = range:le_uint()
  local display = display.price_resolution(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.price_resolution, range, value, display)

  return offset + size_of.price_resolution
end

-- Size: PrevCloseVolume
size_of.prevclosevolume = 4

-- Display: PrevCloseVolume
display.prevclosevolume = function(value)
  return "PrevCloseVolume: "..value
end

-- Dissect: PrevCloseVolume
dissect.prevclosevolume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.prevclosevolume)
  local value = range:le_uint()
  local display = display.prevclosevolume(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.prevclosevolume, range, value, display)

  return offset + size_of.prevclosevolume
end

-- Size: PrevClosePrice
size_of.prevcloseprice = 4

-- Display: PrevClosePrice
display.prevcloseprice = function(value)
  return "PrevClosePrice: "..value
end

-- Dissect: PrevClosePrice
dissect.prevcloseprice = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.prevcloseprice)
  local value = range:le_uint()
  local display = display.prevcloseprice(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.prevcloseprice, range, value, display)

  return offset + size_of.prevcloseprice
end

-- Size: Lot Size
size_of.lot_size = 2

-- Display: Lot Size
display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
dissect.lot_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.lot_size)
  local value = range:le_uint()
  local display = display.lot_size(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.lot_size, range, value, display)

  return offset + size_of.lot_size
end

-- Size: Security Type
size_of.security_type = 1

-- Display: Security Type
display.security_type = function(value)
  return "Security Type: "..value
end

-- Dissect: Security Type
dissect.security_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_type)
  local value = range:string()
  local display = display.security_type(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.security_type, range, value, display)

  return offset + size_of.security_type
end

-- Size: PriceScaleCode
size_of.pricescalecode = 1

-- Display: PriceScaleCode
display.pricescalecode = function(value)
  return "PriceScaleCode: "..value
end

-- Dissect: PriceScaleCode
dissect.pricescalecode = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.pricescalecode)
  local value = range:le_uint()
  local display = display.pricescalecode(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.pricescalecode, range, value, display)

  return offset + size_of.pricescalecode
end

-- Size: Exchange Code
size_of.exchange_code = 1

-- Display: Exchange Code
display.exchange_code = function(value)
  return "Exchange Code: "..value
end

-- Dissect: Exchange Code
dissect.exchange_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.exchange_code)
  local value = range:string()
  local display = display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.exchange_code, range, value, display)

  return offset + size_of.exchange_code
end

-- Size: System ID
size_of.system_id = 1

-- Display: System ID
display.system_id = function(value)
  return "System ID: "..value
end

-- Dissect: System ID
dissect.system_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.system_id)
  local value = range:le_uint()
  local display = display.system_id(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.system_id, range, value, display)

  return offset + size_of.system_id
end

-- Size: Market ID
size_of.market_id = 2

-- Display: Market ID
display.market_id = function(value)
  return "Market ID: "..value
end

-- Dissect: Market ID
dissect.market_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_id)
  local value = range:le_uint()
  local display = display.market_id(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.market_id, range, value, display)

  return offset + size_of.market_id
end

-- Size: Reserved1
size_of.reserved1 = 1

-- Display: Reserved1
display.reserved1 = function(value)
  return "Reserved1: "..value
end

-- Dissect: Reserved1
dissect.reserved1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved1)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved1(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.reserved1, range, value, display)

  return offset + size_of.reserved1
end

-- Size: Symbol
size_of.symbol = 11

-- Display: Symbol
display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.symbol)
  local value = range:string()
  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.symbol, range, value, display)

  return offset + size_of.symbol
end

-- Display: Symbol Index Mapping Message
display.symbol_index_mapping_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
dissect.symbol_index_mapping_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- Symbol: 11 Byte Ascii String
  index = dissect.symbol(buffer, index, packet, parent)

  -- Reserved1: 1 Byte
  index = dissect.reserved1(buffer, index, packet, parent)

  -- Market ID: 2 Byte Unsigned Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- System ID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.system_id(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String
  index = dissect.exchange_code(buffer, index, packet, parent)

  -- PriceScaleCode: 1 Byte Unsigned Fixed Width Integer
  index = dissect.pricescalecode(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String
  index = dissect.security_type(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.lot_size(buffer, index, packet, parent)

  -- PrevClosePrice: 4 Byte Unsigned Fixed Width Integer
  index = dissect.prevcloseprice(buffer, index, packet, parent)

  -- PrevCloseVolume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.prevclosevolume(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer
  index = dissect.price_resolution(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String
  index = dissect.round_lot(buffer, index, packet, parent)

  -- MPV: 2 Byte Unsigned Fixed Width Integer
  index = dissect.mpv(buffer, index, packet, parent)

  -- Unit of Trade: 2 Byte Unsigned Fixed Width Integer
  index = dissect.unit_of_trade(buffer, index, packet, parent)

  -- Reserved2: 2 Byte
  index = dissect.reserved2(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
dissect.symbol_index_mapping_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_index_mapping_message then
    local range = buffer(offset, 40)
    local display = display.symbol_index_mapping_message(buffer, packet, parent)
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.symbol_index_mapping_message, range, display)
  end

  return dissect.symbol_index_mapping_message_fields(buffer, offset, packet, parent)
end

-- Display: Sequence Number Reset Message
display.sequence_number_reset_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
dissect.sequence_number_reset_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTime: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetime(buffer, index, packet, parent)

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- ProductID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.productid(buffer, index, packet, parent)

  -- ChannelID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.channelid(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
dissect.sequence_number_reset_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sequence_number_reset_message then
    local range = buffer(offset, 10)
    local display = display.sequence_number_reset_message(buffer, packet, parent)
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.sequence_number_reset_message, range, display)
  end

  return dissect.sequence_number_reset_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Sequence Number Reset Message
  if code == 1 then
    return 10
  end
  -- Size of Symbol Index Mapping Message
  if code == 3 then
    return 40
  end
  -- Size of Retransmission Request Message
  if code == 10 then
    return 20
  end
  -- Size of Request Response Message
  if code == 11 then
    return 25
  end
  -- Size of Heartbeat Response Message
  if code == 12 then
    return 10
  end
  -- Size of Symbol Index Mapping Request Message
  if code == 13 then
    return 17
  end
  -- Size of Refresh Request Message
  if code == 15 then
    return 16
  end
  -- Size of Message Unavailable Message
  if code == 31 then
    return 10
  end
  -- Size of Symbol Clear Message
  if code == 32 then
    return 16
  end
  -- Size of Security Status Message
  if code == 34 then
    return 42
  end
  -- Size of Refresh Header Message
  if code == 35 then
    return 12
  end
  -- Size of Imbalance Message
  if code == 105 then
    return 63
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(buffer, offset, packet, parent, code)
  -- Dissect Sequence Number Reset Message
  if code == 1 then
    return dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if code == 3 then
    return dissect.symbol_index_mapping_message(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if code == 10 then
    return dissect.retransmission_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if code == 11 then
    return dissect.request_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if code == 12 then
    return dissect.heartbeat_response_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if code == 13 then
    return dissect.symbol_index_mapping_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if code == 15 then
    return dissect.refresh_request_message(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if code == 31 then
    return dissect.message_unavailable_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if code == 32 then
    return dissect.symbol_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if code == 34 then
    return dissect.security_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if code == 35 then
    return dissect.refresh_header_message(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if code == 105 then
    return dissect.imbalance_message(buffer, offset, packet, parent)
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
  local element = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, code)
end

-- Size: Message Type
size_of.message_type = 2

-- Display: Message Type
display.message_type = function(value)
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
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
  if value == 105 then
    return "Message Type: Imbalance Message (105)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.message_type, range, value, display)

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

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.message_size, range, value, display)

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

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 12 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 4)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.message_header, range, display)
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

  -- Payload: Runtime Type with 12 branches
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
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.message, range, display)
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

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.nanoseconds, range, value, display)

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

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.timestamp, range, value, display)

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

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.sequence_number, range, value, display)

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

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.message_count, range, value, display)

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

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.delivery_flag, range, value, display)

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

  parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.packet_size, range, value, display)

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
    parent = parent:add(nyse_imbalancesfeed_xdp_v2_1_f.fields.packet_header, range, display)
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
function nyse_imbalancesfeed_xdp_v2_1_f.init()
end

-- Dissector for Nyse ImbalancesFeed Xdp 2.1.f
function nyse_imbalancesfeed_xdp_v2_1_f.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_imbalancesfeed_xdp_v2_1_f.name

  -- Dissect protocol
  local protocol = parent:add(nyse_imbalancesfeed_xdp_v2_1_f, buffer(), nyse_imbalancesfeed_xdp_v2_1_f.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_imbalancesfeed_xdp_v2_1_f)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_imbalancesfeed_xdp_v2_1_f_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse ImbalancesFeed Xdp 2.1.f
local function nyse_imbalancesfeed_xdp_v2_1_f_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_imbalancesfeed_xdp_v2_1_f_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_imbalancesfeed_xdp_v2_1_f
  nyse_imbalancesfeed_xdp_v2_1_f.dissector(buffer, packet, parent)

  return true
end

-- Register Nyse ImbalancesFeed Xdp 2.1.f Heuristic
nyse_imbalancesfeed_xdp_v2_1_f:register_heuristic("udp", nyse_imbalancesfeed_xdp_v2_1_f_heuristic)

-----------------------------------------------------------------------
-- This script was generated by the open markets initiative
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- Protocol:
-- Version: 2.1.f
-- Date: Thursday, February 1, 2018
-- Script:
-- Source Version: 1.5.0.0
-- Compiler Version: 1.1
-- License: Public/GPLv3
-- Authors: Omi Developers
-----------------------------------------------------------------------
