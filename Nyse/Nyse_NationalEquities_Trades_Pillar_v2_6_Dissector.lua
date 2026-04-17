-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse NationalEquities Trades Pillar 2.6 Protocol
local omi_nyse_nationalequities_trades_pillar_v2_6 = Proto("Nyse.NationalEquities.Trades.Pillar.v2.6.Lua", "Nyse NationalEquities Trades Pillar 2.6")

-- Protocol table
local nyse_nationalequities_trades_pillar_v2_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse NationalEquities Trades Pillar 2.6 Fields
omi_nyse_nationalequities_trades_pillar_v2_6.fields.begin_seq_num = ProtoField.new("Begin Seq Num", "nyse.nationalequities.trades.pillar.v2.6.beginseqnum", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.channel_id = ProtoField.new("Channel Id", "nyse.nationalequities.trades.pillar.v2.6.channelid", ftypes.UINT8)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.close = ProtoField.new("Close", "nyse.nationalequities.trades.pillar.v2.6.close", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.current_refresh_pkt = ProtoField.new("Current Refresh Pkt", "nyse.nationalequities.trades.pillar.v2.6.currentrefreshpkt", ftypes.UINT16)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.nationalequities.trades.pillar.v2.6.deliveryflag", ftypes.UINT8)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.end_seq_num = ProtoField.new("End Seq Num", "nyse.nationalequities.trades.pillar.v2.6.endseqnum", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.exchange_code = ProtoField.new("Exchange Code", "nyse.nationalequities.trades.pillar.v2.6.exchangecode", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.halt_condition = ProtoField.new("Halt Condition", "nyse.nationalequities.trades.pillar.v2.6.haltcondition", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.high_price = ProtoField.new("High Price", "nyse.nationalequities.trades.pillar.v2.6.highprice", ftypes.DOUBLE)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.id = ProtoField.new("Id", "nyse.nationalequities.trades.pillar.v2.6.id", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.last_seq_num = ProtoField.new("Last Seq Num", "nyse.nationalequities.trades.pillar.v2.6.lastseqnum", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.last_symbol_seq_num = ProtoField.new("Last Symbol Seq Num", "nyse.nationalequities.trades.pillar.v2.6.lastsymbolseqnum", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.lot_size = ProtoField.new("Lot Size", "nyse.nationalequities.trades.pillar.v2.6.lotsize", ftypes.UINT16)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.low_price = ProtoField.new("Low Price", "nyse.nationalequities.trades.pillar.v2.6.lowprice", ftypes.DOUBLE)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.market_id = ProtoField.new("Market Id", "nyse.nationalequities.trades.pillar.v2.6.marketid", ftypes.UINT16)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.market_state = ProtoField.new("Market State", "nyse.nationalequities.trades.pillar.v2.6.marketstate", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.message = ProtoField.new("Message", "nyse.nationalequities.trades.pillar.v2.6.message", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.message_header = ProtoField.new("Message Header", "nyse.nationalequities.trades.pillar.v2.6.messageheader", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.message_size = ProtoField.new("Message Size", "nyse.nationalequities.trades.pillar.v2.6.messagesize", ftypes.UINT16)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.message_type = ProtoField.new("Message Type", "nyse.nationalequities.trades.pillar.v2.6.messagetype", ftypes.UINT16)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.mpv = ProtoField.new("Mpv", "nyse.nationalequities.trades.pillar.v2.6.mpv", ftypes.UINT16)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.nationalequities.trades.pillar.v2.6.nanoseconds", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.next_source_seq_num = ProtoField.new("Next Source Seq Num", "nyse.nationalequities.trades.pillar.v2.6.nextsourceseqnum", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.number_msgs = ProtoField.new("Number Msgs", "nyse.nationalequities.trades.pillar.v2.6.numbermsgs", ftypes.UINT8)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.open = ProtoField.new("Open", "nyse.nationalequities.trades.pillar.v2.6.open", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.original_trade_id = ProtoField.new("Original Trade Id", "nyse.nationalequities.trades.pillar.v2.6.originaltradeid", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.packet = ProtoField.new("Packet", "nyse.nationalequities.trades.pillar.v2.6.packet", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.packet_header = ProtoField.new("Packet Header", "nyse.nationalequities.trades.pillar.v2.6.packetheader", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.pkt_size = ProtoField.new("Pkt Size", "nyse.nationalequities.trades.pillar.v2.6.pktsize", ftypes.UINT16)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.prev_close_price = ProtoField.new("Prev Close Price", "nyse.nationalequities.trades.pillar.v2.6.prevcloseprice", ftypes.DOUBLE)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.prev_close_volume = ProtoField.new("Prev Close Volume", "nyse.nationalequities.trades.pillar.v2.6.prevclosevolume", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.price = ProtoField.new("Price", "nyse.nationalequities.trades.pillar.v2.6.price", ftypes.DOUBLE)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.price_1 = ProtoField.new("Price 1", "nyse.nationalequities.trades.pillar.v2.6.price1", ftypes.DOUBLE)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.price_2 = ProtoField.new("Price 2", "nyse.nationalequities.trades.pillar.v2.6.price2", ftypes.DOUBLE)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.price_resolution = ProtoField.new("Price Resolution", "nyse.nationalequities.trades.pillar.v2.6.priceresolution", ftypes.DOUBLE)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.price_scale_code = ProtoField.new("Price Scale Code", "nyse.nationalequities.trades.pillar.v2.6.pricescalecode", ftypes.DOUBLE)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.product_id = ProtoField.new("Product Id", "nyse.nationalequities.trades.pillar.v2.6.productid", ftypes.UINT8)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.request_seq_num = ProtoField.new("Request Seq Num", "nyse.nationalequities.trades.pillar.v2.6.requestseqnum", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.reserved_1 = ProtoField.new("Reserved 1", "nyse.nationalequities.trades.pillar.v2.6.reserved1", ftypes.UINT8)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.reserved_2 = ProtoField.new("Reserved 2", "nyse.nationalequities.trades.pillar.v2.6.reserved2", ftypes.UINT16)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.nationalequities.trades.pillar.v2.6.reserved4", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.retransmit_method = ProtoField.new("Retransmit Method", "nyse.nationalequities.trades.pillar.v2.6.retransmitmethod", ftypes.UINT8)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.round_lot = ProtoField.new("Round Lot", "nyse.nationalequities.trades.pillar.v2.6.roundlot", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.seconds = ProtoField.new("Seconds", "nyse.nationalequities.trades.pillar.v2.6.seconds", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.security_status = ProtoField.new("Security Status", "nyse.nationalequities.trades.pillar.v2.6.securitystatus", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.security_type = ProtoField.new("Security Type", "nyse.nationalequities.trades.pillar.v2.6.securitytype", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.send_time = ProtoField.new("Send Time", "nyse.nationalequities.trades.pillar.v2.6.sendtime", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.seq_num = ProtoField.new("Seq Num", "nyse.nationalequities.trades.pillar.v2.6.seqnum", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.session_state = ProtoField.new("Session State", "nyse.nationalequities.trades.pillar.v2.6.sessionstate", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.source_id = ProtoField.new("Source Id", "nyse.nationalequities.trades.pillar.v2.6.sourceid", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.source_time = ProtoField.new("Source Time", "nyse.nationalequities.trades.pillar.v2.6.sourcetime", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.nationalequities.trades.pillar.v2.6.sourcetimens", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.ssr_state = ProtoField.new("Ssr State", "nyse.nationalequities.trades.pillar.v2.6.ssrstate", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.ssr_triggering_exchange_id = ProtoField.new("Ssr Triggering Exchange Id", "nyse.nationalequities.trades.pillar.v2.6.ssrtriggeringexchangeid", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.ssr_triggering_volume = ProtoField.new("Ssr Triggering Volume", "nyse.nationalequities.trades.pillar.v2.6.ssrtriggeringvolume", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.status = ProtoField.new("Status", "nyse.nationalequities.trades.pillar.v2.6.status", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.symbol = ProtoField.new("Symbol", "nyse.nationalequities.trades.pillar.v2.6.symbol", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.nationalequities.trades.pillar.v2.6.symbolindex", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.nationalequities.trades.pillar.v2.6.symbolseqnum", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.system_id = ProtoField.new("System Id", "nyse.nationalequities.trades.pillar.v2.6.systemid", ftypes.UINT8)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.time = ProtoField.new("Time", "nyse.nationalequities.trades.pillar.v2.6.time", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.total_refresh_pkts = ProtoField.new("Total Refresh Pkts", "nyse.nationalequities.trades.pillar.v2.6.totalrefreshpkts", ftypes.UINT16)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.total_volume = ProtoField.new("Total Volume", "nyse.nationalequities.trades.pillar.v2.6.totalvolume", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_cond_1 = ProtoField.new("Trade Cond 1", "nyse.nationalequities.trades.pillar.v2.6.tradecond1", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_cond_2 = ProtoField.new("Trade Cond 2", "nyse.nationalequities.trades.pillar.v2.6.tradecond2", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_cond_3 = ProtoField.new("Trade Cond 3", "nyse.nationalequities.trades.pillar.v2.6.tradecond3", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_cond_4 = ProtoField.new("Trade Cond 4", "nyse.nationalequities.trades.pillar.v2.6.tradecond4", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_id = ProtoField.new("Trade Id", "nyse.nationalequities.trades.pillar.v2.6.tradeid", ftypes.UINT32)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.unit_of_trade = ProtoField.new("Unit Of Trade", "nyse.nationalequities.trades.pillar.v2.6.unitoftrade", ftypes.UINT16)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.volume = ProtoField.new("Volume", "nyse.nationalequities.trades.pillar.v2.6.volume", ftypes.UINT32)

-- Nyse NationalEquities Pillar Trades 2.6 Application Messages
omi_nyse_nationalequities_trades_pillar_v2_6.fields.heartbeat_response_message = ProtoField.new("Heartbeat Response Message", "nyse.nationalequities.trades.pillar.v2.6.heartbeatresponsemessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.message_unavailable_message = ProtoField.new("Message Unavailable Message", "nyse.nationalequities.trades.pillar.v2.6.messageunavailablemessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.refresh_header_message = ProtoField.new("Refresh Header Message", "nyse.nationalequities.trades.pillar.v2.6.refreshheadermessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.refresh_request_message = ProtoField.new("Refresh Request Message", "nyse.nationalequities.trades.pillar.v2.6.refreshrequestmessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.request_response_message = ProtoField.new("Request Response Message", "nyse.nationalequities.trades.pillar.v2.6.requestresponsemessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.retransmission_request_message = ProtoField.new("Retransmission Request Message", "nyse.nationalequities.trades.pillar.v2.6.retransmissionrequestmessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.security_status_message = ProtoField.new("Security Status Message", "nyse.nationalequities.trades.pillar.v2.6.securitystatusmessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.sequence_number_reset_message = ProtoField.new("Sequence Number Reset Message", "nyse.nationalequities.trades.pillar.v2.6.sequencenumberresetmessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.source_time_reference_message = ProtoField.new("Source Time Reference Message", "nyse.nationalequities.trades.pillar.v2.6.sourcetimereferencemessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.stock_summary_message = ProtoField.new("Stock Summary Message", "nyse.nationalequities.trades.pillar.v2.6.stocksummarymessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.symbol_clear_message = ProtoField.new("Symbol Clear Message", "nyse.nationalequities.trades.pillar.v2.6.symbolclearmessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.symbol_index_mapping_message = ProtoField.new("Symbol Index Mapping Message", "nyse.nationalequities.trades.pillar.v2.6.symbolindexmappingmessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.symbol_index_mapping_request_message = ProtoField.new("Symbol Index Mapping Request Message", "nyse.nationalequities.trades.pillar.v2.6.symbolindexmappingrequestmessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_cancel_message = ProtoField.new("Trade Cancel Message", "nyse.nationalequities.trades.pillar.v2.6.tradecancelmessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "nyse.nationalequities.trades.pillar.v2.6.tradecorrectionmessage", ftypes.STRING)
omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_message = ProtoField.new("Trade Message", "nyse.nationalequities.trades.pillar.v2.6.trademessage", ftypes.STRING)

-- Nyse NationalEquities Trades Pillar 2.6 generated fields
omi_nyse_nationalequities_trades_pillar_v2_6.fields.message_index = ProtoField.new("Message Index", "nyse.nationalequities.trades.pillar.v2.6.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse NationalEquities Trades Pillar 2.6 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.send_time = true
show.message_index = true

-- Register Nyse NationalEquities Trades Pillar 2.6 Show Options
omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_send_time = Pref.bool("Show Send Time", show.send_time, "Parse and add Send Time to protocol tree")
omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_nyse_nationalequities_trades_pillar_v2_6.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_application_messages then
    show.application_messages = omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_application_messages
  end
  if show.message ~= omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_message then
    show.message = omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_message
  end
  if show.message_header ~= omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_message_header then
    show.message_header = omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_message_header
  end
  if show.packet ~= omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_packet then
    show.packet = omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_packet
  end
  if show.packet_header ~= omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_packet_header then
    show.packet_header = omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_packet_header
  end
  if show.send_time ~= omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_send_time then
    show.send_time = omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_send_time
  end
  if show.message_index ~= omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_message_index then
    show.message_index = omi_nyse_nationalequities_trades_pillar_v2_6.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- Nyse NationalEquities Trades Pillar 2.6 Fields
-----------------------------------------------------------------------

-- Begin Seq Num
nyse_nationalequities_trades_pillar_v2_6.begin_seq_num = {}

-- Size: Begin Seq Num
nyse_nationalequities_trades_pillar_v2_6.begin_seq_num.size = 4

-- Display: Begin Seq Num
nyse_nationalequities_trades_pillar_v2_6.begin_seq_num.display = function(value)
  return "Begin Seq Num: "..value
end

-- Dissect: Begin Seq Num
nyse_nationalequities_trades_pillar_v2_6.begin_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.begin_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.begin_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.begin_seq_num, range, value, display)

  return offset + length, value
end

-- Channel Id
nyse_nationalequities_trades_pillar_v2_6.channel_id = {}

-- Size: Channel Id
nyse_nationalequities_trades_pillar_v2_6.channel_id.size = 1

-- Display: Channel Id
nyse_nationalequities_trades_pillar_v2_6.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
nyse_nationalequities_trades_pillar_v2_6.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Close
nyse_nationalequities_trades_pillar_v2_6.close = {}

-- Size: Close
nyse_nationalequities_trades_pillar_v2_6.close.size = 4

-- Display: Close
nyse_nationalequities_trades_pillar_v2_6.close.display = function(value)
  return "Close: "..value
end

-- Dissect: Close
nyse_nationalequities_trades_pillar_v2_6.close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.close.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.close, range, value, display)

  return offset + length, value
end

-- Current Refresh Pkt
nyse_nationalequities_trades_pillar_v2_6.current_refresh_pkt = {}

-- Size: Current Refresh Pkt
nyse_nationalequities_trades_pillar_v2_6.current_refresh_pkt.size = 2

-- Display: Current Refresh Pkt
nyse_nationalequities_trades_pillar_v2_6.current_refresh_pkt.display = function(value)
  return "Current Refresh Pkt: "..value
end

-- Dissect: Current Refresh Pkt
nyse_nationalequities_trades_pillar_v2_6.current_refresh_pkt.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.current_refresh_pkt.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.current_refresh_pkt.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.current_refresh_pkt, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_nationalequities_trades_pillar_v2_6.delivery_flag = {}

-- Size: Delivery Flag
nyse_nationalequities_trades_pillar_v2_6.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_nationalequities_trades_pillar_v2_6.delivery_flag.display = function(value)
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
nyse_nationalequities_trades_pillar_v2_6.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- End Seq Num
nyse_nationalequities_trades_pillar_v2_6.end_seq_num = {}

-- Size: End Seq Num
nyse_nationalequities_trades_pillar_v2_6.end_seq_num.size = 4

-- Display: End Seq Num
nyse_nationalequities_trades_pillar_v2_6.end_seq_num.display = function(value)
  return "End Seq Num: "..value
end

-- Dissect: End Seq Num
nyse_nationalequities_trades_pillar_v2_6.end_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.end_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.end_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.end_seq_num, range, value, display)

  return offset + length, value
end

-- Exchange Code
nyse_nationalequities_trades_pillar_v2_6.exchange_code = {}

-- Size: Exchange Code
nyse_nationalequities_trades_pillar_v2_6.exchange_code.size = 1

-- Display: Exchange Code
nyse_nationalequities_trades_pillar_v2_6.exchange_code.display = function(value)
  if value == "A" then
    return "Exchange Code: Nyse American (A)"
  end
  if value == "L" then
    return "Exchange Code: Ltse (L)"
  end
  if value == "M" then
    return "Exchange Code: Nyse Texas (M)"
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

  return "Exchange Code: Unknown("..value..")"
end

-- Dissect: Exchange Code
nyse_nationalequities_trades_pillar_v2_6.exchange_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.exchange_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.exchange_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.exchange_code, range, value, display)

  return offset + length, value
end

-- Halt Condition
nyse_nationalequities_trades_pillar_v2_6.halt_condition = {}

-- Size: Halt Condition
nyse_nationalequities_trades_pillar_v2_6.halt_condition.size = 1

-- Display: Halt Condition
nyse_nationalequities_trades_pillar_v2_6.halt_condition.display = function(value)
  if value == "~" then
    return "Halt Condition: Security Not Delayedhalted (~)"
  end
  if value == "D" then
    return "Halt Condition: News Released News Dissemination (D)"
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
  if value == "6" then
    return "Halt Condition: Suspend (6)"
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
nyse_nationalequities_trades_pillar_v2_6.halt_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.halt_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.halt_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.halt_condition, range, value, display)

  return offset + length, value
end

-- High Price
nyse_nationalequities_trades_pillar_v2_6.high_price = {}

-- Size: High Price
nyse_nationalequities_trades_pillar_v2_6.high_price.size = 4

-- Display: High Price
nyse_nationalequities_trades_pillar_v2_6.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
nyse_nationalequities_trades_pillar_v2_6.high_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: High Price
nyse_nationalequities_trades_pillar_v2_6.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.high_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_nationalequities_trades_pillar_v2_6.high_price.translate(raw)
  local display = nyse_nationalequities_trades_pillar_v2_6.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.high_price, range, value, display)

  return offset + length, value
end

-- Id
nyse_nationalequities_trades_pillar_v2_6.id = {}

-- Size: Id
nyse_nationalequities_trades_pillar_v2_6.id.size = 4

-- Display: Id
nyse_nationalequities_trades_pillar_v2_6.id.display = function(value)
  return "Id: "..value
end

-- Dissect: Id
nyse_nationalequities_trades_pillar_v2_6.id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.id, range, value, display)

  return offset + length, value
end

-- Last Seq Num
nyse_nationalequities_trades_pillar_v2_6.last_seq_num = {}

-- Size: Last Seq Num
nyse_nationalequities_trades_pillar_v2_6.last_seq_num.size = 4

-- Display: Last Seq Num
nyse_nationalequities_trades_pillar_v2_6.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
nyse_nationalequities_trades_pillar_v2_6.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Last Symbol Seq Num
nyse_nationalequities_trades_pillar_v2_6.last_symbol_seq_num = {}

-- Size: Last Symbol Seq Num
nyse_nationalequities_trades_pillar_v2_6.last_symbol_seq_num.size = 4

-- Display: Last Symbol Seq Num
nyse_nationalequities_trades_pillar_v2_6.last_symbol_seq_num.display = function(value)
  return "Last Symbol Seq Num: "..value
end

-- Dissect: Last Symbol Seq Num
nyse_nationalequities_trades_pillar_v2_6.last_symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.last_symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.last_symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.last_symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Lot Size
nyse_nationalequities_trades_pillar_v2_6.lot_size = {}

-- Size: Lot Size
nyse_nationalequities_trades_pillar_v2_6.lot_size.size = 2

-- Display: Lot Size
nyse_nationalequities_trades_pillar_v2_6.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
nyse_nationalequities_trades_pillar_v2_6.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Low Price
nyse_nationalequities_trades_pillar_v2_6.low_price = {}

-- Size: Low Price
nyse_nationalequities_trades_pillar_v2_6.low_price.size = 4

-- Display: Low Price
nyse_nationalequities_trades_pillar_v2_6.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
nyse_nationalequities_trades_pillar_v2_6.low_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Low Price
nyse_nationalequities_trades_pillar_v2_6.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.low_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_nationalequities_trades_pillar_v2_6.low_price.translate(raw)
  local display = nyse_nationalequities_trades_pillar_v2_6.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.low_price, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_nationalequities_trades_pillar_v2_6.market_id = {}

-- Size: Market Id
nyse_nationalequities_trades_pillar_v2_6.market_id.size = 2

-- Display: Market Id
nyse_nationalequities_trades_pillar_v2_6.market_id.display = function(value)
  if value == 1 then
    return "Market Id: Nyse Equities (1)"
  end
  if value == 3 then
    return "Market Id: Nyse Arca Equities (3)"
  end
  if value == 4 then
    return "Market Id: Nyse Arca Options (4)"
  end
  if value == 5 then
    return "Market Id: Nyse Bonds (5)"
  end
  if value == 8 then
    return "Market Id: Nyse American Options (8)"
  end
  if value == 9 then
    return "Market Id: Nyse American Equities (9)"
  end
  if value == 10 then
    return "Market Id: Nyse National Equities (10)"
  end
  if value == 11 then
    return "Market Id: Nyse Texas Equities (11)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
nyse_nationalequities_trades_pillar_v2_6.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market State
nyse_nationalequities_trades_pillar_v2_6.market_state = {}

-- Size: Market State
nyse_nationalequities_trades_pillar_v2_6.market_state.size = 1

-- Display: Market State
nyse_nationalequities_trades_pillar_v2_6.market_state.display = function(value)
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
    return "Market State: Late Session Non Nyse Only (L)"
  end
  if value == "X" then
    return "Market State: Closed (X)"
  end

  return "Market State: Unknown("..value..")"
end

-- Dissect: Market State
nyse_nationalequities_trades_pillar_v2_6.market_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.market_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.market_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.market_state, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_nationalequities_trades_pillar_v2_6.message_size = {}

-- Size: Message Size
nyse_nationalequities_trades_pillar_v2_6.message_size.size = 2

-- Display: Message Size
nyse_nationalequities_trades_pillar_v2_6.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_nationalequities_trades_pillar_v2_6.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_nationalequities_trades_pillar_v2_6.message_type = {}

-- Size: Message Type
nyse_nationalequities_trades_pillar_v2_6.message_type.size = 2

-- Display: Message Type
nyse_nationalequities_trades_pillar_v2_6.message_type.display = function(value)
  if value == 1 then
    return "Message Type: Sequence Number Reset Message (1)"
  end
  if value == 2 then
    return "Message Type: Source Time Reference Message (2)"
  end
  if value == 3 then
    return "Message Type: Symbol Index Mapping Message (3)"
  end
  if value == 32 then
    return "Message Type: Symbol Clear Message (32)"
  end
  if value == 34 then
    return "Message Type: Security Status Message (34)"
  end
  if value == 10 then
    return "Message Type: Retransmission Request Message (10)"
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
  if value == 35 then
    return "Message Type: Refresh Header Message (35)"
  end
  if value == 11 then
    return "Message Type: Request Response Message (11)"
  end
  if value == 12 then
    return "Message Type: Heartbeat Response Message (12)"
  end
  if value == 220 then
    return "Message Type: Trade Message (220)"
  end
  if value == 221 then
    return "Message Type: Trade Cancel Message (221)"
  end
  if value == 222 then
    return "Message Type: Trade Correction Message (222)"
  end
  if value == 223 then
    return "Message Type: Stock Summary Message (223)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_nationalequities_trades_pillar_v2_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nyse_nationalequities_trades_pillar_v2_6.mpv = {}

-- Size: Mpv
nyse_nationalequities_trades_pillar_v2_6.mpv.size = 2

-- Display: Mpv
nyse_nationalequities_trades_pillar_v2_6.mpv.display = function(value)
  return "Mpv: "..value
end

-- Dissect: Mpv
nyse_nationalequities_trades_pillar_v2_6.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.mpv.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.mpv, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_nationalequities_trades_pillar_v2_6.nanoseconds = {}

-- Size: Nanoseconds
nyse_nationalequities_trades_pillar_v2_6.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_nationalequities_trades_pillar_v2_6.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_nationalequities_trades_pillar_v2_6.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Next Source Seq Num
nyse_nationalequities_trades_pillar_v2_6.next_source_seq_num = {}

-- Size: Next Source Seq Num
nyse_nationalequities_trades_pillar_v2_6.next_source_seq_num.size = 4

-- Display: Next Source Seq Num
nyse_nationalequities_trades_pillar_v2_6.next_source_seq_num.display = function(value)
  return "Next Source Seq Num: "..value
end

-- Dissect: Next Source Seq Num
nyse_nationalequities_trades_pillar_v2_6.next_source_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.next_source_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.next_source_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.next_source_seq_num, range, value, display)

  return offset + length, value
end

-- Number Msgs
nyse_nationalequities_trades_pillar_v2_6.number_msgs = {}

-- Size: Number Msgs
nyse_nationalequities_trades_pillar_v2_6.number_msgs.size = 1

-- Display: Number Msgs
nyse_nationalequities_trades_pillar_v2_6.number_msgs.display = function(value)
  return "Number Msgs: "..value
end

-- Dissect: Number Msgs
nyse_nationalequities_trades_pillar_v2_6.number_msgs.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.number_msgs.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.number_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.number_msgs, range, value, display)

  return offset + length, value
end

-- Open
nyse_nationalequities_trades_pillar_v2_6.open = {}

-- Size: Open
nyse_nationalequities_trades_pillar_v2_6.open.size = 4

-- Display: Open
nyse_nationalequities_trades_pillar_v2_6.open.display = function(value)
  return "Open: "..value
end

-- Dissect: Open
nyse_nationalequities_trades_pillar_v2_6.open.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.open.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.open.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.open, range, value, display)

  return offset + length, value
end

-- Original Trade Id
nyse_nationalequities_trades_pillar_v2_6.original_trade_id = {}

-- Size: Original Trade Id
nyse_nationalequities_trades_pillar_v2_6.original_trade_id.size = 4

-- Display: Original Trade Id
nyse_nationalequities_trades_pillar_v2_6.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
nyse_nationalequities_trades_pillar_v2_6.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.original_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Pkt Size
nyse_nationalequities_trades_pillar_v2_6.pkt_size = {}

-- Size: Pkt Size
nyse_nationalequities_trades_pillar_v2_6.pkt_size.size = 2

-- Display: Pkt Size
nyse_nationalequities_trades_pillar_v2_6.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
nyse_nationalequities_trades_pillar_v2_6.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Prev Close Price
nyse_nationalequities_trades_pillar_v2_6.prev_close_price = {}

-- Size: Prev Close Price
nyse_nationalequities_trades_pillar_v2_6.prev_close_price.size = 4

-- Display: Prev Close Price
nyse_nationalequities_trades_pillar_v2_6.prev_close_price.display = function(value)
  return "Prev Close Price: "..value
end

-- Translate: Prev Close Price
nyse_nationalequities_trades_pillar_v2_6.prev_close_price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Prev Close Price
nyse_nationalequities_trades_pillar_v2_6.prev_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.prev_close_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_nationalequities_trades_pillar_v2_6.prev_close_price.translate(raw)
  local display = nyse_nationalequities_trades_pillar_v2_6.prev_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.prev_close_price, range, value, display)

  return offset + length, value
end

-- Prev Close Volume
nyse_nationalequities_trades_pillar_v2_6.prev_close_volume = {}

-- Size: Prev Close Volume
nyse_nationalequities_trades_pillar_v2_6.prev_close_volume.size = 4

-- Display: Prev Close Volume
nyse_nationalequities_trades_pillar_v2_6.prev_close_volume.display = function(value)
  return "Prev Close Volume: "..value
end

-- Dissect: Prev Close Volume
nyse_nationalequities_trades_pillar_v2_6.prev_close_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.prev_close_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.prev_close_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.prev_close_volume, range, value, display)

  return offset + length, value
end

-- Price
nyse_nationalequities_trades_pillar_v2_6.price = {}

-- Size: Price
nyse_nationalequities_trades_pillar_v2_6.price.size = 4

-- Display: Price
nyse_nationalequities_trades_pillar_v2_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nyse_nationalequities_trades_pillar_v2_6.price.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price
nyse_nationalequities_trades_pillar_v2_6.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_nationalequities_trades_pillar_v2_6.price.translate(raw)
  local display = nyse_nationalequities_trades_pillar_v2_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.price, range, value, display)

  return offset + length, value
end

-- Price 1
nyse_nationalequities_trades_pillar_v2_6.price_1 = {}

-- Size: Price 1
nyse_nationalequities_trades_pillar_v2_6.price_1.size = 4

-- Display: Price 1
nyse_nationalequities_trades_pillar_v2_6.price_1.display = function(value)
  return "Price 1: "..value
end

-- Translate: Price 1
nyse_nationalequities_trades_pillar_v2_6.price_1.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 1
nyse_nationalequities_trades_pillar_v2_6.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.price_1.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_nationalequities_trades_pillar_v2_6.price_1.translate(raw)
  local display = nyse_nationalequities_trades_pillar_v2_6.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nyse_nationalequities_trades_pillar_v2_6.price_2 = {}

-- Size: Price 2
nyse_nationalequities_trades_pillar_v2_6.price_2.size = 4

-- Display: Price 2
nyse_nationalequities_trades_pillar_v2_6.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
nyse_nationalequities_trades_pillar_v2_6.price_2.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price 2
nyse_nationalequities_trades_pillar_v2_6.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.price_2.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_nationalequities_trades_pillar_v2_6.price_2.translate(raw)
  local display = nyse_nationalequities_trades_pillar_v2_6.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Resolution
nyse_nationalequities_trades_pillar_v2_6.price_resolution = {}

-- Size: Price Resolution
nyse_nationalequities_trades_pillar_v2_6.price_resolution.size = 1

-- Display: Price Resolution
nyse_nationalequities_trades_pillar_v2_6.price_resolution.display = function(value)
  return "Price Resolution: "..value
end

-- Translate: Price Resolution
nyse_nationalequities_trades_pillar_v2_6.price_resolution.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price Resolution
nyse_nationalequities_trades_pillar_v2_6.price_resolution.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.price_resolution.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_nationalequities_trades_pillar_v2_6.price_resolution.translate(raw)
  local display = nyse_nationalequities_trades_pillar_v2_6.price_resolution.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.price_resolution, range, value, display)

  return offset + length, value
end

-- Price Scale Code
nyse_nationalequities_trades_pillar_v2_6.price_scale_code = {}

-- Size: Price Scale Code
nyse_nationalequities_trades_pillar_v2_6.price_scale_code.size = 1

-- Display: Price Scale Code
nyse_nationalequities_trades_pillar_v2_6.price_scale_code.display = function(value)
  return "Price Scale Code: "..value
end

-- Translate: Price Scale Code
nyse_nationalequities_trades_pillar_v2_6.price_scale_code.translate = function(raw)
  return raw/100000000
end

-- Dissect: Price Scale Code
nyse_nationalequities_trades_pillar_v2_6.price_scale_code.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.price_scale_code.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = nyse_nationalequities_trades_pillar_v2_6.price_scale_code.translate(raw)
  local display = nyse_nationalequities_trades_pillar_v2_6.price_scale_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.price_scale_code, range, value, display)

  return offset + length, value
end

-- Product Id
nyse_nationalequities_trades_pillar_v2_6.product_id = {}

-- Size: Product Id
nyse_nationalequities_trades_pillar_v2_6.product_id.size = 1

-- Display: Product Id
nyse_nationalequities_trades_pillar_v2_6.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
nyse_nationalequities_trades_pillar_v2_6.product_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.product_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.product_id, range, value, display)

  return offset + length, value
end

-- Request Seq Num
nyse_nationalequities_trades_pillar_v2_6.request_seq_num = {}

-- Size: Request Seq Num
nyse_nationalequities_trades_pillar_v2_6.request_seq_num.size = 4

-- Display: Request Seq Num
nyse_nationalequities_trades_pillar_v2_6.request_seq_num.display = function(value)
  return "Request Seq Num: "..value
end

-- Dissect: Request Seq Num
nyse_nationalequities_trades_pillar_v2_6.request_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.request_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.request_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.request_seq_num, range, value, display)

  return offset + length, value
end

-- Reserved 1
nyse_nationalequities_trades_pillar_v2_6.reserved_1 = {}

-- Size: Reserved 1
nyse_nationalequities_trades_pillar_v2_6.reserved_1.size = 1

-- Display: Reserved 1
nyse_nationalequities_trades_pillar_v2_6.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nyse_nationalequities_trades_pillar_v2_6.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.reserved_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nyse_nationalequities_trades_pillar_v2_6.reserved_2 = {}

-- Size: Reserved 2
nyse_nationalequities_trades_pillar_v2_6.reserved_2.size = 2

-- Display: Reserved 2
nyse_nationalequities_trades_pillar_v2_6.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nyse_nationalequities_trades_pillar_v2_6.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.reserved_2.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_nationalequities_trades_pillar_v2_6.reserved_4 = {}

-- Size: Reserved 4
nyse_nationalequities_trades_pillar_v2_6.reserved_4.size = 4

-- Display: Reserved 4
nyse_nationalequities_trades_pillar_v2_6.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_nationalequities_trades_pillar_v2_6.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.reserved_4.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Retransmit Method
nyse_nationalequities_trades_pillar_v2_6.retransmit_method = {}

-- Size: Retransmit Method
nyse_nationalequities_trades_pillar_v2_6.retransmit_method.size = 1

-- Display: Retransmit Method
nyse_nationalequities_trades_pillar_v2_6.retransmit_method.display = function(value)
  return "Retransmit Method: "..value
end

-- Dissect: Retransmit Method
nyse_nationalequities_trades_pillar_v2_6.retransmit_method.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.retransmit_method.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.retransmit_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.retransmit_method, range, value, display)

  return offset + length, value
end

-- Round Lot
nyse_nationalequities_trades_pillar_v2_6.round_lot = {}

-- Size: Round Lot
nyse_nationalequities_trades_pillar_v2_6.round_lot.size = 1

-- Display: Round Lot
nyse_nationalequities_trades_pillar_v2_6.round_lot.display = function(value)
  if value == "Y" then
    return "Round Lot: Yes (Y)"
  end
  if value == "N" then
    return "Round Lot: No (N)"
  end

  return "Round Lot: Unknown("..value..")"
end

-- Dissect: Round Lot
nyse_nationalequities_trades_pillar_v2_6.round_lot.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.round_lot.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.round_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.round_lot, range, value, display)

  return offset + length, value
end

-- Seconds
nyse_nationalequities_trades_pillar_v2_6.seconds = {}

-- Size: Seconds
nyse_nationalequities_trades_pillar_v2_6.seconds.size = 4

-- Display: Seconds
nyse_nationalequities_trades_pillar_v2_6.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
nyse_nationalequities_trades_pillar_v2_6.seconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Status
nyse_nationalequities_trades_pillar_v2_6.security_status = {}

-- Size: Security Status
nyse_nationalequities_trades_pillar_v2_6.security_status.size = 1

-- Display: Security Status
nyse_nationalequities_trades_pillar_v2_6.security_status.display = function(value)
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
    return "Security Status: Late Session Non Nyse Only (L)"
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
nyse_nationalequities_trades_pillar_v2_6.security_status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Type
nyse_nationalequities_trades_pillar_v2_6.security_type = {}

-- Size: Security Type
nyse_nationalequities_trades_pillar_v2_6.security_type.size = 1

-- Display: Security Type
nyse_nationalequities_trades_pillar_v2_6.security_type.display = function(value)
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
nyse_nationalequities_trades_pillar_v2_6.security_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.security_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.security_type, range, value, display)

  return offset + length, value
end

-- Seq Num
nyse_nationalequities_trades_pillar_v2_6.seq_num = {}

-- Size: Seq Num
nyse_nationalequities_trades_pillar_v2_6.seq_num.size = 4

-- Display: Seq Num
nyse_nationalequities_trades_pillar_v2_6.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
nyse_nationalequities_trades_pillar_v2_6.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Session State
nyse_nationalequities_trades_pillar_v2_6.session_state = {}

-- Size: Session State
nyse_nationalequities_trades_pillar_v2_6.session_state.size = 1

-- Display: Session State
nyse_nationalequities_trades_pillar_v2_6.session_state.display = function(value)
  return "Session State: "..value
end

-- Dissect: Session State
nyse_nationalequities_trades_pillar_v2_6.session_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.session_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.session_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.session_state, range, value, display)

  return offset + length, value
end

-- Source Id
nyse_nationalequities_trades_pillar_v2_6.source_id = {}

-- Size: Source Id
nyse_nationalequities_trades_pillar_v2_6.source_id.size = 10

-- Display: Source Id
nyse_nationalequities_trades_pillar_v2_6.source_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Source Id: No Value"
  end

  return "Source Id: "..value
end

-- Dissect: Source Id
nyse_nationalequities_trades_pillar_v2_6.source_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.source_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nationalequities_trades_pillar_v2_6.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.source_id, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_nationalequities_trades_pillar_v2_6.source_time = {}

-- Size: Source Time
nyse_nationalequities_trades_pillar_v2_6.source_time.size = 4

-- Display: Source Time
nyse_nationalequities_trades_pillar_v2_6.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_nationalequities_trades_pillar_v2_6.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_nationalequities_trades_pillar_v2_6.source_time_ns = {}

-- Size: Source Time Ns
nyse_nationalequities_trades_pillar_v2_6.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_nationalequities_trades_pillar_v2_6.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_nationalequities_trades_pillar_v2_6.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Ssr State
nyse_nationalequities_trades_pillar_v2_6.ssr_state = {}

-- Size: Ssr State
nyse_nationalequities_trades_pillar_v2_6.ssr_state.size = 1

-- Display: Ssr State
nyse_nationalequities_trades_pillar_v2_6.ssr_state.display = function(value)
  if value == "~" then
    return "Ssr State: No Short Sale Restriction In Effect (~)"
  end
  if value == "E" then
    return "Ssr State: Short Sale Restriction In Effect (E)"
  end

  return "Ssr State: Unknown("..value..")"
end

-- Dissect: Ssr State
nyse_nationalequities_trades_pillar_v2_6.ssr_state.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.ssr_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.ssr_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.ssr_state, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Exchange Id
nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_exchange_id = {}

-- Size: Ssr Triggering Exchange Id
nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_exchange_id.size = 1

-- Display: Ssr Triggering Exchange Id
nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_exchange_id.display = function(value)
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
  if value == "G" then
    return "Ssr Triggering Exchange Id: 24 X (G)"
  end
  if value == "H" then
    return "Ssr Triggering Exchange Id: Miami Peral (H)"
  end
  if value == "I" then
    return "Ssr Triggering Exchange Id: Nasdaq Ise (I)"
  end
  if value == "J" then
    return "Ssr Triggering Exchange Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "Ssr Triggering Exchange Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "Ssr Triggering Exchange Id: Ltse (L)"
  end
  if value == "M" then
    return "Ssr Triggering Exchange Id: Nyse Texas (M)"
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
  if value == "T" then
    return "Ssr Triggering Exchange Id: Nasdaq Omx (T)"
  end
  if value == "U" then
    return "Ssr Triggering Exchange Id: Memx (U)"
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

  return "Ssr Triggering Exchange Id: Unknown("..value..")"
end

-- Dissect: Ssr Triggering Exchange Id
nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_exchange_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_exchange_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_exchange_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.ssr_triggering_exchange_id, range, value, display)

  return offset + length, value
end

-- Ssr Triggering Volume
nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_volume = {}

-- Size: Ssr Triggering Volume
nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_volume.size = 4

-- Display: Ssr Triggering Volume
nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_volume.display = function(value)
  return "Ssr Triggering Volume: "..value
end

-- Dissect: Ssr Triggering Volume
nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.ssr_triggering_volume, range, value, display)

  return offset + length, value
end

-- Status
nyse_nationalequities_trades_pillar_v2_6.status = {}

-- Size: Status
nyse_nationalequities_trades_pillar_v2_6.status.size = 1

-- Display: Status
nyse_nationalequities_trades_pillar_v2_6.status.display = function(value)
  if value == "0" then
    return "Status: Message Was Accepted (0)"
  end
  if value == "1" then
    return "Status: Rejected Due To An Invalid Source Id (1)"
  end
  if value == "3" then
    return "Status: Rejected Due To Maximum Sequence Range See Threshold Limits (3)"
  end
  if value == "4" then
    return "Status: Rejected Due To Maximum Request In A Day (4)"
  end
  if value == "5" then
    return "Status: Rejected Due To Maximum Number Of Refresh Requests In A Day (5)"
  end
  if value == "6" then
    return "Status: Rejected Request Message Seq Num Ttl Time To Live Is Too Old Use Refresh To Recover Current State If Necessary (6)"
  end
  if value == "7" then
    return "Status: Rejected Due To An Invalid Channel Id (7)"
  end
  if value == "8" then
    return "Status: Rejected Due To An Invalid Product Id (8)"
  end
  if value == "9" then
    return "Status: Rejected Due To 1 Invalid Msg Type Or 2 Mismatch Between Msg Type And Msg Size (9)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_nationalequities_trades_pillar_v2_6.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.status, range, value, display)

  return offset + length, value
end

-- Symbol
nyse_nationalequities_trades_pillar_v2_6.symbol = {}

-- Size: Symbol
nyse_nationalequities_trades_pillar_v2_6.symbol.size = 11

-- Display: Symbol
nyse_nationalequities_trades_pillar_v2_6.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
nyse_nationalequities_trades_pillar_v2_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.symbol.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nationalequities_trades_pillar_v2_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_nationalequities_trades_pillar_v2_6.symbol_index = {}

-- Size: Symbol Index
nyse_nationalequities_trades_pillar_v2_6.symbol_index.size = 4

-- Display: Symbol Index
nyse_nationalequities_trades_pillar_v2_6.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_nationalequities_trades_pillar_v2_6.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- System Id
nyse_nationalequities_trades_pillar_v2_6.system_id = {}

-- Size: System Id
nyse_nationalequities_trades_pillar_v2_6.system_id.size = 1

-- Display: System Id
nyse_nationalequities_trades_pillar_v2_6.system_id.display = function(value)
  return "System Id: "..value
end

-- Dissect: System Id
nyse_nationalequities_trades_pillar_v2_6.system_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.system_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.system_id, range, value, display)

  return offset + length, value
end

-- Time
nyse_nationalequities_trades_pillar_v2_6.time = {}

-- Size: Time
nyse_nationalequities_trades_pillar_v2_6.time.size = 4

-- Display: Time
nyse_nationalequities_trades_pillar_v2_6.time.display = function(value)
  return "Time: "..value
end

-- Dissect: Time
nyse_nationalequities_trades_pillar_v2_6.time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.time, range, value, display)

  return offset + length, value
end

-- Total Refresh Pkts
nyse_nationalequities_trades_pillar_v2_6.total_refresh_pkts = {}

-- Size: Total Refresh Pkts
nyse_nationalequities_trades_pillar_v2_6.total_refresh_pkts.size = 2

-- Display: Total Refresh Pkts
nyse_nationalequities_trades_pillar_v2_6.total_refresh_pkts.display = function(value)
  return "Total Refresh Pkts: "..value
end

-- Dissect: Total Refresh Pkts
nyse_nationalequities_trades_pillar_v2_6.total_refresh_pkts.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.total_refresh_pkts.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.total_refresh_pkts.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.total_refresh_pkts, range, value, display)

  return offset + length, value
end

-- Total Volume
nyse_nationalequities_trades_pillar_v2_6.total_volume = {}

-- Size: Total Volume
nyse_nationalequities_trades_pillar_v2_6.total_volume.size = 4

-- Display: Total Volume
nyse_nationalequities_trades_pillar_v2_6.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
nyse_nationalequities_trades_pillar_v2_6.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.total_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Cond 1
nyse_nationalequities_trades_pillar_v2_6.trade_cond_1 = {}

-- Size: Trade Cond 1
nyse_nationalequities_trades_pillar_v2_6.trade_cond_1.size = 1

-- Display: Trade Cond 1
nyse_nationalequities_trades_pillar_v2_6.trade_cond_1.display = function(value)
  if value == "@" then
    return "Trade Cond 1: Regular Sale (@)"
  end
  if value == "C" then
    return "Trade Cond 1: Cash (C)"
  end
  if value == " " then
    return "Trade Cond 1: Regular Sale Trf Only (<whitespace>)"
  end
  if value == "R" then
    return "Trade Cond 1: Seller Trf Only (R)"
  end

  return "Trade Cond 1: Unknown("..value..")"
end

-- Dissect: Trade Cond 1
nyse_nationalequities_trades_pillar_v2_6.trade_cond_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.trade_cond_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.trade_cond_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_cond_1, range, value, display)

  return offset + length, value
