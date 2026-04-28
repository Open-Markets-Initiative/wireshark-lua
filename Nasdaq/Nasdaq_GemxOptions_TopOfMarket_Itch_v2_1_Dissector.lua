-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq GemxOptions TopOfMarket Itch 2.1 Protocol
local omi_nasdaq_gemxoptions_topofmarket_itch_v2_1 = Proto("Nasdaq.GemxOptions.TopOfMarket.Itch.v2.1.Lua", "Nasdaq GemxOptions TopOfMarket Itch 2.1")

-- Protocol table
local nasdaq_gemxoptions_topofmarket_itch_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq GemxOptions TopOfMarket Itch 2.1 Fields
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_cust_size_long = ProtoField.new("Ask Cust Size Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.askcustsizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_cust_size_short = ProtoField.new("Ask Cust Size Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.askcustsizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_market_order_size_long = ProtoField.new("Ask Market Order Size Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.askmarketordersizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_market_order_size_short = ProtoField.new("Ask Market Order Size Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.askmarketordersizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_price_long = ProtoField.new("Ask Price Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.askpricelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_price_short = ProtoField.new("Ask Price Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.askpriceshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_procust_size_long = ProtoField.new("Ask ProCust Size Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.askprocustsizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_procust_size_short = ProtoField.new("Ask ProCust Size Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.askprocustsizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_size_long = ProtoField.new("Ask Size Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.asksizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_size_short = ProtoField.new("Ask Size Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.asksizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_cust_size_long = ProtoField.new("Bid Cust Size Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bidcustsizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_cust_size_short = ProtoField.new("Bid Cust Size Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bidcustsizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_market_order_size_long = ProtoField.new("Bid Market Order Size Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bidmarketordersizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_market_order_size_short = ProtoField.new("Bid Market Order Size Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bidmarketordersizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_price_long = ProtoField.new("Bid Price Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bidpricelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_price_short = ProtoField.new("Bid Price Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bidpriceshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_procust_size_long = ProtoField.new("Bid ProCust Size Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bidprocustsizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_procust_size_short = ProtoField.new("Bid ProCust Size Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bidprocustsizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_size_long = ProtoField.new("Bid Size Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bidsizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_size_short = ProtoField.new("Bid Size Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bidsizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.closing_type = ProtoField.new("Closing Type", "nasdaq.gemxoptions.topofmarket.itch.v2.1.closingtype", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.gemxoptions.topofmarket.itch.v2.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.cust_size_long = ProtoField.new("Cust Size Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.custsizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.cust_size_short = ProtoField.new("Cust Size Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.custsizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.gemxoptions.topofmarket.itch.v2.1.eventcode", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.gemxoptions.topofmarket.itch.v2.1.expirationday", ftypes.UINT8)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.gemxoptions.topofmarket.itch.v2.1.expirationmonth", ftypes.UINT8)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.gemxoptions.topofmarket.itch.v2.1.expirationyear", ftypes.UINT8)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.gemxoptions.topofmarket.itch.v2.1.explicitstrikeprice", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.instrument_id = ProtoField.new("Instrument Id", "nasdaq.gemxoptions.topofmarket.itch.v2.1.instrumentid", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.market_order_size_long = ProtoField.new("Market Order Size Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.marketordersizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.market_order_size_short = ProtoField.new("Market Order Size Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.marketordersizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.message = ProtoField.new("Message", "nasdaq.gemxoptions.topofmarket.itch.v2.1.message", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.gemxoptions.topofmarket.itch.v2.1.messagecount", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.gemxoptions.topofmarket.itch.v2.1.messageheader", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.gemxoptions.topofmarket.itch.v2.1.messagelength", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.gemxoptions.topofmarket.itch.v2.1.messagetype", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.mpv = ProtoField.new("Mpv", "nasdaq.gemxoptions.topofmarket.itch.v2.1.mpv", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.gemxoptions.topofmarket.itch.v2.1.optiontype", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.packet = ProtoField.new("Packet", "nasdaq.gemxoptions.topofmarket.itch.v2.1.packet", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.gemxoptions.topofmarket.itch.v2.1.packetheader", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.price_long = ProtoField.new("Price Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.pricelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.price_short = ProtoField.new("Price Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.priceshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.procust_size_long = ProtoField.new("ProCust Size Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.procustsizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.procust_size_short = ProtoField.new("ProCust Size Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.procustsizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.quote_condition = ProtoField.new("Quote Condition", "nasdaq.gemxoptions.topofmarket.itch.v2.1.quotecondition", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.reserved_16 = ProtoField.new("Reserved 16", "nasdaq.gemxoptions.topofmarket.itch.v2.1.reserved16", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.gemxoptions.topofmarket.itch.v2.1.securitysymbol", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.gemxoptions.topofmarket.itch.v2.1.sequencenumber", ftypes.UINT64)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.session = ProtoField.new("Session", "nasdaq.gemxoptions.topofmarket.itch.v2.1.session", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.size_long = ProtoField.new("Size Long", "nasdaq.gemxoptions.topofmarket.itch.v2.1.sizelong", ftypes.UINT32)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.size_short = ProtoField.new("Size Short", "nasdaq.gemxoptions.topofmarket.itch.v2.1.sizeshort", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.gemxoptions.topofmarket.itch.v2.1.timestamp", ftypes.UINT64)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.gemxoptions.topofmarket.itch.v2.1.trackingnumber", ftypes.UINT16)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.tradable = ProtoField.new("Tradable", "nasdaq.gemxoptions.topofmarket.itch.v2.1.tradable", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.gemxoptions.topofmarket.itch.v2.1.underlyingsymbol", ftypes.STRING)

-- Nasdaq GemxOptions Itch TopOfMarket 2.1 Application Messages
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.best_ask_update_long_form_message = ProtoField.new("Best Ask Update Long Form Message", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bestaskupdatelongformmessage", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.best_ask_update_short_form_message = ProtoField.new("Best Ask Update Short Form Message", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bestaskupdateshortformmessage", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.best_bid_and_ask_update_long_form_message = ProtoField.new("Best Bid And Ask Update Long Form Message", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bestbidandaskupdatelongformmessage", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.best_bid_and_ask_update_short_form_message = ProtoField.new("Best Bid And Ask Update Short Form Message", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bestbidandaskupdateshortformmessage", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.best_bid_update_long_form_message = ProtoField.new("Best Bid Update Long Form Message", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bestbidupdatelongformmessage", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.best_bid_update_short_form_message = ProtoField.new("Best Bid Update Short Form Message", "nasdaq.gemxoptions.topofmarket.itch.v2.1.bestbidupdateshortformmessage", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.derivative_directory_message = ProtoField.new("Derivative Directory Message", "nasdaq.gemxoptions.topofmarket.itch.v2.1.derivativedirectorymessage", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.gemxoptions.topofmarket.itch.v2.1.systemeventmessage", ftypes.STRING)
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.gemxoptions.topofmarket.itch.v2.1.tradingactionmessage", ftypes.STRING)

-- Nasdaq GemxOptions TopOfMarket Itch 2.1 generated fields
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.gemxoptions.topofmarket.itch.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq GemxOptions TopOfMarket Itch 2.1 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Nasdaq GemxOptions TopOfMarket Itch 2.1 Show Options
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_application_messages
  end
  if show.message ~= omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_message then
    show.message = omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_message_header then
    show.message_header = omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_message_header
  end
  if show.packet ~= omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_packet then
    show.packet = omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_packet_header
  end
  if show.message_index ~= omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_message_index then
    show.message_index = omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.prefs.show_message_index
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
-- Nasdaq GemxOptions TopOfMarket Itch 2.1 Fields
-----------------------------------------------------------------------

-- Ask Cust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_long = {}

-- Size: Ask Cust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_long.size = 4

-- Display: Ask Cust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_long.display = function(value)
  return "Ask Cust Size Long: "..value
end

-- Dissect: Ask Cust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_cust_size_long, range, value, display)

  return offset + length, value
end

-- Ask Cust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_short = {}

-- Size: Ask Cust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_short.size = 2

-- Display: Ask Cust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_short.display = function(value)
  return "Ask Cust Size Short: "..value
end

-- Dissect: Ask Cust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_cust_size_short, range, value, display)

  return offset + length, value
end

-- Ask Market Order Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_long = {}

-- Size: Ask Market Order Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.size = 4

-- Display: Ask Market Order Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.display = function(value)
  return "Ask Market Order Size Long: "..value
end

-- Dissect: Ask Market Order Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_market_order_size_long, range, value, display)

  return offset + length, value
end

-- Ask Market Order Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_short = {}

-- Size: Ask Market Order Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.size = 2

-- Display: Ask Market Order Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.display = function(value)
  return "Ask Market Order Size Short: "..value
end

-- Dissect: Ask Market Order Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_market_order_size_short, range, value, display)

  return offset + length, value
end

-- Ask Price Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_long = {}

-- Size: Ask Price Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_long.size = 4

-- Display: Ask Price Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Dissect: Ask Price Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_short = {}

-- Size: Ask Price Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_short.size = 2

-- Display: Ask Price Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Dissect: Ask Price Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask ProCust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_long = {}

-- Size: Ask ProCust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_long.size = 4

-- Display: Ask ProCust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_long.display = function(value)
  return "Ask ProCust Size Long: "..value
end

-- Dissect: Ask ProCust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_procust_size_long, range, value, display)

  return offset + length, value
end

-- Ask ProCust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_short = {}

-- Size: Ask ProCust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_short.size = 2

-- Display: Ask ProCust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_short.display = function(value)
  return "Ask ProCust Size Short: "..value
end

-- Dissect: Ask ProCust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_procust_size_short, range, value, display)

  return offset + length, value
end

-- Ask Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_long = {}

-- Size: Ask Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_long.size = 4

-- Display: Ask Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_long.display = function(value)
  return "Ask Size Long: "..value
end

-- Dissect: Ask Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_size_long, range, value, display)

  return offset + length, value
end

-- Ask Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_short = {}

-- Size: Ask Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_short.size = 2

-- Display: Ask Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_short.display = function(value)
  return "Ask Size Short: "..value
end

-- Dissect: Ask Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.ask_size_short, range, value, display)

  return offset + length, value
end

-- Bid Cust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_long = {}

-- Size: Bid Cust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_long.size = 4

-- Display: Bid Cust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_long.display = function(value)
  return "Bid Cust Size Long: "..value
end

-- Dissect: Bid Cust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_cust_size_long, range, value, display)

  return offset + length, value
end

-- Bid Cust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_short = {}

-- Size: Bid Cust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_short.size = 2

-- Display: Bid Cust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_short.display = function(value)
  return "Bid Cust Size Short: "..value
end

-- Dissect: Bid Cust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_cust_size_short, range, value, display)

  return offset + length, value
end

-- Bid Market Order Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_long = {}

-- Size: Bid Market Order Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.size = 4

-- Display: Bid Market Order Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.display = function(value)
  return "Bid Market Order Size Long: "..value
end

-- Dissect: Bid Market Order Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_market_order_size_long, range, value, display)

  return offset + length, value
end

-- Bid Market Order Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_short = {}

-- Size: Bid Market Order Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.size = 2

-- Display: Bid Market Order Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.display = function(value)
  return "Bid Market Order Size Short: "..value
end

-- Dissect: Bid Market Order Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_market_order_size_short, range, value, display)

  return offset + length, value
end

-- Bid Price Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_long = {}

-- Size: Bid Price Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_long.size = 4

-- Display: Bid Price Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Dissect: Bid Price Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_short = {}

-- Size: Bid Price Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_short.size = 2

-- Display: Bid Price Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Dissect: Bid Price Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid ProCust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_long = {}

-- Size: Bid ProCust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_long.size = 4

-- Display: Bid ProCust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_long.display = function(value)
  return "Bid ProCust Size Long: "..value
end

-- Dissect: Bid ProCust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_procust_size_long, range, value, display)

  return offset + length, value
end

-- Bid ProCust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_short = {}

-- Size: Bid ProCust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_short.size = 2

-- Display: Bid ProCust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_short.display = function(value)
  return "Bid ProCust Size Short: "..value
end

-- Dissect: Bid ProCust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_procust_size_short, range, value, display)

  return offset + length, value
