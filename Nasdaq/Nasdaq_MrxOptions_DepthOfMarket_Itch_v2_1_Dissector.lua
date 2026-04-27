-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nasdaq MrxOptions DepthOfMarket Itch 2.1 Protocol
local omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1 = Proto("Nasdaq.MrxOptions.DepthOfMarket.Itch.v2.1.Lua", "Nasdaq MrxOptions DepthOfMarket Itch 2.1")

-- Protocol table
local nasdaq_mrxoptions_depthofmarket_itch_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nasdaq MrxOptions DepthOfMarket Itch 2.1 Fields
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.ask_price_long = ProtoField.new("Ask Price Long", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.askpricelong", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.ask_price_short = ProtoField.new("Ask Price Short", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.askpriceshort", ftypes.UINT16)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.ask_reference_number = ProtoField.new("Ask Reference Number", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.askreferencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.ask_size_long = ProtoField.new("Ask Size Long", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.asksizelong", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.ask_size_short = ProtoField.new("Ask Size Short", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.asksizeshort", ftypes.UINT16)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.auction_id = ProtoField.new("Auction Id", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.auctionid", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.auction_type = ProtoField.new("Auction Type", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.auctiontype", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.bid_price_long = ProtoField.new("Bid Price Long", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.bidpricelong", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.bid_price_short = ProtoField.new("Bid Price Short", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.bidpriceshort", ftypes.UINT16)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.bid_reference_number = ProtoField.new("Bid Reference Number", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.bidreferencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.bid_size_long = ProtoField.new("Bid Size Long", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.bidsizelong", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.bid_size_short = ProtoField.new("Bid Size Short", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.bidsizeshort", ftypes.UINT16)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.cancelled_volume = ProtoField.new("Cancelled Volume", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.cancelledvolume", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.change_reason = ProtoField.new("Change Reason", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.changereason", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.closing_type = ProtoField.new("Closing Type", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.closingtype", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.cross_number = ProtoField.new("Cross Number", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.crossnumber", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.cross_type = ProtoField.new("Cross Type", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.crosstype", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.current_trading_state = ProtoField.new("Current Trading State", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.currenttradingstate", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.event_code = ProtoField.new("Event Code", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.eventcode", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.executed_volume = ProtoField.new("Executed Volume", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.executedvolume", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.expiration_day = ProtoField.new("Expiration Day", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.expirationday", ftypes.UINT8)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.expiration_month = ProtoField.new("Expiration Month", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.expirationmonth", ftypes.UINT8)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.expiration_year = ProtoField.new("Expiration Year", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.expirationyear", ftypes.UINT8)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.explicit_strike_price = ProtoField.new("Explicit Strike Price", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.explicitstrikeprice", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.imbalance_volume = ProtoField.new("Imbalance Volume", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.imbalancevolume", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.instrument_id = ProtoField.new("Instrument Id", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.instrumentid", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.match_number = ProtoField.new("Match Number", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.matchnumber", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.message = ProtoField.new("Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.message", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.message_count = ProtoField.new("Message Count", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.messagecount", ftypes.UINT16)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.message_header = ProtoField.new("Message Header", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.messageheader", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.message_length = ProtoField.new("Message Length", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.messagelength", ftypes.UINT16)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.message_type = ProtoField.new("Message Type", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.messagetype", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.mpv = ProtoField.new("Mpv", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.mpv", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.new_reference_number = ProtoField.new("New Reference Number", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.newreferencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.option_type = ProtoField.new("Option Type", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.optiontype", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.order_capacity = ProtoField.new("Order Capacity", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.ordercapacity", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.order_reference_number = ProtoField.new("Order Reference Number", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.orderreferencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.original_ask_reference_number = ProtoField.new("Original Ask Reference Number", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.originalaskreferencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.original_bid_reference_number = ProtoField.new("Original Bid Reference Number", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.originalbidreferencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.packet = ProtoField.new("Packet", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.packet", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.packet_header = ProtoField.new("Packet Header", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.packetheader", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.paired_quantity = ProtoField.new("Paired Quantity", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.pairedquantity", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.price_imbalance_price = ProtoField.new("Price Imbalance Price", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.priceimbalanceprice", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.price_long = ProtoField.new("Price Long", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.pricelong", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.price_short = ProtoField.new("Price Short", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.priceshort", ftypes.UINT16)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.printable = ProtoField.new("Printable", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.printable", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.reserved_16 = ProtoField.new("Reserved 16", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.reserved16", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.reserved_4 = ProtoField.new("Reserved 4", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.reserved4", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.security_symbol = ProtoField.new("Security Symbol", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.securitysymbol", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.sequence_number = ProtoField.new("Sequence Number", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.sequencenumber", ftypes.UINT64)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.session = ProtoField.new("Session", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.session", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.side = ProtoField.new("Side", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.side", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.side_imbalance_direction = ProtoField.new("Side Imbalance Direction", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.sideimbalancedirection", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.strategy_id = ProtoField.new("Strategy Id", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.strategyid", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.timestamp = ProtoField.new("Timestamp", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.timestamp", ftypes.UINT64)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.tracking_number = ProtoField.new("Tracking Number", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.trackingnumber", ftypes.UINT16)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.tradable = ProtoField.new("Tradable", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.tradable", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.trade_condition = ProtoField.new("Trade Condition", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.tradecondition", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.trade_type = ProtoField.new("Trade Type", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.tradetype", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.underlyingsymbol", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.volume_long = ProtoField.new("Volume Long", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.volumelong", ftypes.UINT32)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.volume_short = ProtoField.new("Volume Short", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.volumeshort", ftypes.UINT16)

-- Nasdaq MrxOptions Itch DepthOfMarket 2.1 Application Messages
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.add_order_long_form_message = ProtoField.new("Add Order Long Form Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.addorderlongformmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.add_order_short_form_message = ProtoField.new("Add Order Short Form Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.addordershortformmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.add_quote_long_form_message = ProtoField.new("Add Quote Long Form Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.addquotelongformmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.add_quote_short_form_message = ProtoField.new("Add Quote Short Form Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.addquoteshortformmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.derivative_directory_message = ProtoField.new("Derivative Directory Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.derivativedirectorymessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.net_order_imbalance_message = ProtoField.new("Net Order Imbalance Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.netorderimbalancemessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.order_cancel_message = ProtoField.new("Order Cancel Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.ordercancelmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.quote_delete_message = ProtoField.new("Quote Delete Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.quotedeletemessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.quote_replace_long_form_message = ProtoField.new("Quote Replace Long Form Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.quotereplacelongformmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.quote_replace_short_form_message = ProtoField.new("Quote Replace Short Form Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.quotereplaceshortformmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.single_side_delete_message = ProtoField.new("Single Side Delete Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.singlesidedeletemessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.single_side_executed_message = ProtoField.new("Single Side Executed Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.singlesideexecutedmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.single_side_executed_with_price_message = ProtoField.new("Single Side Executed With Price Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.singlesideexecutedwithpricemessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.single_side_replace_long_form_message = ProtoField.new("Single Side Replace Long Form Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.singlesidereplacelongformmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.single_side_replace_short_form_message = ProtoField.new("Single Side Replace Short Form Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.singlesidereplaceshortformmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.single_side_update_message = ProtoField.new("Single Side Update Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.singlesideupdatemessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.system_event_message = ProtoField.new("System Event Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.systemeventmessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.trade_message = ProtoField.new("Trade Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.trademessage", ftypes.STRING)
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.trading_action_message = ProtoField.new("Trading Action Message", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.tradingactionmessage", ftypes.STRING)

-- Nasdaq MrxOptions DepthOfMarket Itch 2.1 generated fields
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.message_index = ProtoField.new("Message Index", "nasdaq.mrxoptions.depthofmarket.itch.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nasdaq MrxOptions DepthOfMarket Itch 2.1 Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.message_index = true

-- Register Nasdaq MrxOptions DepthOfMarket Itch 2.1 Show Options
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_application_messages then
    show.application_messages = omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_application_messages
  end
  if show.message ~= omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_message then
    show.message = omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_message
  end
  if show.message_header ~= omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_message_header then
    show.message_header = omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_message_header
  end
  if show.packet ~= omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_packet then
    show.packet = omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_packet
  end
  if show.packet_header ~= omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_packet_header then
    show.packet_header = omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_packet_header
  end
  if show.message_index ~= omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_message_index then
    show.message_index = omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.prefs.show_message_index
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
-- Nasdaq MrxOptions DepthOfMarket Itch 2.1 Fields
-----------------------------------------------------------------------

-- Ask Price Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_long = {}

-- Size: Ask Price Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_long.size = 4

-- Display: Ask Price Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_long.display = function(value)
  return "Ask Price Long: "..value
end

-- Dissect: Ask Price Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.ask_price_long, range, value, display)

  return offset + length, value
end

-- Ask Price Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_short = {}

-- Size: Ask Price Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_short.size = 2

-- Display: Ask Price Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_short.display = function(value)
  return "Ask Price Short: "..value
end

-- Dissect: Ask Price Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.ask_price_short, range, value, display)

  return offset + length, value
end

-- Ask Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number = {}

-- Size: Ask Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.size = 8

-- Display: Ask Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.display = function(value)
  return "Ask Reference Number: "..value
end

-- Dissect: Ask Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.ask_reference_number, range, value, display)

  return offset + length, value
end

-- Ask Size Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_long = {}

-- Size: Ask Size Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_long.size = 4

-- Display: Ask Size Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_long.display = function(value)
  return "Ask Size Long: "..value
end

-- Dissect: Ask Size Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.ask_size_long, range, value, display)

  return offset + length, value
end

-- Ask Size Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_short = {}

-- Size: Ask Size Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_short.size = 2

-- Display: Ask Size Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_short.display = function(value)
  return "Ask Size Short: "..value
end

-- Dissect: Ask Size Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.ask_size_short, range, value, display)

  return offset + length, value
end

-- Auction Id
nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id = {}

-- Size: Auction Id
nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id.size = 4

-- Display: Auction Id
nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id.display = function(value)
  return "Auction Id: "..value
end

-- Dissect: Auction Id
nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.auction_id, range, value, display)

  return offset + length, value
end

-- Auction Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_type = {}

-- Size: Auction Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_type.size = 1

-- Display: Auction Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening (O)"
  end
  if value == "R" then
    return "Auction Type: Reopening (R)"
  end
  if value == "P" then
    return "Auction Type: Price Improvement Auction (P)"
  end
  if value == "I" then
    return "Auction Type: Order Exposure (I)"
  end
  if value == "B" then
    return "Auction Type: Block Auction (B)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Bid Price Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_long = {}

-- Size: Bid Price Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_long.size = 4

-- Display: Bid Price Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Dissect: Bid Price Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_short = {}

-- Size: Bid Price Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_short.size = 2

-- Display: Bid Price Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Dissect: Bid Price Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number = {}

-- Size: Bid Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.size = 8

-- Display: Bid Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.display = function(value)
  return "Bid Reference Number: "..value
end

-- Dissect: Bid Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.bid_reference_number, range, value, display)

  return offset + length, value
end

-- Bid Size Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_long = {}

-- Size: Bid Size Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_long.size = 4

-- Display: Bid Size Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_long.display = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Bid Size Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_short = {}

-- Size: Bid Size Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_short.size = 2

-- Display: Bid Size Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Cancelled Volume
nasdaq_mrxoptions_depthofmarket_itch_v2_1.cancelled_volume = {}

-- Size: Cancelled Volume
nasdaq_mrxoptions_depthofmarket_itch_v2_1.cancelled_volume.size = 4

-- Display: Cancelled Volume
nasdaq_mrxoptions_depthofmarket_itch_v2_1.cancelled_volume.display = function(value)
  return "Cancelled Volume: "..value
end

-- Dissect: Cancelled Volume
nasdaq_mrxoptions_depthofmarket_itch_v2_1.cancelled_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.cancelled_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.cancelled_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.cancelled_volume, range, value, display)

  return offset + length, value
end

-- Change Reason
nasdaq_mrxoptions_depthofmarket_itch_v2_1.change_reason = {}

-- Size: Change Reason
nasdaq_mrxoptions_depthofmarket_itch_v2_1.change_reason.size = 1

-- Display: Change Reason
nasdaq_mrxoptions_depthofmarket_itch_v2_1.change_reason.display = function(value)
  if value == "U" then
    return "Change Reason: User (U)"
  end
  if value == "R" then
    return "Change Reason: Reprice (R)"
  end
  if value == "S" then
    return "Change Reason: Suspend (S)"
  end

  return "Change Reason: Unknown("..value..")"
end

-- Dissect: Change Reason
nasdaq_mrxoptions_depthofmarket_itch_v2_1.change_reason.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.change_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.change_reason, range, value, display)

  return offset + length, value
end

-- Closing Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.closing_type = {}

-- Size: Closing Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.closing_type.size = 1

-- Display: Closing Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.closing_type.display = function(value)
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
nasdaq_mrxoptions_depthofmarket_itch_v2_1.closing_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.closing_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.closing_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.closing_type, range, value, display)

  return offset + length, value
end

-- Cross Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_number = {}

-- Size: Cross Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_number.size = 4

-- Display: Cross Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_number.display = function(value)
  return "Cross Number: "..value
end

-- Dissect: Cross Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.cross_number, range, value, display)

  return offset + length, value
end

-- Cross Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_type = {}

-- Size: Cross Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_type.size = 1

-- Display: Cross Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_type.display = function(value)
  if value == "B" then
    return "Cross Type: Block Auction (B)"
  end
  if value == "O" then
    return "Cross Type: Opening Auction (O)"
  end
  if value == "R" then
    return "Cross Type: Re Opening Auction (R)"
  end
  if value == "P" then
    return "Cross Type: Price Improvement Auction (P)"
  end
  if value == "C" then
    return "Cross Type: Facilitation (C)"
  end
  if value == "S" then
    return "Cross Type: Solicitation (S)"
  end
  if value == "X" then
    return "Cross Type: Flex Auction (X)"
  end
  if value == "N" then
    return "Cross Type: None (N)"
  end
  if value == "E" then
    return "Cross Type: Complex Exposure Auction (E)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Current Trading State
nasdaq_mrxoptions_depthofmarket_itch_v2_1.current_trading_state = {}

-- Size: Current Trading State
nasdaq_mrxoptions_depthofmarket_itch_v2_1.current_trading_state.size = 1

-- Display: Current Trading State
nasdaq_mrxoptions_depthofmarket_itch_v2_1.current_trading_state.display = function(value)
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
nasdaq_mrxoptions_depthofmarket_itch_v2_1.current_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.current_trading_state.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.current_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.current_trading_state, range, value, display)

  return offset + length, value
end

-- Event Code
nasdaq_mrxoptions_depthofmarket_itch_v2_1.event_code = {}

-- Size: Event Code
nasdaq_mrxoptions_depthofmarket_itch_v2_1.event_code.size = 1

-- Display: Event Code
nasdaq_mrxoptions_depthofmarket_itch_v2_1.event_code.display = function(value)
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
nasdaq_mrxoptions_depthofmarket_itch_v2_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Volume
nasdaq_mrxoptions_depthofmarket_itch_v2_1.executed_volume = {}

-- Size: Executed Volume
nasdaq_mrxoptions_depthofmarket_itch_v2_1.executed_volume.size = 4

-- Display: Executed Volume
nasdaq_mrxoptions_depthofmarket_itch_v2_1.executed_volume.display = function(value)
  return "Executed Volume: "..value
end

-- Dissect: Executed Volume
nasdaq_mrxoptions_depthofmarket_itch_v2_1.executed_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.executed_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.executed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.executed_volume, range, value, display)

  return offset + length, value
end

-- Expiration Day
nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_day = {}

-- Size: Expiration Day
nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_day.size = 1

-- Display: Expiration Day
nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_month = {}

-- Size: Expiration Month
nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_month.size = 1

-- Display: Expiration Month
nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_month.display = function(value)
  return "Expiration Month: "..value
end

-- Dissect: Expiration Month
nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_month.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_year = {}

-- Size: Expiration Year
nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_year.size = 1

-- Display: Expiration Year
nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Explicit Strike Price
nasdaq_mrxoptions_depthofmarket_itch_v2_1.explicit_strike_price = {}

-- Size: Explicit Strike Price
nasdaq_mrxoptions_depthofmarket_itch_v2_1.explicit_strike_price.size = 4

-- Display: Explicit Strike Price
nasdaq_mrxoptions_depthofmarket_itch_v2_1.explicit_strike_price.display = function(value)
  return "Explicit Strike Price: "..value
end

-- Dissect: Explicit Strike Price
nasdaq_mrxoptions_depthofmarket_itch_v2_1.explicit_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.explicit_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.explicit_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.explicit_strike_price, range, value, display)

  return offset + length, value
end

-- Imbalance Volume
nasdaq_mrxoptions_depthofmarket_itch_v2_1.imbalance_volume = {}

-- Size: Imbalance Volume
nasdaq_mrxoptions_depthofmarket_itch_v2_1.imbalance_volume.size = 4

-- Display: Imbalance Volume
nasdaq_mrxoptions_depthofmarket_itch_v2_1.imbalance_volume.display = function(value)
  return "Imbalance Volume: "..value
end

-- Dissect: Imbalance Volume
nasdaq_mrxoptions_depthofmarket_itch_v2_1.imbalance_volume.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.imbalance_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.imbalance_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.imbalance_volume, range, value, display)

  return offset + length, value
end

-- Instrument Id
nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id = {}

-- Size: Instrument Id
nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size = 4

-- Display: Instrument Id
nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Match Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.match_number = {}

-- Size: Match Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.match_number.size = 4

-- Display: Match Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.match_number.display = function(value)
  return "Match Number: "..value
end

-- Dissect: Match Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.match_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.match_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.match_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.match_number, range, value, display)

  return offset + length, value
end

-- Message Count
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_count = {}

-- Size: Message Count
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_count.size = 2

-- Display: Message Count
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_length = {}

-- Size: Message Length
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_length.size = 2

-- Display: Message Length
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_type = {}

-- Size: Message Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_type.size = 1

-- Display: Message Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_type.display = function(value)
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "m" then
    return "Message Type: Derivative Directory Message (m)"
  end
  if value == "H" then
    return "Message Type: Trading Action Message (H)"
  end
  if value == "r" then
    return "Message Type: Add Order Short Form Message (r)"
  end
  if value == "o" then
    return "Message Type: Add Order Long Form Message (o)"
  end
  if value == "j" then
    return "Message Type: Add Quote Short Form Message (j)"
  end
  if value == "J" then
    return "Message Type: Add Quote Long Form Message (J)"
  end
  if value == "e" then
    return "Message Type: Single Side Executed Message (e)"
  end
  if value == "c" then
    return "Message Type: Single Side Executed With Price Message (c)"
  end
  if value == "X" then
    return "Message Type: Order Cancel Message (X)"
  end
  if value == "u" then
    return "Message Type: Single Side Replace Short Form Message (u)"
  end
  if value == "U" then
    return "Message Type: Single Side Replace Long Form Message (U)"
  end
  if value == "D" then
    return "Message Type: Single Side Delete Message (D)"
  end
  if value == "G" then
    return "Message Type: Single Side Update Message (G)"
  end
  if value == "k" then
    return "Message Type: Quote Replace Short Form Message (k)"
  end
  if value == "K" then
    return "Message Type: Quote Replace Long Form Message (K)"
  end
  if value == "Y" then
    return "Message Type: Quote Delete Message (Y)"
  end
  if value == "q" then
    return "Message Type: Trade Message (q)"
  end
  if value == "O" then
    return "Message Type: Net Order Imbalance Message (O)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Mpv
nasdaq_mrxoptions_depthofmarket_itch_v2_1.mpv = {}

-- Size: Mpv
nasdaq_mrxoptions_depthofmarket_itch_v2_1.mpv.size = 1

-- Display: Mpv
nasdaq_mrxoptions_depthofmarket_itch_v2_1.mpv.display = function(value)
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
nasdaq_mrxoptions_depthofmarket_itch_v2_1.mpv.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.mpv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.mpv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.mpv, range, value, display)

  return offset + length, value
end

-- New Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.new_reference_number = {}

-- Size: New Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.new_reference_number.size = 8

-- Display: New Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.new_reference_number.display = function(value)
  return "New Reference Number: "..value
end

-- Dissect: New Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.new_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.new_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.new_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.new_reference_number, range, value, display)

  return offset + length, value
end

-- Option Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.option_type = {}

-- Size: Option Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.option_type.size = 1

-- Display: Option Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.option_type.display = function(value)
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
nasdaq_mrxoptions_depthofmarket_itch_v2_1.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.option_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Capacity
nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_capacity = {}

-- Size: Order Capacity
nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_capacity.size = 1

-- Display: Order Capacity
nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_capacity.display = function(value)
  if value == "C" then
    return "Order Capacity: Customer Order (C)"
  end
  if value == "F" then
    return "Order Capacity: Firm Order (F)"
  end
  if value == "M" then
    return "Order Capacity: Market Maker Order (M)"
  end
  if value == "B" then
    return "Order Capacity: Broker Dealer Order (B)"
  end
  if value == "P" then
    return "Order Capacity: Professional Order (P)"
  end
  if value == "O" then
    return "Order Capacity: Other Exchange Market Maker Order (O)"
  end
  if value == "J" then
    return "Order Capacity: Joint Back Office (J)"
  end
  if value == "" then
    return "Order Capacity: Na (<whitespace>)"
  end

  return "Order Capacity: Unknown("..value..")"
end

-- Dissect: Order Capacity
nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_capacity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.order_capacity, range, value, display)

  return offset + length, value
end

-- Order Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number = {}

-- Size: Order Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.size = 8

-- Display: Order Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.display = function(value)
  return "Order Reference Number: "..value
end

-- Dissect: Order Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.order_reference_number, range, value, display)

  return offset + length, value
end

-- Original Ask Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_ask_reference_number = {}

-- Size: Original Ask Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_ask_reference_number.size = 8

-- Display: Original Ask Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_ask_reference_number.display = function(value)
  return "Original Ask Reference Number: "..value
end

-- Dissect: Original Ask Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_ask_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_ask_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_ask_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.original_ask_reference_number, range, value, display)

  return offset + length, value
end

-- Original Bid Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_bid_reference_number = {}

-- Size: Original Bid Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_bid_reference_number.size = 8

-- Display: Original Bid Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_bid_reference_number.display = function(value)
  return "Original Bid Reference Number: "..value
end

-- Dissect: Original Bid Reference Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_bid_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_bid_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_bid_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.original_bid_reference_number, range, value, display)

  return offset + length, value
end

-- Paired Quantity
nasdaq_mrxoptions_depthofmarket_itch_v2_1.paired_quantity = {}

-- Size: Paired Quantity
nasdaq_mrxoptions_depthofmarket_itch_v2_1.paired_quantity.size = 4

-- Display: Paired Quantity
nasdaq_mrxoptions_depthofmarket_itch_v2_1.paired_quantity.display = function(value)
  return "Paired Quantity: "..value
end

-- Dissect: Paired Quantity
nasdaq_mrxoptions_depthofmarket_itch_v2_1.paired_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.paired_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.paired_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.paired_quantity, range, value, display)

  return offset + length, value
end

-- Price Imbalance Price
nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_imbalance_price = {}

-- Size: Price Imbalance Price
nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_imbalance_price.size = 4

-- Display: Price Imbalance Price
nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_imbalance_price.display = function(value)
  return "Price Imbalance Price: "..value
end

-- Dissect: Price Imbalance Price
nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_imbalance_price.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_imbalance_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_imbalance_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.price_imbalance_price, range, value, display)

  return offset + length, value
end

-- Price Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long = {}

-- Size: Price Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.size = 4

-- Display: Price Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.display = function(value)
  return "Price Long: "..value
end

-- Dissect: Price Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.price_long, range, value, display)

  return offset + length, value
end

-- Price Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_short = {}

-- Size: Price Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_short.size = 2

-- Display: Price Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_short.display = function(value)
  return "Price Short: "..value
end

-- Dissect: Price Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.price_short, range, value, display)

  return offset + length, value
end

-- Printable
nasdaq_mrxoptions_depthofmarket_itch_v2_1.printable = {}

-- Size: Printable
nasdaq_mrxoptions_depthofmarket_itch_v2_1.printable.size = 1

-- Display: Printable
nasdaq_mrxoptions_depthofmarket_itch_v2_1.printable.display = function(value)
  if value == "N" then
    return "Printable: Non Printable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
nasdaq_mrxoptions_depthofmarket_itch_v2_1.printable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.printable, range, value, display)

  return offset + length, value
end

-- Reserved 16
nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_16 = {}

-- Size: Reserved 16
nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_16.size = 16

-- Display: Reserved 16
nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_16.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 4
nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_4 = {}

-- Size: Reserved 4
nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_4.size = 4

-- Display: Reserved 4
nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_4.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Security Symbol
nasdaq_mrxoptions_depthofmarket_itch_v2_1.security_symbol = {}

-- Size: Security Symbol
nasdaq_mrxoptions_depthofmarket_itch_v2_1.security_symbol.size = 8

-- Display: Security Symbol
nasdaq_mrxoptions_depthofmarket_itch_v2_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
nasdaq_mrxoptions_depthofmarket_itch_v2_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sequence Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.sequence_number = {}

-- Size: Sequence Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.sequence_number.size = 8

-- Display: Sequence Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
nasdaq_mrxoptions_depthofmarket_itch_v2_1.session = {}

-- Size: Session
nasdaq_mrxoptions_depthofmarket_itch_v2_1.session.size = 10

-- Display: Session
nasdaq_mrxoptions_depthofmarket_itch_v2_1.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
nasdaq_mrxoptions_depthofmarket_itch_v2_1.session.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.session.size
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

  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.session, range, value, display)

  return offset + length, value
end

-- Side
nasdaq_mrxoptions_depthofmarket_itch_v2_1.side = {}

-- Size: Side
nasdaq_mrxoptions_depthofmarket_itch_v2_1.side.size = 1

-- Display: Side
nasdaq_mrxoptions_depthofmarket_itch_v2_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "M" then
    return "Side: Buy Implied (M)"
  end
  if value == "N" then
    return "Side: Sell Implied (N)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nasdaq_mrxoptions_depthofmarket_itch_v2_1.side.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.side, range, value, display)

  return offset + length, value
end

-- Side Imbalance Direction
nasdaq_mrxoptions_depthofmarket_itch_v2_1.side_imbalance_direction = {}

-- Size: Side Imbalance Direction
nasdaq_mrxoptions_depthofmarket_itch_v2_1.side_imbalance_direction.size = 1

-- Display: Side Imbalance Direction
nasdaq_mrxoptions_depthofmarket_itch_v2_1.side_imbalance_direction.display = function(value)
  if value == "B" then
    return "Side Imbalance Direction: Buy (B)"
  end
  if value == "S" then
    return "Side Imbalance Direction: Sell (S)"
  end

  return "Side Imbalance Direction: Unknown("..value..")"
end

-- Dissect: Side Imbalance Direction
nasdaq_mrxoptions_depthofmarket_itch_v2_1.side_imbalance_direction.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.side_imbalance_direction.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.side_imbalance_direction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.side_imbalance_direction, range, value, display)

  return offset + length, value
end

-- Strategy Id
nasdaq_mrxoptions_depthofmarket_itch_v2_1.strategy_id = {}

-- Size: Strategy Id
nasdaq_mrxoptions_depthofmarket_itch_v2_1.strategy_id.size = 4

-- Display: Strategy Id
nasdaq_mrxoptions_depthofmarket_itch_v2_1.strategy_id.display = function(value)
  return "Strategy Id: "..value
end

-- Dissect: Strategy Id
nasdaq_mrxoptions_depthofmarket_itch_v2_1.strategy_id.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.strategy_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.strategy_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.strategy_id, range, value, display)

  return offset + length, value
end

-- Timestamp
nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp = {}

-- Size: Timestamp
nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size = 8

-- Display: Timestamp
nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Tracking Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number = {}

-- Size: Tracking Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size = 2

-- Display: Tracking Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.display = function(value)
  return "Tracking Number: "..value
end

-- Dissect: Tracking Number
nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.tracking_number, range, value, display)

  return offset + length, value
end

-- Tradable
nasdaq_mrxoptions_depthofmarket_itch_v2_1.tradable = {}

-- Size: Tradable
nasdaq_mrxoptions_depthofmarket_itch_v2_1.tradable.size = 1

-- Display: Tradable
nasdaq_mrxoptions_depthofmarket_itch_v2_1.tradable.display = function(value)
  if value == "Y" then
    return "Tradable: Tradable (Y)"
  end
  if value == "N" then
    return "Tradable: Not Tradable (N)"
  end

  return "Tradable: Unknown("..value..")"
end

-- Dissect: Tradable
nasdaq_mrxoptions_depthofmarket_itch_v2_1.tradable.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tradable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.tradable, range, value, display)

  return offset + length, value
end

-- Trade Condition
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_condition = {}

-- Size: Trade Condition
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_condition.size = 1

-- Display: Trade Condition
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_condition.display = function(value)
  return "Trade Condition: "..value
end

-- Dissect: Trade Condition
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_condition.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.trade_condition, range, value, display)

  return offset + length, value
end

-- Trade Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_type = {}

-- Size: Trade Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_type.size = 1

-- Display: Trade Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_type.display = function(value)
  if value == "E" then
    return "Trade Type: Electronic Trade (E)"
  end

  return "Trade Type: Unknown("..value..")"
end

-- Dissect: Trade Type
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_type.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.trade_type, range, value, display)

  return offset + length, value
