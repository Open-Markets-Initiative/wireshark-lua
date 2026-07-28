-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Hkex Sse ChinaConnectRefresh Omd 1.4 Protocol
local omi_hkex_sse_chinaconnectrefresh_omd_v1_4 = Proto("Omi.Hkex.Sse.ChinaConnectRefresh.Omd.v1.4", "Hkex Sse ChinaConnectRefresh Omd 1.4")

-- Protocol table
local hkex_sse_chinaconnectrefresh_omd_v1_4 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Hkex Sse ChinaConnectRefresh Omd 1.4 Fields
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.aggregate_ask_quantity = ProtoField.new("Aggregate Ask Quantity", "hkex.sse.chinaconnectrefresh.omd.v1.4.aggregateaskquantity", ftypes.UINT64)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.aggregate_bid_quantity = ProtoField.new("Aggregate Bid Quantity", "hkex.sse.chinaconnectrefresh.omd.v1.4.aggregatebidquantity", ftypes.UINT64)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.ask_price = ProtoField.new("Ask Price", "hkex.sse.chinaconnectrefresh.omd.v1.4.askprice", ftypes.DOUBLE)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.bid_price = ProtoField.new("Bid Price", "hkex.sse.chinaconnectrefresh.omd.v1.4.bidprice", ftypes.DOUBLE)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.currency_code = ProtoField.new("Currency Code", "hkex.sse.chinaconnectrefresh.omd.v1.4.currencycode", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler = ProtoField.new("Filler", "hkex.sse.chinaconnectrefresh.omd.v1.4.filler", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_1 = ProtoField.new("Filler 1", "hkex.sse.chinaconnectrefresh.omd.v1.4.filler1", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_12 = ProtoField.new("Filler 12", "hkex.sse.chinaconnectrefresh.omd.v1.4.filler12", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_2 = ProtoField.new("Filler 2", "hkex.sse.chinaconnectrefresh.omd.v1.4.filler2", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_3 = ProtoField.new("Filler 3", "hkex.sse.chinaconnectrefresh.omd.v1.4.filler3", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_6 = ProtoField.new("Filler 6", "hkex.sse.chinaconnectrefresh.omd.v1.4.filler6", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_60 = ProtoField.new("Filler 60", "hkex.sse.chinaconnectrefresh.omd.v1.4.filler60", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_7 = ProtoField.new("Filler 7", "hkex.sse.chinaconnectrefresh.omd.v1.4.filler7", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_8 = ProtoField.new("Filler 8", "hkex.sse.chinaconnectrefresh.omd.v1.4.filler8", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.high_price = ProtoField.new("High Price", "hkex.sse.chinaconnectrefresh.omd.v1.4.highprice", ftypes.DOUBLE)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.instrument_type = ProtoField.new("Instrument Type", "hkex.sse.chinaconnectrefresh.omd.v1.4.instrumenttype", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.isin_code = ProtoField.new("Isin Code", "hkex.sse.chinaconnectrefresh.omd.v1.4.isincode", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.last_price = ProtoField.new("Last Price", "hkex.sse.chinaconnectrefresh.omd.v1.4.lastprice", ftypes.DOUBLE)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.last_seq_num = ProtoField.new("Last Seq Num", "hkex.sse.chinaconnectrefresh.omd.v1.4.lastseqnum", ftypes.UINT32)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.listing_date = ProtoField.new("Listing Date", "hkex.sse.chinaconnectrefresh.omd.v1.4.listingdate", ftypes.UINT32)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.lot_size = ProtoField.new("Lot Size", "hkex.sse.chinaconnectrefresh.omd.v1.4.lotsize", ftypes.UINT32)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.low_price = ProtoField.new("Low Price", "hkex.sse.chinaconnectrefresh.omd.v1.4.lowprice", ftypes.DOUBLE)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.market_code = ProtoField.new("Market Code", "hkex.sse.chinaconnectrefresh.omd.v1.4.marketcode", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.market_name = ProtoField.new("Market Name", "hkex.sse.chinaconnectrefresh.omd.v1.4.marketname", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.message = ProtoField.new("Message", "hkex.sse.chinaconnectrefresh.omd.v1.4.message", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.msg_count = ProtoField.new("Msg Count", "hkex.sse.chinaconnectrefresh.omd.v1.4.msgcount", ftypes.UINT8)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.msg_header = ProtoField.new("Msg Header", "hkex.sse.chinaconnectrefresh.omd.v1.4.msgheader", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.msg_size = ProtoField.new("Msg Size", "hkex.sse.chinaconnectrefresh.omd.v1.4.msgsize", ftypes.UINT16)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.msg_type = ProtoField.new("Msg Type", "hkex.sse.chinaconnectrefresh.omd.v1.4.msgtype", ftypes.UINT16)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.number_of_securities = ProtoField.new("Number Of Securities", "hkex.sse.chinaconnectrefresh.omd.v1.4.numberofsecurities", ftypes.UINT32)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.opening_price = ProtoField.new("Opening Price", "hkex.sse.chinaconnectrefresh.omd.v1.4.openingprice", ftypes.DOUBLE)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.packet = ProtoField.new("Packet", "hkex.sse.chinaconnectrefresh.omd.v1.4.packet", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.packet_header = ProtoField.new("Packet Header", "hkex.sse.chinaconnectrefresh.omd.v1.4.packetheader", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.pkt_size = ProtoField.new("Pkt Size", "hkex.sse.chinaconnectrefresh.omd.v1.4.pktsize", ftypes.UINT16)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.previous_closing_price = ProtoField.new("Previous Closing Price", "hkex.sse.chinaconnectrefresh.omd.v1.4.previousclosingprice", ftypes.DOUBLE)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.security_code = ProtoField.new("Security Code", "hkex.sse.chinaconnectrefresh.omd.v1.4.securitycode", ftypes.UINT32)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.security_name_gb = ProtoField.new("Security Name Gb", "hkex.sse.chinaconnectrefresh.omd.v1.4.securitynamegb", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.security_short_name = ProtoField.new("Security Short Name", "hkex.sse.chinaconnectrefresh.omd.v1.4.securityshortname", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.security_trading_status = ProtoField.new("Security Trading Status", "hkex.sse.chinaconnectrefresh.omd.v1.4.securitytradingstatus", ftypes.UINT8)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.send_time = ProtoField.new("Send Time", "hkex.sse.chinaconnectrefresh.omd.v1.4.sendtime", ftypes.UINT64)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.seq_num = ProtoField.new("Seq Num", "hkex.sse.chinaconnectrefresh.omd.v1.4.seqnum", ftypes.UINT32)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.shares_traded = ProtoField.new("Shares Traded", "hkex.sse.chinaconnectrefresh.omd.v1.4.sharestraded", ftypes.UINT64)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.shortsell_flag = ProtoField.new("Shortsell Flag", "hkex.sse.chinaconnectrefresh.omd.v1.4.shortsellflag", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.trading_phase_code = ProtoField.new("Trading Phase Code", "hkex.sse.chinaconnectrefresh.omd.v1.4.tradingphasecode", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.turnover = ProtoField.new("Turnover", "hkex.sse.chinaconnectrefresh.omd.v1.4.turnover", ftypes.DOUBLE)

-- Hkex Sse Omd ChinaConnectRefresh 1.4 Application Messages
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.market_definition_message = ProtoField.new("Market Definition Message", "hkex.sse.chinaconnectrefresh.omd.v1.4.marketdefinitionmessage", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.refresh_complete_message = ProtoField.new("Refresh Complete Message", "hkex.sse.chinaconnectrefresh.omd.v1.4.refreshcompletemessage", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.security_definition_message = ProtoField.new("Security Definition Message", "hkex.sse.chinaconnectrefresh.omd.v1.4.securitydefinitionmessage", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.security_status_message = ProtoField.new("Security Status Message", "hkex.sse.chinaconnectrefresh.omd.v1.4.securitystatusmessage", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.statistics_message = ProtoField.new("Statistics Message", "hkex.sse.chinaconnectrefresh.omd.v1.4.statisticsmessage", ftypes.STRING)
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "hkex.sse.chinaconnectrefresh.omd.v1.4.topofbookmessage", ftypes.STRING)

-- Hkex Sse ChinaConnectRefresh Omd 1.4 generated fields
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.message_index = ProtoField.new("Message Index", "hkex.sse.chinaconnectrefresh.omd.v1.4.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Hkex Sse ChinaConnectRefresh Omd 1.4 Element Dissection Options
show.application_messages = true
show.message = true
show.msg_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Hkex Sse ChinaConnectRefresh Omd 1.4 Show Options
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_msg_header = Pref.bool("Show Msg Header", show.msg_header, "Parse and add Msg Header to protocol tree")
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_application_messages then
    show.application_messages = omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_application_messages
  end
  if show.message ~= omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_message then
    show.message = omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_message
  end
  if show.msg_header ~= omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_msg_header then
    show.msg_header = omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_msg_header
  end
  if show.packet ~= omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_packet then
    show.packet = omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_packet
  end
  if show.packet_header ~= omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_packet_header then
    show.packet_header = omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_packet_header
  end
  if show.message_index ~= omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_message_index then
    show.message_index = omi_hkex_sse_chinaconnectrefresh_omd_v1_4.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- Hkex Sse ChinaConnectRefresh Omd 1.4 Fields
-----------------------------------------------------------------------

-- Aggregate Ask Quantity
hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_ask_quantity = {}

-- Size: Aggregate Ask Quantity
hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_ask_quantity.size = 8

-- Display: Aggregate Ask Quantity
hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_ask_quantity.display = function(value)
  return "Aggregate Ask Quantity: "..value
end

-- Dissect: Aggregate Ask Quantity
hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_ask_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.aggregate_ask_quantity, range, value, display)

  return offset + length, value
end

-- Aggregate Bid Quantity
hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_bid_quantity = {}

-- Size: Aggregate Bid Quantity
hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_bid_quantity.size = 8

-- Display: Aggregate Bid Quantity
hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_bid_quantity.display = function(value)
  return "Aggregate Bid Quantity: "..value
end

-- Dissect: Aggregate Bid Quantity
hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_bid_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.aggregate_bid_quantity, range, value, display)

  return offset + length, value
end

-- Ask Price
hkex_sse_chinaconnectrefresh_omd_v1_4.ask_price = {}

-- Size: Ask Price
hkex_sse_chinaconnectrefresh_omd_v1_4.ask_price.size = 4

-- Display: Ask Price
hkex_sse_chinaconnectrefresh_omd_v1_4.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
hkex_sse_chinaconnectrefresh_omd_v1_4.ask_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Ask Price
hkex_sse_chinaconnectrefresh_omd_v1_4.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_sse_chinaconnectrefresh_omd_v1_4.ask_price.translate(raw)
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Bid Price
hkex_sse_chinaconnectrefresh_omd_v1_4.bid_price = {}

-- Size: Bid Price
hkex_sse_chinaconnectrefresh_omd_v1_4.bid_price.size = 4

-- Display: Bid Price
hkex_sse_chinaconnectrefresh_omd_v1_4.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
hkex_sse_chinaconnectrefresh_omd_v1_4.bid_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Bid Price
hkex_sse_chinaconnectrefresh_omd_v1_4.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_sse_chinaconnectrefresh_omd_v1_4.bid_price.translate(raw)
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Currency Code
hkex_sse_chinaconnectrefresh_omd_v1_4.currency_code = {}

-- Size: Currency Code
hkex_sse_chinaconnectrefresh_omd_v1_4.currency_code.size = 3

-- Display: Currency Code
hkex_sse_chinaconnectrefresh_omd_v1_4.currency_code.display = function(value)
  return "Currency Code: "..value
end

-- Dissect: Currency Code
hkex_sse_chinaconnectrefresh_omd_v1_4.currency_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.currency_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.currency_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.currency_code, range, value, display)

  return offset + length, value
end

-- Filler
hkex_sse_chinaconnectrefresh_omd_v1_4.filler = {}

-- Size: Filler
hkex_sse_chinaconnectrefresh_omd_v1_4.filler.size = 1

-- Display: Filler
hkex_sse_chinaconnectrefresh_omd_v1_4.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
hkex_sse_chinaconnectrefresh_omd_v1_4.filler.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler, range, value, display)

  return offset + length, value
end

-- Filler 1
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_1 = {}

-- Size: Filler 1
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_1.size = 1

-- Display: Filler 1
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 12
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_12 = {}

-- Size: Filler 12
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_12.size = 12

-- Display: Filler 12
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_12.display = function(value)
  return "Filler 12: "..value
end

-- Dissect: Filler 12
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_12.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_12.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_12.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_12, range, value, display)

  return offset + length, value
end

-- Filler 2
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_2 = {}

-- Size: Filler 2
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_2.size = 2

-- Display: Filler 2
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler 3
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_3 = {}

-- Size: Filler 3
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_3.size = 3

-- Display: Filler 3
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_3.display = function(value)
  return "Filler 3: "..value
end

-- Dissect: Filler 3
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_3.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_3, range, value, display)

  return offset + length, value
end

-- Filler 6
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_6 = {}

-- Size: Filler 6
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_6.size = 6

-- Display: Filler 6
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_6.display = function(value)
  return "Filler 6: "..value
end

-- Dissect: Filler 6
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_6.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_6.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_6.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_6, range, value, display)

  return offset + length, value
end

-- Filler 60
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_60 = {}

-- Size: Filler 60
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_60.size = 60

-- Display: Filler 60
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_60.display = function(value)
  return "Filler 60: "..value
end

-- Dissect: Filler 60
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_60.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_60.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_60.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_60, range, value, display)

  return offset + length, value
end

-- Filler 7
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_7 = {}

-- Size: Filler 7
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_7.size = 7

-- Display: Filler 7
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_7.display = function(value)
  return "Filler 7: "..value
end

-- Dissect: Filler 7
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_7.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_7.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_7, range, value, display)

  return offset + length, value
end

-- Filler 8
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_8 = {}

-- Size: Filler 8
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_8.size = 8

-- Display: Filler 8
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_8.display = function(value)
  return "Filler 8: "..value
end

-- Dissect: Filler 8
hkex_sse_chinaconnectrefresh_omd_v1_4.filler_8.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_8.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.filler_8, range, value, display)

  return offset + length, value
end

-- High Price
hkex_sse_chinaconnectrefresh_omd_v1_4.high_price = {}

-- Size: High Price
hkex_sse_chinaconnectrefresh_omd_v1_4.high_price.size = 4

-- Display: High Price
hkex_sse_chinaconnectrefresh_omd_v1_4.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
hkex_sse_chinaconnectrefresh_omd_v1_4.high_price.translate = function(raw)
  return raw/1000
end

-- Dissect: High Price
hkex_sse_chinaconnectrefresh_omd_v1_4.high_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.high_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_sse_chinaconnectrefresh_omd_v1_4.high_price.translate(raw)
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.high_price, range, value, display)

  return offset + length, value
end

-- Instrument Type
hkex_sse_chinaconnectrefresh_omd_v1_4.instrument_type = {}

-- Size: Instrument Type
hkex_sse_chinaconnectrefresh_omd_v1_4.instrument_type.size = 4

-- Display: Instrument Type
hkex_sse_chinaconnectrefresh_omd_v1_4.instrument_type.display = function(value)
  if value == "EQTY" then
    return "Instrument Type: Equities (EQTY)"
  end
  if value == "TRST" then
    return "Instrument Type: Trusts (TRST)"
  end

  return "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
hkex_sse_chinaconnectrefresh_omd_v1_4.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Isin Code
hkex_sse_chinaconnectrefresh_omd_v1_4.isin_code = {}

-- Size: Isin Code
hkex_sse_chinaconnectrefresh_omd_v1_4.isin_code.size = 12

-- Display: Isin Code
hkex_sse_chinaconnectrefresh_omd_v1_4.isin_code.display = function(value)
  return "Isin Code: "..value
end

-- Dissect: Isin Code
hkex_sse_chinaconnectrefresh_omd_v1_4.isin_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.isin_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.isin_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.isin_code, range, value, display)

  return offset + length, value
end

-- Last Price
hkex_sse_chinaconnectrefresh_omd_v1_4.last_price = {}

-- Size: Last Price
hkex_sse_chinaconnectrefresh_omd_v1_4.last_price.size = 4

-- Display: Last Price
hkex_sse_chinaconnectrefresh_omd_v1_4.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
hkex_sse_chinaconnectrefresh_omd_v1_4.last_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Last Price
hkex_sse_chinaconnectrefresh_omd_v1_4.last_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.last_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_sse_chinaconnectrefresh_omd_v1_4.last_price.translate(raw)
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.last_price, range, value, display)

  return offset + length, value
end

-- Last Seq Num
hkex_sse_chinaconnectrefresh_omd_v1_4.last_seq_num = {}

-- Size: Last Seq Num
hkex_sse_chinaconnectrefresh_omd_v1_4.last_seq_num.size = 4

-- Display: Last Seq Num
hkex_sse_chinaconnectrefresh_omd_v1_4.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
hkex_sse_chinaconnectrefresh_omd_v1_4.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Listing Date
hkex_sse_chinaconnectrefresh_omd_v1_4.listing_date = {}

-- Size: Listing Date
hkex_sse_chinaconnectrefresh_omd_v1_4.listing_date.size = 4

-- Display: Listing Date
hkex_sse_chinaconnectrefresh_omd_v1_4.listing_date.display = function(value)
  return "Listing Date: "..value
end

-- Dissect: Listing Date
hkex_sse_chinaconnectrefresh_omd_v1_4.listing_date.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.listing_date.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.listing_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.listing_date, range, value, display)

  return offset + length, value
end

-- Lot Size
hkex_sse_chinaconnectrefresh_omd_v1_4.lot_size = {}

-- Size: Lot Size
hkex_sse_chinaconnectrefresh_omd_v1_4.lot_size.size = 4

-- Display: Lot Size
hkex_sse_chinaconnectrefresh_omd_v1_4.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
hkex_sse_chinaconnectrefresh_omd_v1_4.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Low Price
hkex_sse_chinaconnectrefresh_omd_v1_4.low_price = {}

-- Size: Low Price
hkex_sse_chinaconnectrefresh_omd_v1_4.low_price.size = 4

-- Display: Low Price
hkex_sse_chinaconnectrefresh_omd_v1_4.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
hkex_sse_chinaconnectrefresh_omd_v1_4.low_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Low Price
hkex_sse_chinaconnectrefresh_omd_v1_4.low_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.low_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_sse_chinaconnectrefresh_omd_v1_4.low_price.translate(raw)
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.low_price, range, value, display)

  return offset + length, value
end

-- Market Code
hkex_sse_chinaconnectrefresh_omd_v1_4.market_code = {}

-- Size: Market Code
hkex_sse_chinaconnectrefresh_omd_v1_4.market_code.size = 4

-- Display: Market Code
hkex_sse_chinaconnectrefresh_omd_v1_4.market_code.display = function(value)
  if value == "ASHR" then
    return "Market Code: Sse A Share (ASHR)"
  end
  if value == "ASZR" then
    return "Market Code: Szse A Share (ASZR)"
  end

  return "Market Code: Unknown("..value..")"
end

-- Dissect: Market Code
hkex_sse_chinaconnectrefresh_omd_v1_4.market_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.market_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.market_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.market_code, range, value, display)

  return offset + length, value
end

-- Market Name
hkex_sse_chinaconnectrefresh_omd_v1_4.market_name = {}

-- Size: Market Name
hkex_sse_chinaconnectrefresh_omd_v1_4.market_name.size = 25

-- Display: Market Name
hkex_sse_chinaconnectrefresh_omd_v1_4.market_name.display = function(value)
  return "Market Name: "..value
end

-- Dissect: Market Name
hkex_sse_chinaconnectrefresh_omd_v1_4.market_name.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.market_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.market_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.market_name, range, value, display)

  return offset + length, value
end

-- Msg Count
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_count = {}

-- Size: Msg Count
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_count.size = 1

-- Display: Msg Count
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_count.display = function(value)
  return "Msg Count: "..value
end

-- Dissect: Msg Count
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_count.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.msg_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.msg_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.msg_count, range, value, display)

  return offset + length, value
end

-- Msg Size
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_size = {}

-- Size: Msg Size
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_size.size = 2

-- Display: Msg Size
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_size.display = function(value)
  return "Msg Size: "..value
end

-- Dissect: Msg Size
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.msg_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.msg_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.msg_size, range, value, display)

  return offset + length, value
end

-- Msg Type
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_type = {}

-- Size: Msg Type
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_type.size = 2

-- Display: Msg Type
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_type.display = function(value)
  if value == 610 then
    return "Msg Type: Market Definition Message (610)"
  end
  if value == 203 then
    return "Msg Type: Refresh Complete Message (203)"
  end
  if value == 611 then
    return "Msg Type: Security Definition Message (611)"
  end
  if value == 621 then
    return "Msg Type: Security Status Message (621)"
  end
  if value == 660 then
    return "Msg Type: Statistics Message (660)"
  end
  if value == 655 then
    return "Msg Type: Top Of Book Message (655)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Number Of Securities
hkex_sse_chinaconnectrefresh_omd_v1_4.number_of_securities = {}

-- Size: Number Of Securities
hkex_sse_chinaconnectrefresh_omd_v1_4.number_of_securities.size = 4

-- Display: Number Of Securities
hkex_sse_chinaconnectrefresh_omd_v1_4.number_of_securities.display = function(value)
  return "Number Of Securities: "..value
end

-- Dissect: Number Of Securities
hkex_sse_chinaconnectrefresh_omd_v1_4.number_of_securities.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.number_of_securities.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.number_of_securities.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.number_of_securities, range, value, display)

  return offset + length, value
end

-- Opening Price
hkex_sse_chinaconnectrefresh_omd_v1_4.opening_price = {}

-- Size: Opening Price
hkex_sse_chinaconnectrefresh_omd_v1_4.opening_price.size = 4

-- Display: Opening Price
hkex_sse_chinaconnectrefresh_omd_v1_4.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Translate: Opening Price
hkex_sse_chinaconnectrefresh_omd_v1_4.opening_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Opening Price
hkex_sse_chinaconnectrefresh_omd_v1_4.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.opening_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_sse_chinaconnectrefresh_omd_v1_4.opening_price.translate(raw)
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Pkt Size
hkex_sse_chinaconnectrefresh_omd_v1_4.pkt_size = {}

-- Size: Pkt Size
hkex_sse_chinaconnectrefresh_omd_v1_4.pkt_size.size = 2

-- Display: Pkt Size
hkex_sse_chinaconnectrefresh_omd_v1_4.pkt_size.display = function(value)
  return "Pkt Size: "..value
end

-- Dissect: Pkt Size
hkex_sse_chinaconnectrefresh_omd_v1_4.pkt_size.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.pkt_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.pkt_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.pkt_size, range, value, display)

  return offset + length, value
end

-- Previous Closing Price
hkex_sse_chinaconnectrefresh_omd_v1_4.previous_closing_price = {}

-- Size: Previous Closing Price
hkex_sse_chinaconnectrefresh_omd_v1_4.previous_closing_price.size = 4

-- Display: Previous Closing Price
hkex_sse_chinaconnectrefresh_omd_v1_4.previous_closing_price.display = function(value)
  return "Previous Closing Price: "..value
end

-- Translate: Previous Closing Price
hkex_sse_chinaconnectrefresh_omd_v1_4.previous_closing_price.translate = function(raw)
  return raw/1000
end

-- Dissect: Previous Closing Price
hkex_sse_chinaconnectrefresh_omd_v1_4.previous_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.previous_closing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int()
  local value = hkex_sse_chinaconnectrefresh_omd_v1_4.previous_closing_price.translate(raw)
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.previous_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.previous_closing_price, range, value, display)

  return offset + length, value
end

-- Security Code
hkex_sse_chinaconnectrefresh_omd_v1_4.security_code = {}

-- Size: Security Code
hkex_sse_chinaconnectrefresh_omd_v1_4.security_code.size = 4

-- Display: Security Code
hkex_sse_chinaconnectrefresh_omd_v1_4.security_code.display = function(value)
  return "Security Code: "..value
end

-- Dissect: Security Code
hkex_sse_chinaconnectrefresh_omd_v1_4.security_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.security_code.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.security_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.security_code, range, value, display)

  return offset + length, value
end

-- Security Name Gb
hkex_sse_chinaconnectrefresh_omd_v1_4.security_name_gb = {}

-- Size: Security Name Gb
hkex_sse_chinaconnectrefresh_omd_v1_4.security_name_gb.size = 60

-- Display: Security Name Gb
hkex_sse_chinaconnectrefresh_omd_v1_4.security_name_gb.display = function(value)
  return "Security Name Gb: "..value
end

-- Dissect: Security Name Gb
hkex_sse_chinaconnectrefresh_omd_v1_4.security_name_gb.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.security_name_gb.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.security_name_gb.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.security_name_gb, range, value, display)

  return offset + length, value
end

-- Security Short Name
hkex_sse_chinaconnectrefresh_omd_v1_4.security_short_name = {}

-- Size: Security Short Name
hkex_sse_chinaconnectrefresh_omd_v1_4.security_short_name.size = 40

-- Display: Security Short Name
hkex_sse_chinaconnectrefresh_omd_v1_4.security_short_name.display = function(value)
  return "Security Short Name: "..value
end

-- Dissect: Security Short Name
hkex_sse_chinaconnectrefresh_omd_v1_4.security_short_name.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.security_short_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.security_short_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.security_short_name, range, value, display)

  return offset + length, value
end

-- Security Trading Status
hkex_sse_chinaconnectrefresh_omd_v1_4.security_trading_status = {}

-- Size: Security Trading Status
hkex_sse_chinaconnectrefresh_omd_v1_4.security_trading_status.size = 1

-- Display: Security Trading Status
hkex_sse_chinaconnectrefresh_omd_v1_4.security_trading_status.display = function(value)
  if value == 2 then
    return "Security Trading Status: Trading Halt (2)"
  end
  if value == 3 then
    return "Security Trading Status: Resume (3)"
  end

  return "Security Trading Status: Unknown("..value..")"
end

-- Dissect: Security Trading Status
hkex_sse_chinaconnectrefresh_omd_v1_4.security_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.security_trading_status.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.security_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.security_trading_status, range, value, display)

  return offset + length, value