end

-- Trade Cond 2
nyse_nationalequities_trades_pillar_v2_6.trade_cond_2 = {}

-- Size: Trade Cond 2
nyse_nationalequities_trades_pillar_v2_6.trade_cond_2.size = 1

-- Display: Trade Cond 2
nyse_nationalequities_trades_pillar_v2_6.trade_cond_2.display = function(value)
  if value == " " then
    return "Trade Cond 2: Na (<whitespace>)"
  end
  if value == "F" then
    return "Trade Cond 2: Intermarket Sweep Order (F)"
  end
  if value == "O" then
    return "Trade Cond 2: Market Center Opening Trade (O)"
  end
  if value == "4" then
    return "Trade Cond 2: Derivatively Priced Trf Only (4)"
  end
  if value == "5" then
    return "Trade Cond 2: Reopening Trade (5)"
  end
  if value == "6" then
    return "Trade Cond 2: Market Center Closing Trade (6)"
  end
  if value == "7" then
    return "Trade Cond 2: Qualified Contingent Trade Trf Or Texas Only (7)"
  end
  if value == "9" then
    return "Trade Cond 2: Corrected Consolidated Close (9)"
  end

  return "Trade Cond 2: Unknown("..value..")"
end

-- Dissect: Trade Cond 2
nyse_nationalequities_trades_pillar_v2_6.trade_cond_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.trade_cond_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.trade_cond_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_cond_2, range, value, display)

  return offset + length, value