end

-- Underlying Symbol
nasdaq_mrxoptions_depthofmarket_itch_v2_1.underlying_symbol = {}

-- Size: Underlying Symbol
nasdaq_mrxoptions_depthofmarket_itch_v2_1.underlying_symbol.size = 13

-- Display: Underlying Symbol
nasdaq_mrxoptions_depthofmarket_itch_v2_1.underlying_symbol.display = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
nasdaq_mrxoptions_depthofmarket_itch_v2_1.underlying_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.underlying_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.underlying_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Volume Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long = {}

-- Size: Volume Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.size = 4

-- Display: Volume Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.display = function(value)
  return "Volume Long: "..value
end

-- Dissect: Volume Long
nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.volume_long, range, value, display)

  return offset + length, value
end

-- Volume Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_short = {}

-- Size: Volume Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_short.size = 2

-- Display: Volume Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_short.display = function(value)
  return "Volume Short: "..value
end

-- Dissect: Volume Short
nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_short.dissect = function(buffer, offset, packet, parent)
  local length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.volume_short, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nasdaq MrxOptions DepthOfMarket Itch 2.1
-----------------------------------------------------------------------

-- Net Order Imbalance Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.net_order_imbalance_message = {}

-- Size: Net Order Imbalance Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.net_order_imbalance_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_type.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.paired_quantity.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.side_imbalance_direction.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_imbalance_price.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.imbalance_volume.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_capacity.size