end

-- Send Time
hkex_sse_chinaconnectrefresh_omd_v1_4.send_time = {}

-- Size: Send Time
hkex_sse_chinaconnectrefresh_omd_v1_4.send_time.size = 8

-- Display: Send Time
hkex_sse_chinaconnectrefresh_omd_v1_4.send_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Send Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Send Time
hkex_sse_chinaconnectrefresh_omd_v1_4.send_time.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.send_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.send_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.send_time, range, value, display)

  return offset + length, value
end

-- Seq Num
hkex_sse_chinaconnectrefresh_omd_v1_4.seq_num = {}

-- Size: Seq Num
hkex_sse_chinaconnectrefresh_omd_v1_4.seq_num.size = 4

-- Display: Seq Num
hkex_sse_chinaconnectrefresh_omd_v1_4.seq_num.display = function(value)
  return "Seq Num: "..value
end

-- Dissect: Seq Num
hkex_sse_chinaconnectrefresh_omd_v1_4.seq_num.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.seq_num, range, value, display)

  return offset + length, value
end

-- Shares Traded
hkex_sse_chinaconnectrefresh_omd_v1_4.shares_traded = {}

-- Size: Shares Traded
hkex_sse_chinaconnectrefresh_omd_v1_4.shares_traded.size = 8

-- Display: Shares Traded
hkex_sse_chinaconnectrefresh_omd_v1_4.shares_traded.display = function(value)
  return "Shares Traded: "..value
