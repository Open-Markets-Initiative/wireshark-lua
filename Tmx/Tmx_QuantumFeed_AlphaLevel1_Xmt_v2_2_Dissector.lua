-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx QuantumFeed AlphaLevel1 Xmt 2.2 Protocol
local omi_tmx_quantumfeed_alphalevel1_xmt_v2_2 = Proto("Tmx.QuantumFeed.AlphaLevel1.Xmt.v2.2.Lua", "Tmx QuantumFeed AlphaLevel1 Xmt 2.2")

-- Protocol table
local tmx_quantumfeed_alphalevel1_xmt_v2_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx QuantumFeed AlphaLevel1 Xmt 2.2 Fields
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.ack_required_poss_dup = ProtoField.new("Ack Required Poss Dup", "tmx.quantumfeed.alphalevel1.xmt.v2.2.ackrequiredpossdup", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.ask_price = ProtoField.new("Ask Price", "tmx.quantumfeed.alphalevel1.xmt.v2.2.askprice", ftypes.DOUBLE)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.ask_size = ProtoField.new("Ask Size", "tmx.quantumfeed.alphalevel1.xmt.v2.2.asksize", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.bid_price = ProtoField.new("Bid Price", "tmx.quantumfeed.alphalevel1.xmt.v2.2.bidprice", ftypes.DOUBLE)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.bid_size = ProtoField.new("Bid Size", "tmx.quantumfeed.alphalevel1.xmt.v2.2.bidsize", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.board_lot = ProtoField.new("Board Lot", "tmx.quantumfeed.alphalevel1.xmt.v2.2.boardlot", ftypes.UINT16)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body = ProtoField.new("Body", "tmx.quantumfeed.alphalevel1.xmt.v2.2.body", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body_header = ProtoField.new("Body Header", "tmx.quantumfeed.alphalevel1.xmt.v2.2.bodyheader", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body_message = ProtoField.new("Body Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.bodymessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.business_header = ProtoField.new("Business Header", "tmx.quantumfeed.alphalevel1.xmt.v2.2.businessheader", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.business_message = ProtoField.new("Business Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.businessmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.buy_broker_number = ProtoField.new("Buy Broker Number", "tmx.quantumfeed.alphalevel1.xmt.v2.2.buybrokernumber", ftypes.UINT16)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.bypass = ProtoField.new("Bypass", "tmx.quantumfeed.alphalevel1.xmt.v2.2.bypass", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.comment = ProtoField.new("Comment", "tmx.quantumfeed.alphalevel1.xmt.v2.2.comment", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.cross_type = ProtoField.new("Cross Type", "tmx.quantumfeed.alphalevel1.xmt.v2.2.crosstype", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.currency = ProtoField.new("Currency", "tmx.quantumfeed.alphalevel1.xmt.v2.2.currency", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.cusip = ProtoField.new("Cusip", "tmx.quantumfeed.alphalevel1.xmt.v2.2.cusip", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.face_value = ProtoField.new("Face Value", "tmx.quantumfeed.alphalevel1.xmt.v2.2.facevalue", ftypes.DOUBLE)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.frame_header = ProtoField.new("Frame Header", "tmx.quantumfeed.alphalevel1.xmt.v2.2.frameheader", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.is_dark = ProtoField.new("Is Dark", "tmx.quantumfeed.alphalevel1.xmt.v2.2.isdark", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.last_sale = ProtoField.new("Last Sale", "tmx.quantumfeed.alphalevel1.xmt.v2.2.lastsale", ftypes.DOUBLE)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.listing_market = ProtoField.new("Listing Market", "tmx.quantumfeed.alphalevel1.xmt.v2.2.listingmarket", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.message_length = ProtoField.new("Message Length", "tmx.quantumfeed.alphalevel1.xmt.v2.2.messagelength", ftypes.UINT16)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.min_po_qty = ProtoField.new("Min Po Qty", "tmx.quantumfeed.alphalevel1.xmt.v2.2.minpoqty", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.msg_length = ProtoField.new("Msg Length", "tmx.quantumfeed.alphalevel1.xmt.v2.2.msglength", ftypes.UINT16)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.msg_type = ProtoField.new("Msg Type", "tmx.quantumfeed.alphalevel1.xmt.v2.2.msgtype", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.msg_version = ProtoField.new("Msg Version", "tmx.quantumfeed.alphalevel1.xmt.v2.2.msgversion", ftypes.UINT8)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.num_body = ProtoField.new("Num Body", "tmx.quantumfeed.alphalevel1.xmt.v2.2.numbody", ftypes.UINT8)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.opening_trade = ProtoField.new("Opening Trade", "tmx.quantumfeed.alphalevel1.xmt.v2.2.openingtrade", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.packet = ProtoField.new("Packet", "tmx.quantumfeed.alphalevel1.xmt.v2.2.packet", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.price = ProtoField.new("Price", "tmx.quantumfeed.alphalevel1.xmt.v2.2.price", ftypes.DOUBLE)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.product_type = ProtoField.new("Product Type", "tmx.quantumfeed.alphalevel1.xmt.v2.2.producttype", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.protocol_name = ProtoField.new("Protocol Name", "tmx.quantumfeed.alphalevel1.xmt.v2.2.protocolname", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.protocol_version = ProtoField.new("Protocol Version", "tmx.quantumfeed.alphalevel1.xmt.v2.2.protocolversion", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.resume_trade_time = ProtoField.new("Resume Trade Time", "tmx.quantumfeed.alphalevel1.xmt.v2.2.resumetradetime", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.sell_broker_number = ProtoField.new("Sell Broker Number", "tmx.quantumfeed.alphalevel1.xmt.v2.2.sellbrokernumber", ftypes.UINT16)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.sequence_0 = ProtoField.new("Sequence 0", "tmx.quantumfeed.alphalevel1.xmt.v2.2.sequence0", ftypes.UINT8)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.sequence_1 = ProtoField.new("Sequence 1", "tmx.quantumfeed.alphalevel1.xmt.v2.2.sequence1", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.session_id = ProtoField.new("Session Id", "tmx.quantumfeed.alphalevel1.xmt.v2.2.sessionid", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.settlement_terms = ProtoField.new("Settlement Terms", "tmx.quantumfeed.alphalevel1.xmt.v2.2.settlementterms", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.source_id = ProtoField.new("Source Id", "tmx.quantumfeed.alphalevel1.xmt.v2.2.sourceid", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.start_of_frame = ProtoField.new("Start Of Frame", "tmx.quantumfeed.alphalevel1.xmt.v2.2.startofframe", ftypes.INT8)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stock_group = ProtoField.new("Stock Group", "tmx.quantumfeed.alphalevel1.xmt.v2.2.stockgroup", ftypes.UINT8)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stock_state = ProtoField.new("Stock State", "tmx.quantumfeed.alphalevel1.xmt.v2.2.stockstate", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stream_id = ProtoField.new("Stream Id", "tmx.quantumfeed.alphalevel1.xmt.v2.2.streamid", ftypes.UINT16)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.symbol = ProtoField.new("Symbol", "tmx.quantumfeed.alphalevel1.xmt.v2.2.symbol", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.test_symbol = ProtoField.new("Test Symbol", "tmx.quantumfeed.alphalevel1.xmt.v2.2.testsymbol", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_number = ProtoField.new("Trade Number", "tmx.quantumfeed.alphalevel1.xmt.v2.2.tradenumber", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_time_stamp = ProtoField.new("Trade Time Stamp", "tmx.quantumfeed.alphalevel1.xmt.v2.2.tradetimestamp", ftypes.UINT32)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trading_system_time_stamp = ProtoField.new("Trading System Time Stamp", "tmx.quantumfeed.alphalevel1.xmt.v2.2.tradingsystemtimestamp", ftypes.UINT64)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.volume = ProtoField.new("Volume", "tmx.quantumfeed.alphalevel1.xmt.v2.2.volume", ftypes.UINT32)

-- Tmx QuantumFeed Xmt AlphaLevel1 2.2 Application Messages
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.equity_quote_message = ProtoField.new("Equity Quote Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.equityquotemessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stock_status_message = ProtoField.new("Stock Status Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.stockstatusmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.symbolstatusmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_cancelled_message = ProtoField.new("Trade Cancelled Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.tradecancelledmessage", ftypes.STRING)
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_message = ProtoField.new("Trade Message", "tmx.quantumfeed.alphalevel1.xmt.v2.2.trademessage", ftypes.STRING)

-- Tmx QuantumFeed AlphaLevel1 Xmt 2.2 generated fields
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body_index = ProtoField.new("Body Index", "tmx.quantumfeed.alphalevel1.xmt.v2.2.bodyindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body = Pref.bool("Show Body", show.body, "Parse and add Body to protocol tree")
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body_header = Pref.bool("Show Body Header", show.body_header, "Parse and add Body Header to protocol tree")
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body_message = Pref.bool("Show Body Message", show.body_message, "Parse and add Body Message to protocol tree")
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_business_header = Pref.bool("Show Business Header", show.business_header, "Parse and add Business Header to protocol tree")
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_equity_quote_message = Pref.bool("Show Equity Quote Message", show.equity_quote_message, "Parse and add Equity Quote Message to protocol tree")
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_frame_header = Pref.bool("Show Frame Header", show.frame_header, "Parse and add Frame Header to protocol tree")
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_stock_status_message = Pref.bool("Show Stock Status Message", show.stock_status_message, "Parse and add Stock Status Message to protocol tree")
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_symbol_status_message = Pref.bool("Show Symbol Status Message", show.symbol_status_message, "Parse and add Symbol Status Message to protocol tree")
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_trade_cancelled_message = Pref.bool("Show Trade Cancelled Message", show.trade_cancelled_message, "Parse and add Trade Cancelled Message to protocol tree")
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_business_message = Pref.bool("Show Business Message", show.business_message, "Parse and add Business Message to protocol tree")

-- Handle changed preferences
function omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.body ~= omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body then
    show.body = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body
    changed = true
  end
  if show.body_header ~= omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body_header then
    show.body_header = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body_header
    changed = true
  end
  if show.body_message ~= omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body_message then
    show.body_message = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_body_message
    changed = true
  end
  if show.business_header ~= omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_business_header then
    show.business_header = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_business_header
    changed = true
  end
  if show.equity_quote_message ~= omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_equity_quote_message then
    show.equity_quote_message = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_equity_quote_message
    changed = true
  end
  if show.frame_header ~= omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_frame_header then
    show.frame_header = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_frame_header
    changed = true
  end
  if show.packet ~= omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_packet then
    show.packet = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_packet
    changed = true
  end
  if show.stock_status_message ~= omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_stock_status_message then
    show.stock_status_message = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_stock_status_message
    changed = true
  end
  if show.symbol_status_message ~= omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_symbol_status_message then
    show.symbol_status_message = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_symbol_status_message
    changed = true
  end
  if show.trade_cancelled_message ~= omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_trade_cancelled_message then
    show.trade_cancelled_message = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_trade_cancelled_message
    changed = true
  end
  if show.trade_message ~= omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_trade_message then
    show.trade_message = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_trade_message
    changed = true
  end
  if show.business_message ~= omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_business_message then
    show.business_message = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.prefs.show_business_message
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

-- Trading System Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp = {}

-- Size: Trading System Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp.size = 8

-- Display: Trading System Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Trading System Time Stamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Trading System Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trading_system_time_stamp, range, value, display)

  return offset + length, value
end

-- Ask Size
tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_size = {}

-- Size: Ask Size
tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_size.size = 4

-- Display: Ask Size
tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Ask Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_price = {}

-- Size: Ask Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_price.size = 8

-- Display: Ask Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Ask Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_price.translate(raw)
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Bid Size
tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_size = {}

-- Size: Bid Size
tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_size.size = 4

-- Display: Bid Size
tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_price = {}

-- Size: Bid Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_price.size = 8

-- Display: Bid Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_price.translate(raw)
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol = {}

-- Size: Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.size = 12

-- Display: Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.symbol, range, value, display)

  return offset + length, value
end

-- Equity Quote Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.equity_quote_message = {}

-- Size: Equity Quote Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.equity_quote_message.size =
  tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_price.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_size.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_price.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_size.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp.size

-- Display: Equity Quote Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.equity_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity Quote Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.equity_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.dissect(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, bid_price = tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = tmx_quantumfeed_alphalevel1_xmt_v2_2.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Price: 8 Byte Unsigned Fixed Width Integer
  index, ask_price = tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Size: 4 Byte Unsigned Fixed Width Integer
  index, ask_size = tmx_quantumfeed_alphalevel1_xmt_v2_2.ask_size.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity Quote Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.equity_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.equity_quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.equity_quote_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2.equity_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.equity_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.equity_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Resume Trade Time
tmx_quantumfeed_alphalevel1_xmt_v2_2.resume_trade_time = {}

-- Size: Resume Trade Time
tmx_quantumfeed_alphalevel1_xmt_v2_2.resume_trade_time.size = 4

-- Display: Resume Trade Time
tmx_quantumfeed_alphalevel1_xmt_v2_2.resume_trade_time.display = function(value)
  return "Resume Trade Time: "..value
end

-- Dissect: Resume Trade Time
tmx_quantumfeed_alphalevel1_xmt_v2_2.resume_trade_time.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.resume_trade_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.resume_trade_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.resume_trade_time, range, value, display)

  return offset + length, value
end

-- Stock State
tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_state = {}

-- Size: Stock State
tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_state.size = 2

-- Display: Stock State
tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_state.display = function(value)
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
tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_state.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_state.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stock_state, range, value, display)

  return offset + length, value
end

-- Comment
tmx_quantumfeed_alphalevel1_xmt_v2_2.comment = {}

-- Size: Comment
tmx_quantumfeed_alphalevel1_xmt_v2_2.comment.size = 40

-- Display: Comment
tmx_quantumfeed_alphalevel1_xmt_v2_2.comment.display = function(value)
  return "Comment: "..value
end

-- Dissect: Comment
tmx_quantumfeed_alphalevel1_xmt_v2_2.comment.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.comment.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.comment.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.comment, range, value, display)

  return offset + length, value
end

-- Stock Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_status_message = {}

-- Size: Stock Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_status_message.size =
  tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.comment.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_state.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.resume_trade_time.size

-- Display: Stock Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stock Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.dissect(buffer, index, packet, parent)

  -- Comment: 40 Byte Ascii String
  index, comment = tmx_quantumfeed_alphalevel1_xmt_v2_2.comment.dissect(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 4 values
  index, stock_state = tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_state.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  -- Resume Trade Time: 4 Byte Unsigned Fixed Width Integer
  index, resume_trade_time = tmx_quantumfeed_alphalevel1_xmt_v2_2.resume_trade_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stock Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_status_message.dissect = function(buffer, offset, packet, parent)
  if show.stock_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stock_status_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Number
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_number = {}

-- Size: Trade Number
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_number.size = 4

-- Display: Trade Number
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_number.display = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Last Sale
tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale = {}

-- Size: Last Sale
tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale.size = 8

-- Display: Last Sale
tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale.display = function(value)
  return "Last Sale: "..value
end

-- Translate: Last Sale
tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Sale
tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale.translate(raw)
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.last_sale, range, value, display)

  return offset + length, value
end

-- Trade Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_time_stamp = {}

-- Size: Trade Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_time_stamp.size = 4

-- Display: Trade Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_time_stamp.display = function(value)
  return "Trade Time Stamp: "..value
end

-- Dissect: Trade Time Stamp
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_time_stamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_time_stamp, range, value, display)

  return offset + length, value
end

-- Sell Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2.sell_broker_number = {}

-- Size: Sell Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2.sell_broker_number.size = 2

-- Display: Sell Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2.sell_broker_number.display = function(value)
  return "Sell Broker Number: "..value
end

-- Dissect: Sell Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2.sell_broker_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.sell_broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.sell_broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.sell_broker_number, range, value, display)

  return offset + length, value
end

-- Buy Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2.buy_broker_number = {}

-- Size: Buy Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2.buy_broker_number.size = 2

-- Display: Buy Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2.buy_broker_number.display = function(value)
  return "Buy Broker Number: "..value
end

-- Dissect: Buy Broker Number
tmx_quantumfeed_alphalevel1_xmt_v2_2.buy_broker_number.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.buy_broker_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.buy_broker_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.buy_broker_number, range, value, display)

  return offset + length, value
end

-- Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.price = {}

-- Size: Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.price.size = 8

-- Display: Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Price
tmx_quantumfeed_alphalevel1_xmt_v2_2.price.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.price.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_quantumfeed_alphalevel1_xmt_v2_2.price.translate(raw)
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.price, range, value, display)

  return offset + length, value
end

-- Volume
tmx_quantumfeed_alphalevel1_xmt_v2_2.volume = {}

-- Size: Volume
tmx_quantumfeed_alphalevel1_xmt_v2_2.volume.size = 4

-- Display: Volume
tmx_quantumfeed_alphalevel1_xmt_v2_2.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
tmx_quantumfeed_alphalevel1_xmt_v2_2.volume.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.volume, range, value, display)

  return offset + length, value
end

-- Trade Cancelled Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_cancelled_message = {}

-- Size: Trade Cancelled Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_cancelled_message.size =
  tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.volume.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.price.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.buy_broker_number.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.sell_broker_number.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_time_stamp.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_number.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp.size

-- Display: Trade Cancelled Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancelled Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_cancelled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel1_xmt_v2_2.volume.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel1_xmt_v2_2.price.dissect(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = tmx_quantumfeed_alphalevel1_xmt_v2_2.buy_broker_number.dissect(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = tmx_quantumfeed_alphalevel1_xmt_v2_2.sell_broker_number.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer
  index, last_sale = tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_number.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancelled Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_cancelled_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_cancelled_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_cancelled_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_cancelled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_cancelled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_cancelled_message.fields(buffer, offset, packet, parent)
  end
end

-- Is Dark
tmx_quantumfeed_alphalevel1_xmt_v2_2.is_dark = {}

-- Size: Is Dark
tmx_quantumfeed_alphalevel1_xmt_v2_2.is_dark.size = 1

-- Display: Is Dark
tmx_quantumfeed_alphalevel1_xmt_v2_2.is_dark.display = function(value)
  return "Is Dark: "..value
end

-- Dissect: Is Dark
tmx_quantumfeed_alphalevel1_xmt_v2_2.is_dark.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.is_dark.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.is_dark.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.is_dark, range, value, display)

  return offset + length, value
end

-- Opening Trade
tmx_quantumfeed_alphalevel1_xmt_v2_2.opening_trade = {}

-- Size: Opening Trade
tmx_quantumfeed_alphalevel1_xmt_v2_2.opening_trade.size = 1

-- Display: Opening Trade
tmx_quantumfeed_alphalevel1_xmt_v2_2.opening_trade.display = function(value)
  if value == "Y" then
    return "Opening Trade: Yes (Y)"
  end
  if value == "N" then
    return "Opening Trade: No (N)"
  end

  return "Opening Trade: Unknown("..value..")"
end

-- Dissect: Opening Trade
tmx_quantumfeed_alphalevel1_xmt_v2_2.opening_trade.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.opening_trade.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.opening_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.opening_trade, range, value, display)

  return offset + length, value
end

-- Cross Type
tmx_quantumfeed_alphalevel1_xmt_v2_2.cross_type = {}

-- Size: Cross Type
tmx_quantumfeed_alphalevel1_xmt_v2_2.cross_type.size = 1

-- Display: Cross Type
tmx_quantumfeed_alphalevel1_xmt_v2_2.cross_type.display = function(value)
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
tmx_quantumfeed_alphalevel1_xmt_v2_2.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Settlement Terms
tmx_quantumfeed_alphalevel1_xmt_v2_2.settlement_terms = {}

-- Size: Settlement Terms
tmx_quantumfeed_alphalevel1_xmt_v2_2.settlement_terms.size = 1

-- Display: Settlement Terms
tmx_quantumfeed_alphalevel1_xmt_v2_2.settlement_terms.display = function(value)
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
tmx_quantumfeed_alphalevel1_xmt_v2_2.settlement_terms.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.settlement_terms.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.settlement_terms.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.settlement_terms, range, value, display)

  return offset + length, value
end

-- Bypass
tmx_quantumfeed_alphalevel1_xmt_v2_2.bypass = {}

-- Size: Bypass
tmx_quantumfeed_alphalevel1_xmt_v2_2.bypass.size = 1

-- Display: Bypass
tmx_quantumfeed_alphalevel1_xmt_v2_2.bypass.display = function(value)
  if value == "Y" then
    return "Bypass: The Order Is A Bypass (Y)"
  end
  if value == "N" then
    return "Bypass: The Order Is Not A Bypass (N)"
  end

  return "Bypass: Unknown("..value..")"
end

-- Dissect: Bypass
tmx_quantumfeed_alphalevel1_xmt_v2_2.bypass.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.bypass.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.bypass.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.bypass, range, value, display)

  return offset + length, value
end

-- Trade Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_message = {}

-- Size: Trade Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_message.size =
  tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.price.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.volume.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.buy_broker_number.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.sell_broker_number.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.bypass.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_time_stamp.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.settlement_terms.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.cross_type.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.opening_trade.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.is_dark.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_number.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp.size

-- Display: Trade Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.dissect(buffer, index, packet, parent)

  -- Price: 8 Byte Unsigned Fixed Width Integer
  index, price = tmx_quantumfeed_alphalevel1_xmt_v2_2.price.dissect(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = tmx_quantumfeed_alphalevel1_xmt_v2_2.volume.dissect(buffer, index, packet, parent)

  -- Buy Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, buy_broker_number = tmx_quantumfeed_alphalevel1_xmt_v2_2.buy_broker_number.dissect(buffer, index, packet, parent)

  -- Sell Broker Number: 2 Byte Unsigned Fixed Width Integer
  index, sell_broker_number = tmx_quantumfeed_alphalevel1_xmt_v2_2.sell_broker_number.dissect(buffer, index, packet, parent)

  -- Bypass: 1 Byte Ascii String Enum with 2 values
  index, bypass = tmx_quantumfeed_alphalevel1_xmt_v2_2.bypass.dissect(buffer, index, packet, parent)

  -- Trade Time Stamp: 4 Byte Unsigned Fixed Width Integer
  index, trade_time_stamp = tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_time_stamp.dissect(buffer, index, packet, parent)

  -- Settlement Terms: 1 Byte Ascii String Enum with 6 values
  index, settlement_terms = tmx_quantumfeed_alphalevel1_xmt_v2_2.settlement_terms.dissect(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Ascii String Enum with 7 values
  index, cross_type = tmx_quantumfeed_alphalevel1_xmt_v2_2.cross_type.dissect(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer
  index, last_sale = tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale.dissect(buffer, index, packet, parent)

  -- Opening Trade: 1 Byte Ascii String Enum with 2 values
  index, opening_trade = tmx_quantumfeed_alphalevel1_xmt_v2_2.opening_trade.dissect(buffer, index, packet, parent)

  -- Is Dark: 1 Byte Ascii String
  index, is_dark = tmx_quantumfeed_alphalevel1_xmt_v2_2.is_dark.dissect(buffer, index, packet, parent)

  -- Trade Number: 4 Byte Unsigned Fixed Width Integer
  index, trade_number = tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_number.dissect(buffer, index, packet, parent)

  -- Trading System Time Stamp: 8 Byte Unsigned Fixed Width Integer
  index, trading_system_time_stamp = tmx_quantumfeed_alphalevel1_xmt_v2_2.trading_system_time_stamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.trade_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Test Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2.test_symbol = {}

-- Size: Test Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2.test_symbol.size = 1

-- Display: Test Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2.test_symbol.display = function(value)
  if value == "Y" then
    return "Test Symbol: Yes (Y)"
  end
  if value == "N" then
    return "Test Symbol: No (N)"
  end

  return "Test Symbol: Unknown("..value..")"
end

-- Dissect: Test Symbol
tmx_quantumfeed_alphalevel1_xmt_v2_2.test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.test_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.test_symbol, range, value, display)

  return offset + length, value
end

-- Min Po Qty
tmx_quantumfeed_alphalevel1_xmt_v2_2.min_po_qty = {}

-- Size: Min Po Qty
tmx_quantumfeed_alphalevel1_xmt_v2_2.min_po_qty.size = 4

-- Display: Min Po Qty
tmx_quantumfeed_alphalevel1_xmt_v2_2.min_po_qty.display = function(value)
  return "Min Po Qty: "..value
end

-- Dissect: Min Po Qty
tmx_quantumfeed_alphalevel1_xmt_v2_2.min_po_qty.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.min_po_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.min_po_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.min_po_qty, range, value, display)

  return offset + length, value
end

-- Face Value
tmx_quantumfeed_alphalevel1_xmt_v2_2.face_value = {}

-- Size: Face Value
tmx_quantumfeed_alphalevel1_xmt_v2_2.face_value.size = 8

-- Display: Face Value
tmx_quantumfeed_alphalevel1_xmt_v2_2.face_value.display = function(value)
  return "Face Value: "..value
end

-- Translate: Face Value
tmx_quantumfeed_alphalevel1_xmt_v2_2.face_value.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Face Value
tmx_quantumfeed_alphalevel1_xmt_v2_2.face_value.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.face_value.size
  local range = buffer(offset, length)
  local raw = range:le_uint64()
  local value = tmx_quantumfeed_alphalevel1_xmt_v2_2.face_value.translate(raw)
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.face_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.face_value, range, value, display)

  return offset + length, value
end

-- Currency
tmx_quantumfeed_alphalevel1_xmt_v2_2.currency = {}

-- Size: Currency
tmx_quantumfeed_alphalevel1_xmt_v2_2.currency.size = 1

-- Display: Currency
tmx_quantumfeed_alphalevel1_xmt_v2_2.currency.display = function(value)
  if value == "U" then
    return "Currency: Usd (U)"
  end
  if value == "C" then
    return "Currency: Cad (C)"
  end

  return "Currency: Unknown("..value..")"
end

-- Dissect: Currency
tmx_quantumfeed_alphalevel1_xmt_v2_2.currency.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.currency, range, value, display)

  return offset + length, value
end

-- Board Lot
tmx_quantumfeed_alphalevel1_xmt_v2_2.board_lot = {}

-- Size: Board Lot
tmx_quantumfeed_alphalevel1_xmt_v2_2.board_lot.size = 2

-- Display: Board Lot
tmx_quantumfeed_alphalevel1_xmt_v2_2.board_lot.display = function(value)
  return "Board Lot: "..value
end

-- Dissect: Board Lot
tmx_quantumfeed_alphalevel1_xmt_v2_2.board_lot.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.board_lot.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.board_lot.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.board_lot, range, value, display)

  return offset + length, value
end

-- Cusip
tmx_quantumfeed_alphalevel1_xmt_v2_2.cusip = {}

-- Size: Cusip
tmx_quantumfeed_alphalevel1_xmt_v2_2.cusip.size = 12

-- Display: Cusip
tmx_quantumfeed_alphalevel1_xmt_v2_2.cusip.display = function(value)
  return "Cusip: "..value
end

-- Dissect: Cusip
tmx_quantumfeed_alphalevel1_xmt_v2_2.cusip.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.cusip.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.cusip.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.cusip, range, value, display)

  return offset + length, value
end

-- Product Type
tmx_quantumfeed_alphalevel1_xmt_v2_2.product_type = {}

-- Size: Product Type
tmx_quantumfeed_alphalevel1_xmt_v2_2.product_type.size = 1

-- Display: Product Type
tmx_quantumfeed_alphalevel1_xmt_v2_2.product_type.display = function(value)
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
tmx_quantumfeed_alphalevel1_xmt_v2_2.product_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.product_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.product_type, range, value, display)

  return offset + length, value
end

-- Listing Market
tmx_quantumfeed_alphalevel1_xmt_v2_2.listing_market = {}

-- Size: Listing Market
tmx_quantumfeed_alphalevel1_xmt_v2_2.listing_market.size = 1

-- Display: Listing Market
tmx_quantumfeed_alphalevel1_xmt_v2_2.listing_market.display = function(value)
  if value == "T" then
    return "Listing Market: Tsx (T)"
  end
  if value == "V" then
    return "Listing Market: Tsxv (V)"
  end

  return "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
tmx_quantumfeed_alphalevel1_xmt_v2_2.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.listing_market.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Stock Group
tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_group = {}

-- Size: Stock Group
tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_group.size = 1

-- Display: Stock Group
tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_group.display = function(value)
  return "Stock Group: "..value
end

-- Dissect: Stock Group
tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_group.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_group.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stock_group, range, value, display)

  return offset + length, value
end

-- Symbol Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol_status_message = {}

-- Size: Symbol Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol_status_message.size =
  tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_group.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.listing_market.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.product_type.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.cusip.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.board_lot.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.currency.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.face_value.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.min_po_qty.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_state.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.test_symbol.size

-- Display: Symbol Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 12 Byte Ascii String
  index, symbol = tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol.dissect(buffer, index, packet, parent)

  -- Stock Group: 1 Byte Unsigned Fixed Width Integer
  index, stock_group = tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_group.dissect(buffer, index, packet, parent)

  -- Listing Market: 1 Byte Ascii String Enum with 2 values
  index, listing_market = tmx_quantumfeed_alphalevel1_xmt_v2_2.listing_market.dissect(buffer, index, packet, parent)

  -- Product Type: 1 Byte Ascii String Enum with 4 values
  index, product_type = tmx_quantumfeed_alphalevel1_xmt_v2_2.product_type.dissect(buffer, index, packet, parent)

  -- Cusip: 12 Byte Ascii String
  index, cusip = tmx_quantumfeed_alphalevel1_xmt_v2_2.cusip.dissect(buffer, index, packet, parent)

  -- Board Lot: 2 Byte Unsigned Fixed Width Integer
  index, board_lot = tmx_quantumfeed_alphalevel1_xmt_v2_2.board_lot.dissect(buffer, index, packet, parent)

  -- Currency: 1 Byte Ascii String Enum with 2 values
  index, currency = tmx_quantumfeed_alphalevel1_xmt_v2_2.currency.dissect(buffer, index, packet, parent)

  -- Face Value: 8 Byte Unsigned Fixed Width Integer
  index, face_value = tmx_quantumfeed_alphalevel1_xmt_v2_2.face_value.dissect(buffer, index, packet, parent)

  -- Last Sale: 8 Byte Unsigned Fixed Width Integer
  index, last_sale = tmx_quantumfeed_alphalevel1_xmt_v2_2.last_sale.dissect(buffer, index, packet, parent)

  -- Min Po Qty: 4 Byte Unsigned Fixed Width Integer
  index, min_po_qty = tmx_quantumfeed_alphalevel1_xmt_v2_2.min_po_qty.dissect(buffer, index, packet, parent)

  -- Stock State: 2 Byte Ascii String Enum with 4 values
  index, stock_state = tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_state.dissect(buffer, index, packet, parent)

  -- Test Symbol: 1 Byte Ascii String Enum with 2 values
  index, test_symbol = tmx_quantumfeed_alphalevel1_xmt_v2_2.test_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol_status_message.dissect = function(buffer, offset, packet, parent)
  if show.symbol_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.symbol_status_message, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Business Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.business_message = {}

-- Size: Business Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.business_message.size = function(buffer, offset, msg_type)
  -- Size of Symbol Status Message
  if msg_type == "J" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol_status_message.size
  end
  -- Size of Trade Message
  if msg_type == "s" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_message.size
  end
  -- Size of Trade Cancelled Message
  if msg_type == "t" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_cancelled_message.size
  end
  -- Size of Stock Status Message
  if msg_type == "v" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_status_message.size
  end
  -- Size of Equity Quote Message
  if msg_type == "w" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.equity_quote_message.size
  end

  return 0
end

-- Display: Business Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.business_message.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Business Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.business_message.branches = function(buffer, offset, packet, parent, msg_type)
  -- Dissect Symbol Status Message
  if msg_type == "J" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.symbol_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if msg_type == "s" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancelled Message
  if msg_type == "t" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.trade_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stock Status Message
  if msg_type == "v" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.stock_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equity Quote Message
  if msg_type == "w" then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.equity_quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Business Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.business_message.dissect = function(buffer, offset, packet, parent, msg_type)
  if not show.business_message then
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.business_message.branches(buffer, offset, packet, parent, msg_type)
  end

  -- Calculate size and check that branch is not empty
  local size = tmx_quantumfeed_alphalevel1_xmt_v2_2.business_message.size(buffer, offset, msg_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.business_message.display(buffer, packet, parent)
  local element = parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.business_message, range, display)

  return tmx_quantumfeed_alphalevel1_xmt_v2_2.business_message.branches(buffer, offset, packet, parent, msg_type)
end

-- Sequence 1
tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_1 = {}

-- Size: Sequence 1
tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_1.size = 4

-- Display: Sequence 1
tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_1.display = function(value)
  return "Sequence 1: "..value
end

-- Dissect: Sequence 1
tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_1.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_1.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.sequence_1, range, value, display)

  return offset + length, value
end

-- Sequence 0
tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_0 = {}

-- Size: Sequence 0
tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_0.size = 1

-- Display: Sequence 0
tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_0.display = function(value)
  return "Sequence 0: "..value
end

-- Dissect: Sequence 0
tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_0.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_0.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_0.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.sequence_0, range, value, display)

  return offset + length, value
end

-- Stream Id
tmx_quantumfeed_alphalevel1_xmt_v2_2.stream_id = {}

-- Size: Stream Id
tmx_quantumfeed_alphalevel1_xmt_v2_2.stream_id.size = 2

-- Display: Stream Id
tmx_quantumfeed_alphalevel1_xmt_v2_2.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
tmx_quantumfeed_alphalevel1_xmt_v2_2.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.stream_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Source Id
tmx_quantumfeed_alphalevel1_xmt_v2_2.source_id = {}

-- Size: Source Id
tmx_quantumfeed_alphalevel1_xmt_v2_2.source_id.size = 1

-- Display: Source Id
tmx_quantumfeed_alphalevel1_xmt_v2_2.source_id.display = function(value)
  return "Source Id: "..value
end

-- Dissect: Source Id
tmx_quantumfeed_alphalevel1_xmt_v2_2.source_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.source_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.source_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.source_id, range, value, display)

  return offset + length, value
end

-- Msg Version
tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_version = {}

-- Size: Msg Version
tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_version.size = 1

-- Display: Msg Version
tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_version.display = function(value)
  return "Msg Version: "..value
end

-- Dissect: Msg Version
tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_version.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.msg_version, range, value, display)

  return offset + length, value
end

-- Business Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.business_header = {}

-- Size: Business Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.business_header.size =
  tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_version.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.source_id.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.stream_id.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_0.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_1.size

-- Display: Business Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.business_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Business Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.business_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Version: 1 Byte Unsigned Fixed Width Integer
  index, msg_version = tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_version.dissect(buffer, index, packet, parent)

  -- Source Id: 1 Byte Ascii String
  index, source_id = tmx_quantumfeed_alphalevel1_xmt_v2_2.source_id.dissect(buffer, index, packet, parent)

  -- Stream Id: 2 Byte Unsigned Fixed Width Integer
  index, stream_id = tmx_quantumfeed_alphalevel1_xmt_v2_2.stream_id.dissect(buffer, index, packet, parent)

  -- Sequence 0: 1 Byte Unsigned Fixed Width Integer
  index, sequence_0 = tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_0.dissect(buffer, index, packet, parent)

  -- Sequence 1: 4 Byte Unsigned Fixed Width Integer
  index, sequence_1 = tmx_quantumfeed_alphalevel1_xmt_v2_2.sequence_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Business Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.business_header.dissect = function(buffer, offset, packet, parent)
  if show.business_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.business_header, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2.business_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.business_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.business_header.fields(buffer, offset, packet, parent)
  end
end

-- Body Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.body_message = {}

-- Display: Body Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.body_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.body_message.fields = function(buffer, offset, packet, parent, size_of_body_message)
  local index = offset

  -- Business Header: Struct of 5 fields
  index, business_header = tmx_quantumfeed_alphalevel1_xmt_v2_2.business_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Type
  local msg_type = buffer(offset - 1, 1):string()

  -- Business Message: Runtime Type with 5 branches
  index = tmx_quantumfeed_alphalevel1_xmt_v2_2.business_message.dissect(buffer, index, packet, parent, msg_type)

  return index
end

-- Dissect: Body Message
tmx_quantumfeed_alphalevel1_xmt_v2_2.body_message.dissect = function(buffer, offset, packet, parent, size_of_body_message)
  local index = offset + size_of_body_message

  -- Optionally add group/struct element to protocol tree
  if show.body_message then
    parent = parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body_message, buffer(offset, 0))
    local current = tmx_quantumfeed_alphalevel1_xmt_v2_2.body_message.fields(buffer, offset, packet, parent, size_of_body_message)
    parent:set_len(size_of_body_message)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.body_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_quantumfeed_alphalevel1_xmt_v2_2.body_message.fields(buffer, offset, packet, parent, size_of_body_message)

    return index
  end
end

-- Msg Type
tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_type = {}

-- Size: Msg Type
tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_type.size = 1

-- Display: Msg Type
tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_type.display = function(value)
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
tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Msg Length
tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_length = {}

-- Size: Msg Length
tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_length.size = 2

-- Display: Msg Length
tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Body Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.body_header = {}

-- Size: Body Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.body_header.size =
  tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_length.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_type.size

-- Display: Body Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.body_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.body_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_length.dissect(buffer, index, packet, parent)

  -- Msg Type: 1 Byte Ascii String Enum with 5 values
  index, msg_type = tmx_quantumfeed_alphalevel1_xmt_v2_2.msg_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Body Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.body_header.dissect = function(buffer, offset, packet, parent)
  if show.body_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body_header, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2.body_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.body_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.body_header.fields(buffer, offset, packet, parent)
  end
end

-- Body
tmx_quantumfeed_alphalevel1_xmt_v2_2.body = {}

-- Display: Body
tmx_quantumfeed_alphalevel1_xmt_v2_2.body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Body
tmx_quantumfeed_alphalevel1_xmt_v2_2.body.fields = function(buffer, offset, packet, parent, size_of_body, body_index)
  local index = offset

  -- Implicit Body Index
  if body_index ~= nil then
    local iteration = parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body_index, body_index)
    iteration:set_generated()
  end

  -- Body Header: Struct of 2 fields
  index, body_header = tmx_quantumfeed_alphalevel1_xmt_v2_2.body_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Msg Length
  local msg_length = buffer(index - 3, 2):le_uint()

  -- Runtime Size Of: Body Message
  local size_of_body_message = msg_length - 3

  -- Body Message: Struct of 2 fields
  index, body_message = tmx_quantumfeed_alphalevel1_xmt_v2_2.body_message.dissect(buffer, index, packet, parent, size_of_body_message)

  return index
end

-- Dissect: Body
tmx_quantumfeed_alphalevel1_xmt_v2_2.body.dissect = function(buffer, offset, packet, parent, size_of_body, body_index)
  local index = offset + size_of_body

  -- Optionally add group/struct element to protocol tree
  if show.body then
    parent = parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.body, buffer(offset, 0))
    local current = tmx_quantumfeed_alphalevel1_xmt_v2_2.body.fields(buffer, offset, packet, parent, size_of_body, body_index)
    parent:set_len(size_of_body)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.body.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    tmx_quantumfeed_alphalevel1_xmt_v2_2.body.fields(buffer, offset, packet, parent, size_of_body, body_index)

    return index
  end
end

-- Num Body
tmx_quantumfeed_alphalevel1_xmt_v2_2.num_body = {}

-- Size: Num Body
tmx_quantumfeed_alphalevel1_xmt_v2_2.num_body.size = 1

-- Display: Num Body
tmx_quantumfeed_alphalevel1_xmt_v2_2.num_body.display = function(value)
  return "Num Body: "..value
end

-- Dissect: Num Body
tmx_quantumfeed_alphalevel1_xmt_v2_2.num_body.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.num_body.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.num_body.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.num_body, range, value, display)

  return offset + length, value
end

-- Ack Required Poss Dup
tmx_quantumfeed_alphalevel1_xmt_v2_2.ack_required_poss_dup = {}

-- Size: Ack Required Poss Dup
tmx_quantumfeed_alphalevel1_xmt_v2_2.ack_required_poss_dup.size = 1

-- Display: Ack Required Poss Dup
tmx_quantumfeed_alphalevel1_xmt_v2_2.ack_required_poss_dup.display = function(value)
  if value == "0" then
    return "Ack Required Poss Dup: Unused (0)"
  end

  return "Ack Required Poss Dup: Unknown("..value..")"
end

-- Dissect: Ack Required Poss Dup
tmx_quantumfeed_alphalevel1_xmt_v2_2.ack_required_poss_dup.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.ack_required_poss_dup.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.ack_required_poss_dup.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.ack_required_poss_dup, range, value, display)

  return offset + length, value
end

-- Session Id
tmx_quantumfeed_alphalevel1_xmt_v2_2.session_id = {}

-- Size: Session Id
tmx_quantumfeed_alphalevel1_xmt_v2_2.session_id.size = 4

-- Display: Session Id
tmx_quantumfeed_alphalevel1_xmt_v2_2.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
tmx_quantumfeed_alphalevel1_xmt_v2_2.session_id.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.session_id, range, value, display)

  return offset + length, value
end

-- Message Length
tmx_quantumfeed_alphalevel1_xmt_v2_2.message_length = {}

-- Size: Message Length
tmx_quantumfeed_alphalevel1_xmt_v2_2.message_length.size = 2

-- Display: Message Length
tmx_quantumfeed_alphalevel1_xmt_v2_2.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
tmx_quantumfeed_alphalevel1_xmt_v2_2.message_length.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.message_length, range, value, display)

  return offset + length, value
end

-- Protocol Version
tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_version = {}

-- Size: Protocol Version
tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_version.size = 1

-- Display: Protocol Version
tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_version.display = function(value)
  return "Protocol Version: "..value
end

-- Dissect: Protocol Version
tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_version.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_version.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_version.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.protocol_version, range, value, display)

  return offset + length, value
end

-- Protocol Name
tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_name = {}

-- Size: Protocol Name
tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_name.size = 1

-- Display: Protocol Name
tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_name.display = function(value)
  if value == "X" then
    return "Protocol Name: Xmt (X)"
  end

  return "Protocol Name: Unknown("..value..")"
end

-- Dissect: Protocol Name
tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_name.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_name.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.protocol_name, range, value, display)

  return offset + length, value
end

-- Start Of Frame
tmx_quantumfeed_alphalevel1_xmt_v2_2.start_of_frame = {}

-- Size: Start Of Frame
tmx_quantumfeed_alphalevel1_xmt_v2_2.start_of_frame.size = 1

-- Display: Start Of Frame
tmx_quantumfeed_alphalevel1_xmt_v2_2.start_of_frame.display = function(value)
  if value == 2 then
    return "Start Of Frame: New Frame (2)"
  end

  return "Start Of Frame: Unknown("..value..")"
end

-- Dissect: Start Of Frame
tmx_quantumfeed_alphalevel1_xmt_v2_2.start_of_frame.dissect = function(buffer, offset, packet, parent)
  local length = tmx_quantumfeed_alphalevel1_xmt_v2_2.start_of_frame.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.start_of_frame.display(value, buffer, offset, packet, parent)

  parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.start_of_frame, range, value, display)

  return offset + length, value
end

-- Frame Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.frame_header = {}

-- Size: Frame Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.frame_header.size =
  tmx_quantumfeed_alphalevel1_xmt_v2_2.start_of_frame.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_name.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_version.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.message_length.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.session_id.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.ack_required_poss_dup.size + 
  tmx_quantumfeed_alphalevel1_xmt_v2_2.num_body.size

-- Display: Frame Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.frame_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Frame Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.frame_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Frame: 1 Byte Fixed Width Integer Enum with 1 values
  index, start_of_frame = tmx_quantumfeed_alphalevel1_xmt_v2_2.start_of_frame.dissect(buffer, index, packet, parent)

  -- Protocol Name: 1 Byte Ascii String Enum with 1 values
  index, protocol_name = tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_name.dissect(buffer, index, packet, parent)

  -- Protocol Version: 1 Byte Ascii String
  index, protocol_version = tmx_quantumfeed_alphalevel1_xmt_v2_2.protocol_version.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = tmx_quantumfeed_alphalevel1_xmt_v2_2.message_length.dissect(buffer, index, packet, parent)

  -- Session Id: 4 Byte Unsigned Fixed Width Integer
  index, session_id = tmx_quantumfeed_alphalevel1_xmt_v2_2.session_id.dissect(buffer, index, packet, parent)

  -- Ack Required Poss Dup: 1 Byte Ascii String Enum with 1 values
  index, ack_required_poss_dup = tmx_quantumfeed_alphalevel1_xmt_v2_2.ack_required_poss_dup.dissect(buffer, index, packet, parent)

  -- Num Body: 1 Byte Unsigned Fixed Width Integer
  index, num_body = tmx_quantumfeed_alphalevel1_xmt_v2_2.num_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Frame Header
tmx_quantumfeed_alphalevel1_xmt_v2_2.frame_header.dissect = function(buffer, offset, packet, parent)
  if show.frame_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.fields.frame_header, buffer(offset, 0))
    local index = tmx_quantumfeed_alphalevel1_xmt_v2_2.frame_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = tmx_quantumfeed_alphalevel1_xmt_v2_2.frame_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return tmx_quantumfeed_alphalevel1_xmt_v2_2.frame_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
tmx_quantumfeed_alphalevel1_xmt_v2_2.packet = {}

-- Dissect Packet
tmx_quantumfeed_alphalevel1_xmt_v2_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Frame Header: Struct of 7 fields
    index, frame_header = tmx_quantumfeed_alphalevel1_xmt_v2_2.frame_header.dissect(buffer, index, packet, parent)

    -- Dependency element: Num Body
    local num_body = buffer(index - 1, 1):uint()

    -- Repeating: Body
    for body_index = 1, num_body do

      -- Dependency element: Msg Length
      local msg_length = buffer(index, 2):le_uint()

      -- Runtime Size Of: Body
      index, body = tmx_quantumfeed_alphalevel1_xmt_v2_2.body.dissect(buffer, index, packet, parent, msg_length)
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.init()
end

-- Dissector for Tmx QuantumFeed AlphaLevel1 Xmt 2.2
function omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_tmx_quantumfeed_alphalevel1_xmt_v2_2, buffer(), omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.description, "("..buffer:len().." Bytes)")
  return tmx_quantumfeed_alphalevel1_xmt_v2_2.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_tmx_quantumfeed_alphalevel1_xmt_v2_2)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
tmx_quantumfeed_alphalevel1_xmt_v2_2.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Tmx QuantumFeed AlphaLevel1 Xmt 2.2
local function omi_tmx_quantumfeed_alphalevel1_xmt_v2_2_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not tmx_quantumfeed_alphalevel1_xmt_v2_2.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_tmx_quantumfeed_alphalevel1_xmt_v2_2
  omi_tmx_quantumfeed_alphalevel1_xmt_v2_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx QuantumFeed AlphaLevel1 Xmt 2.2
omi_tmx_quantumfeed_alphalevel1_xmt_v2_2:register_heuristic("udp", omi_tmx_quantumfeed_alphalevel1_xmt_v2_2_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
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
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