-- Display: Net Order Imbalance Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.net_order_imbalance_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Net Order Imbalance Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.net_order_imbalance_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Alpha
  index, auction_type = nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_type.dissect(buffer, index, packet, parent)

  -- Paired Quantity: Integer
  index, paired_quantity = nasdaq_mrxoptions_depthofmarket_itch_v2_1.paired_quantity.dissect(buffer, index, packet, parent)

  -- Side Imbalance Direction: Alpha
  index, side_imbalance_direction = nasdaq_mrxoptions_depthofmarket_itch_v2_1.side_imbalance_direction.dissect(buffer, index, packet, parent)

  -- Price Imbalance Price: Integer
  index, price_imbalance_price = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_imbalance_price.dissect(buffer, index, packet, parent)

  -- Imbalance Volume: Integer
  index, imbalance_volume = nasdaq_mrxoptions_depthofmarket_itch_v2_1.imbalance_volume.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Net Order Imbalance Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.net_order_imbalance_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.net_order_imbalance_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.net_order_imbalance_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.net_order_imbalance_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.net_order_imbalance_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_message = {}

-- Size: Trade Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.match_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_type.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_condition.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.printable.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_type.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_16.size

-- Display: Trade Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.match_number.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Cross Type: Alpha
  index, cross_type = nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_type.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alpha
  index, trade_condition = nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nasdaq_mrxoptions_depthofmarket_itch_v2_1.printable.dissect(buffer, index, packet, parent)

  -- Trade Type: Alpha
  index, trade_type = nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_type.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.trade_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Delete Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_delete_message = {}