end

-- Dissect: Shares Traded
hkex_sse_chinaconnectrefresh_omd_v1_4.shares_traded.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.shares_traded.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.shares_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.shares_traded, range, value, display)

  return offset + length, value
end

-- Shortsell Flag
hkex_sse_chinaconnectrefresh_omd_v1_4.shortsell_flag = {}

-- Size: Shortsell Flag
hkex_sse_chinaconnectrefresh_omd_v1_4.shortsell_flag.size = 1

-- Display: Shortsell Flag
hkex_sse_chinaconnectrefresh_omd_v1_4.shortsell_flag.display = function(value)
  if value == "Y" then
    return "Shortsell Flag: Shortsell Allowed (Y)"
  end
  if value == "N" then
    return "Shortsell Flag: Shortsell Not Allowed (N)"
  end

  return "Shortsell Flag: Unknown("..value..")"
end

-- Dissect: Shortsell Flag
hkex_sse_chinaconnectrefresh_omd_v1_4.shortsell_flag.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.shortsell_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.shortsell_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.shortsell_flag, range, value, display)

  return offset + length, value
end

-- Trading Phase Code
hkex_sse_chinaconnectrefresh_omd_v1_4.trading_phase_code = {}

-- Size: Trading Phase Code
hkex_sse_chinaconnectrefresh_omd_v1_4.trading_phase_code.size = 8

