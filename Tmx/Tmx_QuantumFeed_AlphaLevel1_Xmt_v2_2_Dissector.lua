-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx QuantumFeed AlphaLevel1 Xmt 2.2 Protocol
local tmx_quantumfeed_alphalevel1_xmt_v2_2 = Proto("Tmx.QuantumFeed.AlphaLevel1.Xmt.v2.2.Lua", "Tmx QuantumFeed AlphaLevel1 Xmt 2.2")

-- Component Tables
local show = {}
local format = {}
local tmx_quantumfeed_alphalevel1_xmt_v2_2_display = {}
local tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect = {}
local tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx QuantumFeed AlphaLevel1 Xmt 2.2 Fields
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.ack_required_poss_dup = ProtoField.new("Ack Required Poss Dup", "tmx.quantumfeed.alphalevel1.xmt.v2.2.ackrequiredpossdup", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.ask_price = ProtoField.new("Ask Price", "tmx.quantumfeed.alphalevel1.xmt.v2.2.askprice", ftypes.DOUBLE)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.ask_size = ProtoField.new("Ask Size", "tmx.quantumfeed.alphalevel1.xmt.v2.2.asksize", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.bid_price = ProtoField.new("Bid Price", "tmx.quantumfeed.alphalevel1.xmt.v2.2.bidprice", ftypes.DOUBLE)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.bid_size = ProtoField.new("Bid Size", "tmx.quantumfeed.alphalevel1.xmt.v2.2.bidsize", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.board_lot = ProtoField.new("Board Lot", "tmx.quantumfeed.alphalevel1.xmt.v2.2.boardlot", ftypes.UINT16)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body = ProtoField.new("Body", "tmx.quantumfeed.alphalevel1.xmt.v2.2.body", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body_header = ProtoField.new("Body Header", "tmx.quantumfeed.alphalevel1.xmt.v2.2.bodyheader", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body_message = ProtoField.new("Body Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.bodymessage", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.business_header = ProtoField.new("Business Header", "tmx.quantumfeed.alphalevel1.xmt.v2.2.businessheader", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.business_message = ProtoField.new("Business Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.businessmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.buy_broker_number = ProtoField.new("Buy Broker Number", "tmx.quantumfeed.alphalevel1.xmt.v2.2.buybrokernumber", ftypes.UINT16)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.bypass = ProtoField.new("Bypass", "tmx.quantumfeed.alphalevel1.xmt.v2.2.bypass", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.comment = ProtoField.new("Comment", "tmx.quantumfeed.alphalevel1.xmt.v2.2.comment", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.cross_type = ProtoField.new("Cross Type", "tmx.quantumfeed.alphalevel1.xmt.v2.2.crosstype", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.currency = ProtoField.new("Currency", "tmx.quantumfeed.alphalevel1.xmt.v2.2.currency", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.cusip = ProtoField.new("Cusip", "tmx.quantumfeed.alphalevel1.xmt.v2.2.cusip", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.face_value = ProtoField.new("Face Value", "tmx.quantumfeed.alphalevel1.xmt.v2.2.facevalue", ftypes.DOUBLE)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.frame_header = ProtoField.new("Frame Header", "tmx.quantumfeed.alphalevel1.xmt.v2.2.frameheader", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.is_dark = ProtoField.new("Is Dark", "tmx.quantumfeed.alphalevel1.xmt.v2.2.isdark", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.last_sale = ProtoField.new("Last Sale", "tmx.quantumfeed.alphalevel1.xmt.v2.2.lastsale", ftypes.DOUBLE)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.listing_market = ProtoField.new("Listing Market", "tmx.quantumfeed.alphalevel1.xmt.v2.2.listingmarket", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.message_length = ProtoField.new("Message Length", "tmx.quantumfeed.alphalevel1.xmt.v2.2.messagelength", ftypes.UINT16)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.min_po_qty = ProtoField.new("Min Po Qty", "tmx.quantumfeed.alphalevel1.xmt.v2.2.minpoqty", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.msg_length = ProtoField.new("Msg Length", "tmx.quantumfeed.alphalevel1.xmt.v2.2.msglength", ftypes.UINT16)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.msg_type = ProtoField.new("Msg Type", "tmx.quantumfeed.alphalevel1.xmt.v2.2.msgtype", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.msg_version = ProtoField.new("Msg Version", "tmx.quantumfeed.alphalevel1.xmt.v2.2.msgversion", ftypes.UINT8)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.num_body = ProtoField.new("Num Body", "tmx.quantumfeed.alphalevel1.xmt.v2.2.numbody", ftypes.UINT8)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.opening_trade = ProtoField.new("Opening Trade", "tmx.quantumfeed.alphalevel1.xmt.v2.2.openingtrade", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.packet = ProtoField.new("Packet", "tmx.quantumfeed.alphalevel1.xmt.v2.2.packet", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.price = ProtoField.new("Price", "tmx.quantumfeed.alphalevel1.xmt.v2.2.price", ftypes.DOUBLE)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.product_type = ProtoField.new("Product Type", "tmx.quantumfeed.alphalevel1.xmt.v2.2.producttype", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.protocol_name = ProtoField.new("Protocol Name", "tmx.quantumfeed.alphalevel1.xmt.v2.2.protocolname", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.protocol_version = ProtoField.new("Protocol Version", "tmx.quantumfeed.alphalevel1.xmt.v2.2.protocolversion", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.resume_trade_time = ProtoField.new("Resume Trade Time", "tmx.quantumfeed.alphalevel1.xmt.v2.2.resumetradetime", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.sell_broker_number = ProtoField.new("Sell Broker Number", "tmx.quantumfeed.alphalevel1.xmt.v2.2.sellbrokernumber", ftypes.UINT16)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.sequence_0 = ProtoField.new("Sequence 0", "tmx.quantumfeed.alphalevel1.xmt.v2.2.sequence0", ftypes.UINT8)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.sequence_1 = ProtoField.new("Sequence 1", "tmx.quantumfeed.alphalevel1.xmt.v2.2.sequence1", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.session_id = ProtoField.new("Session Id", "tmx.quantumfeed.alphalevel1.xmt.v2.2.sessionid", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.settlement_terms = ProtoField.new("Settlement Terms", "tmx.quantumfeed.alphalevel1.xmt.v2.2.settlementterms", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.source_id = ProtoField.new("Source Id", "tmx.quantumfeed.alphalevel1.xmt.v2.2.sourceid", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.start_of_frame = ProtoField.new("Start Of Frame", "tmx.quantumfeed.alphalevel1.xmt.v2.2.startofframe", ftypes.INT8)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stock_group = ProtoField.new("Stock Group", "tmx.quantumfeed.alphalevel1.xmt.v2.2.stockgroup", ftypes.UINT8)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stock_state = ProtoField.new("Stock State", "tmx.quantumfeed.alphalevel1.xmt.v2.2.stockstate", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stream_id = ProtoField.new("Stream Id", "tmx.quantumfeed.alphalevel1.xmt.v2.2.streamid", ftypes.UINT16)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.symbol = ProtoField.new("Symbol", "tmx.quantumfeed.alphalevel1.xmt.v2.2.symbol", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.test_symbol = ProtoField.new("Test Symbol", "tmx.quantumfeed.alphalevel1.xmt.v2.2.testsymbol", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_number = ProtoField.new("Trade Number", "tmx.quantumfeed.alphalevel1.xmt.v2.2.tradenumber", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_time_stamp = ProtoField.new("Trade Time Stamp", "tmx.quantumfeed.alphalevel1.xmt.v2.2.tradetimestamp", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trading_system_time_stamp = ProtoField.new("Trading System Time Stamp", "tmx.quantumfeed.alphalevel1.xmt.v2.2.tradingsystemtimestamp", ftypes.UINT64)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.volume = ProtoField.new("Volume", "tmx.quantumfeed.alphalevel1.xmt.v2.2.volume", ftypes.UINT32)

-- Tmx QuantumFeed AlphaLevel1 Xmt 2.2 messages
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.equity_quote_message = ProtoField.new("Equity Quote Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.equityquotemessage", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stock_status_message = ProtoField.new("Stock Status Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.stockstatusmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.symbolstatusmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_cancelled_message = ProtoField.new("Trade Cancelled Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.tradecancelledmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_message = ProtoField.new("Trade Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.trademessage", ftypes.STRING)

-- Tmx QuantumFeed AlphaLevel1 Xmt 2.2 generated fields
tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body_index = ProtoField.new("Body Index", "tmx.quantumfeed.alphalevel1.xmt.v2.2.bodyindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Tmx QuantumFeed AlphaLevel1 Xmt 2.2 Element Dissection Options
show.body = true
show.body_header = true
show.body_message = true
show.business_header = true
show.equity_quote_message = true
show.frame_header = true
show.packet = true
show.stock_status_message = true
show.symbol_status_message = true
show.trade_cancelled_message = true
show.trade_message = true
show.business_message = false

-- Register Tmx QuantumFeed AlphaLevel1 Xmt 2.2 Show Options
tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body = Pref.bool("Show Body", show.body, "Parse and add Body to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body_header = Pref.bool("Show Body Header", show.body_header, "Parse and add Body Header to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body_message = Pref.bool("Show Body Message", show.body_message, "Parse and add Body Message to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_business_header = Pref.bool("Show Business Header", show.business_header, "Parse and add Business Header to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_equity_quote_message = Pref.bool("Show Equity Quote Message", show.equity_quote_message, "Parse and add Equity Quote Message to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_frame_header = Pref.bool("Show Frame Header", show.frame_header, "Parse and add Frame Header to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_stock_status_message = Pref.bool("Show Stock Status Message", show.stock_status_message, "Parse and add Stock Status Message to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_symbol_status_message = Pref.bool("Show Symbol Status Message", show.symbol_status_message, "Parse and add Symbol Status Message to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_trade_cancelled_message = Pref.bool("Show Trade Cancelled Message", show.trade_cancelled_message, "Parse and add Trade Cancelled Message to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_business_message = Pref.bool("Show Business Message", show.business_message, "Parse and add Business Message to protocol tree")

-- Handle changed preferences
function tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.body ~= tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body then
    show.body = tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body
    changed = true
  end
  if show.body_header ~= tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body_header then
    show.body_header = tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body_header
    changed = true
  end
  if show.body_message ~= tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body_message then
    show.body_message = tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body_message
    changed = true
  end
  if show.business_header ~= tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_business_header then
    show.business_header = tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_business_header
    changed = true
  end
  if show.equity_quote_message ~= tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_equity_quote_message then
    show.equity_quote_message = tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_equity_quote_message
    changed = true
  end
  if show.frame_header ~= tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_frame_header then
    show.frame_header = tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_frame_header
    changed = true
  end
  if show.packet ~= tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_packet then
    show.packet = tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_packet
    changed = true
  end
  if show.stock_status_message ~= tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_stock_status_message then
    show.stock_status_message = tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_stock_status_message
    changed = true
  end
  if show.symbol_status_message ~= tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_symbol_status_message then
    show.symbol_status_message = tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_symbol_status_message
    changed = true
  end
  if show.trade_cancelled_message ~= tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_trade_cancelled_message then
    show.trade_cancelled_message = tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_trade_cancelled_message
    changed = true
  end
  if show.trade_message ~= tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_trade_message then
    show.trade_message = tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_trade_message
    changed = true
  end
  if show.business_message ~= tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_business_message then
    show.business_message = tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_business_message
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
-- Dissect Tmx QuantumFeed AlphaLevel1 Xmt 2.2
-----------------------------------------------------------------------

-- Size: Trading System Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trading_system_time_stamp = 8

-- Display: Trading System Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.trading_system_time_stamp = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trading System Time Stamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trading System Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trading_system_time_stamp = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trading_system_time_stamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.trading_system_time_stamp(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trading_system_time_stamp, range, value, display)

  return offset + length, value
end

-- Size: Ask Size
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.ask_size = 4

-- Display: Ask Size
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.ask_size = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.ask_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.ask_size(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.ask_price = 8

-- Display: Ask Price
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
translate.ask_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Price
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.ask_price = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.ask_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.ask_price(raw)
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.ask_price(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.bid_size = 4

-- Display: Bid Size
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.bid_size = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.bid_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.bid_size(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.bid_price = 8

-- Display: Bid Price
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
translate.bid_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.bid_price = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.bid_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.bid_price(raw)
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.bid_price(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.symbol = 12

-- Display: Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.symbol = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Equity Quote Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.equity_quote_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.bid_price

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.bid_size

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.ask_price

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.ask_size

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Equity Quote Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.equity_quote_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity Quote Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.equity_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, bid_price = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, ask_price = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.ask_size(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity Quote Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.equity_quote_message = function(buffer, offset, packet, parent)
  if show.equity_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.equity_quote_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.equity_quote_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.equity_quote_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.equity_quote_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Resume Trade Time
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.resume_trade_time = 4

-- Display: Resume Trade Time
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.resume_trade_time = function(value)
  return "Resume Trade Time: "..value
end

-- Dissect: Resume Trade Time
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.resume_trade_time = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.resume_trade_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.resume_trade_time(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.resume_trade_time, range, value, display)

  return offset + length, value
end

-- Size: Stock State
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.stock_state = 2

-- Display: Stock State
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.stock_state = function(value)
  if value == "AS" then
    return "Stock State: Authorized Halted (AS)"
  end
  if value == "IS" then
    return "Stock State: Inhibited Halted (IS)"
  end
  if value == "A" then
    return "Stock State: Authorized (A)"
  end
  if value == "I" then
    return "Stock State: Inhibited (I)"
  end

  return "Stock State: Unknown("..value..")"
end

-- Dissect: Stock State
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.stock_state = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.stock_state
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.stock_state(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stock_state, range, value, display)

  return offset + length, value
end

-- Size: Comment
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.comment = 40

-- Display: Comment
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.comment = function(value)
  return "Comment: "..value
end

-- Dissect: Comment
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.comment = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.comment
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.comment(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.comment, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.stock_status_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.comment

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.stock_state

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trading_system_time_stamp

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.resume_trade_time

  return index
end

-- Display: Stock Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.stock_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.stock_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Comment: 40 Byte Ascii String
  index, comment = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.comment(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 4 values
  index, stock_state = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.stock_state(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  -- Resume Trade Time: 4 Byte Unsigned Fixed Width Integer
  index, resume_trade_time = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.resume_trade_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.stock_status_message = function(buffer, offset, packet, parent)
  if show.stock_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stock_status_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.stock_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.stock_status_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.stock_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Trade Number
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trade_number = 4

-- Display: Trade Number
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.trade_number = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_number = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trade_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.trade_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Size: Last Sale
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.last_sale = 8

-- Display: Last Sale
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.last_sale = function(value)
  return "Last Sale: "..value
end

-- Translate: Last Sale
translate.last_sale = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Sale
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.last_sale = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.last_sale
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.last_sale(raw)
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.last_sale(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.last_sale, range, value, display)

  return offset + length, value
end

-- Size: Trade Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trade_time_stamp = 4

-- Display: Trade Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.trade_time_stamp = function(value)
  return "Trade Time Stamp: "..value
end

-- Dissect: Trade Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_time_stamp = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trade_time_stamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.trade_time_stamp(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_time_stamp, range, value, display)

  return offset + length, value
end

-- Size: Sell Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.sell_broker_number = 2

-- Display: Sell Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.sell_broker_number = function(value)
  return "Sell Broker Number: "..value
end

-- Dissect: Sell Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.sell_broker_number = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.sell_broker_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.sell_broker_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.sell_broker_number, range, value, display)

  return offset + length, value
end

-- Size: Buy Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.buy_broker_number = 2

-- Display: Buy Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.buy_broker_number = function(value)
  return "Buy Broker Number: "..value
end

-- Dissect: Buy Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.buy_broker_number = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.buy_broker_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.buy_broker_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.buy_broker_number, range, value, display)

  return offset + length, value
end

-- Size: Price
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.price = 8

-- Display: Price
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.price = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.price(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Volume
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.volume = 4

-- Display: Volume
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.volume = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.volume(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Cancelled Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trade_cancelled_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.volume

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.price

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.buy_broker_number

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.sell_broker_number

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trade_time_stamp

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.last_sale

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trade_number

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Trade Cancelled Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.trade_cancelled_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancelled Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_cancelled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.volume(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.price(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.buy_broker_number(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.sell_broker_number(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_time_stamp(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer
  index, last_sale = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.last_sale(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_number(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_cancelled_message = function(buffer, offset, packet, parent)
  if show.trade_cancelled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_cancelled_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_cancelled_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.trade_cancelled_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_cancelled_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Is Dark
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.is_dark = 1

-- Display: Is Dark
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.is_dark = function(value)
  return "Is Dark: "..value
end

-- Dissect: Is Dark
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.is_dark = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.is_dark
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.is_dark(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.is_dark, range, value, display)

  return offset + length, value
end

-- Size: Opening Trade
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.opening_trade = 1

-- Display: Opening Trade
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.opening_trade = function(value)
  if value == "Y" then
    return "Opening Trade: Yes (Y)"
  end
  if value == "N" then
    return "Opening Trade: No (N)"
  end

  return "Opening Trade: Unknown("..value..")"
end

-- Dissect: Opening Trade
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.opening_trade = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.opening_trade
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.opening_trade(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.cross_type = 1

-- Display: Cross Type
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.cross_type = function(value)
  if value == "I" then
    return "Cross Type: Internal (I)"
  end
  if value == "B" then
    return "Cross Type: Basis (B)"
  end
  if value == "C" then
    return "Cross Type: Contingent (C)"
  end
  if value == "D" then
    return "Cross Type: Derivative Related (D)"
  end
  if value == "R" then
    return "Cross Type: Regular (R)"
  end
  if value == "V" then
    return "Cross Type: Volume Weighted Average Price (V)"
  end
  if value == " " then
    return "Cross Type: Default Trade Was Not A Cross (<whitespace>)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.cross_type = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.cross_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Settlement Terms
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.settlement_terms = 1

-- Display: Settlement Terms
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.settlement_terms = function(value)
  if value == "C" then
    return "Settlement Terms: Cash (C)"
  end
  if value == "N" then
    return "Settlement Terms: Nn (N)"
  end
  if value == "M" then
    return "Settlement Terms: Ms Derivativesrelated Contingent Equity Trade (M)"
  end
  if value == "T" then
    return "Settlement Terms: Ct Cash Today (T)"
  end
  if value == "D" then
    return "Settlement Terms: If There Is A Valid Settlement Date Associated With The Order (D)"
  end
  if value == " " then
    return "Settlement Terms: No Settlement Terms (<whitespace>)"
  end

  return "Settlement Terms: Unknown("..value..")"
end

-- Dissect: Settlement Terms
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.settlement_terms = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.settlement_terms
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.settlement_terms(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.settlement_terms, range, value, display)

  return offset + length, value
end

-- Size: Bypass
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.bypass = 1

-- Display: Bypass
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.bypass = function(value)
  if value == "Y" then
    return "Bypass: The Order Is A Bypass (Y)"
  end
  if value == "N" then
    return "Bypass: The Order Is Not A Bypass (N)"
  end

  return "Bypass: Unknown("..value..")"
end

-- Dissect: Bypass
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.bypass = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.bypass
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.bypass(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.bypass, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.price

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.volume

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.buy_broker_number

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.sell_broker_number

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.bypass

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trade_time_stamp

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.settlement_terms

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.cross_type

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.last_sale

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.opening_trade

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.is_dark

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trade_number

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trading_system_time_stamp

  return index
end

-- Display: Trade Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.volume(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.buy_broker_number(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.sell_broker_number(buffer, index, packet, parent)

  -- Bypass: 1 Byte Ascii String Enum with 2 values
  index, bypass = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.bypass(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_time_stamp(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.settlement_terms(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.cross_type(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer
  index, last_sale = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.last_sale(buffer, index, packet, parent)

  -- Opening Trade: 1 Byte Ascii String Enum with 2 values
  index, opening_trade = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.opening_trade(buffer, index, packet, parent)

  -- Is Dark: 1 Byte Ascii String
  index, is_dark = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.is_dark(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_number(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trading_system_time_stamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_message = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.trade_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_message_fields(buffer, offset, packet, parent)
  end
end

-- Size: Test Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.test_symbol = 1

-- Display: Test Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.test_symbol = function(value)
  if value == "Y" then
    return "Test Symbol: Yes (Y)"
  end
  if value == "N" then
    return "Test Symbol: No (N)"
  end

  return "Test Symbol: Unknown("..value..")"
end

-- Dissect: Test Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.test_symbol = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.test_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.test_symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.test_symbol, range, value, display)

  return offset + length, value
end

-- Size: Min Po Qty
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.min_po_qty = 4

-- Display: Min Po Qty
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.min_po_qty = function(value)
  return "Min Po Qty: "..value
end

-- Dissect: Min Po Qty
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.min_po_qty = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.min_po_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.min_po_qty(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.min_po_qty, range, value, display)

  return offset + length, value
end

-- Size: Face Value
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.face_value = 8

-- Display: Face Value
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.face_value = function(value)
  return "Face Value: "..value
end

-- Translate: Face Value
translate.face_value = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Face Value
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.face_value = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.face_value
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.face_value(raw)
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.face_value(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.face_value, range, value, display)

  return offset + length, value
end

-- Size: Currency
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.currency = 1

-- Display: Currency
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.currency = function(value)
  if value == "U" then
    return "Currency: Usd (U)"
  end
  if value == "C" then
    return "Currency: Cad (C)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.currency = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.currency(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Board Lot
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.board_lot = 2

-- Display: Board Lot
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.board_lot = function(value)
  return "Board Lot: "..value
end

-- Dissect: Board Lot
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.board_lot = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.board_lot
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.board_lot(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.board_lot, range, value, display)

  return offset + length, value
end

-- Size: Cusip
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.cusip = 12

-- Display: Cusip
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.cusip = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.cusip = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.cusip
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.cusip(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.cusip, range, value, display)

  return offset + length, value
end

-- Size: Product Type
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.product_type = 1

-- Display: Product Type
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.product_type = function(value)
  if value == "B" then
    return "Product Type: Debenture (B)"
  end
  if value == "E" then
    return "Product Type: Equity (E)"
  end
  if value == "M" then
    return "Product Type: Mutual Fund (M)"
  end
  if value == "F" then
    return "Product Type: Etf (F)"
  end

  return "Product Type: Unknown("..value..")"
end

-- Dissect: Product Type
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.product_type = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.product_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.product_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.product_type, range, value, display)

  return offset + length, value
end

-- Size: Listing Market
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.listing_market = 1

-- Display: Listing Market
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.listing_market = function(value)
  if value == "T" then
    return "Listing Market: Tsx (T)"
  end
  if value == "V" then
    return "Listing Market: Tsxv (V)"
  end

  return "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.listing_market = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.listing_market
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.listing_market(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Size: Stock Group
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.stock_group = 1

-- Display: Stock Group
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.stock_group = function(value)
  return "Stock Group: "..value
end

-- Dissect: Stock Group
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.stock_group = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.stock_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.stock_group(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stock_group, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.symbol_status_message = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.symbol

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.stock_group

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.listing_market

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.product_type

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.cusip

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.board_lot

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.currency

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.face_value

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.last_sale

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.min_po_qty

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.stock_state

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.test_symbol

  return index
end

-- Display: Symbol Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.symbol_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.symbol_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.symbol(buffer, index, packet, parent)

  -- Stock Group: 1 Byte Unsigned Fixed Width Integer
  index, stock_group = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.stock_group(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 2 values
  index, listing_market = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.listing_market(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 4 values
  index, product_type = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.product_type(buffer, index, packet, parent)

  -- Cusip: 12 Byte Ascii String
  index, cusip = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.cusip(buffer, index, packet, parent)

  -- Board Lot: 2 Byte Unsigned Fixed Width Integer
  index, board_lot = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.board_lot(buffer, index, packet, parent)

  -- Currency: 1 Byte Ascii String Enum with 2 values
  index, currency = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.currency(buffer, index, packet, parent)

  -- Face Value: 8 Byte Unsigned Fixed Width Integer
  index, face_value = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.face_value(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer
  index, last_sale = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.last_sale(buffer, index, packet, parent)

  -- Min Po Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_po_qty = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.min_po_qty(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 4 values
  index, stock_state = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.stock_state(buffer, index, packet, parent)

  -- Test Symbol: 1 Byte Ascii String Enum with 2 values
  index, test_symbol = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.test_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.symbol_status_message = function(buffer, offset, packet, parent)
  if show.symbol_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.symbol_status_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.symbol_status_message_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.symbol_status_message(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.symbol_status_message_fields(buffer, offset, packet, parent)
  end
end

-- Calculate runtime size of: Business Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.business_message = function(buffer, offset, msg_type)
  -- Size of Symbol Status Message
  if msg_type == "J" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.symbol_status_message(buffer, offset)
  end
  -- Size of Trade Message
  if msg_type == "s" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trade_message(buffer, offset)
  end
  -- Size of Trade Cancelled Message
  if msg_type == "t" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.trade_cancelled_message(buffer, offset)
  end
  -- Size of Stock Status Message
  if msg_type == "v" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.stock_status_message(buffer, offset)
  end
  -- Size of Equity Quote Message
  if msg_type == "w" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.equity_quote_message(buffer, offset)
  end

  return 0
end

-- Display: Business Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.business_message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Business Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.business_message_branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Symbol Status Message
  if msg_type == "J" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.symbol_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if msg_type == "s" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancelled Message
  if msg_type == "t" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.trade_cancelled_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Status Message
  if msg_type == "v" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.stock_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Equity Quote Message
  if msg_type == "w" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.equity_quote_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Business Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.business_message = function(buffer, offset, packet, parent, msg_type)
  if not show.business_message then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.business_message_branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.business_message(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.business_message(buffer, packet, parent)
  local element = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.business_message, range, display)

  return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.business_message_branches(buffer, offset, packet, parent, msg_type)
end

-- Size: Sequence 1
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.sequence_1 = 4

-- Display: Sequence 1
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.sequence_1 = function(value)
  return "Sequence 1: "..value
end

-- Dissect: Sequence 1
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.sequence_1 = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.sequence_1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.sequence_1(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.sequence_1, range, value, display)

  return offset + length, value
end

-- Size: Sequence 0
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.sequence_0 = 1

-- Display: Sequence 0
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.sequence_0 = function(value)
  return "Sequence 0: "..value
end

-- Dissect: Sequence 0
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.sequence_0 = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.sequence_0
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.sequence_0(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.sequence_0, range, value, display)

  return offset + length, value
end

-- Size: Stream Id
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.stream_id = 2

-- Display: Stream Id
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.stream_id = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.stream_id = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.stream_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.stream_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Size: Source Id
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.source_id = 1

-- Display: Source Id
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.source_id = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.source_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.source_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.source_id, range, value, display)

  return offset + length, value
end

-- Size: Msg Version
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.msg_version = 1

-- Display: Msg Version
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.msg_version = function(value)
  return "Msg Version: "..value
end

-- Dissect: Msg Version
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.msg_version = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.msg_version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.msg_version(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.msg_version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Business Header
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.business_header = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.msg_version

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.source_id

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.stream_id

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.sequence_0

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.sequence_1

  return index
end

-- Display: Business Header
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.business_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Header
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.business_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Version: 1 Byte Unsigned Fixed Width Integer
  index, msg_version = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.msg_version(buffer, index, packet, parent)

  -- Source Id: 1 Byte Ascii String
  index, source_id = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.source_id(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.stream_id(buffer, index, packet, parent)

  -- Sequence 0: 1 Byte Unsigned Fixed Width Integer
  index, sequence_0 = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.sequence_0(buffer, index, packet, parent)

  -- Sequence 1: 4 Byte Unsigned Fixed Width Integer
  index, sequence_1 = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.sequence_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Header
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.business_header = function(buffer, offset, packet, parent)
  if show.business_header then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.business_header, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.business_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.business_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.business_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Body Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.body_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body_message_fields = function(buffer, offset, packet, parent, size_of_body_message)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.business_header(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(offset - 1, 1):string()

  -- Business Message: Runtime Type with 5 branches
  index = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.business_message(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Body Message
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body_message = function(buffer, offset, packet, parent, size_of_body_message)
  local index = offset + size_of_body_message

  -- Optionally add group/struct element to protocol tree
  if show.body_message then
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body_message, buffer(offset, 0))
    local current = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body_message_fields(buffer, offset, packet, parent, size_of_body_message)
    parent:set_len(size_of_body_message)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.body_message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body_message_fields(buffer, offset, packet, parent, size_of_body_message)

    return index
  end
end

-- Size: Msg Type
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.msg_type = 1

-- Display: Msg Type
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.msg_type = function(value)
  if value == "J" then
    return "Msg Type: Symbol Status Message (J)"
  end
  if value == "s" then
    return "Msg Type: Trade Message (s)"
  end
  if value == "t" then
    return "Msg Type: Trade Cancelled Message (t)"
  end
  if value == "v" then
    return "Msg Type: Stock Status Message (v)"
  end
  if value == "w" then
    return "Msg Type: Equity Quote Message (w)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.msg_type = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.msg_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.msg_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Size: Msg Length
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.msg_length = 2

-- Display: Msg Length
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.msg_length = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.msg_length = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.msg_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.msg_length(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Body Header
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.body_header = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.msg_length

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.msg_type

  return index
end

-- Display: Body Header
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.body_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Header
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.msg_length(buffer, index, packet, parent)

  -- Msg Type: 1 Byte Ascii String Enum with 5 values
  index, msg_type = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.msg_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Body Header
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body_header = function(buffer, offset, packet, parent)
  if show.body_header then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body_header, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.body_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Body
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.body = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body_fields = function(buffer, offset, packet, parent, size_of_body, body_index)
  local index = offset

  -- Implicit Body Index
  if body_index ~= nil then
    local iteration = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body_index, body_index)
    iteration:set_generated()
  end

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body_header(buffer, index, packet, parent)

  -- Dependency element: Msg Length
  local msg_length = buffer(index - 3, 2):le_uint()

  -- Runtime Size Of: Body Message
  local size_of_body_message = msg_length - 3

  -- Body Message: Struct of 2 fields
  index, body_message = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body_message(buffer, index, packet, parent, size_of_body_message)

  return index
end

-- Dissect: Body
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body = function(buffer, offset, packet, parent, size_of_body, body_index)
  local index = offset + size_of_body

  -- Optionally add group/struct element to protocol tree
  if show.body then
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body, buffer(offset, 0))
    local current = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body_fields(buffer, offset, packet, parent, size_of_body, body_index)
    parent:set_len(size_of_body)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.body(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body_fields(buffer, offset, packet, parent, size_of_body, body_index)

    return index
  end
end

-- Size: Num Body
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.num_body = 1

-- Display: Num Body
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.num_body = function(value)
  return "Num Body: "..value
end

-- Dissect: Num Body
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.num_body = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.num_body
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.num_body(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.num_body, range, value, display)

  return offset + length, value
end

-- Size: Ack Required Poss Dup
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.ack_required_poss_dup = 1

-- Display: Ack Required Poss Dup
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.ack_required_poss_dup = function(value)
  if value == "0" then
    return "Ack Required Poss Dup: Unused (0)"
  end

  return "Ack Required Poss Dup: Unknown("..value..")"
end

-- Dissect: Ack Required Poss Dup
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.ack_required_poss_dup = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.ack_required_poss_dup
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.ack_required_poss_dup(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.ack_required_poss_dup, range, value, display)

  return offset + length, value
end

-- Size: Session Id
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.session_id = 4

-- Display: Session Id
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.session_id = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.session_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Message Length
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.message_length = 2

-- Display: Message Length
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.message_length = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.message_length(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Size: Protocol Version
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.protocol_version = 1

-- Display: Protocol Version
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.protocol_version = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.protocol_version = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.protocol_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.protocol_version(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Size: Protocol Name
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.protocol_name = 1

-- Display: Protocol Name
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.protocol_name = function(value)
  if value == "X" then
    return "Protocol Name: Xmt (X)"
  end

  return "Protocol Name: Unknown("..value..")"
end

-- Dissect: Protocol Name
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.protocol_name = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.protocol_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.protocol_name(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.protocol_name, range, value, display)

  return offset + length, value
end

-- Size: Start Of Frame
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.start_of_frame = 1

-- Display: Start Of Frame
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.start_of_frame = function(value)
  if value == 2 then
    return "Start Of Frame: New Frame (2)"
  end

  return "Start Of Frame: Unknown("..value..")"
end

-- Dissect: Start Of Frame
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.start_of_frame = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.start_of_frame
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.start_of_frame(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.start_of_frame, range, value, display)

  return offset + length, value
end

-- Calculate size of: Frame Header
tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.frame_header = function(buffer, offset)
  local index = 0

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.start_of_frame

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.protocol_name

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.protocol_version

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.message_length

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.session_id

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.ack_required_poss_dup

  index = index + tmx_quantumfeed_alphalevel1_xmt_v2_2_size_of.num_body

  return index
end

-- Display: Frame Header
tmx_quantumfeed_alphalevel1_xmt_v2_2_display.frame_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame Header
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.frame_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Frame: 1 Byte Fixed Width Integer Enum with 1 values
  index, start_of_frame = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.start_of_frame(buffer, index, packet, parent)

  -- Protocol Name: 1 Byte Ascii String Enum with 1 values
  index, protocol_name = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.protocol_name(buffer, index, packet, parent)

  -- Protocol Version: 1 Byte Ascii String
  index, protocol_version = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.protocol_version(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.message_length(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.session_id(buffer, index, packet, parent)

  -- Ack Required Poss Dup: 1 Byte Ascii String Enum with 1 values
  index, ack_required_poss_dup = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.ack_required_poss_dup(buffer, index, packet, parent)

  -- Num Body: 1 Byte Unsigned Fixed Width Integer
  index, num_body = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.num_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame Header
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.frame_header = function(buffer, offset, packet, parent)
  if show.frame_header then
    -- Optionally add element to protocol tree
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.frame_header, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.frame_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2_display.frame_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.frame_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Frame Header: Struct of 7 fields
    index, frame_header = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.frame_header(buffer, index, packet, parent)

    -- Dependency element: Num Body
    local num_body = buffer(index - 1, 1):uint()

    -- Repeating: Body
    for body_index = 1, num_body do

      -- Dependency element: Msg Length
      local msg_length = buffer(index, 2):le_uint()

      -- Runtime Size Of: Body
      index, body = tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.body(buffer, index, packet, parent, msg_length)
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function tmx_quantumfeed_alphalevel1_xmt_v2_2.init()
end

-- Dissector for Tmx QuantumFeed AlphaLevel1 Xmt 2.2
function tmx_quantumfeed_alphalevel1_xmt_v2_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = tmx_quantumfeed_alphalevel1_xmt_v2_2.name

  -- Dissect protocol
  local protocol = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_2, buffer(), tmx_quantumfeed_alphalevel1_xmt_v2_2.description, "("..buffer:len().." Bytes)")
  return tmx_quantumfeed_alphalevel1_xmt_v2_2_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, tmx_quantumfeed_alphalevel1_xmt_v2_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.tmx_quantumfeed_alphalevel1_xmt_v2_2_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Tmx QuantumFeed AlphaLevel1 Xmt 2.2
local function tmx_quantumfeed_alphalevel1_xmt_v2_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.tmx_quantumfeed_alphalevel1_xmt_v2_2_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = tmx_quantumfeed_alphalevel1_xmt_v2_2
  tmx_quantumfeed_alphalevel1_xmt_v2_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx QuantumFeed AlphaLevel1 Xmt 2.2
tmx_quantumfeed_alphalevel1_xmt_v2_2:register_heuristic("udp", tmx_quantumfeed_alphalevel1_xmt_v2_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Tmx Group
--   Version: 2.2
--   Date: Monday, April 17, 2023
--   Specification: alpha_level_1_quantumfeed_business_message_specification-v2-2-0.pdf
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