-- Size: Quote Delete Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_delete_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.size

-- Display: Quote Delete Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Delete Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Delete Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.quote_delete_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Replace Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_long_form_message = {}

-- Size: Quote Replace Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_long_form_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_bid_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_ask_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_long.size

-- Display: Quote Replace Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number: Integer
  index, original_bid_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_bid_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number: Integer
  index, original_ask_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_ask_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Integer
  index, bid_price_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: Integer
  index, bid_size_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Integer
  index, ask_price_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Size Long: Integer
  index, ask_size_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.quote_replace_long_form_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Replace Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_short_form_message = {}

-- Size: Quote Replace Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_short_form_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_bid_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_ask_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_short.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_short.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_short.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_short.size

-- Display: Quote Replace Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Replace Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Original Bid Reference Number: Integer
  index, original_bid_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_bid_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Original Ask Reference Number: Integer
  index, original_ask_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.original_ask_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Integer
  index, bid_price_short = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: Integer
  index, bid_size_short = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Integer
  index, ask_price_short = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Short: Integer
  index, ask_size_short = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quote Replace Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.quote_replace_short_form_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Update Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_update_message = {}

-- Size: Single Side Update Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_update_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.change_reason.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.size

-- Display: Single Side Update Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Update Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Change Reason: Alpha
  index, change_reason = nasdaq_mrxoptions_depthofmarket_itch_v2_1.change_reason.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Update Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.single_side_update_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Delete Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_delete_message = {}