end

-- Trade Cond 3
nyse_nationalequities_trades_pillar_v2_6.trade_cond_3 = {}

-- Size: Trade Cond 3
nyse_nationalequities_trades_pillar_v2_6.trade_cond_3.size = 1

-- Display: Trade Cond 3
nyse_nationalequities_trades_pillar_v2_6.trade_cond_3.display = function(value)
  if value == " " then
    return "Trade Cond 3: Na (<whitespace>)"
  end
  if value == "T" then
    return "Trade Cond 3: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Trade Cond 3: Extended Hours Sold Out Of Sequence (U)"
  end
  if value == "Z" then
    return "Trade Cond 3: Sold (Z)"
  end

  return "Trade Cond 3: Unknown("..value..")"
end

-- Dissect: Trade Cond 3
nyse_nationalequities_trades_pillar_v2_6.trade_cond_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.trade_cond_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.trade_cond_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_cond_3, range, value, display)

  return offset + length, value
end

-- Trade Cond 4
nyse_nationalequities_trades_pillar_v2_6.trade_cond_4 = {}

-- Size: Trade Cond 4
nyse_nationalequities_trades_pillar_v2_6.trade_cond_4.size = 1

-- Display: Trade Cond 4
nyse_nationalequities_trades_pillar_v2_6.trade_cond_4.display = function(value)
  if value == " " then
    return "Trade Cond 4: Na (<whitespace>)"
  end
  if value == "I" then
    return "Trade Cond 4: Odd Lot Trade (I)"
  end
  if value == "M" then
    return "Trade Cond 4: Official Closing Price (M)"
  end
  if value == "Q" then
    return "Trade Cond 4: Official Open Price (Q)"
  end
  if value == "V" then
    return "Trade Cond 4: Contingent Trade Trf Or Texas Only (V)"
  end
  if value == "P" then
    return "Trade Cond 4: Prior Reference Price Trf Only (P)"
  end
  if value == "W" then
    return "Trade Cond 4: Weighted Average Price Trf Only (W)"
  end

  return "Trade Cond 4: Unknown("..value..")"