end

-- Bid Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_long = {}

-- Size: Bid Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_long.size = 4

-- Display: Bid Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_long.display = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Bid Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_short = {}

-- Size: Bid Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_short.size = 2

-- Display: Bid Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Closing Type
nasdaq_gemxoptions_topofmarket_itch_v2_1.closing_type = {}

-- Size: Closing Type
nasdaq_gemxoptions_topofmarket_itch_v2_1.closing_type.size = 1

-- Display: Closing Type
nasdaq_gemxoptions_topofmarket_itch_v2_1.closing_type.display = function(value)
  if value == "N" then
    return "Closing Type: Normal Hours (N)"
  end
  if value == "L" then
    return "Closing Type: Late Hours (L)"
  end
  if value == "W" then
    return "Closing Type: Wco Early Closing (W)"
  end

  return "Closing Type: Unknown("..value..")"
end

-- Dissect: Closing Type
nasdaq_gemxoptions_topofmarket_itch_v2_1.closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.closing_type, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_gemxoptions_topofmarket_itch_v2_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_gemxoptions_topofmarket_itch_v2_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_gemxoptions_topofmarket_itch_v2_1.current_trading_state.display = function(value)
  if value == "B" then
    return "Current Trading State: Buy Side Suspended (B)"
  end
  if value == "S" then
    return "Current Trading State: Sell Side Suspended (S)"
  end
  if value == "H" then
    return "Current Trading State: Halt In Effect (H)"
  end
  if value == "T" then
    return "Current Trading State: Continuous Trading (T)"
  end
  if value == "I" then
    return "Current Trading State: Pre Open (I)"
  end
  if value == "O" then
    return "Current Trading State: Opening Auction (O)"
  end
  if value == "R" then
    return "Current Trading State: Re Opening (R)"
  end
  if value == "X" then
    return "Current Trading State: Closed (X)"
  end

  return "Current Trading State: Unknown("..value..")"