-- Size: Single Side Delete Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_delete_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.size

-- Display: Single Side Delete Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Delete Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Delete Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.single_side_delete_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_long_form_message = {}

-- Size: Single Side Replace Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_long_form_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.new_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.size

-- Display: Single Side Replace Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- New Reference Number: Integer
  index, new_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.new_reference_number.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.single_side_replace_long_form_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Replace Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_short_form_message = {}

-- Size: Single Side Replace Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_short_form_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.new_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_short.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_short.size

-- Display: Single Side Replace Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Replace Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- New Reference Number: Integer
  index, new_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.new_reference_number.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Replace Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.single_side_replace_short_form_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Cancel Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_cancel_message = {}

-- Size: Order Cancel Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_cancel_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.cancelled_volume.size

-- Display: Order Cancel Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancel Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Cancelled Volume: Integer
  index, cancelled_volume = nasdaq_mrxoptions_depthofmarket_itch_v2_1.cancelled_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Cancel Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.order_cancel_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Executed With Price Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_with_price_message = {}

-- Size: Single Side Executed With Price Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_with_price_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.match_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.printable.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_condition.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id.size

-- Display: Single Side Executed With Price Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed With Price Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.match_number.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = nasdaq_mrxoptions_depthofmarket_itch_v2_1.printable.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alpha
  index, trade_condition = nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed With Price Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.single_side_executed_with_price_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Single Side Executed Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_message = {}