end

-- Dissect: Trade Cond 4
nyse_nationalequities_trades_pillar_v2_6.trade_cond_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.trade_cond_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nationalequities_trades_pillar_v2_6.trade_cond_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_cond_4, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_nationalequities_trades_pillar_v2_6.trade_id = {}

-- Size: Trade Id
nyse_nationalequities_trades_pillar_v2_6.trade_id.size = 4

-- Display: Trade Id
nyse_nationalequities_trades_pillar_v2_6.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_nationalequities_trades_pillar_v2_6.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Unit Of Trade
nyse_nationalequities_trades_pillar_v2_6.unit_of_trade = {}

-- Size: Unit Of Trade
nyse_nationalequities_trades_pillar_v2_6.unit_of_trade.size = 2

-- Display: Unit Of Trade
nyse_nationalequities_trades_pillar_v2_6.unit_of_trade.display = function(value)
  return "Unit Of Trade: "..value
end

-- Dissect: Unit Of Trade
nyse_nationalequities_trades_pillar_v2_6.unit_of_trade.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.unit_of_trade.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.unit_of_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.unit_of_trade, range, value, display)

  return offset + length, value
end

-- Volume
nyse_nationalequities_trades_pillar_v2_6.volume = {}

-- Size: Volume
nyse_nationalequities_trades_pillar_v2_6.volume.size = 4