end

-- Dissect: Current Trading State
nasdaq_gemxoptions_topofmarket_itch_v2_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Cust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_long = {}

-- Size: Cust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_long.size = 4

-- Display: Cust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_long.display = function(value)
  return "Cust Size Long: "..value
end

-- Dissect: Cust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.cust_size_long, range, value, display)

  return offset + length, value
end

-- Cust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_short = {}

-- Size: Cust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_short.size = 2

-- Display: Cust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_short.display = function(value)
  return "Cust Size Short: "..value
end

-- Dissect: Cust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.cust_size_short, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_gemxoptions_topofmarket_itch_v2_1.event_code = {}

-- Size: Event Code
nasdaq_gemxoptions_topofmarket_itch_v2_1.event_code.size = 1

-- Display: Event Code
nasdaq_gemxoptions_topofmarket_itch_v2_1.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "S" then
    return "Event Code: Start Of System Hours (S)"
  end
  if value == "Q" then
    return "Event Code: Start Of Opening Process (Q)"
  end
  if value == "N" then
    return "Event Code: Start Of Normal Hours Closing Process (N)"
  end
  if value == "L" then
    return "Event Code: Start Of Late Hours Closing Process (L)"
  end
  if value == "E" then
    return "Event Code: End Of System Hours (E)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end
  if value == "W" then
    return "Event Code: End Of Wco Early Closing (W)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