-- Display: Trading Phase Code
hkex_sse_chinaconnectrefresh_omd_v1_4.trading_phase_code.display = function(value)
  return "Trading Phase Code: "..value
end

-- Dissect: Trading Phase Code
hkex_sse_chinaconnectrefresh_omd_v1_4.trading_phase_code.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.trading_phase_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.trading_phase_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.trading_phase_code, range, value, display)

  return offset + length, value
end

-- Turnover
hkex_sse_chinaconnectrefresh_omd_v1_4.turnover = {}

-- Size: Turnover
hkex_sse_chinaconnectrefresh_omd_v1_4.turnover.size = 8

-- Display: Turnover
hkex_sse_chinaconnectrefresh_omd_v1_4.turnover.display = function(value)
  return "Turnover: "..value
end

-- Translate: Turnover
hkex_sse_chinaconnectrefresh_omd_v1_4.turnover.translate = function(raw)
  return raw:tonumber()/1000
end

-- Dissect: Turnover
hkex_sse_chinaconnectrefresh_omd_v1_4.turnover.dissect = function(buffer, offset, packet, parent)
  local length = hkex_sse_chinaconnectrefresh_omd_v1_4.turnover.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = hkex_sse_chinaconnectrefresh_omd_v1_4.turnover.translate(raw)
  local display = hkex_sse_chinaconnectrefresh_omd_v1_4.turnover.display(value, buffer, offset, packet, parent)

  parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.turnover, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Hkex Sse ChinaConnectRefresh Omd 1.4
