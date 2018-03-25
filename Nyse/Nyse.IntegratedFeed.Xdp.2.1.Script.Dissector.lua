-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse IntegratedFeed Xdp 2.1 Protocol
local nyse_integratedfeed_xdp_2_1 = Proto("Nyse.IntegratedFeed.Xdp.2.1.Lua", "Nyse IntegratedFeed Xdp 2.1")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Nyse IntegratedFeed Xdp 2.1 Format Options
format.add_order_message = true
format.add_order_refresh_message = true
format.cross_correction_message = true
format.cross_trade_message = true
format.delete_order_message = true
format.heartbeat_response_message = true
format.imbalance_message = true
format.message = true
format.message_header = true
format.message_unavailable_message = true
format.modify_order_message = true
format.non_displayed_trade_message = true
format.order_execution_message = true
format.packet = true
format.packet_header = true
format.refresh_header_message = true
format.refresh_request_message = true
format.replace_order_message = true
format.request_response_message = true
format.retail_price_improvement_message = true
format.retransmission_request_message = true
format.security_status_message = true
format.sequence_number_reset_message = true
format.source_time_reference_message = true
format.stock_summary_message = true
format.symbol_clear_message = true
format.symbol_index_mapping_message = true
format.symbol_index_mapping_request_message = true
format.trade_cancel_message = true
format.payload = true