nasdaq_gemxoptions_topofmarket_itch_v2_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_day = {}

-- Size: Expiration Day
nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_month = {}

-- Size: Expiration Month
nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_year = {}

-- Size: Expiration Year
nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_gemxoptions_topofmarket_itch_v2_1.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_gemxoptions_topofmarket_itch_v2_1.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_gemxoptions_topofmarket_itch_v2_1.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
nasdaq_gemxoptions_topofmarket_itch_v2_1.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.explicit_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Instrument Id
nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id = {}

-- Size: Instrument Id
nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.size = 4

-- Display: Instrument Id
nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Market Order Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_long = {}

-- Size: Market Order Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_long.size = 4

-- Display: Market Order Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_long.display = function(value)
  return "Market Order Size Long: "..value
end

-- Dissect: Market Order Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.market_order_size_long, range, value, display)

  return offset + length, value
end

-- Market Order Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_short = {}

-- Size: Market Order Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_short.size = 2

-- Display: Market Order Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_short.display = function(value)
  return "Market Order Size Short: "..value
end

-- Dissect: Market Order Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.market_order_size_short, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_count = {}

-- Size: Message Count
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_count.size = 2

-- Display: Message Count
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_length = {}

-- Size: Message Length
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_length.size = 2

-- Display: Message Length
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_type = {}

