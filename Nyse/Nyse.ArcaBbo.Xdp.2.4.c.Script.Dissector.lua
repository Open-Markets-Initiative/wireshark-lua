-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse ArcaBbo Xdp 2.4.c Protocol
local nyse_arcabbo_xdp_2_4_c = Proto("Nyse.ArcaBbo.Xdp.2.4.c.Lua", "Nyse ArcaBbo Xdp 2.4.c")

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

-- Nyse ArcaBbo Xdp 2.4.c Format Options
format.heartbeat_response_message = true
format.message = true
format.message_header = true
format.message_unavailable_message = true
format.packet = true
format.packet_header = true
format.quote_message = true
format.refresh_header_message = true
format.refresh_request_message = true
format.request_response_message = true
format.retransmission_request_message = true
format.security_status_message = true
format.sequence_number_reset_message = true
format.source_time_reference_message = true
format.symbol_clear_message = true
format.symbol_index_mapping_message = true
format.symbol_index_mapping_request_message = true
format.trading_session_change_message = true
format.payload = true

-- Nyse ArcaBbo Xdp 2.4.c Element Dissection Options
show.heartbeat_response_message = true
show.message = true
show.message_header = true
show.message_unavailable_message = true
show.packet = true
show.packet_header = true
show.quote_message = true
show.refresh_header_message = true
show.refresh_request_message = true
show.request_response_message = true
show.retransmission_request_message = true
show.security_status_message = true
show.sequence_number_reset_message = true
show.source_time_reference_message = true
show.symbol_clear_message = true
show.symbol_index_mapping_message = true
show.symbol_index_mapping_request_message = true
show.trading_session_change_message = true
show.payload = false

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse ArcaBbo Xdp 2.4.c Fields
nyse_arcabbo_xdp_2_4_c.fields.ask__price = ProtoField.new("Ask  Price", "nyse.arcabbo.xdp.askprice", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.arcabbo.xdp.askvolume", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.beginseqnum = ProtoField.new("BeginSeqNum", "nyse.arcabbo.xdp.beginseqnum", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.bid_price = ProtoField.new("Bid Price", "nyse.arcabbo.xdp.bidprice", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.arcabbo.xdp.bidvolume", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.channelid = ProtoField.new("ChannelID", "nyse.arcabbo.xdp.channelid", ftypes.UINT8)
nyse_arcabbo_xdp_2_4_c.fields.currentrefreshpkt = ProtoField.new("CurrentRefreshPkt", "nyse.arcabbo.xdp.currentrefreshpkt", ftypes.UINT16)
nyse_arcabbo_xdp_2_4_c.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.arcabbo.xdp.deliveryflag", ftypes.UINT8)
nyse_arcabbo_xdp_2_4_c.fields.endseqnum = ProtoField.new("EndSeqNum", "nyse.arcabbo.xdp.endseqnum", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.arcabbo.xdp.exchangecode", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.arcabbo.xdp.haltcondition", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.arcabbo.xdp.heartbeatresponsemessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.id = ProtoField.new("Id", "nyse.arcabbo.xdp.id", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.lastseqnum = ProtoField.new("LastSeqNum", "nyse.arcabbo.xdp.lastseqnum", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.lastsymbolseqnum = ProtoField.new("LastSymbolSeqNum", "nyse.arcabbo.xdp.lastsymbolseqnum", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.lot_size = ProtoField.new("Lot Size", "nyse.arcabbo.xdp.lotsize", ftypes.UINT16)
nyse_arcabbo_xdp_2_4_c.fields.market_id = ProtoField.new("Market ID", "nyse.arcabbo.xdp.marketid", ftypes.UINT16)
nyse_arcabbo_xdp_2_4_c.fields.marketstate = ProtoField.new("MarketState", "nyse.arcabbo.xdp.marketstate", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.message = ProtoField.new("Message", "nyse.arcabbo.xdp.message", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.message_count = ProtoField.new("Message Count", "nyse.arcabbo.xdp.messagecount", ftypes.UINT8)
nyse_arcabbo_xdp_2_4_c.fields.message_header = ProtoField.new("Message Header", "nyse.arcabbo.xdp.messageheader", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.message_size = ProtoField.new("Message Size", "nyse.arcabbo.xdp.messagesize", ftypes.UINT16)
nyse_arcabbo_xdp_2_4_c.fields.message_type = ProtoField.new("Message Type", "nyse.arcabbo.xdp.messagetype", ftypes.UINT16)
nyse_arcabbo_xdp_2_4_c.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.arcabbo.xdp.messageunavailablemessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.mpv = ProtoField.new("MPV", "nyse.arcabbo.xdp.mpv", ftypes.UINT16)
nyse_arcabbo_xdp_2_4_c.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.arcabbo.xdp.nanoseconds", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.nextsourceseqnum = ProtoField.new("NextSourceSeqNum", "nyse.arcabbo.xdp.nextsourceseqnum", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.packet = ProtoField.new("Packet", "nyse.arcabbo.xdp.packet", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.packet_header = ProtoField.new("Packet Header", "nyse.arcabbo.xdp.packetheader", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.packet_size = ProtoField.new("Packet Size", "nyse.arcabbo.xdp.packetsize", ftypes.UINT16)
nyse_arcabbo_xdp_2_4_c.fields.payload = ProtoField.new("Payload", "nyse.arcabbo.xdp.payload", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.prevcloseprice = ProtoField.new("PrevClosePrice", "nyse.arcabbo.xdp.prevcloseprice", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.prevclosevolume = ProtoField.new("PrevCloseVolume", "nyse.arcabbo.xdp.prevclosevolume", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.price_1 = ProtoField.new("Price 1", "nyse.arcabbo.xdp.price1", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.price_2 = ProtoField.new("Price 2", "nyse.arcabbo.xdp.price2", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.arcabbo.xdp.priceresolution", ftypes.UINT8)
nyse_arcabbo_xdp_2_4_c.fields.pricescalecode = ProtoField.new("PriceScaleCode", "nyse.arcabbo.xdp.pricescalecode", ftypes.UINT8)
nyse_arcabbo_xdp_2_4_c.fields.productid = ProtoField.new("ProductID", "nyse.arcabbo.xdp.productid", ftypes.UINT8)
nyse_arcabbo_xdp_2_4_c.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.arcabbo.xdp.quotecondition", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.quote_message = ProtoField.new("Quote Message", "nyse.arcabbo.xdp.quotemessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.arcabbo.xdp.refreshheadermessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.arcabbo.xdp.refreshrequestmessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.arcabbo.xdp.requestresponsemessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.requestseqnum = ProtoField.new("RequestSeqNum", "nyse.arcabbo.xdp.requestseqnum", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.reserved1 = ProtoField.new("Reserved1", "nyse.arcabbo.xdp.reserved1", ftypes.BYTES)
nyse_arcabbo_xdp_2_4_c.fields.reserved2 = ProtoField.new("Reserved2", "nyse.arcabbo.xdp.reserved2", ftypes.BYTES)
nyse_arcabbo_xdp_2_4_c.fields.reserved4 = ProtoField.new("Reserved4", "nyse.arcabbo.xdp.reserved4", ftypes.BYTES)
nyse_arcabbo_xdp_2_4_c.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.arcabbo.xdp.retransmissionrequestmessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.retransmitmethod = ProtoField.new("RetransmitMethod", "nyse.arcabbo.xdp.retransmitmethod", ftypes.UINT8)
nyse_arcabbo_xdp_2_4_c.fields.round_lot = ProtoField.new("Round Lot", "nyse.arcabbo.xdp.roundlot", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.rpi_indicator = ProtoField.new("RPI Indicator", "nyse.arcabbo.xdp.rpiindicator", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.security_status = ProtoField.new("Security Status", "nyse.arcabbo.xdp.securitystatus", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.arcabbo.xdp.securitystatusmessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.security_type = ProtoField.new("Security Type", "nyse.arcabbo.xdp.securitytype", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.arcabbo.xdp.sequencenumber", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.arcabbo.xdp.sequencenumberresetmessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.sessionstate = ProtoField.new("SessionState", "nyse.arcabbo.xdp.sessionstate", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.arcabbo.xdp.sourcetimereferencemessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.sourceid = ProtoField.new("SourceID", "nyse.arcabbo.xdp.sourceid", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.sourcetime = ProtoField.new("SourceTime", "nyse.arcabbo.xdp.sourcetime", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.sourcetimens = ProtoField.new("SourceTimeNS", "nyse.arcabbo.xdp.sourcetimens", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.ssr_triggering_exchange_id = ProtoField.new("SSR Triggering Exchange ID", "nyse.arcabbo.xdp.ssrtriggeringexchangeid", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.ssr_triggering_volume = ProtoField.new("SSR Triggering Volume", "nyse.arcabbo.xdp.ssrtriggeringvolume", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.ssrstate = ProtoField.new("SSRState", "nyse.arcabbo.xdp.ssrstate", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.status = ProtoField.new("Status", "nyse.arcabbo.xdp.status", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.symbol = ProtoField.new("Symbol", "nyse.arcabbo.xdp.symbol", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.arcabbo.xdp.symbolclearmessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.arcabbo.xdp.symbolindexmappingmessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.arcabbo.xdp.symbolindexmappingrequestmessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.symbolindex = ProtoField.new("SymbolIndex", "nyse.arcabbo.xdp.symbolindex", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.symbolseqnum = ProtoField.new("SymbolSeqNum", "nyse.arcabbo.xdp.symbolseqnum", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.system_id = ProtoField.new("System ID", "nyse.arcabbo.xdp.systemid", ftypes.UINT8)
nyse_arcabbo_xdp_2_4_c.fields.time = ProtoField.new("Time", "nyse.arcabbo.xdp.time", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.timestamp = ProtoField.new("Timestamp", "nyse.arcabbo.xdp.timestamp", ftypes.UINT32)
nyse_arcabbo_xdp_2_4_c.fields.totalrefreshpkts = ProtoField.new("TotalRefreshPkts", "nyse.arcabbo.xdp.totalrefreshpkts", ftypes.UINT16)
nyse_arcabbo_xdp_2_4_c.fields.trading_session = ProtoField.new("Trading Session", "nyse.arcabbo.xdp.tradingsession", ftypes.UINT8)
nyse_arcabbo_xdp_2_4_c.fields.trading_session_change_message = ProtoField.new("Trading Session Change Message", "nyse.arcabbo.xdp.tradingsessionchangemessage", ftypes.STRING)
nyse_arcabbo_xdp_2_4_c.fields.unit_of_trade = ProtoField.new("Unit of Trade", "nyse.arcabbo.xdp.unitoftrade", ftypes.UINT16)

-----------------------------------------------------------------------
-- Dissect Nyse ArcaBbo Xdp 2.4.c
-----------------------------------------------------------------------

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.reserved4, range, value, display)

  return offset + size_of.reserved4
end

-- Size: RPI Indicator
size_of.rpi_indicator = 1

-- Display: RPI Indicator
display.rpi_indicator = function(value)
  if value == " " then
    return "RPI Indicator: No retail interest ( )"
  end
  if value == "A" then
    return "RPI Indicator: Retail Interest on Bid side (A)"
  end
  if value == "B" then
    return "RPI Indicator: Retail Interest on Offer side (B)"
  end
  if value == "C" then
    return "RPI Indicator: Retail Interest on the Bid and Offer side (C)"
  end

  return "RPI Indicator: Unknown("..value..")"
end

-- Dissect: RPI Indicator
dissect.rpi_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.rpi_indicator)
  local value = range:string()
  local display = display.rpi_indicator(value, buffer, offset, packet, parent)

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.rpi_indicator, range, value, display)

  return offset + size_of.rpi_indicator
end

-- Size: Quote Condition
size_of.quote_condition = 1

-- Display: Quote Condition
display.quote_condition = function(value)
  if value == "C" then
    return "Quote Condition: Closing (C)"
  end
  if value == "O" then
    return "Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Quote Condition: Regular Quote (R)"
  end
  if value == "W" then
    return "Quote Condition: Slow on the Bid and Ask (W)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
dissect.quote_condition = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.quote_condition)
  local value = range:string()
  local display = display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.quote_condition, range, value, display)

  return offset + size_of.quote_condition
end

-- Size: Bid Volume
size_of.bid_volume = 4

-- Display: Bid Volume
display.bid_volume = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
dissect.bid_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_volume)
  local value = range:le_uint()
  local display = display.bid_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.bid_volume, range, value, display)

  return offset + size_of.bid_volume
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
  local value = range:le_uint()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.bid_price, range, value, display)

  return offset + size_of.bid_price
end

-- Size: Ask Volume
size_of.ask_volume = 4

-- Display: Ask Volume
display.ask_volume = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
dissect.ask_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask_volume)
  local value = range:le_uint()
  local display = display.ask_volume(value, buffer, offset, packet, parent)

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.ask_volume, range, value, display)

  return offset + size_of.ask_volume
end

-- Size: Ask  Price
size_of.ask__price = 4

-- Display: Ask  Price
display.ask__price = function(value)
  return "Ask  Price: "..value
end

-- Dissect: Ask  Price
dissect.ask__price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.ask__price)
  local value = range:le_uint()
  local display = display.ask__price(value, buffer, offset, packet, parent)

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.ask__price, range, value, display)

  return offset + size_of.ask__price
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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.symbolseqnum, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.symbolindex, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.sourcetimens, range, value, display)

  return offset + size_of.sourcetimens
end

-- Display: Quote Message
display.quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote Message
dissect.quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- Ask  Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask__price(buffer, index, packet, parent)

  -- Ask Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.ask_volume(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_volume(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 4 values
  index = dissect.quote_condition(buffer, index, packet, parent)

  -- RPI Indicator: 1 Byte Ascii String Enum with 4 values
  index = dissect.rpi_indicator(buffer, index, packet, parent)

  -- Reserved4: 4 Byte
  index = dissect.reserved4(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Message
dissect.quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.quote_message then
    local range = buffer(offset, 34)
    local display = display.quote_message(buffer, packet, parent)
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.quote_message, range, display)
  end

  return dissect.quote_message_fields(buffer, offset, packet, parent)
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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.lastsymbolseqnum, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.lastseqnum, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.totalrefreshpkts, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.currentrefreshpkt, range, value, display)

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
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.refresh_header_message, range, display)
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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.sessionstate, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.marketstate, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.ssrstate, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.time, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.ssr_triggering_volume, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.ssr_triggering_exchange_id, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.price_2, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.price_1, range, value, display)

  return offset + size_of.price_1
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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.halt_condition, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.security_status, range, value, display)

  return offset + size_of.security_status
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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.sourcetime, range, value, display)

  return offset + size_of.sourcetime
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
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.security_status_message, range, display)
  end

  return dissect.security_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Trading Session
size_of.trading_session = 1

-- Display: Trading Session
display.trading_session = function(value)
  return "Trading Session: "..value
end

-- Dissect: Trading Session
dissect.trading_session = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trading_session)
  local value = range:le_uint()
  local display = display.trading_session(value, buffer, offset, packet, parent)

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.trading_session, range, value, display)

  return offset + size_of.trading_session