-----------------------------------------------------------------------

-- Top Of Book Message
hkex_sse_chinaconnectrefresh_omd_v1_4.top_of_book_message = {}

-- Size: Top Of Book Message
hkex_sse_chinaconnectrefresh_omd_v1_4.top_of_book_message.size =
  hkex_sse_chinaconnectrefresh_omd_v1_4.security_code.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_bid_quantity.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_ask_quantity.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.bid_price.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.ask_price.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.filler_8.size

-- Display: Top Of Book Message
hkex_sse_chinaconnectrefresh_omd_v1_4.top_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book Message
hkex_sse_chinaconnectrefresh_omd_v1_4.top_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_sse_chinaconnectrefresh_omd_v1_4.security_code.dissect(buffer, index, packet, parent)

  -- Aggregate Bid Quantity: Uint64
  index, aggregate_bid_quantity = hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_bid_quantity.dissect(buffer, index, packet, parent)

  -- Aggregate Ask Quantity: Uint64
  index, aggregate_ask_quantity = hkex_sse_chinaconnectrefresh_omd_v1_4.aggregate_ask_quantity.dissect(buffer, index, packet, parent)

  -- Bid Price: Int32
  index, bid_price = hkex_sse_chinaconnectrefresh_omd_v1_4.bid_price.dissect(buffer, index, packet, parent)

  -- Ask Price: Int32
  index, ask_price = hkex_sse_chinaconnectrefresh_omd_v1_4.ask_price.dissect(buffer, index, packet, parent)

  -- Filler 8: String
  index, filler_8 = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book Message
