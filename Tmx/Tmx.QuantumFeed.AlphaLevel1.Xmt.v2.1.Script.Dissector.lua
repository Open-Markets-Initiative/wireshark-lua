-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx QuantumFeed AlphaLevel1 Xmt 2.1 Protocol
local tmx_quantumfeed_alphalevel1_xmt_v2_1 = Proto("Tmx.QuantumFeed.AlphaLevel1.Xmt.v2.1.Lua", "Tmx QuantumFeed AlphaLevel1 Xmt 2.1")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx QuantumFeed AlphaLevel1 Xmt 2.1 Fields
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.ack_required_poss_dup = ProtoField.new("Ack Required Poss Dup", "tmx.quantumfeed.alphalevel1.xmt.v2.1.ackrequiredpossdup", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.ask_price = ProtoField.new("Ask Price", "tmx.quantumfeed.alphalevel1.xmt.v2.1.askprice", ftypes.DOUBLE)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.ask_size = ProtoField.new("Ask Size", "tmx.quantumfeed.alphalevel1.xmt.v2.1.asksize", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.bid_price = ProtoField.new("Bid Price", "tmx.quantumfeed.alphalevel1.xmt.v2.1.bidprice", ftypes.DOUBLE)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.bid_size = ProtoField.new("Bid Size", "tmx.quantumfeed.alphalevel1.xmt.v2.1.bidsize", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.board_lot = ProtoField.new("Board Lot", "tmx.quantumfeed.alphalevel1.xmt.v2.1.boardlot", ftypes.UINT16)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.body = ProtoField.new("Body", "tmx.quantumfeed.alphalevel1.xmt.v2.1.body", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.body_header = ProtoField.new("Body Header", "tmx.quantumfeed.alphalevel1.xmt.v2.1.bodyheader", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.body_message = ProtoField.new("Body Message", "tmx.quantumfeed.alphalevel1.xmt.v2.1.bodymessage", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.business_header = ProtoField.new("Business Header", "tmx.quantumfeed.alphalevel1.xmt.v2.1.businessheader", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.buy_broker_number = ProtoField.new("Buy Broker Number", "tmx.quantumfeed.alphalevel1.xmt.v2.1.buybrokernumber", ftypes.UINT16)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.bypass = ProtoField.new("Bypass", "tmx.quantumfeed.alphalevel1.xmt.v2.1.bypass", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.comment = ProtoField.new("Comment", "tmx.quantumfeed.alphalevel1.xmt.v2.1.comment", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.cross_type = ProtoField.new("Cross Type", "tmx.quantumfeed.alphalevel1.xmt.v2.1.crosstype", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.currency = ProtoField.new("Currency", "tmx.quantumfeed.alphalevel1.xmt.v2.1.currency", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.cusip = ProtoField.new("Cusip", "tmx.quantumfeed.alphalevel1.xmt.v2.1.cusip", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.equity_quote_body = ProtoField.new("Equity Quote Body", "tmx.quantumfeed.alphalevel1.xmt.v2.1.equityquotebody", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.equity_quote_message = ProtoField.new("Equity Quote Message", "tmx.quantumfeed.alphalevel1.xmt.v2.1.equityquotemessage", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.face_value = ProtoField.new("Face Value", "tmx.quantumfeed.alphalevel1.xmt.v2.1.facevalue", ftypes.DOUBLE)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.frame_header = ProtoField.new("Frame Header", "tmx.quantumfeed.alphalevel1.xmt.v2.1.frameheader", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.is_dark = ProtoField.new("Is Dark", "tmx.quantumfeed.alphalevel1.xmt.v2.1.isdark", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.last_sale = ProtoField.new("Last Sale", "tmx.quantumfeed.alphalevel1.xmt.v2.1.lastsale", ftypes.DOUBLE)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.listing_market = ProtoField.new("Listing Market", "tmx.quantumfeed.alphalevel1.xmt.v2.1.listingmarket", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.message_length = ProtoField.new("Message Length", "tmx.quantumfeed.alphalevel1.xmt.v2.1.messagelength", ftypes.UINT16)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.min_po_qty = ProtoField.new("Min Po Qty", "tmx.quantumfeed.alphalevel1.xmt.v2.1.minpoqty", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.msg_length = ProtoField.new("Msg Length", "tmx.quantumfeed.alphalevel1.xmt.v2.1.msglength", ftypes.UINT16)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.msg_type = ProtoField.new("Msg Type", "tmx.quantumfeed.alphalevel1.xmt.v2.1.msgtype", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.msg_version = ProtoField.new("Msg Version", "tmx.quantumfeed.alphalevel1.xmt.v2.1.msgversion", ftypes.UINT8)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.num_body = ProtoField.new("Num Body", "tmx.quantumfeed.alphalevel1.xmt.v2.1.numbody", ftypes.UINT8)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.opening_trade = ProtoField.new("Opening Trade", "tmx.quantumfeed.alphalevel1.xmt.v2.1.openingtrade", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.packet = ProtoField.new("Packet", "tmx.quantumfeed.alphalevel1.xmt.v2.1.packet", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.price = ProtoField.new("Price", "tmx.quantumfeed.alphalevel1.xmt.v2.1.price", ftypes.DOUBLE)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.product_type = ProtoField.new("Product Type", "tmx.quantumfeed.alphalevel1.xmt.v2.1.producttype", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.protocol_name = ProtoField.new("Protocol Name", "tmx.quantumfeed.alphalevel1.xmt.v2.1.protocolname", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.protocol_version = ProtoField.new("Protocol Version", "tmx.quantumfeed.alphalevel1.xmt.v2.1.protocolversion", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.resume_trade_time = ProtoField.new("Resume Trade Time", "tmx.quantumfeed.alphalevel1.xmt.v2.1.resumetradetime", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.sell_broker_number = ProtoField.new("Sell Broker Number", "tmx.quantumfeed.alphalevel1.xmt.v2.1.sellbrokernumber", ftypes.UINT16)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.sequence_0 = ProtoField.new("Sequence 0", "tmx.quantumfeed.alphalevel1.xmt.v2.1.sequence0", ftypes.UINT8)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.sequence_1 = ProtoField.new("Sequence 1", "tmx.quantumfeed.alphalevel1.xmt.v2.1.sequence1", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.session_id = ProtoField.new("Session Id", "tmx.quantumfeed.alphalevel1.xmt.v2.1.sessionid", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.settlement_terms = ProtoField.new("Settlement Terms", "tmx.quantumfeed.alphalevel1.xmt.v2.1.settlementterms", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.source_id = ProtoField.new("Source Id", "tmx.quantumfeed.alphalevel1.xmt.v2.1.sourceid", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.start_of_frame = ProtoField.new("Start Of Frame", "tmx.quantumfeed.alphalevel1.xmt.v2.1.startofframe", ftypes.INT8)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.stock_group = ProtoField.new("Stock Group", "tmx.quantumfeed.alphalevel1.xmt.v2.1.stockgroup", ftypes.UINT8)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.stock_state = ProtoField.new("Stock State", "tmx.quantumfeed.alphalevel1.xmt.v2.1.stockstate", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.stock_status_body = ProtoField.new("Stock Status Body", "tmx.quantumfeed.alphalevel1.xmt.v2.1.stockstatusbody", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.stock_status_message = ProtoField.new("Stock Status Message", "tmx.quantumfeed.alphalevel1.xmt.v2.1.stockstatusmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.stream_id = ProtoField.new("Stream Id", "tmx.quantumfeed.alphalevel1.xmt.v2.1.streamid", ftypes.UINT16)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.symbol = ProtoField.new("Symbol", "tmx.quantumfeed.alphalevel1.xmt.v2.1.symbol", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.symbol_status_body = ProtoField.new("Symbol Status Body", "tmx.quantumfeed.alphalevel1.xmt.v2.1.symbolstatusbody", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "tmx.quantumfeed.alphalevel1.xmt.v2.1.symbolstatusmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.test_symbol = ProtoField.new("Test Symbol", "tmx.quantumfeed.alphalevel1.xmt.v2.1.testsymbol", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trade_body = ProtoField.new("Trade Body", "tmx.quantumfeed.alphalevel1.xmt.v2.1.tradebody", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trade_cancelled_body = ProtoField.new("Trade Cancelled Body", "tmx.quantumfeed.alphalevel1.xmt.v2.1.tradecancelledbody", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trade_cancelled_message = ProtoField.new("Trade Cancelled Message", "tmx.quantumfeed.alphalevel1.xmt.v2.1.tradecancelledmessage", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trade_message = ProtoField.new("Trade Message", "tmx.quantumfeed.alphalevel1.xmt.v2.1.trademessage", ftypes.STRING)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trade_number = ProtoField.new("Trade Number", "tmx.quantumfeed.alphalevel1.xmt.v2.1.tradenumber", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trade_time_stamp = ProtoField.new("Trade Time Stamp", "tmx.quantumfeed.alphalevel1.xmt.v2.1.tradetimestamp", ftypes.UINT32)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trading_system_time_stamp = ProtoField.new("Trading System Time Stamp", "tmx.quantumfeed.alphalevel1.xmt.v2.1.tradingsystemtimestamp", ftypes.UINT64)
tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.volume = ProtoField.new("Volume", "tmx.quantumfeed.alphalevel1.xmt.v2.1.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Tmx QuantumFeed AlphaLevel1 Xmt 2.1 Element Dissection Options
show.body = true
show.body_header = true
show.business_header = true
show.equity_quote_body = true
show.equity_quote_message = true
show.frame_header = true
show.packet = true
show.stock_status_body = true
show.stock_status_message = true
show.symbol_status_body = true
show.symbol_status_message = true
show.trade_body = true
show.trade_cancelled_body = true
show.trade_cancelled_message = true
show.trade_message = true
show.body_message = false

-- Register Tmx QuantumFeed AlphaLevel1 Xmt 2.1 Show Options
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_body = Pref.bool("Show Body", show.body, "Parse and add Body to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_body_header = Pref.bool("Show Body Header", show.body_header, "Parse and add Body Header to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_business_header = Pref.bool("Show Business Header", show.business_header, "Parse and add Business Header to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_equity_quote_body = Pref.bool("Show Equity Quote Body", show.equity_quote_body, "Parse and add Equity Quote Body to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_equity_quote_message = Pref.bool("Show Equity Quote Message", show.equity_quote_message, "Parse and add Equity Quote Message to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_frame_header = Pref.bool("Show Frame Header", show.frame_header, "Parse and add Frame Header to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_stock_status_body = Pref.bool("Show Stock Status Body", show.stock_status_body, "Parse and add Stock Status Body to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_stock_status_message = Pref.bool("Show Stock Status Message", show.stock_status_message, "Parse and add Stock Status Message to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_symbol_status_body = Pref.bool("Show Symbol Status Body", show.symbol_status_body, "Parse and add Symbol Status Body to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_symbol_status_message = Pref.bool("Show Symbol Status Message", show.symbol_status_message, "Parse and add Symbol Status Message to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_trade_body = Pref.bool("Show Trade Body", show.trade_body, "Parse and add Trade Body to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_trade_cancelled_body = Pref.bool("Show Trade Cancelled Body", show.trade_cancelled_body, "Parse and add Trade Cancelled Body to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_trade_cancelled_message = Pref.bool("Show Trade Cancelled Message", show.trade_cancelled_message, "Parse and add Trade Cancelled Message to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_body_message = Pref.bool("Show Body Message", show.body_message, "Parse and add Body Message to protocol tree")

-- Handle changed preferences
function tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.body ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_body then
    show.body = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_body
    changed = true
  end
  if show.body_header ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_body_header then
    show.body_header = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_body_header
    changed = true
  end
  if show.business_header ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_business_header then
    show.business_header = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_business_header
    changed = true
  end
  if show.equity_quote_body ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_equity_quote_body then
    show.equity_quote_body = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_equity_quote_body
    changed = true
  end
  if show.equity_quote_message ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_equity_quote_message then
    show.equity_quote_message = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_equity_quote_message
    changed = true
  end
  if show.frame_header ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_frame_header then
    show.frame_header = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_frame_header
    changed = true
  end
  if show.packet ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_packet then
    show.packet = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_packet
    changed = true
  end
  if show.stock_status_body ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_stock_status_body then
    show.stock_status_body = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_stock_status_body
    changed = true
  end
  if show.stock_status_message ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_stock_status_message then
    show.stock_status_message = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_stock_status_message
    changed = true
  end
  if show.symbol_status_body ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_symbol_status_body then
    show.symbol_status_body = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_symbol_status_body
    changed = true
  end
  if show.symbol_status_message ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_symbol_status_message then
    show.symbol_status_message = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_symbol_status_message
    changed = true
  end
  if show.trade_body ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_trade_body then
    show.trade_body = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_trade_body
    changed = true
  end
  if show.trade_cancelled_body ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_trade_cancelled_body then
    show.trade_cancelled_body = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_trade_cancelled_body
    changed = true
  end
  if show.trade_cancelled_message ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_trade_cancelled_message then
    show.trade_cancelled_message = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_trade_cancelled_message
    changed = true
  end
  if show.trade_message ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_trade_message then
    show.trade_message = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_trade_message
    changed = true
  end
  if show.body_message ~= tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_body_message then
    show.body_message = tmx_quantumfeed_alphalevel1_xmt_v2_1.prefs.show_body_message
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Tmx QuantumFeed AlphaLevel1 Xmt 2.1
-----------------------------------------------------------------------

-- Size: Ask Size
size_of.ask_size = 4

-- Display: Ask Size
display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
dissect.ask_size = function(buffer, offset, packet, parent)
  local length = size_of.ask_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.ask_size(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price
size_of.ask_price = 8

-- Display: Ask Price
display.ask_price = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
translate.ask_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Price
dissect.ask_price = function(buffer, offset, packet, parent)
  local length = size_of.ask_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.ask_price(raw)
  local display = display.ask_price(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
size_of.bid_size = 4

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
size_of.bid_price = 8

-- Display: Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
translate.bid_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local length = size_of.bid_price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.bid_price(raw)
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Symbol
size_of.symbol = 12

-- Display: Symbol
display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Equity Quote Body
size_of.equity_quote_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.bid_price

  index = index + size_of.bid_size

  index = index + size_of.ask_price

  index = index + size_of.ask_size

  return index
end

-- Display: Equity Quote Body
display.equity_quote_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equity Quote Body
dissect.equity_quote_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, ask_price = dissect.ask_price(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity Quote Body
dissect.equity_quote_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.equity_quote_body then
    local length = size_of.equity_quote_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.equity_quote_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.equity_quote_body, range, display)
  end

  return dissect.equity_quote_body_fields(buffer, offset, packet, parent)
end

-- Size: Sequence 1
size_of.sequence_1 = 4

-- Display: Sequence 1
display.sequence_1 = function(value)
  return "Sequence 1: "..value
end

-- Dissect: Sequence 1
dissect.sequence_1 = function(buffer, offset, packet, parent)
  local length = size_of.sequence_1
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sequence_1(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.sequence_1, range, value, display)

  return offset + length, value
end

-- Size: Sequence 0
size_of.sequence_0 = 1

-- Display: Sequence 0
display.sequence_0 = function(value)
  return "Sequence 0: "..value
end

-- Dissect: Sequence 0
dissect.sequence_0 = function(buffer, offset, packet, parent)
  local length = size_of.sequence_0
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sequence_0(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.sequence_0, range, value, display)

  return offset + length, value
end

-- Size: Stream Id
size_of.stream_id = 2

-- Display: Stream Id
display.stream_id = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
dissect.stream_id = function(buffer, offset, packet, parent)
  local length = size_of.stream_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.stream_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Size: Source Id
size_of.source_id = 1

-- Display: Source Id
display.source_id = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
dissect.source_id = function(buffer, offset, packet, parent)
  local length = size_of.source_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.source_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.source_id, range, value, display)

  return offset + length, value
end

-- Size: Msg Version
size_of.msg_version = 1

-- Display: Msg Version
display.msg_version = function(value)
  return "Msg Version: "..value
end

-- Dissect: Msg Version
dissect.msg_version = function(buffer, offset, packet, parent)
  local length = size_of.msg_version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.msg_version(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.msg_version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Business Header
size_of.business_header = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_version

  index = index + size_of.source_id

  index = index + size_of.stream_id

  index = index + size_of.sequence_0

  index = index + size_of.sequence_1

  return index
end

-- Display: Business Header
display.business_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Business Header
dissect.business_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Version: 1 Byte Unsigned Fixed Width Integer
  index, msg_version = dissect.msg_version(buffer, index, packet, parent)

  -- Source Id: 1 Byte Ascii String
  index, source_id = dissect.source_id(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = dissect.stream_id(buffer, index, packet, parent)

  -- Sequence 0: 1 Byte Unsigned Fixed Width Integer
  index, sequence_0 = dissect.sequence_0(buffer, index, packet, parent)

  -- Sequence 1: 4 Byte Unsigned Fixed Width Integer
  index, sequence_1 = dissect.sequence_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Header
dissect.business_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.business_header then
    local length = size_of.business_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.business_header(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.business_header, range, display)
  end

  return dissect.business_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Equity Quote Message
size_of.equity_quote_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.equity_quote_body(buffer, offset + index)

  return index
end

-- Display: Equity Quote Message
display.equity_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equity Quote Message
dissect.equity_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Equity Quote Body: Struct of 5 fields
  index, equity_quote_body = dissect.equity_quote_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity Quote Message
dissect.equity_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.equity_quote_message then
    local length = size_of.equity_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.equity_quote_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.equity_quote_message, range, display)
  end

  return dissect.equity_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Resume Trade Time
size_of.resume_trade_time = 4

-- Display: Resume Trade Time
display.resume_trade_time = function(value)
  return "Resume Trade Time: "..value
end

-- Dissect: Resume Trade Time
dissect.resume_trade_time = function(buffer, offset, packet, parent)
  local length = size_of.resume_trade_time
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.resume_trade_time(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.resume_trade_time, range, value, display)

  return offset + length, value
end

-- Size: Trading System Time Stamp
size_of.trading_system_time_stamp = 8

-- Display: Trading System Time Stamp
display.trading_system_time_stamp = function(value)
  -- Parse unix timestamp
  local seconds = value:tonumber()/1000000000
  local nanoseconds = value:tonumber()%1000000000

  return "Trading System Time Stamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trading System Time Stamp
dissect.trading_system_time_stamp = function(buffer, offset, packet, parent)
  local length = size_of.trading_system_time_stamp
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trading_system_time_stamp(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trading_system_time_stamp, range, value, display)

  return offset + length, value
end

-- Size: Stock State
size_of.stock_state = 2

-- Display: Stock State
display.stock_state = function(value)
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
dissect.stock_state = function(buffer, offset, packet, parent)
  local length = size_of.stock_state
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.stock_state(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.stock_state, range, value, display)

  return offset + length, value
end

-- Size: Comment
size_of.comment = 40

-- Display: Comment
display.comment = function(value)
  return "Comment: "..value
end

-- Dissect: Comment
dissect.comment = function(buffer, offset, packet, parent)
  local length = size_of.comment
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.comment(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.comment, range, value, display)

  return offset + length, value
end

-- Calculate size of: Stock Status Body
size_of.stock_status_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.comment

  index = index + size_of.stock_state

  index = index + size_of.trading_system_time_stamp

  index = index + size_of.resume_trade_time

  return index
end

-- Display: Stock Status Body
display.stock_status_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Status Body
dissect.stock_status_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Comment: 40 Byte Ascii String
  index, comment = dissect.comment(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 4 values
  index, stock_state = dissect.stock_state(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = dissect.trading_system_time_stamp(buffer, index, packet, parent)

  -- Resume Trade Time: 4 Byte Unsigned Fixed Width Integer
  index, resume_trade_time = dissect.resume_trade_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Body
dissect.stock_status_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_status_body then
    local length = size_of.stock_status_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.stock_status_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.stock_status_body, range, display)
  end

  return dissect.stock_status_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Stock Status Message
size_of.stock_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.stock_status_body(buffer, offset + index)

  return index
end

-- Display: Stock Status Message
display.stock_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Stock Status Message
dissect.stock_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Stock Status Body: Struct of 5 fields
  index, stock_status_body = dissect.stock_status_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
dissect.stock_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.stock_status_message then
    local length = size_of.stock_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.stock_status_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.stock_status_message, range, display)
  end

  return dissect.stock_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Number
size_of.trade_number = 4

-- Display: Trade Number
display.trade_number = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
dissect.trade_number = function(buffer, offset, packet, parent)
  local length = size_of.trade_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Size: Last Sale
size_of.last_sale = 8

-- Display: Last Sale
display.last_sale = function(value)
  return "Last Sale: "..value
end

-- Translate: Last Sale
translate.last_sale = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Sale
dissect.last_sale = function(buffer, offset, packet, parent)
  local length = size_of.last_sale
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.last_sale(raw)
  local display = display.last_sale(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.last_sale, range, value, display)

  return offset + length, value
end

-- Size: Trade Time Stamp
size_of.trade_time_stamp = 4

-- Display: Trade Time Stamp
display.trade_time_stamp = function(value)
  return "Trade Time Stamp: "..value
end

-- Dissect: Trade Time Stamp
dissect.trade_time_stamp = function(buffer, offset, packet, parent)
  local length = size_of.trade_time_stamp
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.trade_time_stamp(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trade_time_stamp, range, value, display)

  return offset + length, value
end

-- Size: Sell Broker Number
size_of.sell_broker_number = 2

-- Display: Sell Broker Number
display.sell_broker_number = function(value)
  return "Sell Broker Number: "..value
end

-- Dissect: Sell Broker Number
dissect.sell_broker_number = function(buffer, offset, packet, parent)
  local length = size_of.sell_broker_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sell_broker_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.sell_broker_number, range, value, display)

  return offset + length, value
end

-- Size: Buy Broker Number
size_of.buy_broker_number = 2

-- Display: Buy Broker Number
display.buy_broker_number = function(value)
  return "Buy Broker Number: "..value
end

-- Dissect: Buy Broker Number
dissect.buy_broker_number = function(buffer, offset, packet, parent)
  local length = size_of.buy_broker_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.buy_broker_number(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.buy_broker_number, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Translate: Price
translate.price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.price(raw)
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Volume
size_of.volume = 4

-- Display: Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local length = size_of.volume
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Cancelled Body
size_of.trade_cancelled_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.volume

  index = index + size_of.price

  index = index + size_of.buy_broker_number

  index = index + size_of.sell_broker_number

  index = index + size_of.trade_time_stamp

  index = index + size_of.last_sale

  index = index + size_of.trade_number

  return index
end

-- Display: Trade Cancelled Body
display.trade_cancelled_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancelled Body
dissect.trade_cancelled_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = dissect.buy_broker_number(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = dissect.sell_broker_number(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = dissect.trade_time_stamp(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer
  index, last_sale = dissect.last_sale(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Body
dissect.trade_cancelled_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancelled_body then
    local length = size_of.trade_cancelled_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_cancelled_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trade_cancelled_body, range, display)
  end

  return dissect.trade_cancelled_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Cancelled Message
size_of.trade_cancelled_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.trade_cancelled_body(buffer, offset + index)

  return index
end

-- Display: Trade Cancelled Message
display.trade_cancelled_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancelled Message
dissect.trade_cancelled_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Trade Cancelled Body: Struct of 8 fields
  index, trade_cancelled_body = dissect.trade_cancelled_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Message
dissect.trade_cancelled_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_cancelled_message then
    local length = size_of.trade_cancelled_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_cancelled_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trade_cancelled_message, range, display)
  end

  return dissect.trade_cancelled_message_fields(buffer, offset, packet, parent)
end

-- Size: Is Dark
size_of.is_dark = 1

-- Display: Is Dark
display.is_dark = function(value)
  return "Is Dark: "..value
end

-- Dissect: Is Dark
dissect.is_dark = function(buffer, offset, packet, parent)
  local length = size_of.is_dark
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_dark(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.is_dark, range, value, display)

  return offset + length, value
end

-- Size: Opening Trade
size_of.opening_trade = 1

-- Display: Opening Trade
display.opening_trade = function(value)
  if value == "Y" then
    return "Opening Trade: Yes (Y)"
  end
  if value == "N" then
    return "Opening Trade: No (N)"
  end

  return "Opening Trade: Unknown("..value..")"
end

-- Dissect: Opening Trade
dissect.opening_trade = function(buffer, offset, packet, parent)
  local length = size_of.opening_trade
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.opening_trade(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
size_of.cross_type = 1

-- Display: Cross Type
display.cross_type = function(value)
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
dissect.cross_type = function(buffer, offset, packet, parent)
  local length = size_of.cross_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cross_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Settlement Terms
size_of.settlement_terms = 1

-- Display: Settlement Terms
display.settlement_terms = function(value)
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
dissect.settlement_terms = function(buffer, offset, packet, parent)
  local length = size_of.settlement_terms
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.settlement_terms(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.settlement_terms, range, value, display)

  return offset + length, value
end

-- Size: Bypass
size_of.bypass = 1

-- Display: Bypass
display.bypass = function(value)
  if value == "Y" then
    return "Bypass: The Order Is A Bypass (Y)"
  end
  if value == "N" then
    return "Bypass: The Order Is Not A Bypass (N)"
  end

  return "Bypass: Unknown("..value..")"
end

-- Dissect: Bypass
dissect.bypass = function(buffer, offset, packet, parent)
  local length = size_of.bypass
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bypass(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.bypass, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Body
size_of.trade_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.price

  index = index + size_of.volume

  index = index + size_of.buy_broker_number

  index = index + size_of.sell_broker_number

  index = index + size_of.bypass

  index = index + size_of.trade_time_stamp

  index = index + size_of.settlement_terms

  index = index + size_of.cross_type

  index = index + size_of.last_sale

  index = index + size_of.opening_trade

  index = index + size_of.is_dark

  index = index + size_of.trade_number

  return index
end

-- Display: Trade Body
display.trade_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Body
dissect.trade_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = dissect.buy_broker_number(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = dissect.sell_broker_number(buffer, index, packet, parent)

  -- Bypass: 1 Byte Ascii String Enum with 2 values
  index, bypass = dissect.bypass(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = dissect.trade_time_stamp(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = dissect.settlement_terms(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer
  index, last_sale = dissect.last_sale(buffer, index, packet, parent)

  -- Opening Trade: 1 Byte Ascii String Enum with 2 values
  index, opening_trade = dissect.opening_trade(buffer, index, packet, parent)

  -- Is Dark: 1 Byte Ascii String
  index, is_dark = dissect.is_dark(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Body
dissect.trade_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_body then
    local length = size_of.trade_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trade_body, range, display)
  end

  return dissect.trade_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Trade Message
size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.trade_body(buffer, offset + index)

  return index
end

-- Display: Trade Message
display.trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Message
dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Trade Body: Struct of 13 fields
  index, trade_body = dissect.trade_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
dissect.trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_message then
    local length = size_of.trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.trade_message, range, display)
  end

  return dissect.trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Test Symbol
size_of.test_symbol = 1

-- Display: Test Symbol
display.test_symbol = function(value)
  if value == "Y" then
    return "Test Symbol: Yes (Y)"
  end
  if value == "N" then
    return "Test Symbol: No (N)"
  end

  return "Test Symbol: Unknown("..value..")"
end

-- Dissect: Test Symbol
dissect.test_symbol = function(buffer, offset, packet, parent)
  local length = size_of.test_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.test_symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.test_symbol, range, value, display)

  return offset + length, value
end

-- Size: Min Po Qty
size_of.min_po_qty = 4

-- Display: Min Po Qty
display.min_po_qty = function(value)
  return "Min Po Qty: "..value
end

-- Dissect: Min Po Qty
dissect.min_po_qty = function(buffer, offset, packet, parent)
  local length = size_of.min_po_qty
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.min_po_qty(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.min_po_qty, range, value, display)

  return offset + length, value
end

-- Size: Face Value
size_of.face_value = 8

-- Display: Face Value
display.face_value = function(value)
  return "Face Value: "..value
end

-- Translate: Face Value
translate.face_value = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Face Value
dissect.face_value = function(buffer, offset, packet, parent)
  local length = size_of.face_value
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = translate.face_value(raw)
  local display = display.face_value(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.face_value, range, value, display)

  return offset + length, value
end

-- Size: Currency
size_of.currency = 1

-- Display: Currency
display.currency = function(value)
  if value == "U" then
    return "Currency: Usd (U)"
  end
  if value == "C" then
    return "Currency: Cad (C)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
dissect.currency = function(buffer, offset, packet, parent)
  local length = size_of.currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.currency(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Board Lot
size_of.board_lot = 2

-- Display: Board Lot
display.board_lot = function(value)
  return "Board Lot: "..value
end

-- Dissect: Board Lot
dissect.board_lot = function(buffer, offset, packet, parent)
  local length = size_of.board_lot
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.board_lot(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.board_lot, range, value, display)

  return offset + length, value
end

-- Size: Cusip
size_of.cusip = 12

-- Display: Cusip
display.cusip = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
dissect.cusip = function(buffer, offset, packet, parent)
  local length = size_of.cusip
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cusip(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.cusip, range, value, display)

  return offset + length, value
end

-- Size: Product Type
size_of.product_type = 1

-- Display: Product Type
display.product_type = function(value)
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
dissect.product_type = function(buffer, offset, packet, parent)
  local length = size_of.product_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.product_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.product_type, range, value, display)

  return offset + length, value
end

-- Size: Listing Market
size_of.listing_market = 1

-- Display: Listing Market
display.listing_market = function(value)
  if value == "T" then
    return "Listing Market: Tsx (T)"
  end
  if value == "V" then
    return "Listing Market: Tsxv (V)"
  end

  return "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
dissect.listing_market = function(buffer, offset, packet, parent)
  local length = size_of.listing_market
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.listing_market(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Size: Stock Group
size_of.stock_group = 1

-- Display: Stock Group
display.stock_group = function(value)
  return "Stock Group: "..value
end

-- Dissect: Stock Group
dissect.stock_group = function(buffer, offset, packet, parent)
  local length = size_of.stock_group
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.stock_group(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.stock_group, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Status Body
size_of.symbol_status_body = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.stock_group

  index = index + size_of.listing_market

  index = index + size_of.product_type

  index = index + size_of.cusip

  index = index + size_of.board_lot

  index = index + size_of.currency

  index = index + size_of.face_value

  index = index + size_of.last_sale

  index = index + size_of.min_po_qty

  index = index + size_of.stock_state

  index = index + size_of.test_symbol

  return index
end

-- Display: Symbol Status Body
display.symbol_status_body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Status Body
dissect.symbol_status_body_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Stock Group: 1 Byte Unsigned Fixed Width Integer
  index, stock_group = dissect.stock_group(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 2 values
  index, listing_market = dissect.listing_market(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 4 values
  index, product_type = dissect.product_type(buffer, index, packet, parent)

  -- Cusip: 12 Byte Ascii String
  index, cusip = dissect.cusip(buffer, index, packet, parent)

  -- Board Lot: 2 Byte Unsigned Fixed Width Integer
  index, board_lot = dissect.board_lot(buffer, index, packet, parent)

  -- Currency: 1 Byte Ascii String Enum with 2 values
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Face Value: 8 Byte Unsigned Fixed Width Integer
  index, face_value = dissect.face_value(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer
  index, last_sale = dissect.last_sale(buffer, index, packet, parent)

  -- Min Po Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_po_qty = dissect.min_po_qty(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 4 values
  index, stock_state = dissect.stock_state(buffer, index, packet, parent)

  -- Test Symbol: 1 Byte Ascii String Enum with 2 values
  index, test_symbol = dissect.test_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Body
dissect.symbol_status_body = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_status_body then
    local length = size_of.symbol_status_body(buffer, offset)
    local range = buffer(offset, length)
    local display = display.symbol_status_body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.symbol_status_body, range, display)
  end

  return dissect.symbol_status_body_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Symbol Status Message
size_of.symbol_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.business_header(buffer, offset + index)

  index = index + size_of.symbol_status_body(buffer, offset + index)

  return index
end

-- Display: Symbol Status Message
display.symbol_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Status Message
dissect.symbol_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = dissect.business_header(buffer, index, packet, parent)

  -- Symbol Status Body: Struct of 12 fields
  index, symbol_status_body = dissect.symbol_status_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
dissect.symbol_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_status_message then
    local length = size_of.symbol_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.symbol_status_message(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.symbol_status_message, range, display)
  end

  return dissect.symbol_status_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Body Message
size_of.body_message = function(buffer, offset, msg_type)
  -- Size of Symbol Status Message
  if msg_type == "J" then
    return size_of.symbol_status_message(buffer, offset)
  end
  -- Size of Trade Message
  if msg_type == "s" then
    return size_of.trade_message(buffer, offset)
  end
  -- Size of Trade Cancelled Message
  if msg_type == "t" then
    return size_of.trade_cancelled_message(buffer, offset)
  end
  -- Size of Stock Status Message
  if msg_type == "v" then
    return size_of.stock_status_message(buffer, offset)
  end
  -- Size of Equity Quote Message
  if msg_type == "w" then
    return size_of.equity_quote_message(buffer, offset)
  end

  return 0
end

-- Display: Body Message
display.body_message = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Body Message
dissect.body_message_branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Symbol Status Message
  if msg_type == "J" then
    return dissect.symbol_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if msg_type == "s" then
    return dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancelled Message
  if msg_type == "t" then
    return dissect.trade_cancelled_message(buffer, offset, packet, parent)
  end
  -- Dissect Stock Status Message
  if msg_type == "v" then
    return dissect.stock_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Equity Quote Message
  if msg_type == "w" then
    return dissect.equity_quote_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Body Message
dissect.body_message = function(buffer, offset, packet, parent, msg_type)
  if not show.body_message then
    return dissect.body_message_branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.body_message(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.body_message(buffer, packet, parent)
  local element = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.body_message, range, display)

  return dissect.body_message_branches(buffer, offset, packet, parent, msg_type)
end

-- Size: Msg Type
size_of.msg_type = 1

-- Display: Msg Type
display.msg_type = function(value)
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
dissect.msg_type = function(buffer, offset, packet, parent)
  local length = size_of.msg_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.msg_type(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Size: Msg Length
size_of.msg_length = 2

-- Display: Msg Length
display.msg_length = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
dissect.msg_length = function(buffer, offset, packet, parent)
  local length = size_of.msg_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.msg_length(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Body Header
size_of.body_header = function(buffer, offset)
  local index = 0

  index = index + size_of.msg_length

  index = index + size_of.msg_type

  return index
end

-- Display: Body Header
display.body_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Body Header
dissect.body_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = dissect.msg_length(buffer, index, packet, parent)

  -- Msg Type: 1 Byte Ascii String Enum with 5 values
  index, msg_type = dissect.msg_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Body Header
dissect.body_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.body_header then
    local length = size_of.body_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.body_header(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.body_header, range, display)
  end

  return dissect.body_header_fields(buffer, offset, packet, parent)
end

-- Display: Body
display.body = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Body
dissect.body_fields = function(buffer, offset, packet, parent, size_of_body)
  local index = offset

  -- Body Header: Struct of 2 fields
  index, body_header = dissect.body_header(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(index - 1, 1):string()

  -- Body Message: Runtime Type with 5 branches
  index = dissect.body_message(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Body
dissect.body = function(buffer, offset, packet, parent, size_of_body)
  -- Optionally add struct element to protocol tree
  if show.body then
    local range = buffer(offset, size_of_body)
    local display = display.body(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.body, range, display)
  end

  dissect.body_fields(buffer, offset, packet, parent, size_of_body)

  return offset + size_of_body
end

-- Size: Num Body
size_of.num_body = 1

-- Display: Num Body
display.num_body = function(value)
  return "Num Body: "..value
end

-- Dissect: Num Body
dissect.num_body = function(buffer, offset, packet, parent)
  local length = size_of.num_body
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.num_body(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.num_body, range, value, display)

  return offset + length, value
end

-- Size: Ack Required Poss Dup
size_of.ack_required_poss_dup = 1

-- Display: Ack Required Poss Dup
display.ack_required_poss_dup = function(value)
  if value == "A" then
    return "Ack Required Poss Dup: Receiver Needs To Ack (A)"
  end
  if value == "D" then
    return "Ack Required Poss Dup: Possible Duplicates (D)"
  end

  return "Ack Required Poss Dup: Unknown("..value..")"
end

-- Dissect: Ack Required Poss Dup
dissect.ack_required_poss_dup = function(buffer, offset, packet, parent)
  local length = size_of.ack_required_poss_dup
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ack_required_poss_dup(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.ack_required_poss_dup, range, value, display)

  return offset + length, value
end

-- Size: Session Id
size_of.session_id = 4

-- Display: Session Id
display.session_id = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
dissect.session_id = function(buffer, offset, packet, parent)
  local length = size_of.session_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_id(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.session_id, range, value, display)

  return offset + length, value
end

-- Size: Message Length
size_of.message_length = 2

-- Display: Message Length
display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
dissect.message_length = function(buffer, offset, packet, parent)
  local length = size_of.message_length
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Size: Protocol Version
size_of.protocol_version = 1

-- Display: Protocol Version
display.protocol_version = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
dissect.protocol_version = function(buffer, offset, packet, parent)
  local length = size_of.protocol_version
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.protocol_version(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Size: Protocol Name
size_of.protocol_name = 1

-- Display: Protocol Name
display.protocol_name = function(value)
  return "Protocol Name: "..value
end

-- Dissect: Protocol Name
dissect.protocol_name = function(buffer, offset, packet, parent)
  local length = size_of.protocol_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.protocol_name(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.protocol_name, range, value, display)

  return offset + length, value
end

-- Size: Start Of Frame
size_of.start_of_frame = 1

-- Display: Start Of Frame
display.start_of_frame = function(value)
  return "Start Of Frame: "..value
end

-- Dissect: Start Of Frame
dissect.start_of_frame = function(buffer, offset, packet, parent)
  local length = size_of.start_of_frame
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.start_of_frame(value, buffer, offset, packet, parent)

  parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.start_of_frame, range, value, display)

  return offset + length, value
end

-- Calculate size of: Frame Header
size_of.frame_header = function(buffer, offset)
  local index = 0

  index = index + size_of.start_of_frame

  index = index + size_of.protocol_name

  index = index + size_of.protocol_version

  index = index + size_of.message_length

  index = index + size_of.session_id

  index = index + size_of.ack_required_poss_dup

  index = index + size_of.num_body

  return index
end

-- Display: Frame Header
display.frame_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Frame Header
dissect.frame_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Frame: 1 Byte Fixed Width Integer
  index, start_of_frame = dissect.start_of_frame(buffer, index, packet, parent)

  -- Protocol Name: 1 Byte Ascii String
  index, protocol_name = dissect.protocol_name(buffer, index, packet, parent)

  -- Protocol Version: 1 Byte Ascii String
  index, protocol_version = dissect.protocol_version(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = dissect.message_length(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = dissect.session_id(buffer, index, packet, parent)

  -- Ack Required Poss Dup: 1 Byte Ascii String Enum with 2 values
  index, ack_required_poss_dup = dissect.ack_required_poss_dup(buffer, index, packet, parent)

  -- Num Body: 1 Byte Unsigned Fixed Width Integer
  index, num_body = dissect.num_body(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame Header
dissect.frame_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.frame_header then
    local length = size_of.frame_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.frame_header(buffer, packet, parent)
    parent = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1.fields.frame_header, range, display)
  end

  return dissect.frame_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Frame Header: Struct of 7 fields
    index, frame_header = dissect.frame_header(buffer, index, packet, parent)

    -- Dependency element: Msg Length
    local msg_length = buffer(index, 2):le_uint()

    -- Body: Struct of 2 fields
    index = dissect.body(buffer, index, packet, parent, msg_length)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function tmx_quantumfeed_alphalevel1_xmt_v2_1.init()
end

-- Dissector for Tmx QuantumFeed AlphaLevel1 Xmt 2.1
function tmx_quantumfeed_alphalevel1_xmt_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = tmx_quantumfeed_alphalevel1_xmt_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(tmx_quantumfeed_alphalevel1_xmt_v2_1, buffer(), tmx_quantumfeed_alphalevel1_xmt_v2_1.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, tmx_quantumfeed_alphalevel1_xmt_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.tmx_quantumfeed_alphalevel1_xmt_v2_1_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Tmx QuantumFeed AlphaLevel1 Xmt 2.1
local function tmx_quantumfeed_alphalevel1_xmt_v2_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.tmx_quantumfeed_alphalevel1_xmt_v2_1_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = tmx_quantumfeed_alphalevel1_xmt_v2_1
  tmx_quantumfeed_alphalevel1_xmt_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx QuantumFeed AlphaLevel1 Xmt 2.1
tmx_quantumfeed_alphalevel1_xmt_v2_1:register_heuristic("udp", tmx_quantumfeed_alphalevel1_xmt_v2_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Tmx Group
--   Version: 2.1
--   Date: Tuesday, October 20, 2020
--   Specification: alpha_level_1_quantumfeed_business_message_specification-v2-1-0.pdf
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