-- Size: Message Type
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_type.size = 1

-- Display: Message Type
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "m" then
    return "Message Type: Derivative Directory Message (m)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "q" then
    return "Message Type: Best Bid And Ask Update Short Form Message (q)"
  end
  if value == "Q" then
    return "Message Type: Best Bid And Ask Update Long Form Message (Q)"
  end
  if value == "b" then
    return "Message Type: Best Bid Update Short Form Message (b)"
  end
  if value == "a" then
    return "Message Type: Best Ask Update Short Form Message (a)"
  end
  if value == "B" then
    return "Message Type: Best Bid Update Long Form Message (B)"
  end
  if value == "A" then
    return "Message Type: Best Ask Update Long Form Message (A)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_gemxoptions_topofmarket_itch_v2_1.mpv = {}

-- Size: Mpv
nasdaq_gemxoptions_topofmarket_itch_v2_1.mpv.size = 1

-- Display: Mpv
nasdaq_gemxoptions_topofmarket_itch_v2_1.mpv.display = function(value)
  if value == "E" then
    return "Mpv: Penny Everywhere (E)"
  end
  if value == "S" then
    return "Mpv: Scaled (S)"
  end
  if value == "P" then
    return "Mpv: Penny Pilot (P)"
  end

  return "Mpv: Unknown("..value..")"
end

-- Dissect: Mpv
nasdaq_gemxoptions_topofmarket_itch_v2_1.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.mpv, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_gemxoptions_topofmarket_itch_v2_1.option_type = {}

-- Size: Option Type
nasdaq_gemxoptions_topofmarket_itch_v2_1.option_type.size = 1

-- Display: Option Type
nasdaq_gemxoptions_topofmarket_itch_v2_1.option_type.display = function(value)
  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end
  if value == "N" then
    return "Option Type: Not Applicable (N)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
nasdaq_gemxoptions_topofmarket_itch_v2_1.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Price Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.price_long = {}

-- Size: Price Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.price_long.size = 4

-- Display: Price Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.price_long.display = function(value)
  return "Price Long: "..value
end

-- Dissect: Price Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.price_short = {}

-- Size: Price Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.price_short.size = 2

-- Display: Price Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.price_short.display = function(value)
  return "Price Short: "..value
end

-- Dissect: Price Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.price_short, range, value, display)

  return offset + length, value
end

-- ProCust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_long = {}

-- Size: ProCust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_long.size = 4

-- Display: ProCust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_long.display = function(value)
  return "ProCust Size Long: "..value
end

-- Dissect: ProCust Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.procust_size_long, range, value, display)

  return offset + length, value
end

-- ProCust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_short = {}

-- Size: ProCust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_short.size = 2

-- Display: ProCust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_short.display = function(value)
  return "ProCust Size Short: "..value
end

-- Dissect: ProCust Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.procust_size_short, range, value, display)

  return offset + length, value
end

-- Quote Condition
nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition = {}

-- Size: Quote Condition
nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.size = 1

-- Display: Quote Condition
nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.display = function(value)
  if value == "" then
    return "Quote Condition: Regular Quote Autox Eligible (<whitespace>)"
  end
  if value == "X" then
    return "Quote Condition: Ask Side Not Firm Bid Side Firm (X)"
  end
  if value == "Y" then
    return "Quote Condition: Bid Side Not Firm Ask Side Firm (Y)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Reserved 16
nasdaq_gemxoptions_topofmarket_itch_v2_1.reserved_16 = {}

-- Size: Reserved 16
nasdaq_gemxoptions_topofmarket_itch_v2_1.reserved_16.size = 16

-- Display: Reserved 16
nasdaq_gemxoptions_topofmarket_itch_v2_1.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nasdaq_gemxoptions_topofmarket_itch_v2_1.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.reserved_16.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_gemxoptions_topofmarket_itch_v2_1.security_symbol = {}

-- Size: Security Symbol
nasdaq_gemxoptions_topofmarket_itch_v2_1.security_symbol.size = 8