-- Display: Volume
nyse_nationalequities_trades_pillar_v2_6.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_nationalequities_trades_pillar_v2_6.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nationalequities_trades_pillar_v2_6.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nationalequities_trades_pillar_v2_6.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse NationalEquities Trades Pillar 2.6
-----------------------------------------------------------------------

-- Stock Summary Message
nyse_nationalequities_trades_pillar_v2_6.stock_summary_message = {}

-- Size: Stock Summary Message
nyse_nationalequities_trades_pillar_v2_6.stock_summary_message.size =
  nyse_nationalequities_trades_pillar_v2_6.source_time.size + 
  nyse_nationalequities_trades_pillar_v2_6.source_time_ns.size + 
  nyse_nationalequities_trades_pillar_v2_6.symbol_index.size + 
  nyse_nationalequities_trades_pillar_v2_6.high_price.size + 
  nyse_nationalequities_trades_pillar_v2_6.low_price.size + 
  nyse_nationalequities_trades_pillar_v2_6.open.size + 
  nyse_nationalequities_trades_pillar_v2_6.close.size + 
  nyse_nationalequities_trades_pillar_v2_6.total_volume.size

-- Display: Stock Summary Message
nyse_nationalequities_trades_pillar_v2_6.stock_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Summary Message
nyse_nationalequities_trades_pillar_v2_6.stock_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nationalequities_trades_pillar_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nationalequities_trades_pillar_v2_6.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_trades_pillar_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- High Price: Binary
  index, high_price = nyse_nationalequities_trades_pillar_v2_6.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Binary
  index, low_price = nyse_nationalequities_trades_pillar_v2_6.low_price.dissect(buffer, index, packet, parent)

  -- Open: Binary
  index, open = nyse_nationalequities_trades_pillar_v2_6.open.dissect(buffer, index, packet, parent)

  -- Close: Binary
  index, close = nyse_nationalequities_trades_pillar_v2_6.close.dissect(buffer, index, packet, parent)

  -- Total Volume: Binary
  index, total_volume = nyse_nationalequities_trades_pillar_v2_6.total_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Summary Message