hkex_sse_chinaconnectrefresh_omd_v1_4.top_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.top_of_book_message, buffer(offset, 0))
    local index = hkex_sse_chinaconnectrefresh_omd_v1_4.top_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_sse_chinaconnectrefresh_omd_v1_4.top_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_sse_chinaconnectrefresh_omd_v1_4.top_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
hkex_sse_chinaconnectrefresh_omd_v1_4.statistics_message = {}

-- Size: Statistics Message
hkex_sse_chinaconnectrefresh_omd_v1_4.statistics_message.size =
  hkex_sse_chinaconnectrefresh_omd_v1_4.security_code.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.shares_traded.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.turnover.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.high_price.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.low_price.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.last_price.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.opening_price.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.filler_12.size

-- Display: Statistics Message
hkex_sse_chinaconnectrefresh_omd_v1_4.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
hkex_sse_chinaconnectrefresh_omd_v1_4.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_sse_chinaconnectrefresh_omd_v1_4.security_code.dissect(buffer, index, packet, parent)

  -- Shares Traded: Uint64
  index, shares_traded = hkex_sse_chinaconnectrefresh_omd_v1_4.shares_traded.dissect(buffer, index, packet, parent)

  -- Turnover: Int64
  index, turnover = hkex_sse_chinaconnectrefresh_omd_v1_4.turnover.dissect(buffer, index, packet, parent)

  -- High Price: Int32
  index, high_price = hkex_sse_chinaconnectrefresh_omd_v1_4.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Int32
  index, low_price = hkex_sse_chinaconnectrefresh_omd_v1_4.low_price.dissect(buffer, index, packet, parent)

  -- Last Price: Int32
  index, last_price = hkex_sse_chinaconnectrefresh_omd_v1_4.last_price.dissect(buffer, index, packet, parent)

  -- Opening Price: Int32
  index, opening_price = hkex_sse_chinaconnectrefresh_omd_v1_4.opening_price.dissect(buffer, index, packet, parent)

  -- Filler 12: String
  index, filler_12 = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_12.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
hkex_sse_chinaconnectrefresh_omd_v1_4.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.statistics_message, buffer(offset, 0))
    local index = hkex_sse_chinaconnectrefresh_omd_v1_4.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_sse_chinaconnectrefresh_omd_v1_4.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_sse_chinaconnectrefresh_omd_v1_4.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Status Message
hkex_sse_chinaconnectrefresh_omd_v1_4.security_status_message = {}

-- Size: Security Status Message
hkex_sse_chinaconnectrefresh_omd_v1_4.security_status_message.size =
  hkex_sse_chinaconnectrefresh_omd_v1_4.security_code.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.security_trading_status.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.filler_3.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.trading_phase_code.size

-- Display: Security Status Message
hkex_sse_chinaconnectrefresh_omd_v1_4.security_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Status Message
hkex_sse_chinaconnectrefresh_omd_v1_4.security_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_sse_chinaconnectrefresh_omd_v1_4.security_code.dissect(buffer, index, packet, parent)

  -- Security Trading Status: Uint8
  index, security_trading_status = hkex_sse_chinaconnectrefresh_omd_v1_4.security_trading_status.dissect(buffer, index, packet, parent)

  -- Filler 3: String
  index, filler_3 = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_3.dissect(buffer, index, packet, parent)

  -- Trading Phase Code: String
  index, trading_phase_code = hkex_sse_chinaconnectrefresh_omd_v1_4.trading_phase_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Status Message
hkex_sse_chinaconnectrefresh_omd_v1_4.security_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.security_status_message, buffer(offset, 0))
    local index = hkex_sse_chinaconnectrefresh_omd_v1_4.security_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_sse_chinaconnectrefresh_omd_v1_4.security_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_sse_chinaconnectrefresh_omd_v1_4.security_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Definition Message
hkex_sse_chinaconnectrefresh_omd_v1_4.security_definition_message = {}

-- Size: Security Definition Message
hkex_sse_chinaconnectrefresh_omd_v1_4.security_definition_message.size =
  hkex_sse_chinaconnectrefresh_omd_v1_4.security_code.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.market_code.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.isin_code.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.instrument_type.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.filler_2.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.security_short_name.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.currency_code.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.filler_60.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.security_name_gb.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.lot_size.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.previous_closing_price.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.filler_1.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.shortsell_flag.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.filler_6.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.listing_date.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.filler_7.size