-- Nyse IntegratedFeed Xdp 2.1 Element Dissection Options
show.add_order_message = true
show.add_order_refresh_message = true
show.cross_correction_message = true
show.cross_trade_message = true
show.delete_order_message = true
show.heartbeat_response_message = true
show.imbalance_message = true
show.message = true
show.message_header = true
show.message_unavailable_message = true
show.modify_order_message = true
show.non_displayed_trade_message = true
show.order_execution_message = true
show.packet = true
show.packet_header = true
show.refresh_header_message = true
show.refresh_request_message = true
show.replace_order_message = true
show.request_response_message = true
show.retail_price_improvement_message = true
show.retransmission_request_message = true
show.security_status_message = true
show.sequence_number_reset_message = true
show.source_time_reference_message = true
show.stock_summary_message = true
show.symbol_clear_message = true
show.symbol_index_mapping_message = true
show.symbol_index_mapping_request_message = true
show.trade_cancel_message = true
show.payload = false

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse IntegratedFeed Xdp 2.1 Fields
nyse_integratedfeed_xdp_2_1.fields.add_order_message = ProtoField.new("Add Order Message", "nyse.integratedfeed.xdp.addordermessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.add_order_refresh_message = ProtoField.new("Add Order Refresh Message", "nyse.integratedfeed.xdp.addorderrefreshmessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.auctionstatus = ProtoField.new("AuctionStatus", "nyse.integratedfeed.xdp.auctionstatus", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.auctiontime = ProtoField.new("AuctionTime", "nyse.integratedfeed.xdp.auctiontime", ftypes.UINT16)
nyse_integratedfeed_xdp_2_1.fields.auctiontype = ProtoField.new("AuctionType", "nyse.integratedfeed.xdp.auctiontype", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.beginseqnum = ProtoField.new("BeginSeqNum", "nyse.integratedfeed.xdp.beginseqnum", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.channelid = ProtoField.new("ChannelID", "nyse.integratedfeed.xdp.channelid", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.close = ProtoField.new("Close", "nyse.integratedfeed.xdp.close", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.closingonlyclearingprice = ProtoField.new("ClosingOnlyClearingPrice", "nyse.integratedfeed.xdp.closingonlyclearingprice", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.continuousbookclearingprice = ProtoField.new("ContinuousBookClearingPrice", "nyse.integratedfeed.xdp.continuousbookclearingprice", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.cross_correction_message = ProtoField.new("Cross Correction Message", "nyse.integratedfeed.xdp.crosscorrectionmessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.cross_trade_message = ProtoField.new("Cross Trade Message", "nyse.integratedfeed.xdp.crosstrademessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.crossid = ProtoField.new("CrossID", "nyse.integratedfeed.xdp.crossid", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.crosstype = ProtoField.new("CrossType", "nyse.integratedfeed.xdp.crosstype", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.currentrefreshpkt = ProtoField.new("CurrentRefreshPkt", "nyse.integratedfeed.xdp.currentrefreshpkt", ftypes.UINT16)
nyse_integratedfeed_xdp_2_1.fields.dbexecid = ProtoField.new("DBExecID", "nyse.integratedfeed.xdp.dbexecid", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.delete_order_message = ProtoField.new("Delete Order Message", "nyse.integratedfeed.xdp.deleteordermessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.integratedfeed.xdp.deliveryflag", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.endseqnum = ProtoField.new("EndSeqNum", "nyse.integratedfeed.xdp.endseqnum", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.integratedfeed.xdp.exchangecode", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.firmid = ProtoField.new("FirmID", "nyse.integratedfeed.xdp.firmid", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.freezestatus = ProtoField.new("FreezeStatus", "nyse.integratedfeed.xdp.freezestatus", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.integratedfeed.xdp.haltcondition", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.integratedfeed.xdp.heartbeatresponsemessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.highprice = ProtoField.new("HighPrice", "nyse.integratedfeed.xdp.highprice", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.id = ProtoField.new("Id", "nyse.integratedfeed.xdp.id", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.imbalance_message = ProtoField.new("Imbalance Message", "nyse.integratedfeed.xdp.imbalancemessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.imbalanceside = ProtoField.new("ImbalanceSide", "nyse.integratedfeed.xdp.imbalanceside", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.indicativematchprice = ProtoField.new("IndicativeMatchPrice", "nyse.integratedfeed.xdp.indicativematchprice", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.lastseqnum = ProtoField.new("LastSeqNum", "nyse.integratedfeed.xdp.lastseqnum", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.lastsymbolseqnum = ProtoField.new("LastSymbolSeqNum", "nyse.integratedfeed.xdp.lastsymbolseqnum", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.lot_size = ProtoField.new("Lot Size", "nyse.integratedfeed.xdp.lotsize", ftypes.UINT16)
nyse_integratedfeed_xdp_2_1.fields.lowercollar = ProtoField.new("LowerCollar", "nyse.integratedfeed.xdp.lowercollar", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.lowprice = ProtoField.new("LowPrice", "nyse.integratedfeed.xdp.lowprice", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.market_id = ProtoField.new("Market ID", "nyse.integratedfeed.xdp.marketid", ftypes.UINT16)
nyse_integratedfeed_xdp_2_1.fields.marketimbalanceqty = ProtoField.new("MarketImbalanceQty", "nyse.integratedfeed.xdp.marketimbalanceqty", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.marketstate = ProtoField.new("MarketState", "nyse.integratedfeed.xdp.marketstate", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.message = ProtoField.new("Message", "nyse.integratedfeed.xdp.message", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.message_count = ProtoField.new("Message Count", "nyse.integratedfeed.xdp.messagecount", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.message_header = ProtoField.new("Message Header", "nyse.integratedfeed.xdp.messageheader", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.message_size = ProtoField.new("Message Size", "nyse.integratedfeed.xdp.messagesize", ftypes.UINT16)
nyse_integratedfeed_xdp_2_1.fields.message_type = ProtoField.new("Message Type", "nyse.integratedfeed.xdp.messagetype", ftypes.UINT16)
nyse_integratedfeed_xdp_2_1.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.integratedfeed.xdp.messageunavailablemessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.modify_order_message = ProtoField.new("Modify Order Message", "nyse.integratedfeed.xdp.modifyordermessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.mpv = ProtoField.new("MPV", "nyse.integratedfeed.xdp.mpv", ftypes.UINT16)
nyse_integratedfeed_xdp_2_1.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.integratedfeed.xdp.nanoseconds", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.neworderid = ProtoField.new("NewOrderID", "nyse.integratedfeed.xdp.neworderid", ftypes.UINT64)
nyse_integratedfeed_xdp_2_1.fields.newpriceparitysplits = ProtoField.new("NewPriceParitySplits", "nyse.integratedfeed.xdp.newpriceparitysplits", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.nextsourceseqnum = ProtoField.new("NextSourceSeqNum", "nyse.integratedfeed.xdp.nextsourceseqnum", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.non_displayed_trade_message = ProtoField.new("Non-Displayed Trade Message", "nyse.integratedfeed.xdp.nondisplayedtrademessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.numextensions = ProtoField.new("NumExtensions", "nyse.integratedfeed.xdp.numextensions", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.numparitysplits = ProtoField.new("NumParitySplits", "nyse.integratedfeed.xdp.numparitysplits", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.open = ProtoField.new("Open", "nyse.integratedfeed.xdp.open", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.order_execution_message = ProtoField.new("Order Execution Message", "nyse.integratedfeed.xdp.orderexecutionmessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.orderid = ProtoField.new("OrderID", "nyse.integratedfeed.xdp.orderid", ftypes.UINT64)
nyse_integratedfeed_xdp_2_1.fields.packet = ProtoField.new("Packet", "nyse.integratedfeed.xdp.packet", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.packet_header = ProtoField.new("Packet Header", "nyse.integratedfeed.xdp.packetheader", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.packet_size = ProtoField.new("Packet Size", "nyse.integratedfeed.xdp.packetsize", ftypes.UINT16)
nyse_integratedfeed_xdp_2_1.fields.pairedqty = ProtoField.new("PairedQty", "nyse.integratedfeed.xdp.pairedqty", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.payload = ProtoField.new("Payload", "nyse.integratedfeed.xdp.payload", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.positionchange = ProtoField.new("PositionChange", "nyse.integratedfeed.xdp.positionchange", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.prevcloseprice = ProtoField.new("PrevClosePrice", "nyse.integratedfeed.xdp.prevcloseprice", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.prevclosevolume = ProtoField.new("PrevCloseVolume", "nyse.integratedfeed.xdp.prevclosevolume", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.prevpriceparitysplits = ProtoField.new("PrevPriceParitySplits", "nyse.integratedfeed.xdp.prevpriceparitysplits", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.price = ProtoField.new("Price", "nyse.integratedfeed.xdp.price", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.price_1 = ProtoField.new("Price 1", "nyse.integratedfeed.xdp.price1", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.price_2 = ProtoField.new("Price 2", "nyse.integratedfeed.xdp.price2", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.integratedfeed.xdp.priceresolution", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.pricescalecode = ProtoField.new("PriceScaleCode", "nyse.integratedfeed.xdp.pricescalecode", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.printableflag = ProtoField.new("PrintableFlag", "nyse.integratedfeed.xdp.printableflag", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.productid = ProtoField.new("ProductID", "nyse.integratedfeed.xdp.productid", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.referenceprice = ProtoField.new("ReferencePrice", "nyse.integratedfeed.xdp.referenceprice", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.integratedfeed.xdp.refreshheadermessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.integratedfeed.xdp.refreshrequestmessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.replace_order_message = ProtoField.new("Replace Order Message", "nyse.integratedfeed.xdp.replaceordermessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.integratedfeed.xdp.requestresponsemessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.requestseqnum = ProtoField.new("RequestSeqNum", "nyse.integratedfeed.xdp.requestseqnum", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.reserved1 = ProtoField.new("Reserved1", "nyse.integratedfeed.xdp.reserved1", ftypes.BYTES)
nyse_integratedfeed_xdp_2_1.fields.reserved2 = ProtoField.new("Reserved2", "nyse.integratedfeed.xdp.reserved2", ftypes.BYTES)
nyse_integratedfeed_xdp_2_1.fields.reserved4 = ProtoField.new("Reserved4", "nyse.integratedfeed.xdp.reserved4", ftypes.BYTES)
nyse_integratedfeed_xdp_2_1.fields.retail_price_improvement_message = ProtoField.new("Retail Price Improvement Message", "nyse.integratedfeed.xdp.retailpriceimprovementmessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.integratedfeed.xdp.retransmissionrequestmessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.retransmitmethod = ProtoField.new("RetransmitMethod", "nyse.integratedfeed.xdp.retransmitmethod", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.round_lot = ProtoField.new("Round Lot", "nyse.integratedfeed.xdp.roundlot", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.rpiindicator = ProtoField.new("RPIIndicator", "nyse.integratedfeed.xdp.rpiindicator", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.security_status = ProtoField.new("Security Status", "nyse.integratedfeed.xdp.securitystatus", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.integratedfeed.xdp.securitystatusmessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.security_type = ProtoField.new("Security Type", "nyse.integratedfeed.xdp.securitytype", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.integratedfeed.xdp.sequencenumber", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.integratedfeed.xdp.sequencenumberresetmessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.sessionstate = ProtoField.new("SessionState", "nyse.integratedfeed.xdp.sessionstate", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.side = ProtoField.new("Side", "nyse.integratedfeed.xdp.side", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.integratedfeed.xdp.sourcetimereferencemessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.sourceid = ProtoField.new("SourceID", "nyse.integratedfeed.xdp.sourceid", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.sourcetime = ProtoField.new("SourceTime", "nyse.integratedfeed.xdp.sourcetime", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.sourcetimens = ProtoField.new("SourceTimeNS", "nyse.integratedfeed.xdp.sourcetimens", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.ssr_triggering_exchange_id = ProtoField.new("SSR Triggering Exchange ID", "nyse.integratedfeed.xdp.ssrtriggeringexchangeid", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.ssr_triggering_volume = ProtoField.new("SSR Triggering Volume", "nyse.integratedfeed.xdp.ssrtriggeringvolume", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.ssrfilingprice = ProtoField.new("SSRFilingPrice", "nyse.integratedfeed.xdp.ssrfilingprice", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.ssrstate = ProtoField.new("SSRState", "nyse.integratedfeed.xdp.ssrstate", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.status = ProtoField.new("Status", "nyse.integratedfeed.xdp.status", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.stock_summary_message = ProtoField.new("Stock Summary Message", "nyse.integratedfeed.xdp.stocksummarymessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.symbol = ProtoField.new("Symbol", "nyse.integratedfeed.xdp.symbol", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.integratedfeed.xdp.symbolclearmessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.integratedfeed.xdp.symbolindexmappingmessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.integratedfeed.xdp.symbolindexmappingrequestmessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.symbolindex = ProtoField.new("SymbolIndex", "nyse.integratedfeed.xdp.symbolindex", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.symbolseqnum = ProtoField.new("SymbolSeqNum", "nyse.integratedfeed.xdp.symbolseqnum", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.system_id = ProtoField.new("System ID", "nyse.integratedfeed.xdp.systemid", ftypes.UINT8)
nyse_integratedfeed_xdp_2_1.fields.time = ProtoField.new("Time", "nyse.integratedfeed.xdp.time", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.timestamp = ProtoField.new("Timestamp", "nyse.integratedfeed.xdp.timestamp", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.totalimbalanceqty = ProtoField.new("TotalImbalanceQty", "nyse.integratedfeed.xdp.totalimbalanceqty", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.totalrefreshpkts = ProtoField.new("TotalRefreshPkts", "nyse.integratedfeed.xdp.totalrefreshpkts", ftypes.UINT16)
nyse_integratedfeed_xdp_2_1.fields.totalvolume = ProtoField.new("TotalVolume", "nyse.integratedfeed.xdp.totalvolume", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "nyse.integratedfeed.xdp.tradecancelmessage", ftypes.STRING)
nyse_integratedfeed_xdp_2_1.fields.tradeid = ProtoField.new("TradeID", "nyse.integratedfeed.xdp.tradeid", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.unit_of_trade = ProtoField.new("Unit of Trade", "nyse.integratedfeed.xdp.unitoftrade", ftypes.UINT16)
nyse_integratedfeed_xdp_2_1.fields.uppercollar = ProtoField.new("UpperCollar", "nyse.integratedfeed.xdp.uppercollar", ftypes.UINT32)
nyse_integratedfeed_xdp_2_1.fields.volume = ProtoField.new("Volume", "nyse.integratedfeed.xdp.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Dissect Nyse IntegratedFeed Xdp 2.1
-----------------------------------------------------------------------

-- Size: TotalVolume
size_of.totalvolume = 4

-- Display: TotalVolume
display.totalvolume = function(value)
  return "TotalVolume: "..value
end

-- Dissect: TotalVolume
dissect.totalvolume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.totalvolume)
  local value = range:le_uint()
  local display = display.totalvolume(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.totalvolume, range, value, display)

  return offset + size_of.totalvolume
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
  local value = range:le_uint()
  local display = display.close(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.close, range, value, display)

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
  local value = range:le_uint()
  local display = display.open(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.open, range, value, display)

  return offset + size_of.open
end

-- Size: LowPrice
size_of.lowprice = 4

-- Display: LowPrice
display.lowprice = function(value)
  return "LowPrice: "..value
end

-- Dissect: LowPrice
dissect.lowprice = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.lowprice)
  local value = range:le_uint()
  local display = display.lowprice(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.lowprice, range, value, display)

  return offset + size_of.lowprice
end

-- Size: HighPrice
size_of.highprice = 4

-- Display: HighPrice
display.highprice = function(value)
  return "HighPrice: "..value
end

-- Dissect: HighPrice
dissect.highprice = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.highprice)
  local value = range:le_uint()
  local display = display.highprice(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.highprice, range, value, display)

  return offset + size_of.highprice
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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.symbolindex, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.sourcetimens, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.sourcetime, range, value, display)

  return offset + size_of.sourcetime
end

-- Display: Stock Summary Message
display.stock_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Summary Message
dissect.stock_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTime: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetime(buffer, index, packet, parent)

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- HighPrice: 4 Byte Unsigned Fixed Width Integer
  index = dissect.highprice(buffer, index, packet, parent)

  -- LowPrice: 4 Byte Unsigned Fixed Width Integer
  index = dissect.lowprice(buffer, index, packet, parent)

  -- Open: 4 Byte Unsigned Fixed Width Integer
  index = dissect.open(buffer, index, packet, parent)

  -- Close: 4 Byte Unsigned Fixed Width Integer
  index = dissect.close(buffer, index, packet, parent)

  -- TotalVolume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.totalvolume(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Summary Message
dissect.stock_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_summary_message then
    local range = buffer(offset, 32)
    local display = display.stock_summary_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.stock_summary_message, range, display)
  end

  return dissect.stock_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: DBExecID
size_of.dbexecid = 4

-- Display: DBExecID
display.dbexecid = function(value)
  return "DBExecID: "..value
end

-- Dissect: DBExecID
dissect.dbexecid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.dbexecid)
  local value = range:le_uint()
  local display = display.dbexecid(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.dbexecid, range, value, display)

  return offset + size_of.dbexecid
end

-- Size: PrintableFlag
size_of.printableflag = 1

-- Display: PrintableFlag
display.printableflag = function(value)
  if value == O then
    return "PrintableFlag: Not printed (O)"
  end
  if value == 1 then
    return "PrintableFlag: Printed (1)"
  end

  return "PrintableFlag: Unknown("..value..")"
end

-- Dissect: PrintableFlag
dissect.printableflag = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.printableflag)
  local value = range:le_uint()
  local display = display.printableflag(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.printableflag, range, value, display)

  return offset + size_of.printableflag
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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.volume, range, value, display)

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
  local value = range:le_uint()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.price, range, value, display)

  return offset + size_of.price
end

-- Size: TradeID
size_of.tradeid = 4

-- Display: TradeID
display.tradeid = function(value)
  return "TradeID: "..value
end

-- Dissect: TradeID
dissect.tradeid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.tradeid)
  local value = range:le_uint()
  local display = display.tradeid(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.tradeid, range, value, display)

  return offset + size_of.tradeid
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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.symbolseqnum, range, value, display)

  return offset + size_of.symbolseqnum
end

-- Display: Non-Displayed Trade Message
display.non_displayed_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Non-Displayed Trade Message
dissect.non_displayed_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- TradeID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.tradeid(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- PrintableFlag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.printableflag(buffer, index, packet, parent)

  -- DBExecID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.dbexecid(buffer, index, packet, parent)

  return index
end

-- Dissect: Non-Displayed Trade Message
dissect.non_displayed_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.non_displayed_trade_message then
    local range = buffer(offset, 29)
    local display = display.non_displayed_trade_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.non_displayed_trade_message, range, display)
  end

  return dissect.non_displayed_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: NumParitySplits
size_of.numparitysplits = 1

-- Display: NumParitySplits
display.numparitysplits = function(value)
  return "NumParitySplits: "..value
end

-- Dissect: NumParitySplits
dissect.numparitysplits = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.numparitysplits)
  local value = range:le_uint()
  local display = display.numparitysplits(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.numparitysplits, range, value, display)

  return offset + size_of.numparitysplits
end

-- Size: OrderID
size_of.orderid = 8

-- Display: OrderID
display.orderid = function(value)
  return "OrderID: "..value
end

-- Dissect: OrderID
dissect.orderid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.orderid)
  local value = range:le_uint64()
  local display = display.orderid(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.orderid, range, value, display)

  return offset + size_of.orderid
end

-- Display: Order Execution Message
display.order_execution_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Execution Message
dissect.order_execution_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- OrderID: 8 Byte Unsigned Fixed Width Integer
  index = dissect.orderid(buffer, index, packet, parent)

  -- TradeID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.tradeid(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- PrintableFlag: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.printableflag(buffer, index, packet, parent)

  -- NumParitySplits: 1 Byte Unsigned Fixed Width Integer
  index = dissect.numparitysplits(buffer, index, packet, parent)

  -- DBExecID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.dbexecid(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Execution Message
dissect.order_execution_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_execution_message then
    local range = buffer(offset, 38)
    local display = display.order_execution_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.order_execution_message, range, display)
  end

  return dissect.order_execution_message_fields(buffer, offset, packet, parent)
end

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.numextensions, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.freezestatus, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.auctionstatus, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.lowercollar, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.uppercollar, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.indicativematchprice, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.ssrfilingprice, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.closingonlyclearingprice, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.continuousbookclearingprice, range, value, display)

  return offset + size_of.continuousbookclearingprice
end

-- Size: ImbalanceSide
size_of.imbalanceside = 1

-- Display: ImbalanceSide
display.imbalanceside = function(value)
  if value == " " then
    return "ImbalanceSide: No imbalance ( )"
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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.imbalanceside, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.auctiontype, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.auctiontime, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.marketimbalanceqty, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.totalimbalanceqty, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.pairedqty, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.referenceprice, range, value, display)

  return offset + size_of.referenceprice
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
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.imbalance_message, range, display)
  end

  return dissect.imbalance_message_fields(buffer, offset, packet, parent)
end

-- Size: FirmID
size_of.firmid = 5

-- Display: FirmID
display.firmid = function(value)
  return "FirmID: "..value
end

-- Dissect: FirmID
dissect.firmid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.firmid)
  local value = range:string()
  local display = display.firmid(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.firmid, range, value, display)

  return offset + size_of.firmid
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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.side, range, value, display)

  return offset + size_of.side
end

-- Display: Add Order Refresh Message
display.add_order_refresh_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Refresh Message
dissect.add_order_refresh_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTime: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetime(buffer, index, packet, parent)

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- OrderID: 8 Byte Unsigned Fixed Width Integer
  index = dissect.orderid(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- FirmID: 5 Byte Ascii String
  index = dissect.firmid(buffer, index, packet, parent)

  -- NumParitySplits: 1 Byte Unsigned Fixed Width Integer
  index = dissect.numparitysplits(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Refresh Message
dissect.add_order_refresh_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_refresh_message then
    local range = buffer(offset, 39)
    local display = display.add_order_refresh_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.add_order_refresh_message, range, display)
  end

  return dissect.add_order_refresh_message_fields(buffer, offset, packet, parent)
end

-- Size: RPIIndicator
size_of.rpiindicator = 1

-- Display: RPIIndicator
display.rpiindicator = function(value)
  if value == " " then
    return "RPIIndicator: No retail interest ( )"
  end
  if value == "A" then
    return "RPIIndicator: Interest on bid (A)"
  end
  if value == "B" then
    return "RPIIndicator: Interest on offer (B)"
  end
  if value == "C" then
    return "RPIIndicator: Interest on bid and offer (C)"
  end

  return "RPIIndicator: Unknown("..value..")"
end

-- Dissect: RPIIndicator
dissect.rpiindicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.rpiindicator)
  local value = range:string()
  local display = display.rpiindicator(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.rpiindicator, range, value, display)

  return offset + size_of.rpiindicator
end

-- Display: Retail Price Improvement Message
display.retail_price_improvement_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Retail Price Improvement Message
dissect.retail_price_improvement_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- RPIIndicator: 1 Byte Ascii String Enum with 4 values
  index = dissect.rpiindicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Price Improvement Message
dissect.retail_price_improvement_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.retail_price_improvement_message then
    local range = buffer(offset, 13)
    local display = display.retail_price_improvement_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.retail_price_improvement_message, range, display)
  end

  return dissect.retail_price_improvement_message_fields(buffer, offset, packet, parent)
end

-- Size: CrossID
size_of.crossid = 4

-- Display: CrossID
display.crossid = function(value)
  return "CrossID: "..value
end

-- Dissect: CrossID
dissect.crossid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.crossid)
  local value = range:le_uint()
  local display = display.crossid(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.crossid, range, value, display)

  return offset + size_of.crossid
end

-- Display: Cross Correction Message
display.cross_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Correction Message
dissect.cross_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- CrossID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.crossid(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Correction Message
dissect.cross_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cross_correction_message then
    local range = buffer(offset, 20)
    local display = display.cross_correction_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.cross_correction_message, range, display)
  end

  return dissect.cross_correction_message_fields(buffer, offset, packet, parent)
end

-- Size: CrossType
size_of.crosstype = 1

-- Display: CrossType
display.crosstype = function(value)
  if value == "E" then
    return "CrossType: Early Opening (E)"
  end
  if value == "O" then
    return "CrossType: Opening (O)"
  end
  if value == "5" then
    return "CrossType: Reopening (5)"
  end
  if value == "6" then
    return "CrossType: Closing (6)"
  end

  return "CrossType: Unknown("..value..")"
end

-- Dissect: CrossType
dissect.crosstype = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.crosstype)
  local value = range:string()
  local display = display.crosstype(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.crosstype, range, value, display)

  return offset + size_of.crosstype
end

-- Display: Cross Trade Message
display.cross_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cross Trade Message
dissect.cross_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- CrossID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.crossid(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- CrossType: 1 Byte Ascii String Enum with 4 values
  index = dissect.crosstype(buffer, index, packet, parent)

  return index
end

-- Dissect: Cross Trade Message
dissect.cross_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cross_trade_message then
    local range = buffer(offset, 25)
    local display = display.cross_trade_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.cross_trade_message, range, display)
  end

  return dissect.cross_trade_message_fields(buffer, offset, packet, parent)
end

-- Display: Trade Cancel Message
display.trade_cancel_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancel Message
dissect.trade_cancel_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- TradeID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.tradeid(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
dissect.trade_cancel_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancel_message then
    local range = buffer(offset, 16)
    local display = display.trade_cancel_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.trade_cancel_message, range, display)
  end

  return dissect.trade_cancel_message_fields(buffer, offset, packet, parent)
end

-- Display: Delete Order Message
display.delete_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Message
dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- OrderID: 8 Byte Unsigned Fixed Width Integer
  index = dissect.orderid(buffer, index, packet, parent)

  -- NumParitySplits: 1 Byte Unsigned Fixed Width Integer
  index = dissect.numparitysplits(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
dissect.delete_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_message then
    local range = buffer(offset, 21)
    local display = display.delete_order_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.delete_order_message, range, display)
  end

  return dissect.delete_order_message_fields(buffer, offset, packet, parent)
end

-- Size: NewPriceParitySplits
size_of.newpriceparitysplits = 1

-- Display: NewPriceParitySplits
display.newpriceparitysplits = function(value)
  return "NewPriceParitySplits: "..value
end

-- Dissect: NewPriceParitySplits
dissect.newpriceparitysplits = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.newpriceparitysplits)
  local value = range:le_uint()
  local display = display.newpriceparitysplits(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.newpriceparitysplits, range, value, display)

  return offset + size_of.newpriceparitysplits
end

-- Size: PrevPriceParitySplits
size_of.prevpriceparitysplits = 1

-- Display: PrevPriceParitySplits
display.prevpriceparitysplits = function(value)
  return "PrevPriceParitySplits: "..value
end

-- Dissect: PrevPriceParitySplits
dissect.prevpriceparitysplits = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.prevpriceparitysplits)
  local value = range:le_uint()
  local display = display.prevpriceparitysplits(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.prevpriceparitysplits, range, value, display)

  return offset + size_of.prevpriceparitysplits
end

-- Size: NewOrderID
size_of.neworderid = 8

-- Display: NewOrderID
display.neworderid = function(value)
  return "NewOrderID: "..value
end

-- Dissect: NewOrderID
dissect.neworderid = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.neworderid)
  local value = range:le_uint64()
  local display = display.neworderid(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.neworderid, range, value, display)

  return offset + size_of.neworderid
end

-- Display: Replace Order Message
display.replace_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Replace Order Message
dissect.replace_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- OrderID: 8 Byte Unsigned Fixed Width Integer
  index = dissect.orderid(buffer, index, packet, parent)

  -- NewOrderID: 8 Byte Unsigned Fixed Width Integer
  index = dissect.neworderid(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- PrevPriceParitySplits: 1 Byte Unsigned Fixed Width Integer
  index = dissect.prevpriceparitysplits(buffer, index, packet, parent)

  -- NewPriceParitySplits: 1 Byte Unsigned Fixed Width Integer
  index = dissect.newpriceparitysplits(buffer, index, packet, parent)

  return index
end

-- Dissect: Replace Order Message
dissect.replace_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.replace_order_message then
    local range = buffer(offset, 38)
    local display = display.replace_order_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.replace_order_message, range, display)
  end

  return dissect.replace_order_message_fields(buffer, offset, packet, parent)
end

-- Size: PositionChange
size_of.positionchange = 1

-- Display: PositionChange
display.positionchange = function(value)
  if value == 0 then
    return "PositionChange: Kept (0)"
  end
  if value == 1 then
    return "PositionChange: Lost (1)"
  end

  return "PositionChange: Unknown("..value..")"
end

-- Dissect: PositionChange
dissect.positionchange = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.positionchange)
  local value = range:le_uint()
  local display = display.positionchange(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.positionchange, range, value, display)

  return offset + size_of.positionchange
end

-- Display: Modify Order Message
display.modify_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Modify Order Message
dissect.modify_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- OrderID: 8 Byte Unsigned Fixed Width Integer
  index = dissect.orderid(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- PositionChange: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.positionchange(buffer, index, packet, parent)

  -- PrevPriceParitySplits: 1 Byte Unsigned Fixed Width Integer
  index = dissect.prevpriceparitysplits(buffer, index, packet, parent)

  -- NewPriceParitySplits: 1 Byte Unsigned Fixed Width Integer
  index = dissect.newpriceparitysplits(buffer, index, packet, parent)

  return index
end

-- Dissect: Modify Order Message
dissect.modify_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.modify_order_message then
    local range = buffer(offset, 31)
    local display = display.modify_order_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.modify_order_message, range, display)
  end

  return dissect.modify_order_message_fields(buffer, offset, packet, parent)
end

-- Display: Add Order Message
display.add_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message
dissect.add_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- OrderID: 8 Byte Unsigned Fixed Width Integer
  index = dissect.orderid(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index = dissect.side(buffer, index, packet, parent)

  -- FirmID: 5 Byte Ascii String
  index = dissect.firmid(buffer, index, packet, parent)

  -- NumParitySplits: 1 Byte Unsigned Fixed Width Integer
  index = dissect.numparitysplits(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
dissect.add_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message then
    local range = buffer(offset, 35)
    local display = display.add_order_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.add_order_message, range, display)
  end

  return dissect.add_order_message_fields(buffer, offset, packet, parent)
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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.lastsymbolseqnum, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.lastseqnum, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.totalrefreshpkts, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.currentrefreshpkt, range, value, display)

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
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.refresh_header_message, range, display)
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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.sessionstate, range, value, display)

  return offset + size_of.sessionstate
end

-- Size: MarketState
size_of.marketstate = 1

-- Display: MarketState
display.marketstate = function(value)
  if value == "P" then
    return "MarketState: Preopening (P)"
  end
  if value == "E" then
    return "MarketState: Early session (E)"
  end
  if value == "O" then
    return "MarketState: Core session (O)"
  end
  if value == "L" then
    return "MarketState: Late session (L)"
  end
  if value == "X" then
    return "MarketState: Closed (X)"
  end

  return "MarketState: Unknown("..value..")"
end

-- Dissect: MarketState
dissect.marketstate = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.marketstate)
  local value = range:string()
  local display = display.marketstate(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.marketstate, range, value, display)

  return offset + size_of.marketstate
end

-- Size: SSRState
size_of.ssrstate = 1

-- Display: SSRState
display.ssrstate = function(value)
  if value == "~" then
    return "SSRState: No Short Sale Restriction in Effect (~)"
  end
  if value == "E" then
    return "SSRState: Short Sale Restriction in Effect (E)"
  end

  return "SSRState: Unknown("..value..")"
end

-- Dissect: SSRState
dissect.ssrstate = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ssrstate)
  local value = range:string()
  local display = display.ssrstate(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.ssrstate, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.time, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.ssr_triggering_volume, range, value, display)

  return offset + size_of.ssr_triggering_volume
end

-- Size: SSR Triggering Exchange ID
size_of.ssr_triggering_exchange_id = 1

-- Display: SSR Triggering Exchange ID
display.ssr_triggering_exchange_id = function(value)
  if value == "A" then
    return "SSR Triggering Exchange ID: NYSE American (A)"
  end
  if value == "B" then
    return "SSR Triggering Exchange ID: NASDAQ OMX BX (B)"
  end
  if value == "C" then
    return "SSR Triggering Exchange ID: NYSE National (C)"
  end
  if value == "D" then
    return "SSR Triggering Exchange ID: FINRA (D)"
  end
  if value == "I" then
    return "SSR Triggering Exchange ID: ISE (I)"
  end
  if value == "J" then
    return "SSR Triggering Exchange ID: EDGA (J)"
  end
  if value == "K" then
    return "SSR Triggering Exchange ID: EDGX (K)"
  end
  if value == "M" then
    return "SSR Triggering Exchange ID: CHX (M)"
  end
  if value == "N" then
    return "SSR Triggering Exchange ID: NYSE (N)"
  end
  if value == "P" then
    return "SSR Triggering Exchange ID: NYSE Arca (P)"
  end
  if value == "Q" then
    return "SSR Triggering Exchange ID: NASDAQ (Q)"
  end
  if value == "S" then
    return "SSR Triggering Exchange ID: CTS (S)"
  end
  if value == "T" then
    return "SSR Triggering Exchange ID: NASDAQ OMX (T)"
  end
  if value == "V" then
    return "SSR Triggering Exchange ID: IEX (V)"
  end
  if value == "W" then
    return "SSR Triggering Exchange ID: CBSX (W)"
  end
  if value == "X" then
    return "SSR Triggering Exchange ID: NASDAQ OMX PSX (X)"
  end
  if value == "Y" then
    return "SSR Triggering Exchange ID: BATS Y (Y)"
  end
  if value == "Z" then
    return "SSR Triggering Exchange ID: BATS (Z)"
  end

  return "SSR Triggering Exchange ID: Unknown("..value..")"
end

-- Dissect: SSR Triggering Exchange ID
dissect.ssr_triggering_exchange_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ssr_triggering_exchange_id)
  local value = range:string()
  local display = display.ssr_triggering_exchange_id(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.ssr_triggering_exchange_id, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.price_2, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.price_1, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.reserved4, range, value, display)

  return offset + size_of.reserved4
end

-- Size: Halt Condition
size_of.halt_condition = 1

-- Display: Halt Condition
display.halt_condition = function(value)
  if value == "~" then
    return "Halt Condition: Security not delayedhalted (~)"
  end
  if value == " " then
    return "Halt Condition: Not delayedhalted NYSE Tape A only ( )"
  end
  if value == "D" then
    return "Halt Condition: News dissemination (D)"
  end
  if value == "I" then
    return "Halt Condition: Order imbalance (I)"
  end
  if value == "P" then
    return "Halt Condition: News pending (P)"
  end
  if value == "M" then
    return "Halt Condition: LULD pause (M)"
  end
  if value == "S" then
    return "Halt Condition: Related security not used (S)"
  end
  if value == "X" then
    return "Halt Condition: Equipment changeover (X)"
  end
  if value == "Z" then
    return "Halt Condition: No openNo resume (Z)"
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
dissect.halt_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.halt_condition)
  local value = range:string()
  local display = display.halt_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.halt_condition, range, value, display)

  return offset + size_of.halt_condition
end

-- Size: Security Status
size_of.security_status = 1

-- Display: Security Status
display.security_status = function(value)
  if value == "3" then
    return "Security Status: Opening Delay (3)"
  end
  if value == "4" then
    return "Security Status: Trading Halt (4)"
  end
  if value == "5" then
    return "Security Status: Resume (5)"
  end
  if value == "6" then
    return "Security Status: No openno resume (6)"
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
  if value == "E" then
    return "Security Status: Early session (E)"
  end
  if value == "O" then
    return "Security Status: Core session (O)"
  end
  if value == "L" then
    return "Security Status: Late session NonNYSE only (L)"
  end
  if value == "X" then
    return "Security Status: Closed (X)"
  end
  if value == "T" then
    return "Security Status: Time (T)"
  end
  if value == "I" then
    return "Security Status: Price Indication (I)"
  end
  if value == "G" then
    return "Security Status: PreOpening Price Indication (G)"
  end
  if value == "R" then
    return "Security Status: Rule 15 Indication (R)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
dissect.security_status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_status)
  local value = range:string()
  local display = display.security_status(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.security_status, range, value, display)

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

  -- Security Status: 1 Byte Ascii String Enum with 16 values
  index = dissect.security_status(buffer, index, packet, parent)

  -- Halt Condition: 1 Byte Ascii String Enum with 12 values
  index = dissect.halt_condition(buffer, index, packet, parent)

  -- Reserved4: 4 Byte
  index = dissect.reserved4(buffer, index, packet, parent)

  -- Price 1: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price_1(buffer, index, packet, parent)

  -- Price 2: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price_2(buffer, index, packet, parent)

  -- SSR Triggering Exchange ID: 1 Byte Ascii String Enum with 18 values
  index = dissect.ssr_triggering_exchange_id(buffer, index, packet, parent)

  -- SSR Triggering Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ssr_triggering_volume(buffer, index, packet, parent)

  -- Time: 4 Byte Unsigned Fixed Width Integer
  index = dissect.time(buffer, index, packet, parent)

  -- SSRState: 1 Byte Ascii String Enum with 2 values
  index = dissect.ssrstate(buffer, index, packet, parent)

  -- MarketState: 1 Byte Ascii String Enum with 5 values
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
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.security_status_message, range, display)
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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.nextsourceseqnum, range, value, display)

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
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.symbol_clear_message, range, display)
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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.channelid, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.productid, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.endseqnum, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.beginseqnum, range, value, display)

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
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.message_unavailable_message, range, display)
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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.sourceid, range, value, display)

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
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.refresh_request_message, range, display)
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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.retransmitmethod, range, value, display)

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
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.symbol_index_mapping_request_message, range, display)
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
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.heartbeat_response_message, range, display)
  end

  return dissect.heartbeat_response_message_fields(buffer, offset, packet, parent)
end

-- Size: Status
size_of.status = 1

-- Display: Status
display.status = function(value)
  if value == "0" then
    return "Status: Message was accepted (0)"
  end
  if value == "1" then
    return "Status: Rejected due to an Invalid Source ID (1)"
  end
  if value == "2" then
    return "Status: Invalid sequence range (2)"
  end
  if value == "3" then
    return "Status: Maximum sequence range (3)"
  end
  if value == "4" then
    return "Status: Maximum request in a day (4)"
  end
  if value == "5" then
    return "Status: Maximum refresh requests in a day (5)"
  end
  if value == "6" then
    return "Status: Old SeqNum TTL (6)"
  end
  if value == "7" then
    return "Status: Invalid Channel ID (7)"
  end
  if value == "8" then
    return "Status: Invalid Product ID (8)"
  end
  if value == "9" then
    return "Status: 1 Invalid MsgType or 2 Mismatch between MsgType and MsgSize (9)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
dissect.status = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.status)
  local value = range:string()
  local display = display.status(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.status, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.requestseqnum, range, value, display)

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

  -- Status: 1 Byte Ascii String Enum with 10 values
  index = dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
dissect.request_response_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.request_response_message then
    local range = buffer(offset, 25)
    local display = display.request_response_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.request_response_message, range, display)
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
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.retransmission_request_message, range, display)
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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.reserved2, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.unit_of_trade, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.mpv, range, value, display)

  return offset + size_of.mpv
end

-- Size: Round Lot
size_of.round_lot = 1

-- Display: Round Lot
display.round_lot = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
dissect.round_lot = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.round_lot)
  local value = range:string()
  local display = display.round_lot(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.round_lot, range, value, display)

  return offset + size_of.round_lot
end

-- Size: Price Resolution
size_of.price_resolution = 1

-- Display: Price Resolution
display.price_resolution = function(value)
  if value == 0 then
    return "Price Resolution: All Penny (0)"
  end
  if value == 1 then
    return "Price Resolution: PennyNickel (1)"
  end
  if value == 5 then
    return "Price Resolution: NickelDime (5)"
  end

  return "Price Resolution: Unknown("..value..")"
end

-- Dissect: Price Resolution
dissect.price_resolution = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price_resolution)
  local value = range:le_uint()
  local display = display.price_resolution(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.price_resolution, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.prevclosevolume, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.prevcloseprice, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.lot_size, range, value, display)

  return offset + size_of.lot_size
end

-- Size: Security Type
size_of.security_type = 1

-- Display: Security Type
display.security_type = function(value)
  if value == "A" then
    return "Security Type: ADR (A)"
  end
  if value == "C" then
    return "Security Type: COMMON STOCK (C)"
  end
  if value == "D" then
    return "Security Type: DEBENTURES (D)"
  end
  if value == "E" then
    return "Security Type: ETF (E)"
  end
  if value == "F" then
    return "Security Type: FOREIGN (F)"
  end
  if value == "H" then
    return "Security Type: US DEPOSITARY SHARES (H)"
  end
  if value == "I" then
    return "Security Type: UNITS (I)"
  end
  if value == "L" then
    return "Security Type: INDEX LINKED NOTES (L)"
  end
  if value == "M" then
    return "Security Type: MISCLIQUID TRUST (M)"
  end
  if value == "O" then
    return "Security Type: ORDINARY SHARES (O)"
  end
  if value == "P" then
    return "Security Type: PREFERRED STOCK (P)"
  end
  if value == "R" then
    return "Security Type: RIGHTS (R)"
  end
  if value == "S" then
    return "Security Type: SHARES OF BENEFICIARY INTEREST (S)"
  end
  if value == "T" then
    return "Security Type: TEST (T)"
  end
  if value == "U" then
    return "Security Type: UNITS (U)"
  end
  if value == "W" then
    return "Security Type: WARRANT (W)"
  end

  return "Security Type: Unknown("..value..")"
end

-- Dissect: Security Type
dissect.security_type = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_type)
  local value = range:string()
  local display = display.security_type(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.security_type, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.pricescalecode, range, value, display)

  return offset + size_of.pricescalecode
end

-- Size: Exchange Code
size_of.exchange_code = 1

-- Display: Exchange Code
display.exchange_code = function(value)
  if value == "A" then
    return "Exchange Code: NYSE American (A)"
  end
  if value == "C" then
    return "Exchange Code: NYSE National (C)"
  end
  if value == "N" then
    return "Exchange Code: NYSE (N)"
  end
  if value == "P" then
    return "Exchange Code: NYSE Arca (P)"
  end
  if value == "Q" then
    return "Exchange Code: NASDAQ (Q)"
  end
  if value == "V" then
    return "Exchange Code: IEX (V)"
  end
  if value == "Z" then
    return "Exchange Code: BATS (Z)"
  end
  if value == "B" then
    return "Exchange Code: Global OTC (B)"
  end
  if value == "U" then
    return "Exchange Code: OTCBB (U)"
  end
  if value == "V" then
    return "Exchange Code: Other OTC (V)"
  end

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
dissect.exchange_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.exchange_code)
  local value = range:string()
  local display = display.exchange_code(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.exchange_code, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.system_id, range, value, display)

  return offset + size_of.system_id
end

-- Size: Market ID
size_of.market_id = 2

-- Display: Market ID
display.market_id = function(value)
  if value == 1 then
    return "Market ID: NYSE Equities (1)"
  end
  if value == 3 then
    return "Market ID: NYSE Arca Equities (3)"
  end
  if value == 4 then
    return "Market ID: NYSE Arca Options (4)"
  end
  if value == 5 then
    return "Market ID: NYSE Bonds (5)"
  end
  if value == 6 then
    return "Market ID: Global OTC (6)"
  end
  if value == 8 then
    return "Market ID: NYSE Amex Options (8)"
  end
  if value == 9 then
    return "Market ID: NYSE American Equities (9)"
  end
  if value == 10 then
    return "Market ID: NYSE National Options (10)"
  end

  return "Market ID: Unknown("..value..")"
end

-- Dissect: Market ID
dissect.market_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.market_id)
  local value = range:le_uint()
  local display = display.market_id(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.market_id, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.reserved1, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.symbol, range, value, display)

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

  -- Market ID: 2 Byte Unsigned Fixed Width Integer Enum with 8 values
  index = dissect.market_id(buffer, index, packet, parent)

  -- System ID: 1 Byte Unsigned Fixed Width Integer
  index = dissect.system_id(buffer, index, packet, parent)

  -- Exchange Code: 1 Byte Ascii String Enum with 10 values
  index = dissect.exchange_code(buffer, index, packet, parent)

  -- PriceScaleCode: 1 Byte Unsigned Fixed Width Integer
  index = dissect.pricescalecode(buffer, index, packet, parent)

  -- Security Type: 1 Byte Ascii String Enum with 16 values
  index = dissect.security_type(buffer, index, packet, parent)

  -- Lot Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.lot_size(buffer, index, packet, parent)

  -- PrevClosePrice: 4 Byte Unsigned Fixed Width Integer
  index = dissect.prevcloseprice(buffer, index, packet, parent)

  -- PrevCloseVolume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.prevclosevolume(buffer, index, packet, parent)

  -- Price Resolution: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index = dissect.price_resolution(buffer, index, packet, parent)

  -- Round Lot: 1 Byte Ascii String Enum with 2 values
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
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.symbol_index_mapping_message, range, display)
  end

  return dissect.symbol_index_mapping_message_fields(buffer, offset, packet, parent)
end

-- Size: Id
size_of.id = 4

-- Display: Id
display.id = function(value)
  return "Id: "..value
end

-- Dissect: Id
dissect.id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.id)
  local value = range:le_uint()
  local display = display.id(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.id, range, value, display)

  return offset + size_of.id
end

-- Display: Source Time Reference Message
display.source_time_reference_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Source Time Reference Message
dissect.source_time_reference_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.id(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- SourceTime: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetime(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
dissect.source_time_reference_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.source_time_reference_message then
    local range = buffer(offset, 12)
    local display = display.source_time_reference_message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.source_time_reference_message, range, display)
  end

  return dissect.source_time_reference_message_fields(buffer, offset, packet, parent)
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
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.sequence_number_reset_message, range, display)
  end

  return dissect.sequence_number_reset_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Sequence Number Reset Message
  if code == 1 then
    return 10
  end
  -- Size of Source Time Reference Message
  if code == 2 then
    return 12
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
  -- Size of Add Order Message
  if code == 100 then
    return 35
  end
  -- Size of Modify Order Message
  if code == 101 then
    return 31
  end
  -- Size of Replace Order Message
  if code == 104 then
    return 38
  end
  -- Size of Delete Order Message
  if code == 102 then
    return 21
  end
  -- Size of Trade Cancel Message
  if code == 112 then
    return 16
  end
  -- Size of Cross Trade Message
  if code == 111 then
    return 25
  end
  -- Size of Cross Correction Message
  if code == 113 then
    return 20
  end
  -- Size of Retail Price Improvement Message
  if code == 114 then
    return 13
  end
  -- Size of Add Order Refresh Message
  if code == 106 then
    return 39
  end
  -- Size of Imbalance Message
  if code == 105 then
    return 63
  end
  -- Size of Order Execution Message
  if code == 103 then
    return 38
  end
  -- Size of Non-Displayed Trade Message
  if code == 110 then
    return 29
  end
  -- Size of Stock Summary Message
  if code == 223 then
    return 32
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(code, buffer, offset, packet, parent)
  -- Dissect Sequence Number Reset Message
  if code == 1 then
    return dissect.sequence_number_reset_message(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if code == 2 then
    return dissect.source_time_reference_message(buffer, offset, packet, parent)
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
  -- Dissect Add Order Message
  if code == 100 then
    return dissect.add_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if code == 101 then
    return dissect.modify_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if code == 104 then
    return dissect.replace_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if code == 102 then
    return dissect.delete_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if code == 112 then
    return dissect.trade_cancel_message(buffer, offset, packet, parent)
  end
  -- Dissect Cross Trade Message
  if code == 111 then
    return dissect.cross_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Cross Correction Message
  if code == 113 then
    return dissect.cross_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Retail Price Improvement Message
  if code == 114 then
    return dissect.retail_price_improvement_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Refresh Message
  if code == 106 then
    return dissect.add_order_refresh_message(buffer, offset, packet, parent)
  end
  -- Dissect Imbalance Message
  if code == 105 then
    return dissect.imbalance_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if code == 103 then
    return dissect.order_execution_message(buffer, offset, packet, parent)
  end
  -- Dissect Non-Displayed Trade Message
  if code == 110 then
    return dissect.non_displayed_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Summary Message
  if code == 223 then
    return dissect.stock_summary_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent)
  -- Parse Payload type dependency
  local code = buffer(offset - 2, 2):le_uint()

  if not show.payload then
    return dissect.payload_branches(code, buffer, offset, packet, parent)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(nyse_integratedfeed_xdp_2_1.fields.payload, range, display)

  return dissect.payload_branches(code, buffer, offset, packet, element)
end

-- Size: Message Type
size_of.message_type = 2

-- Display: Message Type
display.message_type = function(value)
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end
  if value == 2 then
    return "Message Type: Source Time Reference Message (2)"
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
  if value == 100 then
    return "Message Type: Add Order Message (100)"
  end
  if value == 101 then
    return "Message Type: Modify Order Message (101)"
  end
  if value == 104 then
    return "Message Type: Replace Order Message (104)"
  end
  if value == 102 then
    return "Message Type: Delete Order Message (102)"
  end
  if value == 112 then
    return "Message Type: Trade Cancel Message (112)"
  end
  if value == 111 then
    return "Message Type: Cross Trade Message (111)"
  end
  if value == 113 then
    return "Message Type: Cross Correction Message (113)"
  end
  if value == 114 then
    return "Message Type: Retail Price Improvement Message (114)"
  end
  if value == 106 then
    return "Message Type: Add Order Refresh Message (106)"
  end
  if value == 105 then
    return "Message Type: Imbalance Message (105)"
  end
  if value == 103 then
    return "Message Type: Order Execution Message (103)"
  end
  if value == 110 then
    return "Message Type: Non-Displayed Trade Message (110)"
  end
  if value == 223 then
    return "Message Type: Stock Summary Message (223)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_integratedfeed_xdp_2_1.fields.message_type, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.message_size, range, value, display)

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

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 25 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 4)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.message_header, range, display)
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

  -- Payload: Runtime Type with 25 branches
  index = dissect.payload(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.message, range, display)
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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.nanoseconds, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.timestamp, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.sequence_number, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.message_count, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.delivery_flag, range, value, display)

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

  parent:add(nyse_integratedfeed_xdp_2_1.fields.packet_size, range, value, display)

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
    parent = parent:add(nyse_integratedfeed_xdp_2_1.fields.packet_header, range, display)
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
function nyse_integratedfeed_xdp_2_1.init()
end

-- Dissector for Nyse IntegratedFeed Xdp 2.1
function nyse_integratedfeed_xdp_2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_integratedfeed_xdp_2_1.name

  -- Dissect protocol
  local protocol = parent:add(nyse_integratedfeed_xdp_2_1, buffer(), nyse_integratedfeed_xdp_2_1.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_integratedfeed_xdp_2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_integratedfeed_xdp_2_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse IntegratedFeed Xdp 2.1
local function nyse_integratedfeed_xdp_2_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_integratedfeed_xdp_2_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_integratedfeed_xdp_2_1
  nyse_integratedfeed_xdp_2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Nyse IntegratedFeed Xdp 2.1 Heuristic
nyse_integratedfeed_xdp_2_1:register_heuristic("udp", nyse_integratedfeed_xdp_2_1_heuristic)

-----------------------------------------------------------------------
-- This script was generated by the open markets initiative
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- Protocol:
-- Version: 2.1
-- Date: Monday, January 29, 2018
-- Script:
-- Source Version: 1.2.0.0
-- Compiler Version: 1.0
-- License: Public/GPLv3
-- Authors: Omi Developers
-----------------------------------------------------------------------