-- Size: Single Side Executed Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.strategy_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.executed_volume.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_condition.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.match_number.size

-- Display: Single Side Executed Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Single Side Executed Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Strategy Id: Integer
  index, strategy_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.strategy_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Executed Volume: Integer
  index, executed_volume = nasdaq_mrxoptions_depthofmarket_itch_v2_1.executed_volume.dissect(buffer, index, packet, parent)

  -- Trade Condition: Alpha
  index, trade_condition = nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_condition.dissect(buffer, index, packet, parent)

  -- Auction Id: Integer
  index, auction_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.auction_id.dissect(buffer, index, packet, parent)

  -- Cross Number: Integer
  index, cross_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.cross_number.dissect(buffer, index, packet, parent)

  -- Match Number: Integer
  index, match_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.match_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Single Side Executed Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.single_side_executed_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_long_form_message = {}

-- Size: Add Quote Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_long_form_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_long.size

-- Display: Add Quote Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Integer
  index, bid_price_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: Integer
  index, bid_size_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_long.dissect(buffer, index, packet, parent)

  -- Ask Price Long: Integer
  index, ask_price_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_long.dissect(buffer, index, packet, parent)

  -- Ask Size Long: Integer
  index, ask_size_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_long.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.add_quote_long_form_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Quote Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_short_form_message = {}