-- Display: Security Definition Message
hkex_sse_chinaconnectrefresh_omd_v1_4.security_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Definition Message
hkex_sse_chinaconnectrefresh_omd_v1_4.security_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Code: Uint32
  index, security_code = hkex_sse_chinaconnectrefresh_omd_v1_4.security_code.dissect(buffer, index, packet, parent)

  -- Market Code: String
  index, market_code = hkex_sse_chinaconnectrefresh_omd_v1_4.market_code.dissect(buffer, index, packet, parent)

  -- Isin Code: String
  index, isin_code = hkex_sse_chinaconnectrefresh_omd_v1_4.isin_code.dissect(buffer, index, packet, parent)

  -- Instrument Type: String
  index, instrument_type = hkex_sse_chinaconnectrefresh_omd_v1_4.instrument_type.dissect(buffer, index, packet, parent)

  -- Filler 2: String
  index, filler_2 = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_2.dissect(buffer, index, packet, parent)

  -- Security Short Name: String
  index, security_short_name = hkex_sse_chinaconnectrefresh_omd_v1_4.security_short_name.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = hkex_sse_chinaconnectrefresh_omd_v1_4.currency_code.dissect(buffer, index, packet, parent)

  -- Filler 60: Binary
  index, filler_60 = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_60.dissect(buffer, index, packet, parent)

  -- Security Name Gb: Binary
  index, security_name_gb = hkex_sse_chinaconnectrefresh_omd_v1_4.security_name_gb.dissect(buffer, index, packet, parent)

  -- Lot Size: Uint32
  index, lot_size = hkex_sse_chinaconnectrefresh_omd_v1_4.lot_size.dissect(buffer, index, packet, parent)

  -- Previous Closing Price: Int32
  index, previous_closing_price = hkex_sse_chinaconnectrefresh_omd_v1_4.previous_closing_price.dissect(buffer, index, packet, parent)

  -- Filler 1: String
  index, filler_1 = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_1.dissect(buffer, index, packet, parent)

  -- Shortsell Flag: String
  index, shortsell_flag = hkex_sse_chinaconnectrefresh_omd_v1_4.shortsell_flag.dissect(buffer, index, packet, parent)

  -- Filler 6: String
  index, filler_6 = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_6.dissect(buffer, index, packet, parent)

  -- Listing Date: Uint32
  index, listing_date = hkex_sse_chinaconnectrefresh_omd_v1_4.listing_date.dissect(buffer, index, packet, parent)

  -- Filler 7: String
  index, filler_7 = hkex_sse_chinaconnectrefresh_omd_v1_4.filler_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Definition Message
hkex_sse_chinaconnectrefresh_omd_v1_4.security_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.security_definition_message, buffer(offset, 0))
    local index = hkex_sse_chinaconnectrefresh_omd_v1_4.security_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_sse_chinaconnectrefresh_omd_v1_4.security_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_sse_chinaconnectrefresh_omd_v1_4.security_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Refresh Complete Message
hkex_sse_chinaconnectrefresh_omd_v1_4.refresh_complete_message = {}

-- Size: Refresh Complete Message
hkex_sse_chinaconnectrefresh_omd_v1_4.refresh_complete_message.size =
  hkex_sse_chinaconnectrefresh_omd_v1_4.last_seq_num.size

-- Display: Refresh Complete Message
hkex_sse_chinaconnectrefresh_omd_v1_4.refresh_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Refresh Complete Message
hkex_sse_chinaconnectrefresh_omd_v1_4.refresh_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Seq Num: Uint32
  index, last_seq_num = hkex_sse_chinaconnectrefresh_omd_v1_4.last_seq_num.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Refresh Complete Message
hkex_sse_chinaconnectrefresh_omd_v1_4.refresh_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.refresh_complete_message, buffer(offset, 0))
    local index = hkex_sse_chinaconnectrefresh_omd_v1_4.refresh_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_sse_chinaconnectrefresh_omd_v1_4.refresh_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_sse_chinaconnectrefresh_omd_v1_4.refresh_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Definition Message
hkex_sse_chinaconnectrefresh_omd_v1_4.market_definition_message = {}

-- Size: Market Definition Message
hkex_sse_chinaconnectrefresh_omd_v1_4.market_definition_message.size =
  hkex_sse_chinaconnectrefresh_omd_v1_4.market_code.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.market_name.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.currency_code.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.number_of_securities.size

-- Display: Market Definition Message
hkex_sse_chinaconnectrefresh_omd_v1_4.market_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Definition Message
hkex_sse_chinaconnectrefresh_omd_v1_4.market_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Code: String
  index, market_code = hkex_sse_chinaconnectrefresh_omd_v1_4.market_code.dissect(buffer, index, packet, parent)

  -- Market Name: String
  index, market_name = hkex_sse_chinaconnectrefresh_omd_v1_4.market_name.dissect(buffer, index, packet, parent)

  -- Currency Code: String
  index, currency_code = hkex_sse_chinaconnectrefresh_omd_v1_4.currency_code.dissect(buffer, index, packet, parent)

  -- Number Of Securities: Uint32
  index, number_of_securities = hkex_sse_chinaconnectrefresh_omd_v1_4.number_of_securities.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Definition Message
hkex_sse_chinaconnectrefresh_omd_v1_4.market_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.market_definition_message, buffer(offset, 0))
    local index = hkex_sse_chinaconnectrefresh_omd_v1_4.market_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_sse_chinaconnectrefresh_omd_v1_4.market_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_sse_chinaconnectrefresh_omd_v1_4.market_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
hkex_sse_chinaconnectrefresh_omd_v1_4.payload = {}

-- Dissect: Payload
hkex_sse_chinaconnectrefresh_omd_v1_4.payload.dissect = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Market Definition Message
  if msg_type == 610 then
    return hkex_sse_chinaconnectrefresh_omd_v1_4.market_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Refresh Complete Message
  if msg_type == 203 then
    return hkex_sse_chinaconnectrefresh_omd_v1_4.refresh_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Definition Message
  if msg_type == 611 then
    return hkex_sse_chinaconnectrefresh_omd_v1_4.security_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Status Message
  if msg_type == 621 then
    return hkex_sse_chinaconnectrefresh_omd_v1_4.security_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if msg_type == 660 then
    return hkex_sse_chinaconnectrefresh_omd_v1_4.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book Message
  if msg_type == 655 then
    return hkex_sse_chinaconnectrefresh_omd_v1_4.top_of_book_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Msg Header
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_header = {}