end

-- Display: Trading Session Change Message
display.trading_session_change_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Session Change Message
dissect.trading_session_change_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- SourceTime: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetime(buffer, index, packet, parent)

  -- SourceTimeNS: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sourcetimens(buffer, index, packet, parent)

  -- SymbolIndex: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolindex(buffer, index, packet, parent)

  -- SymbolSeqNum: 4 Byte Unsigned Fixed Width Integer
  index = dissect.symbolseqnum(buffer, index, packet, parent)

  -- Trading Session: 1 Byte Unsigned Fixed Width Integer
  index = dissect.trading_session(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Change Message
dissect.trading_session_change_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trading_session_change_message then
    local range = buffer(offset, 17)
    local display = display.trading_session_change_message(buffer, packet, parent)
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.trading_session_change_message, range, display)
  end

  return dissect.trading_session_change_message_fields(buffer, offset, packet, parent)
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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.nextsourceseqnum, range, value, display)

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
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.symbol_clear_message, range, display)
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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.channelid, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.productid, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.endseqnum, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.beginseqnum, range, value, display)

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
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.message_unavailable_message, range, display)
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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.sourceid, range, value, display)

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
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.refresh_request_message, range, display)
  end

  return dissect.refresh_request_message_fields(buffer, offset, packet, parent)