-- Size: Add Quote Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_short_form_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_short.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_short.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_short.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_short.size

-- Display: Add Quote Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Quote Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Bid Reference Number: Integer
  index, bid_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_reference_number.dissect(buffer, index, packet, parent)

  -- Ask Reference Number: Integer
  index, ask_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_reference_number.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Integer
  index, bid_price_short = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: Integer
  index, bid_size_short = nasdaq_mrxoptions_depthofmarket_itch_v2_1.bid_size_short.dissect(buffer, index, packet, parent)

  -- Ask Price Short: Integer
  index, ask_price_short = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_price_short.dissect(buffer, index, packet, parent)

  -- Ask Size Short: Integer
  index, ask_size_short = nasdaq_mrxoptions_depthofmarket_itch_v2_1.ask_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Quote Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.add_quote_short_form_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_long_form_message = {}

-- Size: Add Order Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_long_form_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.side.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_capacity.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_4.size

-- Display: Add Order Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_long_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_long_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_mrxoptions_depthofmarket_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Price Long: Integer
  index, price_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_long.dissect(buffer, index, packet, parent)

  -- Volume Long: Integer
  index, volume_long = nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_long.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Long Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_long_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.add_order_long_form_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_long_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_long_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_long_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_short_form_message = {}

-- Size: Add Order Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_short_form_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.side.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_capacity.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_short.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_short.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_4.size

-- Display: Add Order Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_short_form_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_short_form_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Order Reference Number: Integer
  index, order_reference_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_reference_number.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = nasdaq_mrxoptions_depthofmarket_itch_v2_1.side.dissect(buffer, index, packet, parent)

  -- Order Capacity: Alpha
  index, order_capacity = nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_capacity.dissect(buffer, index, packet, parent)

  -- Price Short: Integer
  index, price_short = nasdaq_mrxoptions_depthofmarket_itch_v2_1.price_short.dissect(buffer, index, packet, parent)

  -- Volume Short: Integer
  index, volume_short = nasdaq_mrxoptions_depthofmarket_itch_v2_1.volume_short.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Short Form Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_short_form_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.add_order_short_form_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_short_form_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_short_form_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_short_form_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Action Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trading_action_message = {}

-- Size: Trading Action Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trading_action_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.current_trading_state.size

-- Display: Trading Action Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trading_action_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Action Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trading_action_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Current Trading State: Alpha
  index, current_trading_state = nasdaq_mrxoptions_depthofmarket_itch_v2_1.current_trading_state.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Action Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.trading_action_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.trading_action_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.trading_action_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.trading_action_message.fields(buffer, offset, packet, parent)
  end
end

-- Derivative Directory Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.derivative_directory_message = {}

-- Size: Derivative Directory Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.derivative_directory_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.security_symbol.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_year.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_month.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_day.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.explicit_strike_price.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.option_type.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.underlying_symbol.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.closing_type.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tradable.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.mpv.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_16.size