-- Size: Msg Header
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_header.size =
  hkex_sse_chinaconnectrefresh_omd_v1_4.msg_size.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.msg_type.size

-- Display: Msg Header
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Size: 2 Byte Unsigned Fixed Width Integer
  index, msg_size = hkex_sse_chinaconnectrefresh_omd_v1_4.msg_size.dissect(buffer, index, packet, parent)

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, msg_type = hkex_sse_chinaconnectrefresh_omd_v1_4.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
hkex_sse_chinaconnectrefresh_omd_v1_4.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.msg_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.msg_header, buffer(offset, 0))
    local index = hkex_sse_chinaconnectrefresh_omd_v1_4.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_sse_chinaconnectrefresh_omd_v1_4.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_sse_chinaconnectrefresh_omd_v1_4.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
hkex_sse_chinaconnectrefresh_omd_v1_4.message = {}

-- Display: Message
hkex_sse_chinaconnectrefresh_omd_v1_4.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
hkex_sse_chinaconnectrefresh_omd_v1_4.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Msg Header: Struct of 2 fields
  index, msg_header = hkex_sse_chinaconnectrefresh_omd_v1_4.msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 6 branches
  index = hkex_sse_chinaconnectrefresh_omd_v1_4.payload.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Message
hkex_sse_chinaconnectrefresh_omd_v1_4.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.message, buffer(offset, 0))
    local current = hkex_sse_chinaconnectrefresh_omd_v1_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = hkex_sse_chinaconnectrefresh_omd_v1_4.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    hkex_sse_chinaconnectrefresh_omd_v1_4.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
hkex_sse_chinaconnectrefresh_omd_v1_4.packet_header = {}

-- Size: Packet Header
hkex_sse_chinaconnectrefresh_omd_v1_4.packet_header.size =
  hkex_sse_chinaconnectrefresh_omd_v1_4.pkt_size.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.msg_count.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.filler.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.seq_num.size + 
  hkex_sse_chinaconnectrefresh_omd_v1_4.send_time.size

-- Display: Packet Header
hkex_sse_chinaconnectrefresh_omd_v1_4.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
hkex_sse_chinaconnectrefresh_omd_v1_4.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pkt Size: 2 Byte Unsigned Fixed Width Integer
  index, pkt_size = hkex_sse_chinaconnectrefresh_omd_v1_4.pkt_size.dissect(buffer, index, packet, parent)

  -- Msg Count: 1 Byte Unsigned Fixed Width Integer
  index, msg_count = hkex_sse_chinaconnectrefresh_omd_v1_4.msg_count.dissect(buffer, index, packet, parent)

  -- Filler: 1 Byte Ascii String
  index, filler = hkex_sse_chinaconnectrefresh_omd_v1_4.filler.dissect(buffer, index, packet, parent)

  -- Seq Num: 4 Byte Unsigned Fixed Width Integer
  index, seq_num = hkex_sse_chinaconnectrefresh_omd_v1_4.seq_num.dissect(buffer, index, packet, parent)

  -- Send Time: 8 Byte Unsigned Fixed Width Integer
  index, send_time = hkex_sse_chinaconnectrefresh_omd_v1_4.send_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
hkex_sse_chinaconnectrefresh_omd_v1_4.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4.fields.packet_header, buffer(offset, 0))
    local index = hkex_sse_chinaconnectrefresh_omd_v1_4.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = hkex_sse_chinaconnectrefresh_omd_v1_4.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return hkex_sse_chinaconnectrefresh_omd_v1_4.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
hkex_sse_chinaconnectrefresh_omd_v1_4.packet = {}

-- Verify required size of Udp packet
hkex_sse_chinaconnectrefresh_omd_v1_4.packet.requiredsize = function(buffer)
  return buffer:len() >= hkex_sse_chinaconnectrefresh_omd_v1_4.packet_header.size
end

-- Dissect Packet
hkex_sse_chinaconnectrefresh_omd_v1_4.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 5 fields
  index, packet_header = hkex_sse_chinaconnectrefresh_omd_v1_4.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Count
  local msg_count = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, msg_count do

    -- Dependency element: Msg Size
    local msg_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = hkex_sse_chinaconnectrefresh_omd_v1_4.message.dissect(buffer, index, packet, parent, msg_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_hkex_sse_chinaconnectrefresh_omd_v1_4.init()
end

-- Dissector for Hkex Sse ChinaConnectRefresh Omd 1.4
function omi_hkex_sse_chinaconnectrefresh_omd_v1_4.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_hkex_sse_chinaconnectrefresh_omd_v1_4.name

  -- Dissect protocol
  local protocol = parent:add(omi_hkex_sse_chinaconnectrefresh_omd_v1_4, buffer(), omi_hkex_sse_chinaconnectrefresh_omd_v1_4.description, "("..buffer:len().." Bytes)")
  return hkex_sse_chinaconnectrefresh_omd_v1_4.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Hkex Sse ChinaConnectRefresh Omd 1.4 (Udp)
local function omi_hkex_sse_chinaconnectrefresh_omd_v1_4_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not hkex_sse_chinaconnectrefresh_omd_v1_4.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_hkex_sse_chinaconnectrefresh_omd_v1_4
  omi_hkex_sse_chinaconnectrefresh_omd_v1_4.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Hkex Sse ChinaConnectRefresh Omd 1.4
omi_hkex_sse_chinaconnectrefresh_omd_v1_4:register_heuristic("udp", omi_hkex_sse_chinaconnectrefresh_omd_v1_4_udp_heuristic)

-- Register Hkex Sse ChinaConnectRefresh Omd 1.4 for Decode As
local udp_table = DissectorTable.get("udp.port")
udp_table:add_for_decode_as(omi_hkex_sse_chinaconnectrefresh_omd_v1_4)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Hong Kong Exchanges and Clearing
--   Version: 1.4
--   Date: Friday, April 22, 2022
--   Specification: HKEX_OMD_China_Connect_Securities_Interface_Specifications_v1_4.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.  https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--
-- The Binary Data Compiler technologies used to produce this file
-- are the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-- For full Omi information:
--   https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