-- Display: Security Symbol
nasdaq_gemxoptions_topofmarket_itch_v2_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_gemxoptions_topofmarket_itch_v2_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_gemxoptions_topofmarket_itch_v2_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_gemxoptions_topofmarket_itch_v2_1.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_gemxoptions_topofmarket_itch_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_gemxoptions_topofmarket_itch_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_gemxoptions_topofmarket_itch_v2_1.session = {}

-- Size: Session
nasdaq_gemxoptions_topofmarket_itch_v2_1.session.size = 10

-- Display: Session
nasdaq_gemxoptions_topofmarket_itch_v2_1.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_gemxoptions_topofmarket_itch_v2_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.session.size
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

  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.size_long = {}

-- Size: Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.size_long.size = 4

-- Display: Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.size_long.display = function(value)
  return "Size Long: "..value
end

-- Dissect: Size Long
nasdaq_gemxoptions_topofmarket_itch_v2_1.size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.size_long, range, value, display)

  return offset + length, value
end

-- Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.size_short = {}

-- Size: Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.size_short.size = 2

-- Display: Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.size_short.display = function(value)
  return "Size Short: "..value
end

-- Dissect: Size Short
nasdaq_gemxoptions_topofmarket_itch_v2_1.size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.size_short, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp = {}

-- Size: Timestamp
nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.size = 8

-- Display: Timestamp
nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_gemxoptions_topofmarket_itch_v2_1.tradable = {}

-- Size: Tradable
nasdaq_gemxoptions_topofmarket_itch_v2_1.tradable.size = 1

-- Display: Tradable
nasdaq_gemxoptions_topofmarket_itch_v2_1.tradable.display = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_gemxoptions_topofmarket_itch_v2_1.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.tradable, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_gemxoptions_topofmarket_itch_v2_1.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_gemxoptions_topofmarket_itch_v2_1.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_gemxoptions_topofmarket_itch_v2_1.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_gemxoptions_topofmarket_itch_v2_1.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_gemxoptions_topofmarket_itch_v2_1.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq GemxOptions TopOfMarket Itch 2.1
-----------------------------------------------------------------------

-- Best Ask Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message = {}

-- Size: Best Ask Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.size =
  nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.price_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.size_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_long.size

-- Display: Best Ask Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Ask Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Market Order Size Long: Integer
  index, market_order_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_long.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Size Long: Integer
  index, size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.size_long.dissect(buffer, index, packet, parent)

  -- Cust Size Long: Integer
  index, cust_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_long.dissect(buffer, index, packet, parent)

  -- ProCust Size Long: Integer
  index, procust_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Ask Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.best_ask_update_long_form_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message = {}

-- Size: Best Bid Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.size =
  nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.price_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.size_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_long.size

-- Display: Best Bid Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Market Order Size Long: Integer
  index, market_order_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_long.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Size Long: Integer
  index, size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.size_long.dissect(buffer, index, packet, parent)

  -- Cust Size Long: Integer
  index, cust_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_long.dissect(buffer, index, packet, parent)

  -- ProCust Size Long: Integer
  index, procust_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.best_bid_update_long_form_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Ask Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message = {}

-- Size: Best Ask Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.size =
  nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.price_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.size_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_short.size

-- Display: Best Ask Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Ask Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Market Order Size Short: Integer
  index, market_order_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_short.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.price_short.dissect(buffer, index, packet, parent)

  -- Size Short: Integer
  index, size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.size_short.dissect(buffer, index, packet, parent)

  -- Cust Size Short: Integer
  index, cust_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_short.dissect(buffer, index, packet, parent)

  -- ProCust Size Short: Integer
  index, procust_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Ask Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.best_ask_update_short_form_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message = {}

-- Size: Best Bid Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.size =
  nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.price_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.size_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_short.size

-- Display: Best Bid Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Market Order Size Short: Integer
  index, market_order_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.market_order_size_short.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.price_short.dissect(buffer, index, packet, parent)

  -- Size Short: Integer
  index, size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.size_short.dissect(buffer, index, packet, parent)

  -- Cust Size Short: Integer
  index, cust_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.cust_size_short.dissect(buffer, index, packet, parent)

  -- ProCust Size Short: Integer
  index, procust_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.procust_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.best_bid_update_short_form_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid And Ask Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message = {}