nyse_nationalequities_trades_pillar_v2_6.stock_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.stock_summary_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.stock_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.stock_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.stock_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
nyse_nationalequities_trades_pillar_v2_6.trade_correction_message = {}

-- Size: Trade Correction Message
nyse_nationalequities_trades_pillar_v2_6.trade_correction_message.size =
  nyse_nationalequities_trades_pillar_v2_6.source_time.size + 
  nyse_nationalequities_trades_pillar_v2_6.source_time_ns.size + 
  nyse_nationalequities_trades_pillar_v2_6.symbol_index.size + 
  nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.original_trade_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.trade_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.price.size + 
  nyse_nationalequities_trades_pillar_v2_6.volume.size + 
  nyse_nationalequities_trades_pillar_v2_6.trade_cond_1.size + 
  nyse_nationalequities_trades_pillar_v2_6.trade_cond_2.size + 
  nyse_nationalequities_trades_pillar_v2_6.trade_cond_3.size + 
  nyse_nationalequities_trades_pillar_v2_6.trade_cond_4.size

-- Display: Trade Correction Message
nyse_nationalequities_trades_pillar_v2_6.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
nyse_nationalequities_trades_pillar_v2_6.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nationalequities_trades_pillar_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nationalequities_trades_pillar_v2_6.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_trades_pillar_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Binary
  index, original_trade_id = nyse_nationalequities_trades_pillar_v2_6.original_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_nationalequities_trades_pillar_v2_6.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nationalequities_trades_pillar_v2_6.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_nationalequities_trades_pillar_v2_6.volume.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: ASCII
  index, trade_cond_1 = nyse_nationalequities_trades_pillar_v2_6.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 2: ASCII
  index, trade_cond_2 = nyse_nationalequities_trades_pillar_v2_6.trade_cond_2.dissect(buffer, index, packet, parent)

  -- Trade Cond 3: ASCII
  index, trade_cond_3 = nyse_nationalequities_trades_pillar_v2_6.trade_cond_3.dissect(buffer, index, packet, parent)

  -- Trade Cond 4: ASCII
  index, trade_cond_4 = nyse_nationalequities_trades_pillar_v2_6.trade_cond_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
nyse_nationalequities_trades_pillar_v2_6.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_correction_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Message
nyse_nationalequities_trades_pillar_v2_6.trade_cancel_message = {}

-- Size: Trade Cancel Message
nyse_nationalequities_trades_pillar_v2_6.trade_cancel_message.size =
  nyse_nationalequities_trades_pillar_v2_6.source_time.size + 
  nyse_nationalequities_trades_pillar_v2_6.source_time_ns.size + 
  nyse_nationalequities_trades_pillar_v2_6.symbol_index.size + 
  nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.original_trade_id.size

-- Display: Trade Cancel Message
nyse_nationalequities_trades_pillar_v2_6.trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Message
nyse_nationalequities_trades_pillar_v2_6.trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nationalequities_trades_pillar_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nationalequities_trades_pillar_v2_6.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_trades_pillar_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Binary
  index, original_trade_id = nyse_nationalequities_trades_pillar_v2_6.original_trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Message
nyse_nationalequities_trades_pillar_v2_6.trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_cancel_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nyse_nationalequities_trades_pillar_v2_6.trade_message = {}

-- Size: Trade Message
nyse_nationalequities_trades_pillar_v2_6.trade_message.size =
  nyse_nationalequities_trades_pillar_v2_6.source_time.size + 
  nyse_nationalequities_trades_pillar_v2_6.source_time_ns.size + 
  nyse_nationalequities_trades_pillar_v2_6.symbol_index.size + 
  nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.trade_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.price.size + 
  nyse_nationalequities_trades_pillar_v2_6.volume.size + 
  nyse_nationalequities_trades_pillar_v2_6.trade_cond_1.size + 
  nyse_nationalequities_trades_pillar_v2_6.trade_cond_2.size + 
  nyse_nationalequities_trades_pillar_v2_6.trade_cond_3.size + 
  nyse_nationalequities_trades_pillar_v2_6.trade_cond_4.size

-- Display: Trade Message
nyse_nationalequities_trades_pillar_v2_6.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nyse_nationalequities_trades_pillar_v2_6.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nationalequities_trades_pillar_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nationalequities_trades_pillar_v2_6.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_trades_pillar_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_nationalequities_trades_pillar_v2_6.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_nationalequities_trades_pillar_v2_6.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_nationalequities_trades_pillar_v2_6.volume.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: ASCII
  index, trade_cond_1 = nyse_nationalequities_trades_pillar_v2_6.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 2: ASCII
  index, trade_cond_2 = nyse_nationalequities_trades_pillar_v2_6.trade_cond_2.dissect(buffer, index, packet, parent)

  -- Trade Cond 3: ASCII
  index, trade_cond_3 = nyse_nationalequities_trades_pillar_v2_6.trade_cond_3.dissect(buffer, index, packet, parent)

  -- Trade Cond 4: ASCII
  index, trade_cond_4 = nyse_nationalequities_trades_pillar_v2_6.trade_cond_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nyse_nationalequities_trades_pillar_v2_6.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.trade_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Heartbeat Response Message
nyse_nationalequities_trades_pillar_v2_6.heartbeat_response_message = {}

-- Size: Heartbeat Response Message
nyse_nationalequities_trades_pillar_v2_6.heartbeat_response_message.size =
  nyse_nationalequities_trades_pillar_v2_6.source_id.size

-- Display: Heartbeat Response Message
nyse_nationalequities_trades_pillar_v2_6.heartbeat_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat Response Message
nyse_nationalequities_trades_pillar_v2_6.heartbeat_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Id: ASCII
  index, source_id = nyse_nationalequities_trades_pillar_v2_6.source_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat Response Message
nyse_nationalequities_trades_pillar_v2_6.heartbeat_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.heartbeat_response_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.heartbeat_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.heartbeat_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.heartbeat_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Request Response Message
nyse_nationalequities_trades_pillar_v2_6.request_response_message = {}

-- Size: Request Response Message
nyse_nationalequities_trades_pillar_v2_6.request_response_message.size =
  nyse_nationalequities_trades_pillar_v2_6.request_seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.begin_seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.end_seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.source_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.product_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.channel_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.status.size

-- Display: Request Response Message
nyse_nationalequities_trades_pillar_v2_6.request_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Request Response Message
nyse_nationalequities_trades_pillar_v2_6.request_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Request Seq Num: Binary
  index, request_seq_num = nyse_nationalequities_trades_pillar_v2_6.request_seq_num.dissect(buffer, index, packet, parent)

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_nationalequities_trades_pillar_v2_6.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_nationalequities_trades_pillar_v2_6.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nationalequities_trades_pillar_v2_6.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nationalequities_trades_pillar_v2_6.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nationalequities_trades_pillar_v2_6.channel_id.dissect(buffer, index, packet, parent)

  -- Status: ASCII
  index, status = nyse_nationalequities_trades_pillar_v2_6.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Request Response Message
nyse_nationalequities_trades_pillar_v2_6.request_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.request_response_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.request_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.request_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.request_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Header Message
nyse_nationalequities_trades_pillar_v2_6.refresh_header_message = {}

-- Size: Refresh Header Message
nyse_nationalequities_trades_pillar_v2_6.refresh_header_message.size =
  nyse_nationalequities_trades_pillar_v2_6.current_refresh_pkt.size + 
  nyse_nationalequities_trades_pillar_v2_6.total_refresh_pkts.size + 
  nyse_nationalequities_trades_pillar_v2_6.last_seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.last_symbol_seq_num.size

-- Display: Refresh Header Message
nyse_nationalequities_trades_pillar_v2_6.refresh_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Header Message
nyse_nationalequities_trades_pillar_v2_6.refresh_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Refresh Pkt: Binary
  index, current_refresh_pkt = nyse_nationalequities_trades_pillar_v2_6.current_refresh_pkt.dissect(buffer, index, packet, parent)

  -- Total Refresh Pkts: Binary
  index, total_refresh_pkts = nyse_nationalequities_trades_pillar_v2_6.total_refresh_pkts.dissect(buffer, index, packet, parent)

  -- Last Seq Num: Binary
  index, last_seq_num = nyse_nationalequities_trades_pillar_v2_6.last_seq_num.dissect(buffer, index, packet, parent)

  -- Last Symbol Seq Num: Binary
  index, last_symbol_seq_num = nyse_nationalequities_trades_pillar_v2_6.last_symbol_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Header Message
nyse_nationalequities_trades_pillar_v2_6.refresh_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.refresh_header_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.refresh_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.refresh_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.refresh_header_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Unavailable Message
nyse_nationalequities_trades_pillar_v2_6.message_unavailable_message = {}

-- Size: Message Unavailable Message
nyse_nationalequities_trades_pillar_v2_6.message_unavailable_message.size =
  nyse_nationalequities_trades_pillar_v2_6.begin_seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.end_seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.product_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.channel_id.size