end

-- Size: RetransmitMethod
size_of.retransmitmethod = 1

-- Display: RetransmitMethod
display.retransmitmethod = function(value)
  if value == 0 then
    return "RetransmitMethod: UDP (0)"
  end

  return "RetransmitMethod: Unknown("..value..")"
end

-- Dissect: RetransmitMethod
dissect.retransmitmethod = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.retransmitmethod)
  local value = range:le_uint()
  local display = display.retransmitmethod(value, buffer, offset, packet, parent)

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.retransmitmethod, range, value, display)

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

  -- RetransmitMethod: 1 Byte Unsigned Fixed Width Integer Enum with 1 values
  index = dissect.retransmitmethod(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
dissect.symbol_index_mapping_request_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_index_mapping_request_message then
    local range = buffer(offset, 17)
    local display = display.symbol_index_mapping_request_message(buffer, packet, parent)
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.symbol_index_mapping_request_message, range, display)
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
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.heartbeat_response_message, range, display)
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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.status, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.requestseqnum, range, value, display)

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
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.request_response_message, range, display)
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
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.retransmission_request_message, range, display)
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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.reserved2, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.unit_of_trade, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.mpv, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.round_lot, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.price_resolution, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.prevclosevolume, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.prevcloseprice, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.lot_size, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.security_type, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.pricescalecode, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.exchange_code, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.system_id, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.market_id, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.reserved1, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.symbol, range, value, display)

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
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.symbol_index_mapping_message, range, display)
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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.id, range, value, display)

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
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.source_time_reference_message, range, display)
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
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.sequence_number_reset_message, range, display)
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
  -- Size of Trading Session Change Message
  if code == 33 then
    return 17
  end
  -- Size of Security Status Message
  if code == 34 then
    return 42
  end
  -- Size of Refresh Header Message
  if code == 35 then
    return 12
  end
  -- Size of Quote Message
  if code == 140 then
    return 34
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
  -- Dissect Trading Session Change Message
  if code == 33 then
    return dissect.trading_session_change_message(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if code == 34 then
    return dissect.security_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if code == 35 then
    return dissect.refresh_header_message(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if code == 140 then
    return dissect.quote_message(buffer, offset, packet, parent)
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
  local element = parent:add(nyse_arcabbo_xdp_2_4_c.fields.payload, range, display)

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
  if value == 33 then
    return "Message Type: Trading Session Change Message (33)"
  end
  if value == 34 then
    return "Message Type: Security Status Message (34)"
  end
  if value == 35 then
    return "Message Type: Refresh Header Message (35)"
  end
  if value == 140 then
    return "Message Type: Quote Message (140)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.message_type, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.message_size, range, value, display)

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

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 14 values
  index = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 4)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.message_header, range, display)
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

  -- Payload: Runtime Type with 14 branches
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
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.message, range, display)
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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.nanoseconds, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.timestamp, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.sequence_number, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.message_count, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.delivery_flag, range, value, display)

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

  parent:add(nyse_arcabbo_xdp_2_4_c.fields.packet_size, range, value, display)

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
    parent = parent:add(nyse_arcabbo_xdp_2_4_c.fields.packet_header, range, display)
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
function nyse_arcabbo_xdp_2_4_c.init()
end