-- Display: Derivative Directory Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.derivative_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Derivative Directory Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.derivative_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Instrument Id: Integer
  index, instrument_id = nasdaq_mrxoptions_depthofmarket_itch_v2_1.instrument_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = nasdaq_mrxoptions_depthofmarket_itch_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Expiration Year: Integer
  index, expiration_year = nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_year.dissect(buffer, index, packet, parent)

  -- Expiration Month: Integer
  index, expiration_month = nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: Integer
  index, expiration_day = nasdaq_mrxoptions_depthofmarket_itch_v2_1.expiration_day.dissect(buffer, index, packet, parent)

  -- Explicit Strike Price: Integer
  index, explicit_strike_price = nasdaq_mrxoptions_depthofmarket_itch_v2_1.explicit_strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = nasdaq_mrxoptions_depthofmarket_itch_v2_1.option_type.dissect(buffer, index, packet, parent)

  -- Underlying Symbol: Alpha
  index, underlying_symbol = nasdaq_mrxoptions_depthofmarket_itch_v2_1.underlying_symbol.dissect(buffer, index, packet, parent)

  -- Closing Type: Alpha
  index, closing_type = nasdaq_mrxoptions_depthofmarket_itch_v2_1.closing_type.dissect(buffer, index, packet, parent)

  -- Tradable: Alpha
  index, tradable = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tradable.dissect(buffer, index, packet, parent)

  -- Mpv: Alpha
  index, mpv = nasdaq_mrxoptions_depthofmarket_itch_v2_1.mpv.dissect(buffer, index, packet, parent)

  -- Reserved 16: Alpha
  index, reserved_16 = nasdaq_mrxoptions_depthofmarket_itch_v2_1.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Derivative Directory Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.derivative_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.derivative_directory_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.derivative_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.derivative_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.derivative_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.system_event_message = {}

-- Size: System Event Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.system_event_message.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.event_code.size

-- Display: System Event Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Tracking Number: Integer
  index, tracking_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.tracking_number.dissect(buffer, index, packet, parent)

  -- Timestamp: Integer
  index, timestamp = nasdaq_mrxoptions_depthofmarket_itch_v2_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = nasdaq_mrxoptions_depthofmarket_itch_v2_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.system_event_message, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nasdaq_mrxoptions_depthofmarket_itch_v2_1.payload = {}

-- Dissect: Payload
nasdaq_mrxoptions_depthofmarket_itch_v2_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect System Event Message
  if message_type == "S" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Derivative Directory Message
  if message_type == "m" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.derivative_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Action Message
  if message_type == "H" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.trading_action_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Short Form Message
  if message_type == "r" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Long Form Message
  if message_type == "o" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_order_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Short Form Message
  if message_type == "j" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Quote Long Form Message
  if message_type == "J" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.add_quote_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed Message
  if message_type == "e" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Executed With Price Message
  if message_type == "c" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancel Message
  if message_type == "X" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.order_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Short Form Message
  if message_type == "u" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Replace Long Form Message
  if message_type == "U" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_replace_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Delete Message
  if message_type == "D" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Single Side Update Message
  if message_type == "G" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.single_side_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Short Form Message
  if message_type == "k" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_short_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Replace Long Form Message
  if message_type == "K" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_replace_long_form_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Delete Message
  if message_type == "Y" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.quote_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "q" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Net Order Imbalance Message
  if message_type == "O" then
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.net_order_imbalance_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_header = {}

-- Size: Message Header
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_header.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_length.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_type.size

-- Display: Message Header
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 19 values
  index, message_type = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.message_header, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message = {}

-- Read runtime size of: Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset, 2):uint()

  return message_length + 2
end

-- Display: Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 19 branches
  index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nasdaq_mrxoptions_depthofmarket_itch_v2_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local size_of_message = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message.size(buffer, offset)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.message, buffer(offset, 0))
    local current = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nasdaq_mrxoptions_depthofmarket_itch_v2_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Messages
nasdaq_mrxoptions_depthofmarket_itch_v2_1.messages = {}

-- Dissect: Messages
nasdaq_mrxoptions_depthofmarket_itch_v2_1.messages.dissect = function(buffer, offset, packet, parent, message_count)
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
    offset = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message.dissect(buffer, offset, packet, parent, size_of_message, message_index)
  end

  return offset
end

-- Packet Header
nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet_header = {}

-- Size: Packet Header
nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet_header.size =
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.session.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.sequence_number.size + 
  nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_count.size

-- Display: Packet Header
nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = nasdaq_mrxoptions_depthofmarket_itch_v2_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = nasdaq_mrxoptions_depthofmarket_itch_v2_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = nasdaq_mrxoptions_depthofmarket_itch_v2_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.fields.packet_header, buffer(offset, 0))
    local index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet = {}

-- Verify size of Udp packet
nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissect Packet
nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Messages: Runtime Type with 3 branches
  index = nasdaq_mrxoptions_depthofmarket_itch_v2_1.messages.dissect(buffer, index, packet, parent, message_count)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.init()
end

-- Dissector for Nasdaq MrxOptions DepthOfMarket Itch 2.1
function omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1, buffer(), omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.description, "("..buffer:len().." Bytes)")
  return nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nasdaq MrxOptions DepthOfMarket Itch 2.1 (Udp)
local function omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nasdaq_mrxoptions_depthofmarket_itch_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1
  omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nasdaq MrxOptions DepthOfMarket Itch 2.1
omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1:register_heuristic("udp", omi_nasdaq_mrxoptions_depthofmarket_itch_v2_1_udp_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: National Association of Securities Dealers Automated Quotations (Nasdaq)
--   Version: 2.1
--   Date: Friday, February 13, 2026
--   Specification: Options_Depth_of_Market_Feed_2.1.pdf
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