-- Display: Message Unavailable Message
nyse_nationalequities_trades_pillar_v2_6.message_unavailable_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Unavailable Message
nyse_nationalequities_trades_pillar_v2_6.message_unavailable_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_nationalequities_trades_pillar_v2_6.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_nationalequities_trades_pillar_v2_6.end_seq_num.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nationalequities_trades_pillar_v2_6.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nationalequities_trades_pillar_v2_6.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Unavailable Message
nyse_nationalequities_trades_pillar_v2_6.message_unavailable_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.message_unavailable_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.message_unavailable_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.message_unavailable_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.message_unavailable_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Request Message
nyse_nationalequities_trades_pillar_v2_6.refresh_request_message = {}

-- Size: Refresh Request Message
nyse_nationalequities_trades_pillar_v2_6.refresh_request_message.size =
  nyse_nationalequities_trades_pillar_v2_6.symbol_index.size + 
  nyse_nationalequities_trades_pillar_v2_6.source_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.product_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.channel_id.size

-- Display: Refresh Request Message
nyse_nationalequities_trades_pillar_v2_6.refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Request Message
nyse_nationalequities_trades_pillar_v2_6.refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_trades_pillar_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nationalequities_trades_pillar_v2_6.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nationalequities_trades_pillar_v2_6.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nationalequities_trades_pillar_v2_6.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Request Message
nyse_nationalequities_trades_pillar_v2_6.refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.refresh_request_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Request Message
nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_request_message = {}

-- Size: Symbol Index Mapping Request Message
nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_request_message.size =
  nyse_nationalequities_trades_pillar_v2_6.symbol_index.size + 
  nyse_nationalequities_trades_pillar_v2_6.source_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.product_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.channel_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.retransmit_method.size

-- Display: Symbol Index Mapping Request Message
nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Request Message
nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_trades_pillar_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nationalequities_trades_pillar_v2_6.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nationalequities_trades_pillar_v2_6.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nationalequities_trades_pillar_v2_6.channel_id.dissect(buffer, index, packet, parent)

  -- Retransmit Method: Binary
  index, retransmit_method = nyse_nationalequities_trades_pillar_v2_6.retransmit_method.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Request Message
nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.symbol_index_mapping_request_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Retransmission Request Message
nyse_nationalequities_trades_pillar_v2_6.retransmission_request_message = {}

-- Size: Retransmission Request Message
nyse_nationalequities_trades_pillar_v2_6.retransmission_request_message.size =
  nyse_nationalequities_trades_pillar_v2_6.begin_seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.end_seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.source_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.product_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.channel_id.size

-- Display: Retransmission Request Message
nyse_nationalequities_trades_pillar_v2_6.retransmission_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retransmission Request Message
nyse_nationalequities_trades_pillar_v2_6.retransmission_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Begin Seq Num: Binary
  index, begin_seq_num = nyse_nationalequities_trades_pillar_v2_6.begin_seq_num.dissect(buffer, index, packet, parent)

  -- End Seq Num: Binary
  index, end_seq_num = nyse_nationalequities_trades_pillar_v2_6.end_seq_num.dissect(buffer, index, packet, parent)

  -- Source Id: ASCII
  index, source_id = nyse_nationalequities_trades_pillar_v2_6.source_id.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nationalequities_trades_pillar_v2_6.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nationalequities_trades_pillar_v2_6.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retransmission Request Message
nyse_nationalequities_trades_pillar_v2_6.retransmission_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.retransmission_request_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.retransmission_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.retransmission_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.retransmission_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
nyse_nationalequities_trades_pillar_v2_6.security_status_message = {}

-- Size: Security Status Message
nyse_nationalequities_trades_pillar_v2_6.security_status_message.size =
  nyse_nationalequities_trades_pillar_v2_6.source_time.size + 
  nyse_nationalequities_trades_pillar_v2_6.source_time_ns.size + 
  nyse_nationalequities_trades_pillar_v2_6.symbol_index.size + 
  nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.security_status.size + 
  nyse_nationalequities_trades_pillar_v2_6.halt_condition.size + 
  nyse_nationalequities_trades_pillar_v2_6.reserved_4.size + 
  nyse_nationalequities_trades_pillar_v2_6.price_1.size + 
  nyse_nationalequities_trades_pillar_v2_6.price_2.size + 
  nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_exchange_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_volume.size + 
  nyse_nationalequities_trades_pillar_v2_6.time.size + 
  nyse_nationalequities_trades_pillar_v2_6.ssr_state.size + 
  nyse_nationalequities_trades_pillar_v2_6.market_state.size + 
  nyse_nationalequities_trades_pillar_v2_6.session_state.size

-- Display: Security Status Message
nyse_nationalequities_trades_pillar_v2_6.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
nyse_nationalequities_trades_pillar_v2_6.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nationalequities_trades_pillar_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nationalequities_trades_pillar_v2_6.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_trades_pillar_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Security Status: ASCII
  index, security_status = nyse_nationalequities_trades_pillar_v2_6.security_status.dissect(buffer, index, packet, parent)

  -- Halt Condition: ASCII
  index, halt_condition = nyse_nationalequities_trades_pillar_v2_6.halt_condition.dissect(buffer, index, packet, parent)

  -- Reserved 4: Binary
  index, reserved_4 = nyse_nationalequities_trades_pillar_v2_6.reserved_4.dissect(buffer, index, packet, parent)

  -- Price 1: Binary
  index, price_1 = nyse_nationalequities_trades_pillar_v2_6.price_1.dissect(buffer, index, packet, parent)

  -- Price 2: Binary
  index, price_2 = nyse_nationalequities_trades_pillar_v2_6.price_2.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Exchange Id: ASCII
  index, ssr_triggering_exchange_id = nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_exchange_id.dissect(buffer, index, packet, parent)

  -- Ssr Triggering Volume: Binary
  index, ssr_triggering_volume = nyse_nationalequities_trades_pillar_v2_6.ssr_triggering_volume.dissect(buffer, index, packet, parent)

  -- Time: Binary
  index, time = nyse_nationalequities_trades_pillar_v2_6.time.dissect(buffer, index, packet, parent)

  -- Ssr State: ASCII
  index, ssr_state = nyse_nationalequities_trades_pillar_v2_6.ssr_state.dissect(buffer, index, packet, parent)

  -- Market State: ASCII
  index, market_state = nyse_nationalequities_trades_pillar_v2_6.market_state.dissect(buffer, index, packet, parent)

  -- Session State: ASCII
  index, session_state = nyse_nationalequities_trades_pillar_v2_6.session_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
nyse_nationalequities_trades_pillar_v2_6.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.security_status_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Clear Message
nyse_nationalequities_trades_pillar_v2_6.symbol_clear_message = {}

-- Size: Symbol Clear Message
nyse_nationalequities_trades_pillar_v2_6.symbol_clear_message.size =
  nyse_nationalequities_trades_pillar_v2_6.source_time.size + 
  nyse_nationalequities_trades_pillar_v2_6.source_time_ns.size + 
  nyse_nationalequities_trades_pillar_v2_6.symbol_index.size + 
  nyse_nationalequities_trades_pillar_v2_6.next_source_seq_num.size

-- Display: Symbol Clear Message
nyse_nationalequities_trades_pillar_v2_6.symbol_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Clear Message
nyse_nationalequities_trades_pillar_v2_6.symbol_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nationalequities_trades_pillar_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nationalequities_trades_pillar_v2_6.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_trades_pillar_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Next Source Seq Num: Binary
  index, next_source_seq_num = nyse_nationalequities_trades_pillar_v2_6.next_source_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Clear Message
nyse_nationalequities_trades_pillar_v2_6.symbol_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.symbol_clear_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.symbol_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.symbol_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.symbol_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Index Mapping Message
nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_message = {}

-- Size: Symbol Index Mapping Message
nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_message.size =
  nyse_nationalequities_trades_pillar_v2_6.symbol_index.size + 
  nyse_nationalequities_trades_pillar_v2_6.symbol.size + 
  nyse_nationalequities_trades_pillar_v2_6.reserved_1.size + 
  nyse_nationalequities_trades_pillar_v2_6.market_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.system_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.exchange_code.size + 
  nyse_nationalequities_trades_pillar_v2_6.price_scale_code.size + 
  nyse_nationalequities_trades_pillar_v2_6.security_type.size + 
  nyse_nationalequities_trades_pillar_v2_6.lot_size.size + 
  nyse_nationalequities_trades_pillar_v2_6.prev_close_price.size + 
  nyse_nationalequities_trades_pillar_v2_6.prev_close_volume.size + 
  nyse_nationalequities_trades_pillar_v2_6.price_resolution.size + 
  nyse_nationalequities_trades_pillar_v2_6.round_lot.size + 
  nyse_nationalequities_trades_pillar_v2_6.mpv.size + 
  nyse_nationalequities_trades_pillar_v2_6.unit_of_trade.size + 
  nyse_nationalequities_trades_pillar_v2_6.reserved_2.size

-- Display: Symbol Index Mapping Message
nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Index Mapping Message
nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_nationalequities_trades_pillar_v2_6.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol: ASCII
  index, symbol = nyse_nationalequities_trades_pillar_v2_6.symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: Binary
  index, reserved_1 = nyse_nationalequities_trades_pillar_v2_6.reserved_1.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_nationalequities_trades_pillar_v2_6.market_id.dissect(buffer, index, packet, parent)

  -- System Id: Binary
  index, system_id = nyse_nationalequities_trades_pillar_v2_6.system_id.dissect(buffer, index, packet, parent)

  -- Exchange Code: ASCII
  index, exchange_code = nyse_nationalequities_trades_pillar_v2_6.exchange_code.dissect(buffer, index, packet, parent)

  -- Price Scale Code: Binary
  index, price_scale_code = nyse_nationalequities_trades_pillar_v2_6.price_scale_code.dissect(buffer, index, packet, parent)

  -- Security Type: ASCII
  index, security_type = nyse_nationalequities_trades_pillar_v2_6.security_type.dissect(buffer, index, packet, parent)

  -- Lot Size: Binary
  index, lot_size = nyse_nationalequities_trades_pillar_v2_6.lot_size.dissect(buffer, index, packet, parent)

  -- Prev Close Price: Binary
  index, prev_close_price = nyse_nationalequities_trades_pillar_v2_6.prev_close_price.dissect(buffer, index, packet, parent)

  -- Prev Close Volume: Binary
  index, prev_close_volume = nyse_nationalequities_trades_pillar_v2_6.prev_close_volume.dissect(buffer, index, packet, parent)

  -- Price Resolution: Binary
  index, price_resolution = nyse_nationalequities_trades_pillar_v2_6.price_resolution.dissect(buffer, index, packet, parent)

  -- Round Lot: ASCII
  index, round_lot = nyse_nationalequities_trades_pillar_v2_6.round_lot.dissect(buffer, index, packet, parent)

  -- Mpv: Binary
  index, mpv = nyse_nationalequities_trades_pillar_v2_6.mpv.dissect(buffer, index, packet, parent)

  -- Unit Of Trade: Binary
  index, unit_of_trade = nyse_nationalequities_trades_pillar_v2_6.unit_of_trade.dissect(buffer, index, packet, parent)

  -- Reserved 2: Binary
  index, reserved_2 = nyse_nationalequities_trades_pillar_v2_6.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Index Mapping Message
nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.symbol_index_mapping_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_message.fields(buffer, offset, packet, parent)
  end
end

-- Source Time Reference Message
nyse_nationalequities_trades_pillar_v2_6.source_time_reference_message = {}

-- Size: Source Time Reference Message
nyse_nationalequities_trades_pillar_v2_6.source_time_reference_message.size =
  nyse_nationalequities_trades_pillar_v2_6.id.size + 
  nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.source_time.size

-- Display: Source Time Reference Message
nyse_nationalequities_trades_pillar_v2_6.source_time_reference_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Source Time Reference Message
nyse_nationalequities_trades_pillar_v2_6.source_time_reference_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Id: Binary
  index, id = nyse_nationalequities_trades_pillar_v2_6.id.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_nationalequities_trades_pillar_v2_6.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Source Time: Binary
  index, source_time = nyse_nationalequities_trades_pillar_v2_6.source_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Source Time Reference Message
nyse_nationalequities_trades_pillar_v2_6.source_time_reference_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.source_time_reference_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.source_time_reference_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.source_time_reference_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.source_time_reference_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Reset Message
nyse_nationalequities_trades_pillar_v2_6.sequence_number_reset_message = {}

-- Size: Sequence Number Reset Message
nyse_nationalequities_trades_pillar_v2_6.sequence_number_reset_message.size =
  nyse_nationalequities_trades_pillar_v2_6.source_time.size + 
  nyse_nationalequities_trades_pillar_v2_6.source_time_ns.size + 
  nyse_nationalequities_trades_pillar_v2_6.product_id.size + 
  nyse_nationalequities_trades_pillar_v2_6.channel_id.size

-- Display: Sequence Number Reset Message
nyse_nationalequities_trades_pillar_v2_6.sequence_number_reset_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Reset Message
nyse_nationalequities_trades_pillar_v2_6.sequence_number_reset_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_nationalequities_trades_pillar_v2_6.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_nationalequities_trades_pillar_v2_6.source_time_ns.dissect(buffer, index, packet, parent)

  -- Product Id: Binary
  index, product_id = nyse_nationalequities_trades_pillar_v2_6.product_id.dissect(buffer, index, packet, parent)

  -- Channel Id: Binary
  index, channel_id = nyse_nationalequities_trades_pillar_v2_6.channel_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Number Reset Message
nyse_nationalequities_trades_pillar_v2_6.sequence_number_reset_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.sequence_number_reset_message, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.sequence_number_reset_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.sequence_number_reset_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.sequence_number_reset_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_nationalequities_trades_pillar_v2_6.payload = {}

-- Dissect: Payload
nyse_nationalequities_trades_pillar_v2_6.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequence Number Reset Message
  if message_type == 1 then
    return nyse_nationalequities_trades_pillar_v2_6.sequence_number_reset_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Source Time Reference Message
  if message_type == 2 then
    return nyse_nationalequities_trades_pillar_v2_6.source_time_reference_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Message
  if message_type == 3 then
    return nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Clear Message
  if message_type == 32 then
    return nyse_nationalequities_trades_pillar_v2_6.symbol_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if message_type == 34 then
    return nyse_nationalequities_trades_pillar_v2_6.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retransmission Request Message
  if message_type == 10 then
    return nyse_nationalequities_trades_pillar_v2_6.retransmission_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Index Mapping Request Message
  if message_type == 13 then
    return nyse_nationalequities_trades_pillar_v2_6.symbol_index_mapping_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Request Message
  if message_type == 15 then
    return nyse_nationalequities_trades_pillar_v2_6.refresh_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Unavailable Message
  if message_type == 31 then
    return nyse_nationalequities_trades_pillar_v2_6.message_unavailable_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Header Message
  if message_type == 35 then
    return nyse_nationalequities_trades_pillar_v2_6.refresh_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Request Response Message
  if message_type == 11 then
    return nyse_nationalequities_trades_pillar_v2_6.request_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Response Message
  if message_type == 12 then
    return nyse_nationalequities_trades_pillar_v2_6.heartbeat_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 220 then
    return nyse_nationalequities_trades_pillar_v2_6.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Message
  if message_type == 221 then
    return nyse_nationalequities_trades_pillar_v2_6.trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if message_type == 222 then
    return nyse_nationalequities_trades_pillar_v2_6.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Summary Message
  if message_type == 223 then
    return nyse_nationalequities_trades_pillar_v2_6.stock_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_nationalequities_trades_pillar_v2_6.message_header = {}

-- Size: Message Header
nyse_nationalequities_trades_pillar_v2_6.message_header.size =
  nyse_nationalequities_trades_pillar_v2_6.message_size.size + 
  nyse_nationalequities_trades_pillar_v2_6.message_type.size

-- Display: Message Header
nyse_nationalequities_trades_pillar_v2_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_nationalequities_trades_pillar_v2_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_nationalequities_trades_pillar_v2_6.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, message_type = nyse_nationalequities_trades_pillar_v2_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_nationalequities_trades_pillar_v2_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.message_header, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_nationalequities_trades_pillar_v2_6.message = {}

-- Display: Message
nyse_nationalequities_trades_pillar_v2_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_nationalequities_trades_pillar_v2_6.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_nationalequities_trades_pillar_v2_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 16 branches
  index = nyse_nationalequities_trades_pillar_v2_6.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_nationalequities_trades_pillar_v2_6.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.message, buffer(offset, 0))
    local current = nyse_nationalequities_trades_pillar_v2_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_nationalequities_trades_pillar_v2_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nationalequities_trades_pillar_v2_6.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Send Time
nyse_nationalequities_trades_pillar_v2_6.send_time = {}

-- Size: Send Time
nyse_nationalequities_trades_pillar_v2_6.send_time.size =
  nyse_nationalequities_trades_pillar_v2_6.seconds.size + 
  nyse_nationalequities_trades_pillar_v2_6.nanoseconds.size

-- Display: Send Time
nyse_nationalequities_trades_pillar_v2_6.send_time.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Send Time
nyse_nationalequities_trades_pillar_v2_6.send_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = nyse_nationalequities_trades_pillar_v2_6.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Binary
  index, nanoseconds = nyse_nationalequities_trades_pillar_v2_6.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local send_time = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, send_time
end

-- Dissect: Send Time
nyse_nationalequities_trades_pillar_v2_6.send_time.dissect = function(buffer, offset, packet, parent)
  if show.send_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.send_time, buffer(offset, 0))
    local index, value = nyse_nationalequities_trades_pillar_v2_6.send_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.send_time.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.send_time.fields(buffer, offset, packet, parent)
  end
end

-- Packet Header
nyse_nationalequities_trades_pillar_v2_6.packet_header = {}

-- Size: Packet Header
nyse_nationalequities_trades_pillar_v2_6.packet_header.size =
  nyse_nationalequities_trades_pillar_v2_6.pkt_size.size + 
  nyse_nationalequities_trades_pillar_v2_6.delivery_flag.size + 
  nyse_nationalequities_trades_pillar_v2_6.number_msgs.size + 
  nyse_nationalequities_trades_pillar_v2_6.seq_num.size + 
  nyse_nationalequities_trades_pillar_v2_6.send_time.size

-- Display: Packet Header
nyse_nationalequities_trades_pillar_v2_6.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_nationalequities_trades_pillar_v2_6.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = nyse_nationalequities_trades_pillar_v2_6.pkt_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_nationalequities_trades_pillar_v2_6.delivery_flag.dissect(buffer, index, packet, parent)

  -- Number Msgs: 1 Byte Unsigned Fixed Width Integer
  index, number_msgs = nyse_nationalequities_trades_pillar_v2_6.number_msgs.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = nyse_nationalequities_trades_pillar_v2_6.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: Struct of 2 fields
  index, send_time = nyse_nationalequities_trades_pillar_v2_6.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_nationalequities_trades_pillar_v2_6.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6.fields.packet_header, buffer(offset, 0))
    local index = nyse_nationalequities_trades_pillar_v2_6.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nationalequities_trades_pillar_v2_6.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nationalequities_trades_pillar_v2_6.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_nationalequities_trades_pillar_v2_6.packet = {}

-- Dissect Packet
nyse_nationalequities_trades_pillar_v2_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = nyse_nationalequities_trades_pillar_v2_6.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_nationalequities_trades_pillar_v2_6.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_nationalequities_trades_pillar_v2_6.init()
end

-- Dissector for Nyse NationalEquities Trades Pillar 2.6
function omi_nyse_nationalequities_trades_pillar_v2_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_nationalequities_trades_pillar_v2_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_nationalequities_trades_pillar_v2_6, buffer(), omi_nyse_nationalequities_trades_pillar_v2_6.description, "("..buffer:len().." Bytes)")
  return nyse_nationalequities_trades_pillar_v2_6.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_nationalequities_trades_pillar_v2_6)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_nationalequities_trades_pillar_v2_6.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse NationalEquities Trades Pillar 2.6
local function omi_nyse_nationalequities_trades_pillar_v2_6_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_nationalequities_trades_pillar_v2_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_nationalequities_trades_pillar_v2_6
  omi_nyse_nationalequities_trades_pillar_v2_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse NationalEquities Trades Pillar 2.6
omi_nyse_nationalequities_trades_pillar_v2_6:register_heuristic("udp", omi_nyse_nationalequities_trades_pillar_v2_6_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.6
--   Date: Wednesday, August 20, 2025
--   Specification: NYSE_Pillar_Trades_Client_Specification.pdf
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