-- Dissector for Nyse ArcaBbo Xdp 2.4.c
function nyse_arcabbo_xdp_2_4_c.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = nyse_arcabbo_xdp_2_4_c.name

  -- Dissect protocol
  local protocol = parent:add(nyse_arcabbo_xdp_2_4_c, buffer(), nyse_arcabbo_xdp_2_4_c.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, nyse_arcabbo_xdp_2_4_c)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.nyse_arcabbo_xdp_2_4_c_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse ArcaBbo Xdp 2.4.c
local function nyse_arcabbo_xdp_2_4_c_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.nyse_arcabbo_xdp_2_4_c_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = nyse_arcabbo_xdp_2_4_c
  nyse_arcabbo_xdp_2_4_c.dissector(buffer, packet, parent)

  return true
end

-- Register Nyse ArcaBbo Xdp 2.4.c Heuristic
nyse_arcabbo_xdp_2_4_c:register_heuristic("udp", nyse_arcabbo_xdp_2_4_c_heuristic)

-----------------------------------------------------------------------
-- This script was generated by the open markets initiative
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- Protocol:
-- Version: 2.4.c
-- Date: Wednesday, July 13, 2016
-- Script:
-- Source Version: 1.2.0.0
-- Compiler Version: 1.0
-- License: Public/GPLv3
-- Authors: Omi Developers
-----------------------------------------------------------------------