-- Size: Best Bid And Ask Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.size =
  nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_long.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_long.size

-- Display: Best Bid And Ask Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid And Ask Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Market Order Size Long: Integer
  index, bid_market_order_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_long.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Integer
  index, bid_price_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: Integer
  index, bid_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_long.dissect(buffer, index, packet, parent)

  -- Bid Cust Size Long: Integer
  index, bid_cust_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_long.dissect(buffer, index, packet, parent)

  -- Bid ProCust Size Long: Integer
  index, bid_procust_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_long.dissect(buffer, index, packet, parent)

  -- Ask Market Order Size Long: Integer
  index, ask_market_order_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Integer
  index, ask_price_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Size Long: Integer
  index, ask_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_long.dissect(buffer, index, packet, parent)

  -- Ask Cust Size Long: Integer
  index, ask_cust_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_long.dissect(buffer, index, packet, parent)

  -- Ask ProCust Size Long: Integer
  index, ask_procust_size_long = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Ask Update Long Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.best_bid_and_ask_update_long_form_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid And Ask Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message = {}

-- Size: Best Bid And Ask Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.size =
  nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_short.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_short.size

-- Display: Best Bid And Ask Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid And Ask Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Quote Condition: Alpha
  index, quote_condition = nasdaq_gemxoptions_topofmarket_itch_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Market Order Size Short: Integer
  index, bid_market_order_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_market_order_size_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Integer
  index, bid_price_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: Integer
  index, bid_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_size_short.dissect(buffer, index, packet, parent)

  -- Bid Cust Size Short: Integer
  index, bid_cust_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_cust_size_short.dissect(buffer, index, packet, parent)

  -- Bid ProCust Size Short: Integer
  index, bid_procust_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.bid_procust_size_short.dissect(buffer, index, packet, parent)

  -- Ask Market Order Size Short: Integer
  index, ask_market_order_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_market_order_size_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Integer
  index, ask_price_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Short: Integer
  index, ask_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_size_short.dissect(buffer, index, packet, parent)

  -- Ask Cust Size Short: Integer
  index, ask_cust_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_cust_size_short.dissect(buffer, index, packet, parent)

  -- Ask ProCust Size Short: Integer
  index, ask_procust_size_short = nasdaq_gemxoptions_topofmarket_itch_v2_1.ask_procust_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Ask Update Short Form Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.best_bid_and_ask_update_short_form_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.trading_action_message.size =
  nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.current_trading_state.size

-- Display: Trading Action Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_gemxoptions_topofmarket_itch_v2_1.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_topofmarket_itch_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivative Directory Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.derivative_directory_message = {}

-- Size: Derivative Directory Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.derivative_directory_message.size =
  nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.security_symbol.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_year.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_month.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_day.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.explicit_strike_price.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.option_type.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.underlying_symbol.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.closing_type.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.tradable.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.mpv.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.reserved_16.size

-- Display: Derivative Directory Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.derivative_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivative Directory Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.derivative_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_gemxoptions_topofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_gemxoptions_topofmarket_itch_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: Integer
  index, expiration_day = nasdaq_gemxoptions_topofmarket_itch_v2_1.expiration_day.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_gemxoptions_topofmarket_itch_v2_1.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_gemxoptions_topofmarket_itch_v2_1.option_type.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alpha
  index, underlying_symbol = nasdaq_gemxoptions_topofmarket_itch_v2_1.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Closing Type: Alpha
  index, closing_type = nasdaq_gemxoptions_topofmarket_itch_v2_1.closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_gemxoptions_topofmarket_itch_v2_1.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_gemxoptions_topofmarket_itch_v2_1.mpv.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_gemxoptions_topofmarket_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivative Directory Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.derivative_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.derivative_directory_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_topofmarket_itch_v2_1.derivative_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.derivative_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.derivative_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.system_event_message = {}

-- Size: System Event Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.system_event_message.size =
  nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.event_code.size

-- Display: System Event Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_gemxoptions_topofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_gemxoptions_topofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_gemxoptions_topofmarket_itch_v2_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_gemxoptions_topofmarket_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_gemxoptions_topofmarket_itch_v2_1.payload = {}

-- Dissect: Payload
nasdaq_gemxoptions_topofmarket_itch_v2_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivative Directory Message
  if message_type == "m" then
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.derivative_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid And Ask Update Short Form Message
  if message_type == "q" then
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid And Ask Update Long Form Message
  if message_type == "Q" then
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_and_ask_update_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Update Short Form Message
  if message_type == "b" then
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Ask Update Short Form Message
  if message_type == "a" then
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Update Long Form Message
  if message_type == "B" then
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.best_bid_update_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Ask Update Long Form Message
  if message_type == "A" then
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.best_ask_update_long_form_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_header = {}

-- Size: Message Header
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_header.size =
  nasdaq_gemxoptions_topofmarket_itch_v2_1.message_length.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.message_type.size

-- Display: Message Header
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_gemxoptions_topofmarket_itch_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 9 values
  index, message_type = nasdaq_gemxoptions_topofmarket_itch_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_gemxoptions_topofmarket_itch_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_gemxoptions_topofmarket_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.message = {}

-- Read runtime size of: Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_gemxoptions_topofmarket_itch_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 9 branches
  index = nasdaq_gemxoptions_topofmarket_itch_v2_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_gemxoptions_topofmarket_itch_v2_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_gemxoptions_topofmarket_itch_v2_1.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.message, buffer(offset, 0))
    local current = nasdaq_gemxoptions_topofmarket_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_gemxoptions_topofmarket_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
nasdaq_gemxoptions_topofmarket_itch_v2_1.messages = {}

-- Dissect: Messages
nasdaq_gemxoptions_topofmarket_itch_v2_1.messages.dissect = function(buffer, offset, packet, parent, message_count)
  -- Dissect Heartbeat
  if message_count == 0 then
    return offset
  end
  -- Dissect End Of Session
  if message_count == 65535 then
    return offset
  end
  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(offset, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    offset = nasdaq_gemxoptions_topofmarket_itch_v2_1.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_gemxoptions_topofmarket_itch_v2_1.packet_header = {}

-- Size: Packet Header
nasdaq_gemxoptions_topofmarket_itch_v2_1.packet_header.size =
  nasdaq_gemxoptions_topofmarket_itch_v2_1.session.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.sequence_number.size + 
  nasdaq_gemxoptions_topofmarket_itch_v2_1.message_count.size

-- Display: Packet Header
nasdaq_gemxoptions_topofmarket_itch_v2_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_gemxoptions_topofmarket_itch_v2_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_gemxoptions_topofmarket_itch_v2_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_gemxoptions_topofmarket_itch_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_gemxoptions_topofmarket_itch_v2_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_gemxoptions_topofmarket_itch_v2_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_gemxoptions_topofmarket_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_gemxoptions_topofmarket_itch_v2_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_gemxoptions_topofmarket_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_gemxoptions_topofmarket_itch_v2_1.packet = {}

-- Verify required size of Udp packet
nasdaq_gemxoptions_topofmarket_itch_v2_1.packet.requiredsize = function(buffer)
  return buffer:len() >= nasdaq_gemxoptions_topofmarket_itch_v2_1.packet_header.size
end

-- Dissect Packet
nasdaq_gemxoptions_topofmarket_itch_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_gemxoptions_topofmarket_itch_v2_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_gemxoptions_topofmarket_itch_v2_1.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.init()
end

-- Dissector for Nasdaq GemxOptions TopOfMarket Itch 2.1
function omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_gemxoptions_topofmarket_itch_v2_1, buffer(), omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_gemxoptions_topofmarket_itch_v2_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq GemxOptions TopOfMarket Itch 2.1 (Udp)
local function omi_nasdaq_gemxoptions_topofmarket_itch_v2_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_gemxoptions_topofmarket_itch_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_gemxoptions_topofmarket_itch_v2_1
  omi_nasdaq_gemxoptions_topofmarket_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq GemxOptions TopOfMarket Itch 2.1
omi_nasdaq_gemxoptions_topofmarket_itch_v2_1:register_heuristic("udp", omi_nasdaq_gemxoptions_topofmarket_itch_v2_1_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1
--   Date: Friday, February 13, 2026
--   Specification: Options_Top_of_Market_Feed_2.1.pdf
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
