-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Asx Securities Trade Itch 2.0 Protocol
local asx_securities_trade_itch_v2_0 = Proto("Asx.Securities.Trade.Itch.v2.0.Lua", "Asx Securities Trade Itch 2.0")

-- Component Tables
local show = {}
local format = {}
local asx_securities_trade_itch_v2_0_display = {}
local asx_securities_trade_itch_v2_0_dissect = {}
local asx_securities_trade_itch_v2_0_size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Asx Securities Trade Itch 2.0 Fields
asx_securities_trade_itch_v2_0.fields.ask_quantity = ProtoField.new("Ask Quantity", "asx.securities.trade.itch.v2.0.askquantity", ftypes.UINT64)
asx_securities_trade_itch_v2_0.fields.best_ask_price = ProtoField.new("Best Ask Price", "asx.securities.trade.itch.v2.0.bestaskprice", ftypes.INT32)
asx_securities_trade_itch_v2_0.fields.best_ask_quantity = ProtoField.new("Best Ask Quantity", "asx.securities.trade.itch.v2.0.bestaskquantity", ftypes.UINT64)
asx_securities_trade_itch_v2_0.fields.best_bid_price = ProtoField.new("Best Bid Price", "asx.securities.trade.itch.v2.0.bestbidprice", ftypes.INT32)
asx_securities_trade_itch_v2_0.fields.best_bid_quantity = ProtoField.new("Best Bid Quantity", "asx.securities.trade.itch.v2.0.bestbidquantity", ftypes.UINT64)
asx_securities_trade_itch_v2_0.fields.bid_quantity = ProtoField.new("Bid Quantity", "asx.securities.trade.itch.v2.0.bidquantity", ftypes.UINT64)
asx_securities_trade_itch_v2_0.fields.block_lot_size = ProtoField.new("Block Lot Size", "asx.securities.trade.itch.v2.0.blocklotsize", ftypes.UINT32)
asx_securities_trade_itch_v2_0.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "asx.securities.trade.itch.v2.0.equilibriumprice", ftypes.INT32)
asx_securities_trade_itch_v2_0.fields.event_code = ProtoField.new("Event Code", "asx.securities.trade.itch.v2.0.eventcode", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.exchange_order_type = ProtoField.new("Exchange Order Type", "asx.securities.trade.itch.v2.0.exchangeordertype", ftypes.UINT16)
asx_securities_trade_itch_v2_0.fields.executed_quantity = ProtoField.new("Executed Quantity", "asx.securities.trade.itch.v2.0.executedquantity", ftypes.UINT64)
asx_securities_trade_itch_v2_0.fields.financial_product = ProtoField.new("Financial Product", "asx.securities.trade.itch.v2.0.financialproduct", ftypes.UINT8)
asx_securities_trade_itch_v2_0.fields.isin = ProtoField.new("Isin", "asx.securities.trade.itch.v2.0.isin", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.leg_1_ratio = ProtoField.new("Leg 1 Ratio", "asx.securities.trade.itch.v2.0.leg1ratio", ftypes.UINT32)
asx_securities_trade_itch_v2_0.fields.leg_1_side = ProtoField.new("Leg 1 Side", "asx.securities.trade.itch.v2.0.leg1side", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.leg_1_symbol = ProtoField.new("Leg 1 Symbol", "asx.securities.trade.itch.v2.0.leg1symbol", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.leg_2_ratio = ProtoField.new("Leg 2 Ratio", "asx.securities.trade.itch.v2.0.leg2ratio", ftypes.UINT32)
asx_securities_trade_itch_v2_0.fields.leg_2_side = ProtoField.new("Leg 2 Side", "asx.securities.trade.itch.v2.0.leg2side", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.leg_2_symbol = ProtoField.new("Leg 2 Symbol", "asx.securities.trade.itch.v2.0.leg2symbol", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.leg_3_ratio = ProtoField.new("Leg 3 Ratio", "asx.securities.trade.itch.v2.0.leg3ratio", ftypes.UINT32)
asx_securities_trade_itch_v2_0.fields.leg_3_side = ProtoField.new("Leg 3 Side", "asx.securities.trade.itch.v2.0.leg3side", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.leg_3_symbol = ProtoField.new("Leg 3 Symbol", "asx.securities.trade.itch.v2.0.leg3symbol", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.leg_4_ratio = ProtoField.new("Leg 4 Ratio", "asx.securities.trade.itch.v2.0.leg4ratio", ftypes.UINT32)
asx_securities_trade_itch_v2_0.fields.leg_4_side = ProtoField.new("Leg 4 Side", "asx.securities.trade.itch.v2.0.leg4side", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.leg_4_symbol = ProtoField.new("Leg 4 Symbol", "asx.securities.trade.itch.v2.0.leg4symbol", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.long_name = ProtoField.new("Long Name", "asx.securities.trade.itch.v2.0.longname", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.lot_type = ProtoField.new("Lot Type", "asx.securities.trade.itch.v2.0.lottype", ftypes.UINT8)
asx_securities_trade_itch_v2_0.fields.match_id = ProtoField.new("Match Id", "asx.securities.trade.itch.v2.0.matchid", ftypes.BYTES)
asx_securities_trade_itch_v2_0.fields.message = ProtoField.new("Message", "asx.securities.trade.itch.v2.0.message", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.message_count = ProtoField.new("Message Count", "asx.securities.trade.itch.v2.0.messagecount", ftypes.UINT16)
asx_securities_trade_itch_v2_0.fields.message_header = ProtoField.new("Message Header", "asx.securities.trade.itch.v2.0.messageheader", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.message_length = ProtoField.new("Message Length", "asx.securities.trade.itch.v2.0.messagelength", ftypes.UINT16)
asx_securities_trade_itch_v2_0.fields.message_type = ProtoField.new("Message Type", "asx.securities.trade.itch.v2.0.messagetype", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.new_order_book_position = ProtoField.new("New Order Book Position", "asx.securities.trade.itch.v2.0.neworderbookposition", ftypes.UINT32)
asx_securities_trade_itch_v2_0.fields.nominal_value = ProtoField.new("Nominal Value", "asx.securities.trade.itch.v2.0.nominalvalue", ftypes.UINT64)
asx_securities_trade_itch_v2_0.fields.number_of_decimals_in_nominal_value = ProtoField.new("Number Of Decimals In Nominal Value", "asx.securities.trade.itch.v2.0.numberofdecimalsinnominalvalue", ftypes.UINT16)
asx_securities_trade_itch_v2_0.fields.number_of_decimals_in_price = ProtoField.new("Number Of Decimals In Price", "asx.securities.trade.itch.v2.0.numberofdecimalsinprice", ftypes.UINT16)
asx_securities_trade_itch_v2_0.fields.occurred_at_cross = ProtoField.new("Occurred At Cross", "asx.securities.trade.itch.v2.0.occurredatcross", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.odd_lot_size = ProtoField.new("Odd Lot Size", "asx.securities.trade.itch.v2.0.oddlotsize", ftypes.UINT32)
asx_securities_trade_itch_v2_0.fields.order_book_id = ProtoField.new("Order Book Id", "asx.securities.trade.itch.v2.0.orderbookid", ftypes.UINT32)
asx_securities_trade_itch_v2_0.fields.order_book_position = ProtoField.new("Order Book Position", "asx.securities.trade.itch.v2.0.orderbookposition", ftypes.UINT32)
asx_securities_trade_itch_v2_0.fields.order_id = ProtoField.new("Order Id", "asx.securities.trade.itch.v2.0.orderid", ftypes.UINT64)
asx_securities_trade_itch_v2_0.fields.packet = ProtoField.new("Packet", "asx.securities.trade.itch.v2.0.packet", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.packet_header = ProtoField.new("Packet Header", "asx.securities.trade.itch.v2.0.packetheader", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.participant_id = ProtoField.new("Participant Id", "asx.securities.trade.itch.v2.0.participantid", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.participant_id_counterparty = ProtoField.new("Participant Id Counterparty", "asx.securities.trade.itch.v2.0.participantidcounterparty", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.participant_id_owner = ProtoField.new("Participant Id Owner", "asx.securities.trade.itch.v2.0.participantidowner", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.payload = ProtoField.new("Payload", "asx.securities.trade.itch.v2.0.payload", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.price = ProtoField.new("Price", "asx.securities.trade.itch.v2.0.price", ftypes.INT32)
asx_securities_trade_itch_v2_0.fields.price_from = ProtoField.new("Price From", "asx.securities.trade.itch.v2.0.pricefrom", ftypes.INT32)
asx_securities_trade_itch_v2_0.fields.price_to = ProtoField.new("Price To", "asx.securities.trade.itch.v2.0.priceto", ftypes.INT32)
asx_securities_trade_itch_v2_0.fields.printable = ProtoField.new("Printable", "asx.securities.trade.itch.v2.0.printable", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.quantity = ProtoField.new("Quantity", "asx.securities.trade.itch.v2.0.quantity", ftypes.UINT64)
asx_securities_trade_itch_v2_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "asx.securities.trade.itch.v2.0.roundlotsize", ftypes.UINT32)
asx_securities_trade_itch_v2_0.fields.sequence_number = ProtoField.new("Sequence Number", "asx.securities.trade.itch.v2.0.sequencenumber", ftypes.UINT64)
asx_securities_trade_itch_v2_0.fields.session = ProtoField.new("Session", "asx.securities.trade.itch.v2.0.session", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.side = ProtoField.new("Side", "asx.securities.trade.itch.v2.0.side", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.state_name = ProtoField.new("State Name", "asx.securities.trade.itch.v2.0.statename", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.symbol = ProtoField.new("Symbol", "asx.securities.trade.itch.v2.0.symbol", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.tick_size = ProtoField.new("Tick Size", "asx.securities.trade.itch.v2.0.ticksize", ftypes.UINT64)
asx_securities_trade_itch_v2_0.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "asx.securities.trade.itch.v2.0.timestampnanoseconds", ftypes.UINT32)
asx_securities_trade_itch_v2_0.fields.timestamp_seconds = ProtoField.new("Timestamp Seconds", "asx.securities.trade.itch.v2.0.timestampseconds", ftypes.UINT32)
asx_securities_trade_itch_v2_0.fields.trade_price = ProtoField.new("Trade Price", "asx.securities.trade.itch.v2.0.tradeprice", ftypes.INT32)
asx_securities_trade_itch_v2_0.fields.trading_currency = ProtoField.new("Trading Currency", "asx.securities.trade.itch.v2.0.tradingcurrency", ftypes.STRING)

-- Asx Securities Trade Itch 2.0 messages
asx_securities_trade_itch_v2_0.fields.add_order_no_participant_id_message = ProtoField.new("Add Order No Participant Id Message", "asx.securities.trade.itch.v2.0.addordernoparticipantidmessage", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.add_order_participant_id_message = ProtoField.new("Add Order Participant Id Message", "asx.securities.trade.itch.v2.0.addorderparticipantidmessage", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.combination_order_book_directory_message = ProtoField.new("Combination Order Book Directory Message", "asx.securities.trade.itch.v2.0.combinationorderbookdirectorymessage", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.equilibrium_price_update_message = ProtoField.new("Equilibrium Price Update Message", "asx.securities.trade.itch.v2.0.equilibriumpriceupdatemessage", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.order_book_directory_message = ProtoField.new("Order Book Directory Message", "asx.securities.trade.itch.v2.0.orderbookdirectorymessage", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.order_book_state_message = ProtoField.new("Order Book State Message", "asx.securities.trade.itch.v2.0.orderbookstatemessage", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.order_delete_message = ProtoField.new("Order Delete Message", "asx.securities.trade.itch.v2.0.orderdeletemessage", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "asx.securities.trade.itch.v2.0.orderexecutedmessage", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "asx.securities.trade.itch.v2.0.orderexecutedwithpricemessage", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.order_replace_message = ProtoField.new("Order Replace Message", "asx.securities.trade.itch.v2.0.orderreplacemessage", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.seconds_message = ProtoField.new("Seconds Message", "asx.securities.trade.itch.v2.0.secondsmessage", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.system_event_message = ProtoField.new("System Event Message", "asx.securities.trade.itch.v2.0.systemeventmessage", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.tick_size_message = ProtoField.new("Tick Size Message", "asx.securities.trade.itch.v2.0.ticksizemessage", ftypes.STRING)
asx_securities_trade_itch_v2_0.fields.trade_message = ProtoField.new("Trade Message", "asx.securities.trade.itch.v2.0.trademessage", ftypes.STRING)

-- Asx Securities Trade Itch 2.0 generated fields
asx_securities_trade_itch_v2_0.fields.message_index = ProtoField.new("Message Index", "asx.securities.trade.itch.v2.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Asx Securities Trade Itch 2.0 Element Dissection Options
show.add_order_no_participant_id_message = true
show.add_order_participant_id_message = true
show.combination_order_book_directory_message = true
show.equilibrium_price_update_message = true
show.message = true
show.message_header = true
show.order_book_directory_message = true
show.order_book_state_message = true
show.order_delete_message = true
show.order_executed_message = true
show.order_executed_with_price_message = true
show.order_replace_message = true
show.packet = true
show.packet_header = true
show.seconds_message = true
show.system_event_message = true
show.tick_size_message = true
show.trade_message = true
show.payload = false

-- Register Asx Securities Trade Itch 2.0 Show Options
asx_securities_trade_itch_v2_0.prefs.show_add_order_no_participant_id_message = Pref.bool("Show Add Order No Participant Id Message", show.add_order_no_participant_id_message, "Parse and add Add Order No Participant Id Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_add_order_participant_id_message = Pref.bool("Show Add Order Participant Id Message", show.add_order_participant_id_message, "Parse and add Add Order Participant Id Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_combination_order_book_directory_message = Pref.bool("Show Combination Order Book Directory Message", show.combination_order_book_directory_message, "Parse and add Combination Order Book Directory Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_equilibrium_price_update_message = Pref.bool("Show Equilibrium Price Update Message", show.equilibrium_price_update_message, "Parse and add Equilibrium Price Update Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_order_book_directory_message = Pref.bool("Show Order Book Directory Message", show.order_book_directory_message, "Parse and add Order Book Directory Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_order_book_state_message = Pref.bool("Show Order Book State Message", show.order_book_state_message, "Parse and add Order Book State Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_order_executed_with_price_message = Pref.bool("Show Order Executed With Price Message", show.order_executed_with_price_message, "Parse and add Order Executed With Price Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_order_replace_message = Pref.bool("Show Order Replace Message", show.order_replace_message, "Parse and add Order Replace Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_seconds_message = Pref.bool("Show Seconds Message", show.seconds_message, "Parse and add Seconds Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_tick_size_message = Pref.bool("Show Tick Size Message", show.tick_size_message, "Parse and add Tick Size Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
asx_securities_trade_itch_v2_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function asx_securities_trade_itch_v2_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_no_participant_id_message ~= asx_securities_trade_itch_v2_0.prefs.show_add_order_no_participant_id_message then
    show.add_order_no_participant_id_message = asx_securities_trade_itch_v2_0.prefs.show_add_order_no_participant_id_message
    changed = true
  end
  if show.add_order_participant_id_message ~= asx_securities_trade_itch_v2_0.prefs.show_add_order_participant_id_message then
    show.add_order_participant_id_message = asx_securities_trade_itch_v2_0.prefs.show_add_order_participant_id_message
    changed = true
  end
  if show.combination_order_book_directory_message ~= asx_securities_trade_itch_v2_0.prefs.show_combination_order_book_directory_message then
    show.combination_order_book_directory_message = asx_securities_trade_itch_v2_0.prefs.show_combination_order_book_directory_message
    changed = true
  end
  if show.equilibrium_price_update_message ~= asx_securities_trade_itch_v2_0.prefs.show_equilibrium_price_update_message then
    show.equilibrium_price_update_message = asx_securities_trade_itch_v2_0.prefs.show_equilibrium_price_update_message
    changed = true
  end
  if show.message ~= asx_securities_trade_itch_v2_0.prefs.show_message then
    show.message = asx_securities_trade_itch_v2_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= asx_securities_trade_itch_v2_0.prefs.show_message_header then
    show.message_header = asx_securities_trade_itch_v2_0.prefs.show_message_header
    changed = true
  end
  if show.order_book_directory_message ~= asx_securities_trade_itch_v2_0.prefs.show_order_book_directory_message then
    show.order_book_directory_message = asx_securities_trade_itch_v2_0.prefs.show_order_book_directory_message
    changed = true
  end
  if show.order_book_state_message ~= asx_securities_trade_itch_v2_0.prefs.show_order_book_state_message then
    show.order_book_state_message = asx_securities_trade_itch_v2_0.prefs.show_order_book_state_message
    changed = true
  end
  if show.order_delete_message ~= asx_securities_trade_itch_v2_0.prefs.show_order_delete_message then
    show.order_delete_message = asx_securities_trade_itch_v2_0.prefs.show_order_delete_message
    changed = true
  end
  if show.order_executed_message ~= asx_securities_trade_itch_v2_0.prefs.show_order_executed_message then
    show.order_executed_message = asx_securities_trade_itch_v2_0.prefs.show_order_executed_message
    changed = true
  end
  if show.order_executed_with_price_message ~= asx_securities_trade_itch_v2_0.prefs.show_order_executed_with_price_message then
    show.order_executed_with_price_message = asx_securities_trade_itch_v2_0.prefs.show_order_executed_with_price_message
    changed = true
  end
  if show.order_replace_message ~= asx_securities_trade_itch_v2_0.prefs.show_order_replace_message then
    show.order_replace_message = asx_securities_trade_itch_v2_0.prefs.show_order_replace_message
    changed = true
  end
  if show.packet ~= asx_securities_trade_itch_v2_0.prefs.show_packet then
    show.packet = asx_securities_trade_itch_v2_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= asx_securities_trade_itch_v2_0.prefs.show_packet_header then
    show.packet_header = asx_securities_trade_itch_v2_0.prefs.show_packet_header
    changed = true
  end
  if show.seconds_message ~= asx_securities_trade_itch_v2_0.prefs.show_seconds_message then
    show.seconds_message = asx_securities_trade_itch_v2_0.prefs.show_seconds_message
    changed = true
  end
  if show.system_event_message ~= asx_securities_trade_itch_v2_0.prefs.show_system_event_message then
    show.system_event_message = asx_securities_trade_itch_v2_0.prefs.show_system_event_message
    changed = true
  end
  if show.tick_size_message ~= asx_securities_trade_itch_v2_0.prefs.show_tick_size_message then
    show.tick_size_message = asx_securities_trade_itch_v2_0.prefs.show_tick_size_message
    changed = true
  end
  if show.trade_message ~= asx_securities_trade_itch_v2_0.prefs.show_trade_message then
    show.trade_message = asx_securities_trade_itch_v2_0.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= asx_securities_trade_itch_v2_0.prefs.show_payload then
    show.payload = asx_securities_trade_itch_v2_0.prefs.show_payload
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
-- Dissect Asx Securities Trade Itch 2.0
-----------------------------------------------------------------------

-- Size: Best Ask Quantity
asx_securities_trade_itch_v2_0_size_of.best_ask_quantity = 8

-- Display: Best Ask Quantity
asx_securities_trade_itch_v2_0_display.best_ask_quantity = function(value)
  return "Best Ask Quantity: "..value
end

-- Dissect: Best Ask Quantity
asx_securities_trade_itch_v2_0_dissect.best_ask_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.best_ask_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0_display.best_ask_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.best_ask_quantity, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Quantity
asx_securities_trade_itch_v2_0_size_of.best_bid_quantity = 8

-- Display: Best Bid Quantity
asx_securities_trade_itch_v2_0_display.best_bid_quantity = function(value)
  return "Best Bid Quantity: "..value
end

-- Dissect: Best Bid Quantity
asx_securities_trade_itch_v2_0_dissect.best_bid_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.best_bid_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0_display.best_bid_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.best_bid_quantity, range, value, display)

  return offset + length, value
end

-- Size: Best Ask Price
asx_securities_trade_itch_v2_0_size_of.best_ask_price = 4

-- Display: Best Ask Price
asx_securities_trade_itch_v2_0_display.best_ask_price = function(value)
  return "Best Ask Price: "..value
end

-- Dissect: Best Ask Price
asx_securities_trade_itch_v2_0_dissect.best_ask_price = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.best_ask_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0_display.best_ask_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Price
asx_securities_trade_itch_v2_0_size_of.best_bid_price = 4

-- Display: Best Bid Price
asx_securities_trade_itch_v2_0_display.best_bid_price = function(value)
  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
asx_securities_trade_itch_v2_0_dissect.best_bid_price = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.best_bid_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0_display.best_bid_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Equilibrium Price
asx_securities_trade_itch_v2_0_size_of.equilibrium_price = 4

-- Display: Equilibrium Price
asx_securities_trade_itch_v2_0_display.equilibrium_price = function(value)
  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
asx_securities_trade_itch_v2_0_dissect.equilibrium_price = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.equilibrium_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0_display.equilibrium_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Size: Ask Quantity
asx_securities_trade_itch_v2_0_size_of.ask_quantity = 8

-- Display: Ask Quantity
asx_securities_trade_itch_v2_0_display.ask_quantity = function(value)
  return "Ask Quantity: "..value
end

-- Dissect: Ask Quantity
asx_securities_trade_itch_v2_0_dissect.ask_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.ask_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0_display.ask_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.ask_quantity, range, value, display)

  return offset + length, value
end

-- Size: Bid Quantity
asx_securities_trade_itch_v2_0_size_of.bid_quantity = 8

-- Display: Bid Quantity
asx_securities_trade_itch_v2_0_display.bid_quantity = function(value)
  return "Bid Quantity: "..value
end

-- Dissect: Bid Quantity
asx_securities_trade_itch_v2_0_dissect.bid_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.bid_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0_display.bid_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.bid_quantity, range, value, display)

  return offset + length, value
end

-- Size: Order Book Id
asx_securities_trade_itch_v2_0_size_of.order_book_id = 4

-- Display: Order Book Id
asx_securities_trade_itch_v2_0_display.order_book_id = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
asx_securities_trade_itch_v2_0_dissect.order_book_id = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.order_book_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.order_book_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp Nanoseconds
asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds = 4

-- Display: Timestamp Nanoseconds
asx_securities_trade_itch_v2_0_display.timestamp_nanoseconds = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.timestamp_nanoseconds(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Equilibrium Price Update Message
asx_securities_trade_itch_v2_0_size_of.equilibrium_price_update_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_id

  index = index + asx_securities_trade_itch_v2_0_size_of.bid_quantity

  index = index + asx_securities_trade_itch_v2_0_size_of.ask_quantity

  index = index + asx_securities_trade_itch_v2_0_size_of.equilibrium_price

  index = index + asx_securities_trade_itch_v2_0_size_of.best_bid_price

  index = index + asx_securities_trade_itch_v2_0_size_of.best_ask_price

  index = index + asx_securities_trade_itch_v2_0_size_of.best_bid_quantity

  index = index + asx_securities_trade_itch_v2_0_size_of.best_ask_quantity

  return index
end

-- Display: Equilibrium Price Update Message
asx_securities_trade_itch_v2_0_display.equilibrium_price_update_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equilibrium Price Update Message
asx_securities_trade_itch_v2_0_dissect.equilibrium_price_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Bid Quantity: 8 Byte Unsigned Fixed Width Integer
  index, bid_quantity = asx_securities_trade_itch_v2_0_dissect.bid_quantity(buffer, index, packet, parent)

  -- Ask Quantity: 8 Byte Unsigned Fixed Width Integer
  index, ask_quantity = asx_securities_trade_itch_v2_0_dissect.ask_quantity(buffer, index, packet, parent)

  -- Equilibrium Price: 4 Byte Signed Fixed Width Integer
  index, equilibrium_price = asx_securities_trade_itch_v2_0_dissect.equilibrium_price(buffer, index, packet, parent)

  -- Best Bid Price: 4 Byte Signed Fixed Width Integer
  index, best_bid_price = asx_securities_trade_itch_v2_0_dissect.best_bid_price(buffer, index, packet, parent)

  -- Best Ask Price: 4 Byte Signed Fixed Width Integer
  index, best_ask_price = asx_securities_trade_itch_v2_0_dissect.best_ask_price(buffer, index, packet, parent)

  -- Best Bid Quantity: 8 Byte Unsigned Fixed Width Integer
  index, best_bid_quantity = asx_securities_trade_itch_v2_0_dissect.best_bid_quantity(buffer, index, packet, parent)

  -- Best Ask Quantity: 8 Byte Unsigned Fixed Width Integer
  index, best_ask_quantity = asx_securities_trade_itch_v2_0_dissect.best_ask_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Update Message
asx_securities_trade_itch_v2_0_dissect.equilibrium_price_update_message = function(buffer, offset, packet, parent)
  if show.equilibrium_price_update_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.equilibrium_price_update_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.equilibrium_price_update_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.equilibrium_price_update_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.equilibrium_price_update_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Occurred At Cross
asx_securities_trade_itch_v2_0_size_of.occurred_at_cross = 1

-- Display: Occurred At Cross
asx_securities_trade_itch_v2_0_display.occurred_at_cross = function(value)
  if value == "Y" then
    return "Occurred At Cross: Yes (Y)"
  end
  if value == "N" then
    return "Occurred At Cross: No (N)"
  end

  return "Occurred At Cross: Unknown("..value..")"
end

-- Dissect: Occurred At Cross
asx_securities_trade_itch_v2_0_dissect.occurred_at_cross = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.occurred_at_cross
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0_display.occurred_at_cross(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.occurred_at_cross, range, value, display)

  return offset + length, value
end

-- Size: Printable
asx_securities_trade_itch_v2_0_size_of.printable = 1

-- Display: Printable
asx_securities_trade_itch_v2_0_display.printable = function(value)
  if value == "Y" then
    return "Printable: Yes (Y)"
  end
  if value == "N" then
    return "Printable: No (N)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
asx_securities_trade_itch_v2_0_dissect.printable = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.printable
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0_display.printable(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.printable, range, value, display)

  return offset + length, value
end

-- Size: Participant Id Counterparty
asx_securities_trade_itch_v2_0_size_of.participant_id_counterparty = 7

-- Display: Participant Id Counterparty
asx_securities_trade_itch_v2_0_display.participant_id_counterparty = function(value)
  return "Participant Id Counterparty: "..value
end

-- Dissect: Participant Id Counterparty
asx_securities_trade_itch_v2_0_dissect.participant_id_counterparty = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.participant_id_counterparty
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0_display.participant_id_counterparty(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.participant_id_counterparty, range, value, display)

  return offset + length, value
end

-- Size: Participant Id Owner
asx_securities_trade_itch_v2_0_size_of.participant_id_owner = 7

-- Display: Participant Id Owner
asx_securities_trade_itch_v2_0_display.participant_id_owner = function(value)
  return "Participant Id Owner: "..value
end

-- Dissect: Participant Id Owner
asx_securities_trade_itch_v2_0_dissect.participant_id_owner = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.participant_id_owner
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0_display.participant_id_owner(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.participant_id_owner, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
asx_securities_trade_itch_v2_0_size_of.trade_price = 4

-- Display: Trade Price
asx_securities_trade_itch_v2_0_display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
asx_securities_trade_itch_v2_0_dissect.trade_price = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.trade_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0_display.trade_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Quantity
asx_securities_trade_itch_v2_0_size_of.quantity = 8

-- Display: Quantity
asx_securities_trade_itch_v2_0_display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
asx_securities_trade_itch_v2_0_dissect.quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0_display.quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Side
asx_securities_trade_itch_v2_0_size_of.side = 1

-- Display: Side
asx_securities_trade_itch_v2_0_display.side = function(value)
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "B" then
    return "Side: Buy (B)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
asx_securities_trade_itch_v2_0_dissect.side = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0_display.side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Match Id
asx_securities_trade_itch_v2_0_size_of.match_id = 12

-- Display: Match Id
asx_securities_trade_itch_v2_0_display.match_id = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
asx_securities_trade_itch_v2_0_dissect.match_id = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.match_id
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = asx_securities_trade_itch_v2_0_display.match_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Message
asx_securities_trade_itch_v2_0_size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_trade_itch_v2_0_size_of.match_id

  index = index + asx_securities_trade_itch_v2_0_size_of.side

  index = index + asx_securities_trade_itch_v2_0_size_of.quantity

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_id

  index = index + asx_securities_trade_itch_v2_0_size_of.trade_price

  index = index + asx_securities_trade_itch_v2_0_size_of.participant_id_owner

  index = index + asx_securities_trade_itch_v2_0_size_of.participant_id_counterparty

  index = index + asx_securities_trade_itch_v2_0_size_of.printable

  index = index + asx_securities_trade_itch_v2_0_size_of.occurred_at_cross

  return index
end

-- Display: Trade Message
asx_securities_trade_itch_v2_0_display.trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
asx_securities_trade_itch_v2_0_dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Match Id: 12 Byte Unsigned Fixed Width Integer
  index, match_id = asx_securities_trade_itch_v2_0_dissect.match_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0_dissect.side(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_trade_itch_v2_0_dissect.quantity(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_trade_itch_v2_0_dissect.trade_price(buffer, index, packet, parent)

  -- Participant Id Owner: 7 Byte Ascii String
  index, participant_id_owner = asx_securities_trade_itch_v2_0_dissect.participant_id_owner(buffer, index, packet, parent)

  -- Participant Id Counterparty: 7 Byte Ascii String
  index, participant_id_counterparty = asx_securities_trade_itch_v2_0_dissect.participant_id_counterparty(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = asx_securities_trade_itch_v2_0_dissect.printable(buffer, index, packet, parent)

  -- Occurred At Cross: 1 Byte Ascii String Enum with 2 values
  index, occurred_at_cross = asx_securities_trade_itch_v2_0_dissect.occurred_at_cross(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
asx_securities_trade_itch_v2_0_dissect.trade_message = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.trade_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.trade_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.trade_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.trade_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Order Id
asx_securities_trade_itch_v2_0_size_of.order_id = 8

-- Display: Order Id
asx_securities_trade_itch_v2_0_display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
asx_securities_trade_itch_v2_0_dissect.order_id = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.order_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0_display.order_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Delete Message
asx_securities_trade_itch_v2_0_size_of.order_delete_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_trade_itch_v2_0_size_of.order_id

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_id

  index = index + asx_securities_trade_itch_v2_0_size_of.side

  return index
end

-- Display: Order Delete Message
asx_securities_trade_itch_v2_0_display.order_delete_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
asx_securities_trade_itch_v2_0_dissect.order_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_itch_v2_0_dissect.order_id(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0_dissect.side(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
asx_securities_trade_itch_v2_0_dissect.order_delete_message = function(buffer, offset, packet, parent)
  if show.order_delete_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.order_delete_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.order_delete_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.order_delete_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.order_delete_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Exchange Order Type
asx_securities_trade_itch_v2_0_size_of.exchange_order_type = 2

-- Display: Exchange Order Type
asx_securities_trade_itch_v2_0_display.exchange_order_type = function(value)
  if value == 4 then
    return "Exchange Order Type: Market Bid (4)"
  end
  if value == 8 then
    return "Exchange Order Type: Price Stabilisation (8)"
  end
  if value == 32 then
    return "Exchange Order Type: Undisclosed (32)"
  end

  return "Exchange Order Type: Unknown("..value..")"
end

-- Dissect: Exchange Order Type
asx_securities_trade_itch_v2_0_dissect.exchange_order_type = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.exchange_order_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.exchange_order_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.exchange_order_type, range, value, display)

  return offset + length, value
end

-- Size: Price
asx_securities_trade_itch_v2_0_size_of.price = 4

-- Display: Price
asx_securities_trade_itch_v2_0_display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
asx_securities_trade_itch_v2_0_dissect.price = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.price
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0_display.price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- Size: New Order Book Position
asx_securities_trade_itch_v2_0_size_of.new_order_book_position = 4

-- Display: New Order Book Position
asx_securities_trade_itch_v2_0_display.new_order_book_position = function(value)
  return "New Order Book Position: "..value
end

-- Dissect: New Order Book Position
asx_securities_trade_itch_v2_0_dissect.new_order_book_position = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.new_order_book_position
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.new_order_book_position(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.new_order_book_position, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Replace Message
asx_securities_trade_itch_v2_0_size_of.order_replace_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_trade_itch_v2_0_size_of.order_id

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_id

  index = index + asx_securities_trade_itch_v2_0_size_of.side

  index = index + asx_securities_trade_itch_v2_0_size_of.new_order_book_position

  index = index + asx_securities_trade_itch_v2_0_size_of.quantity

  index = index + asx_securities_trade_itch_v2_0_size_of.price

  index = index + asx_securities_trade_itch_v2_0_size_of.exchange_order_type

  return index
end

-- Display: Order Replace Message
asx_securities_trade_itch_v2_0_display.order_replace_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
asx_securities_trade_itch_v2_0_dissect.order_replace_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_itch_v2_0_dissect.order_id(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0_dissect.side(buffer, index, packet, parent)

  -- New Order Book Position: 4 Byte Unsigned Fixed Width Integer
  index, new_order_book_position = asx_securities_trade_itch_v2_0_dissect.new_order_book_position(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_trade_itch_v2_0_dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_trade_itch_v2_0_dissect.price(buffer, index, packet, parent)

  -- Exchange Order Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, exchange_order_type = asx_securities_trade_itch_v2_0_dissect.exchange_order_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
asx_securities_trade_itch_v2_0_dissect.order_replace_message = function(buffer, offset, packet, parent)
  if show.order_replace_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.order_replace_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.order_replace_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.order_replace_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.order_replace_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Executed Quantity
asx_securities_trade_itch_v2_0_size_of.executed_quantity = 8

-- Display: Executed Quantity
asx_securities_trade_itch_v2_0_display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
asx_securities_trade_itch_v2_0_dissect.executed_quantity = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.executed_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0_display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed With Price Message
asx_securities_trade_itch_v2_0_size_of.order_executed_with_price_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_trade_itch_v2_0_size_of.order_id

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_id

  index = index + asx_securities_trade_itch_v2_0_size_of.side

  index = index + asx_securities_trade_itch_v2_0_size_of.executed_quantity

  index = index + asx_securities_trade_itch_v2_0_size_of.match_id

  index = index + asx_securities_trade_itch_v2_0_size_of.participant_id_owner

  index = index + asx_securities_trade_itch_v2_0_size_of.participant_id_counterparty

  index = index + asx_securities_trade_itch_v2_0_size_of.trade_price

  index = index + asx_securities_trade_itch_v2_0_size_of.occurred_at_cross

  index = index + asx_securities_trade_itch_v2_0_size_of.printable

  return index
end

-- Display: Order Executed With Price Message
asx_securities_trade_itch_v2_0_display.order_executed_with_price_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
asx_securities_trade_itch_v2_0_dissect.order_executed_with_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_itch_v2_0_dissect.order_id(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0_dissect.side(buffer, index, packet, parent)

  -- Executed Quantity: 8 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_trade_itch_v2_0_dissect.executed_quantity(buffer, index, packet, parent)

  -- Match Id: 12 Byte Unsigned Fixed Width Integer
  index, match_id = asx_securities_trade_itch_v2_0_dissect.match_id(buffer, index, packet, parent)

  -- Participant Id Owner: 7 Byte Ascii String
  index, participant_id_owner = asx_securities_trade_itch_v2_0_dissect.participant_id_owner(buffer, index, packet, parent)

  -- Participant Id Counterparty: 7 Byte Ascii String
  index, participant_id_counterparty = asx_securities_trade_itch_v2_0_dissect.participant_id_counterparty(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_trade_itch_v2_0_dissect.trade_price(buffer, index, packet, parent)

  -- Occurred At Cross: 1 Byte Ascii String Enum with 2 values
  index, occurred_at_cross = asx_securities_trade_itch_v2_0_dissect.occurred_at_cross(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = asx_securities_trade_itch_v2_0_dissect.printable(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
asx_securities_trade_itch_v2_0_dissect.order_executed_with_price_message = function(buffer, offset, packet, parent)
  if show.order_executed_with_price_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.order_executed_with_price_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.order_executed_with_price_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.order_executed_with_price_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Order Executed Message
asx_securities_trade_itch_v2_0_size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_trade_itch_v2_0_size_of.order_id

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_id

  index = index + asx_securities_trade_itch_v2_0_size_of.side

  index = index + asx_securities_trade_itch_v2_0_size_of.executed_quantity

  index = index + asx_securities_trade_itch_v2_0_size_of.match_id

  index = index + asx_securities_trade_itch_v2_0_size_of.participant_id_owner

  index = index + asx_securities_trade_itch_v2_0_size_of.participant_id_counterparty

  return index
end

-- Display: Order Executed Message
asx_securities_trade_itch_v2_0_display.order_executed_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
asx_securities_trade_itch_v2_0_dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_itch_v2_0_dissect.order_id(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0_dissect.side(buffer, index, packet, parent)

  -- Executed Quantity: 8 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_trade_itch_v2_0_dissect.executed_quantity(buffer, index, packet, parent)

  -- Match Id: 12 Byte Unsigned Fixed Width Integer
  index, match_id = asx_securities_trade_itch_v2_0_dissect.match_id(buffer, index, packet, parent)

  -- Participant Id Owner: 7 Byte Ascii String
  index, participant_id_owner = asx_securities_trade_itch_v2_0_dissect.participant_id_owner(buffer, index, packet, parent)

  -- Participant Id Counterparty: 7 Byte Ascii String
  index, participant_id_counterparty = asx_securities_trade_itch_v2_0_dissect.participant_id_counterparty(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
asx_securities_trade_itch_v2_0_dissect.order_executed_message = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.order_executed_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.order_executed_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.order_executed_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.order_executed_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Participant Id
asx_securities_trade_itch_v2_0_size_of.participant_id = 7

-- Display: Participant Id
asx_securities_trade_itch_v2_0_display.participant_id = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
asx_securities_trade_itch_v2_0_dissect.participant_id = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.participant_id
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0_display.participant_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Size: Lot Type
asx_securities_trade_itch_v2_0_size_of.lot_type = 1

-- Display: Lot Type
asx_securities_trade_itch_v2_0_display.lot_type = function(value)
  if value == 0 then
    return "Lot Type: Undefined (0)"
  end
  if value == 1 then
    return "Lot Type: Odd Lot (1)"
  end
  if value == 2 then
    return "Lot Type: Round Lot (2)"
  end
  if value == 3 then
    return "Lot Type: Block Lot (3)"
  end
  if value == 4 then
    return "Lot Type: All Or None Lot (4)"
  end

  return "Lot Type: Unknown("..value..")"
end

-- Dissect: Lot Type
asx_securities_trade_itch_v2_0_dissect.lot_type = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.lot_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.lot_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Size: Order Book Position
asx_securities_trade_itch_v2_0_size_of.order_book_position = 4

-- Display: Order Book Position
asx_securities_trade_itch_v2_0_display.order_book_position = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
asx_securities_trade_itch_v2_0_dissect.order_book_position = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.order_book_position
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.order_book_position(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Participant Id Message
asx_securities_trade_itch_v2_0_size_of.add_order_participant_id_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_trade_itch_v2_0_size_of.order_id

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_id

  index = index + asx_securities_trade_itch_v2_0_size_of.side

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_position

  index = index + asx_securities_trade_itch_v2_0_size_of.quantity

  index = index + asx_securities_trade_itch_v2_0_size_of.price

  index = index + asx_securities_trade_itch_v2_0_size_of.exchange_order_type

  index = index + asx_securities_trade_itch_v2_0_size_of.lot_type

  index = index + asx_securities_trade_itch_v2_0_size_of.participant_id

  return index
end

-- Display: Add Order Participant Id Message
asx_securities_trade_itch_v2_0_display.add_order_participant_id_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Participant Id Message
asx_securities_trade_itch_v2_0_dissect.add_order_participant_id_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_itch_v2_0_dissect.order_id(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0_dissect.side(buffer, index, packet, parent)

  -- Order Book Position: 4 Byte Unsigned Fixed Width Integer
  index, order_book_position = asx_securities_trade_itch_v2_0_dissect.order_book_position(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_trade_itch_v2_0_dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_trade_itch_v2_0_dissect.price(buffer, index, packet, parent)

  -- Exchange Order Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, exchange_order_type = asx_securities_trade_itch_v2_0_dissect.exchange_order_type(buffer, index, packet, parent)

  -- Lot Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, lot_type = asx_securities_trade_itch_v2_0_dissect.lot_type(buffer, index, packet, parent)

  -- Participant Id: 7 Byte Ascii String
  index, participant_id = asx_securities_trade_itch_v2_0_dissect.participant_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Participant Id Message
asx_securities_trade_itch_v2_0_dissect.add_order_participant_id_message = function(buffer, offset, packet, parent)
  if show.add_order_participant_id_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.add_order_participant_id_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.add_order_participant_id_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.add_order_participant_id_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.add_order_participant_id_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Add Order No Participant Id Message
asx_securities_trade_itch_v2_0_size_of.add_order_no_participant_id_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_trade_itch_v2_0_size_of.order_id

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_id

  index = index + asx_securities_trade_itch_v2_0_size_of.side

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_position

  index = index + asx_securities_trade_itch_v2_0_size_of.quantity

  index = index + asx_securities_trade_itch_v2_0_size_of.price

  index = index + asx_securities_trade_itch_v2_0_size_of.exchange_order_type

  index = index + asx_securities_trade_itch_v2_0_size_of.lot_type

  return index
end

-- Display: Add Order No Participant Id Message
asx_securities_trade_itch_v2_0_display.add_order_no_participant_id_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order No Participant Id Message
asx_securities_trade_itch_v2_0_dissect.add_order_no_participant_id_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_itch_v2_0_dissect.order_id(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0_dissect.side(buffer, index, packet, parent)

  -- Order Book Position: 4 Byte Unsigned Fixed Width Integer
  index, order_book_position = asx_securities_trade_itch_v2_0_dissect.order_book_position(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_trade_itch_v2_0_dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_trade_itch_v2_0_dissect.price(buffer, index, packet, parent)

  -- Exchange Order Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, exchange_order_type = asx_securities_trade_itch_v2_0_dissect.exchange_order_type(buffer, index, packet, parent)

  -- Lot Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, lot_type = asx_securities_trade_itch_v2_0_dissect.lot_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Participant Id Message
asx_securities_trade_itch_v2_0_dissect.add_order_no_participant_id_message = function(buffer, offset, packet, parent)
  if show.add_order_no_participant_id_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.add_order_no_participant_id_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.add_order_no_participant_id_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.add_order_no_participant_id_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.add_order_no_participant_id_message_fields(buffer, offset, packet, element)
  end
end

-- Size: State Name
asx_securities_trade_itch_v2_0_size_of.state_name = 20

-- Display: State Name
asx_securities_trade_itch_v2_0_display.state_name = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
asx_securities_trade_itch_v2_0_dissect.state_name = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.state_name
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0_display.state_name(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.state_name, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Book State Message
asx_securities_trade_itch_v2_0_size_of.order_book_state_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_id

  index = index + asx_securities_trade_itch_v2_0_size_of.state_name

  return index
end

-- Display: Order Book State Message
asx_securities_trade_itch_v2_0_display.order_book_state_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
asx_securities_trade_itch_v2_0_dissect.order_book_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- State Name: 20 Byte Ascii String
  index, state_name = asx_securities_trade_itch_v2_0_dissect.state_name(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
asx_securities_trade_itch_v2_0_dissect.order_book_state_message = function(buffer, offset, packet, parent)
  if show.order_book_state_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.order_book_state_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.order_book_state_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.order_book_state_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.order_book_state_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Event Code
asx_securities_trade_itch_v2_0_size_of.event_code = 1

-- Display: Event Code
asx_securities_trade_itch_v2_0_display.event_code = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
asx_securities_trade_itch_v2_0_dissect.event_code = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0_display.event_code(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
asx_securities_trade_itch_v2_0_size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_trade_itch_v2_0_size_of.event_code

  return index
end

-- Display: System Event Message
asx_securities_trade_itch_v2_0_display.system_event_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
asx_securities_trade_itch_v2_0_dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 2 values
  index, event_code = asx_securities_trade_itch_v2_0_dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
asx_securities_trade_itch_v2_0_dissect.system_event_message = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.system_event_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.system_event_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.system_event_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.system_event_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Price To
asx_securities_trade_itch_v2_0_size_of.price_to = 4

-- Display: Price To
asx_securities_trade_itch_v2_0_display.price_to = function(value)
  return "Price To: "..value
end

-- Dissect: Price To
asx_securities_trade_itch_v2_0_dissect.price_to = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.price_to
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0_display.price_to(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.price_to, range, value, display)

  return offset + length, value
end

-- Size: Price From
asx_securities_trade_itch_v2_0_size_of.price_from = 4

-- Display: Price From
asx_securities_trade_itch_v2_0_display.price_from = function(value)
  return "Price From: "..value
end

-- Dissect: Price From
asx_securities_trade_itch_v2_0_dissect.price_from = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.price_from
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0_display.price_from(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.price_from, range, value, display)

  return offset + length, value
end

-- Size: Tick Size
asx_securities_trade_itch_v2_0_size_of.tick_size = 8

-- Display: Tick Size
asx_securities_trade_itch_v2_0_display.tick_size = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
asx_securities_trade_itch_v2_0_dissect.tick_size = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.tick_size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0_display.tick_size(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tick Size Message
asx_securities_trade_itch_v2_0_size_of.tick_size_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_id

  index = index + asx_securities_trade_itch_v2_0_size_of.tick_size

  index = index + asx_securities_trade_itch_v2_0_size_of.price_from

  index = index + asx_securities_trade_itch_v2_0_size_of.price_to

  return index
end

-- Display: Tick Size Message
asx_securities_trade_itch_v2_0_display.tick_size_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Message
asx_securities_trade_itch_v2_0_dissect.tick_size_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Tick Size: 8 Byte Unsigned Fixed Width Integer
  index, tick_size = asx_securities_trade_itch_v2_0_dissect.tick_size(buffer, index, packet, parent)

  -- Price From: 4 Byte Signed Fixed Width Integer
  index, price_from = asx_securities_trade_itch_v2_0_dissect.price_from(buffer, index, packet, parent)

  -- Price To: 4 Byte Signed Fixed Width Integer
  index, price_to = asx_securities_trade_itch_v2_0_dissect.price_to(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Message
asx_securities_trade_itch_v2_0_dissect.tick_size_message = function(buffer, offset, packet, parent)
  if show.tick_size_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.tick_size_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.tick_size_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.tick_size_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.tick_size_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Leg 4 Ratio
asx_securities_trade_itch_v2_0_size_of.leg_4_ratio = 4

-- Display: Leg 4 Ratio
asx_securities_trade_itch_v2_0_display.leg_4_ratio = function(value)
  return "Leg 4 Ratio: "..value
end

-- Dissect: Leg 4 Ratio
asx_securities_trade_itch_v2_0_dissect.leg_4_ratio = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.leg_4_ratio
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.leg_4_ratio(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.leg_4_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg 4 Side
asx_securities_trade_itch_v2_0_size_of.leg_4_side = 1

-- Display: Leg 4 Side
asx_securities_trade_itch_v2_0_display.leg_4_side = function(value)
  if value == "B" then
    return "Leg 4 Side: Buy Leg (B)"
  end
  if value == "C" then
    return "Leg 4 Side: Sell Leg (C)"
  end
  if value == "?" then
    return "Leg 4 Side: Not Defined (?)"
  end

  return "Leg 4 Side: Unknown("..value..")"
end

-- Dissect: Leg 4 Side
asx_securities_trade_itch_v2_0_dissect.leg_4_side = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.leg_4_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0_display.leg_4_side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.leg_4_side, range, value, display)

  return offset + length, value
end

-- Size: Leg 4 Symbol
asx_securities_trade_itch_v2_0_size_of.leg_4_symbol = 32

-- Display: Leg 4 Symbol
asx_securities_trade_itch_v2_0_display.leg_4_symbol = function(value)
  return "Leg 4 Symbol: "..value
end

-- Dissect: Leg 4 Symbol
asx_securities_trade_itch_v2_0_dissect.leg_4_symbol = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.leg_4_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0_display.leg_4_symbol(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.leg_4_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leg 3 Ratio
asx_securities_trade_itch_v2_0_size_of.leg_3_ratio = 4

-- Display: Leg 3 Ratio
asx_securities_trade_itch_v2_0_display.leg_3_ratio = function(value)
  return "Leg 3 Ratio: "..value
end

-- Dissect: Leg 3 Ratio
asx_securities_trade_itch_v2_0_dissect.leg_3_ratio = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.leg_3_ratio
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.leg_3_ratio(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.leg_3_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg 3 Side
asx_securities_trade_itch_v2_0_size_of.leg_3_side = 1

-- Display: Leg 3 Side
asx_securities_trade_itch_v2_0_display.leg_3_side = function(value)
  if value == "B" then
    return "Leg 3 Side: Buy Leg (B)"
  end
  if value == "C" then
    return "Leg 3 Side: Sell Leg (C)"
  end
  if value == "?" then
    return "Leg 3 Side: Not Defined (?)"
  end

  return "Leg 3 Side: Unknown("..value..")"
end

-- Dissect: Leg 3 Side
asx_securities_trade_itch_v2_0_dissect.leg_3_side = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.leg_3_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0_display.leg_3_side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.leg_3_side, range, value, display)

  return offset + length, value
end

-- Size: Leg 3 Symbol
asx_securities_trade_itch_v2_0_size_of.leg_3_symbol = 32

-- Display: Leg 3 Symbol
asx_securities_trade_itch_v2_0_display.leg_3_symbol = function(value)
  return "Leg 3 Symbol: "..value
end

-- Dissect: Leg 3 Symbol
asx_securities_trade_itch_v2_0_dissect.leg_3_symbol = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.leg_3_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0_display.leg_3_symbol(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.leg_3_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leg 2 Ratio
asx_securities_trade_itch_v2_0_size_of.leg_2_ratio = 4

-- Display: Leg 2 Ratio
asx_securities_trade_itch_v2_0_display.leg_2_ratio = function(value)
  return "Leg 2 Ratio: "..value
end

-- Dissect: Leg 2 Ratio
asx_securities_trade_itch_v2_0_dissect.leg_2_ratio = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.leg_2_ratio
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.leg_2_ratio(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.leg_2_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg 2 Side
asx_securities_trade_itch_v2_0_size_of.leg_2_side = 1

-- Display: Leg 2 Side
asx_securities_trade_itch_v2_0_display.leg_2_side = function(value)
  if value == "B" then
    return "Leg 2 Side: Buy Leg (B)"
  end
  if value == "C" then
    return "Leg 2 Side: Sell Leg (C)"
  end

  return "Leg 2 Side: Unknown("..value..")"
end

-- Dissect: Leg 2 Side
asx_securities_trade_itch_v2_0_dissect.leg_2_side = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.leg_2_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0_display.leg_2_side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.leg_2_side, range, value, display)

  return offset + length, value
end

-- Size: Leg 2 Symbol
asx_securities_trade_itch_v2_0_size_of.leg_2_symbol = 32

-- Display: Leg 2 Symbol
asx_securities_trade_itch_v2_0_display.leg_2_symbol = function(value)
  return "Leg 2 Symbol: "..value
end

-- Dissect: Leg 2 Symbol
asx_securities_trade_itch_v2_0_dissect.leg_2_symbol = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.leg_2_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0_display.leg_2_symbol(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.leg_2_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leg 1 Ratio
asx_securities_trade_itch_v2_0_size_of.leg_1_ratio = 4

-- Display: Leg 1 Ratio
asx_securities_trade_itch_v2_0_display.leg_1_ratio = function(value)
  return "Leg 1 Ratio: "..value
end

-- Dissect: Leg 1 Ratio
asx_securities_trade_itch_v2_0_dissect.leg_1_ratio = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.leg_1_ratio
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.leg_1_ratio(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.leg_1_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg 1 Side
asx_securities_trade_itch_v2_0_size_of.leg_1_side = 1

-- Display: Leg 1 Side
asx_securities_trade_itch_v2_0_display.leg_1_side = function(value)
  if value == "B" then
    return "Leg 1 Side: Buy Leg (B)"
  end
  if value == "C" then
    return "Leg 1 Side: Sell Leg (C)"
  end

  return "Leg 1 Side: Unknown("..value..")"
end

-- Dissect: Leg 1 Side
asx_securities_trade_itch_v2_0_dissect.leg_1_side = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.leg_1_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0_display.leg_1_side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.leg_1_side, range, value, display)

  return offset + length, value
end

-- Size: Leg 1 Symbol
asx_securities_trade_itch_v2_0_size_of.leg_1_symbol = 32

-- Display: Leg 1 Symbol
asx_securities_trade_itch_v2_0_display.leg_1_symbol = function(value)
  return "Leg 1 Symbol: "..value
end

-- Dissect: Leg 1 Symbol
asx_securities_trade_itch_v2_0_dissect.leg_1_symbol = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.leg_1_symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0_display.leg_1_symbol(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.leg_1_symbol, range, value, display)

  return offset + length, value
end

-- Size: Nominal Value
asx_securities_trade_itch_v2_0_size_of.nominal_value = 8

-- Display: Nominal Value
asx_securities_trade_itch_v2_0_display.nominal_value = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
asx_securities_trade_itch_v2_0_dissect.nominal_value = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.nominal_value
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0_display.nominal_value(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Size: Block Lot Size
asx_securities_trade_itch_v2_0_size_of.block_lot_size = 4

-- Display: Block Lot Size
asx_securities_trade_itch_v2_0_display.block_lot_size = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
asx_securities_trade_itch_v2_0_dissect.block_lot_size = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.block_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.block_lot_size(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Round Lot Size
asx_securities_trade_itch_v2_0_size_of.round_lot_size = 4

-- Display: Round Lot Size
asx_securities_trade_itch_v2_0_display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
asx_securities_trade_itch_v2_0_dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Odd Lot Size
asx_securities_trade_itch_v2_0_size_of.odd_lot_size = 4

-- Display: Odd Lot Size
asx_securities_trade_itch_v2_0_display.odd_lot_size = function(value)
  return "Odd Lot Size: "..value
end

-- Dissect: Odd Lot Size
asx_securities_trade_itch_v2_0_dissect.odd_lot_size = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.odd_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.odd_lot_size(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.odd_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Number Of Decimals In Nominal Value
asx_securities_trade_itch_v2_0_size_of.number_of_decimals_in_nominal_value = 2

-- Display: Number Of Decimals In Nominal Value
asx_securities_trade_itch_v2_0_display.number_of_decimals_in_nominal_value = function(value)
  return "Number Of Decimals In Nominal Value: "..value
end

-- Dissect: Number Of Decimals In Nominal Value
asx_securities_trade_itch_v2_0_dissect.number_of_decimals_in_nominal_value = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.number_of_decimals_in_nominal_value
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.number_of_decimals_in_nominal_value(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.number_of_decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Size: Number Of Decimals In Price
asx_securities_trade_itch_v2_0_size_of.number_of_decimals_in_price = 2

-- Display: Number Of Decimals In Price
asx_securities_trade_itch_v2_0_display.number_of_decimals_in_price = function(value)
  return "Number Of Decimals In Price: "..value
end

-- Dissect: Number Of Decimals In Price
asx_securities_trade_itch_v2_0_dissect.number_of_decimals_in_price = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.number_of_decimals_in_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.number_of_decimals_in_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.number_of_decimals_in_price, range, value, display)

  return offset + length, value
end

-- Size: Trading Currency
asx_securities_trade_itch_v2_0_size_of.trading_currency = 3

-- Display: Trading Currency
asx_securities_trade_itch_v2_0_display.trading_currency = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
asx_securities_trade_itch_v2_0_dissect.trading_currency = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.trading_currency
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0_display.trading_currency(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Size: Financial Product
asx_securities_trade_itch_v2_0_size_of.financial_product = 1

-- Display: Financial Product
asx_securities_trade_itch_v2_0_display.financial_product = function(value)
  if value == 1 then
    return "Financial Product: Option (1)"
  end
  if value == 3 then
    return "Financial Product: Future (3)"
  end
  if value == 5 then
    return "Financial Product: Cash (5)"
  end
  if value == 11 then
    return "Financial Product: Standard Combination (11)"
  end

  return "Financial Product: Unknown("..value..")"
end

-- Dissect: Financial Product
asx_securities_trade_itch_v2_0_dissect.financial_product = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.financial_product
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.financial_product(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Size: Isin
asx_securities_trade_itch_v2_0_size_of.isin = 12

-- Display: Isin
asx_securities_trade_itch_v2_0_display.isin = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
asx_securities_trade_itch_v2_0_dissect.isin = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.isin
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0_display.isin(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.isin, range, value, display)

  return offset + length, value
end

-- Size: Long Name
asx_securities_trade_itch_v2_0_size_of.long_name = 32

-- Display: Long Name
asx_securities_trade_itch_v2_0_display.long_name = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
asx_securities_trade_itch_v2_0_dissect.long_name = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.long_name
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0_display.long_name(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.long_name, range, value, display)

  return offset + length, value
end

-- Size: Symbol
asx_securities_trade_itch_v2_0_size_of.symbol = 32

-- Display: Symbol
asx_securities_trade_itch_v2_0_display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
asx_securities_trade_itch_v2_0_dissect.symbol = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.symbol
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0_display.symbol(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Combination Order Book Directory Message
asx_securities_trade_itch_v2_0_size_of.combination_order_book_directory_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_id

  index = index + asx_securities_trade_itch_v2_0_size_of.symbol

  index = index + asx_securities_trade_itch_v2_0_size_of.long_name

  index = index + asx_securities_trade_itch_v2_0_size_of.isin

  index = index + asx_securities_trade_itch_v2_0_size_of.financial_product

  index = index + asx_securities_trade_itch_v2_0_size_of.trading_currency

  index = index + asx_securities_trade_itch_v2_0_size_of.number_of_decimals_in_price

  index = index + asx_securities_trade_itch_v2_0_size_of.number_of_decimals_in_nominal_value

  index = index + asx_securities_trade_itch_v2_0_size_of.odd_lot_size

  index = index + asx_securities_trade_itch_v2_0_size_of.round_lot_size

  index = index + asx_securities_trade_itch_v2_0_size_of.block_lot_size

  index = index + asx_securities_trade_itch_v2_0_size_of.nominal_value

  index = index + asx_securities_trade_itch_v2_0_size_of.leg_1_symbol

  index = index + asx_securities_trade_itch_v2_0_size_of.leg_1_side

  index = index + asx_securities_trade_itch_v2_0_size_of.leg_1_ratio

  index = index + asx_securities_trade_itch_v2_0_size_of.leg_2_symbol

  index = index + asx_securities_trade_itch_v2_0_size_of.leg_2_side

  index = index + asx_securities_trade_itch_v2_0_size_of.leg_2_ratio

  index = index + asx_securities_trade_itch_v2_0_size_of.leg_3_symbol

  index = index + asx_securities_trade_itch_v2_0_size_of.leg_3_side

  index = index + asx_securities_trade_itch_v2_0_size_of.leg_3_ratio

  index = index + asx_securities_trade_itch_v2_0_size_of.leg_4_symbol

  index = index + asx_securities_trade_itch_v2_0_size_of.leg_4_side

  index = index + asx_securities_trade_itch_v2_0_size_of.leg_4_ratio

  return index
end

-- Display: Combination Order Book Directory Message
asx_securities_trade_itch_v2_0_display.combination_order_book_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Order Book Directory Message
asx_securities_trade_itch_v2_0_dissect.combination_order_book_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Symbol: 32 Byte Ascii String
  index, symbol = asx_securities_trade_itch_v2_0_dissect.symbol(buffer, index, packet, parent)

  -- Long Name: 32 Byte Ascii String
  index, long_name = asx_securities_trade_itch_v2_0_dissect.long_name(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = asx_securities_trade_itch_v2_0_dissect.isin(buffer, index, packet, parent)

  -- Financial Product: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, financial_product = asx_securities_trade_itch_v2_0_dissect.financial_product(buffer, index, packet, parent)

  -- Trading Currency: 3 Byte Ascii String
  index, trading_currency = asx_securities_trade_itch_v2_0_dissect.trading_currency(buffer, index, packet, parent)

  -- Number Of Decimals In Price: 2 Byte Unsigned Fixed Width Integer
  index, number_of_decimals_in_price = asx_securities_trade_itch_v2_0_dissect.number_of_decimals_in_price(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: 2 Byte Unsigned Fixed Width Integer
  index, number_of_decimals_in_nominal_value = asx_securities_trade_itch_v2_0_dissect.number_of_decimals_in_nominal_value(buffer, index, packet, parent)

  -- Odd Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, odd_lot_size = asx_securities_trade_itch_v2_0_dissect.odd_lot_size(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = asx_securities_trade_itch_v2_0_dissect.round_lot_size(buffer, index, packet, parent)

  -- Block Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, block_lot_size = asx_securities_trade_itch_v2_0_dissect.block_lot_size(buffer, index, packet, parent)

  -- Nominal Value: 8 Byte Unsigned Fixed Width Integer
  index, nominal_value = asx_securities_trade_itch_v2_0_dissect.nominal_value(buffer, index, packet, parent)

  -- Leg 1 Symbol: 32 Byte Ascii String
  index, leg_1_symbol = asx_securities_trade_itch_v2_0_dissect.leg_1_symbol(buffer, index, packet, parent)

  -- Leg 1 Side: 1 Byte Ascii String Enum with 2 values
  index, leg_1_side = asx_securities_trade_itch_v2_0_dissect.leg_1_side(buffer, index, packet, parent)

  -- Leg 1 Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_1_ratio = asx_securities_trade_itch_v2_0_dissect.leg_1_ratio(buffer, index, packet, parent)

  -- Leg 2 Symbol: 32 Byte Ascii String
  index, leg_2_symbol = asx_securities_trade_itch_v2_0_dissect.leg_2_symbol(buffer, index, packet, parent)

  -- Leg 2 Side: 1 Byte Ascii String Enum with 2 values
  index, leg_2_side = asx_securities_trade_itch_v2_0_dissect.leg_2_side(buffer, index, packet, parent)

  -- Leg 2 Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_2_ratio = asx_securities_trade_itch_v2_0_dissect.leg_2_ratio(buffer, index, packet, parent)

  -- Leg 3 Symbol: 32 Byte Ascii String
  index, leg_3_symbol = asx_securities_trade_itch_v2_0_dissect.leg_3_symbol(buffer, index, packet, parent)

  -- Leg 3 Side: 1 Byte Ascii String Enum with 3 values
  index, leg_3_side = asx_securities_trade_itch_v2_0_dissect.leg_3_side(buffer, index, packet, parent)

  -- Leg 3 Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_3_ratio = asx_securities_trade_itch_v2_0_dissect.leg_3_ratio(buffer, index, packet, parent)

  -- Leg 4 Symbol: 32 Byte Ascii String
  index, leg_4_symbol = asx_securities_trade_itch_v2_0_dissect.leg_4_symbol(buffer, index, packet, parent)

  -- Leg 4 Side: 1 Byte Ascii String Enum with 3 values
  index, leg_4_side = asx_securities_trade_itch_v2_0_dissect.leg_4_side(buffer, index, packet, parent)

  -- Leg 4 Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_4_ratio = asx_securities_trade_itch_v2_0_dissect.leg_4_ratio(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Book Directory Message
asx_securities_trade_itch_v2_0_dissect.combination_order_book_directory_message = function(buffer, offset, packet, parent)
  if show.combination_order_book_directory_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.combination_order_book_directory_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.combination_order_book_directory_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.combination_order_book_directory_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.combination_order_book_directory_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate size of: Order Book Directory Message
asx_securities_trade_itch_v2_0_size_of.order_book_directory_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_nanoseconds

  index = index + asx_securities_trade_itch_v2_0_size_of.order_book_id

  index = index + asx_securities_trade_itch_v2_0_size_of.symbol

  index = index + asx_securities_trade_itch_v2_0_size_of.long_name

  index = index + asx_securities_trade_itch_v2_0_size_of.isin

  index = index + asx_securities_trade_itch_v2_0_size_of.financial_product

  index = index + asx_securities_trade_itch_v2_0_size_of.trading_currency

  index = index + asx_securities_trade_itch_v2_0_size_of.number_of_decimals_in_price

  index = index + asx_securities_trade_itch_v2_0_size_of.number_of_decimals_in_nominal_value

  index = index + asx_securities_trade_itch_v2_0_size_of.odd_lot_size

  index = index + asx_securities_trade_itch_v2_0_size_of.round_lot_size

  index = index + asx_securities_trade_itch_v2_0_size_of.block_lot_size

  index = index + asx_securities_trade_itch_v2_0_size_of.nominal_value

  return index
end

-- Display: Order Book Directory Message
asx_securities_trade_itch_v2_0_display.order_book_directory_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory Message
asx_securities_trade_itch_v2_0_dissect.order_book_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0_dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0_dissect.order_book_id(buffer, index, packet, parent)

  -- Symbol: 32 Byte Ascii String
  index, symbol = asx_securities_trade_itch_v2_0_dissect.symbol(buffer, index, packet, parent)

  -- Long Name: 32 Byte Ascii String
  index, long_name = asx_securities_trade_itch_v2_0_dissect.long_name(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = asx_securities_trade_itch_v2_0_dissect.isin(buffer, index, packet, parent)

  -- Financial Product: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, financial_product = asx_securities_trade_itch_v2_0_dissect.financial_product(buffer, index, packet, parent)

  -- Trading Currency: 3 Byte Ascii String
  index, trading_currency = asx_securities_trade_itch_v2_0_dissect.trading_currency(buffer, index, packet, parent)

  -- Number Of Decimals In Price: 2 Byte Unsigned Fixed Width Integer
  index, number_of_decimals_in_price = asx_securities_trade_itch_v2_0_dissect.number_of_decimals_in_price(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: 2 Byte Unsigned Fixed Width Integer
  index, number_of_decimals_in_nominal_value = asx_securities_trade_itch_v2_0_dissect.number_of_decimals_in_nominal_value(buffer, index, packet, parent)

  -- Odd Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, odd_lot_size = asx_securities_trade_itch_v2_0_dissect.odd_lot_size(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = asx_securities_trade_itch_v2_0_dissect.round_lot_size(buffer, index, packet, parent)

  -- Block Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, block_lot_size = asx_securities_trade_itch_v2_0_dissect.block_lot_size(buffer, index, packet, parent)

  -- Nominal Value: 8 Byte Unsigned Fixed Width Integer
  index, nominal_value = asx_securities_trade_itch_v2_0_dissect.nominal_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory Message
asx_securities_trade_itch_v2_0_dissect.order_book_directory_message = function(buffer, offset, packet, parent)
  if show.order_book_directory_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.order_book_directory_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.order_book_directory_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.order_book_directory_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.order_book_directory_message_fields(buffer, offset, packet, element)
  end
end

-- Size: Timestamp Seconds
asx_securities_trade_itch_v2_0_size_of.timestamp_seconds = 4

-- Display: Timestamp Seconds
asx_securities_trade_itch_v2_0_display.timestamp_seconds = function(value)
  return "Timestamp Seconds: "..value
end

-- Dissect: Timestamp Seconds
asx_securities_trade_itch_v2_0_dissect.timestamp_seconds = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.timestamp_seconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.timestamp_seconds(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.timestamp_seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Seconds Message
asx_securities_trade_itch_v2_0_size_of.seconds_message = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.timestamp_seconds

  return index
end

-- Display: Seconds Message
asx_securities_trade_itch_v2_0_display.seconds_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
asx_securities_trade_itch_v2_0_dissect.seconds_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Seconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_seconds = asx_securities_trade_itch_v2_0_dissect.timestamp_seconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
asx_securities_trade_itch_v2_0_dissect.seconds_message = function(buffer, offset, packet, parent)
  if show.seconds_message then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.seconds_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.seconds_message_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.seconds_message(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.seconds_message_fields(buffer, offset, packet, element)
  end
end

-- Calculate runtime size of: Payload
asx_securities_trade_itch_v2_0_size_of.payload = function(buffer, offset, message_type)
  -- Size of Seconds Message
  if message_type == "T" then
    return asx_securities_trade_itch_v2_0_size_of.seconds_message(buffer, offset)
  end
  -- Size of Order Book Directory Message
  if message_type == "R" then
    return asx_securities_trade_itch_v2_0_size_of.order_book_directory_message(buffer, offset)
  end
  -- Size of Combination Order Book Directory Message
  if message_type == "M" then
    return asx_securities_trade_itch_v2_0_size_of.combination_order_book_directory_message(buffer, offset)
  end
  -- Size of Tick Size Message
  if message_type == "L" then
    return asx_securities_trade_itch_v2_0_size_of.tick_size_message(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return asx_securities_trade_itch_v2_0_size_of.system_event_message(buffer, offset)
  end
  -- Size of Order Book State Message
  if message_type == "O" then
    return asx_securities_trade_itch_v2_0_size_of.order_book_state_message(buffer, offset)
  end
  -- Size of Add Order No Participant Id Message
  if message_type == "A" then
    return asx_securities_trade_itch_v2_0_size_of.add_order_no_participant_id_message(buffer, offset)
  end
  -- Size of Add Order Participant Id Message
  if message_type == "F" then
    return asx_securities_trade_itch_v2_0_size_of.add_order_participant_id_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return asx_securities_trade_itch_v2_0_size_of.order_executed_message(buffer, offset)
  end
  -- Size of Order Executed With Price Message
  if message_type == "C" then
    return asx_securities_trade_itch_v2_0_size_of.order_executed_with_price_message(buffer, offset)
  end
  -- Size of Order Replace Message
  if message_type == "U" then
    return asx_securities_trade_itch_v2_0_size_of.order_replace_message(buffer, offset)
  end
  -- Size of Order Delete Message
  if message_type == "D" then
    return asx_securities_trade_itch_v2_0_size_of.order_delete_message(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == "P" then
    return asx_securities_trade_itch_v2_0_size_of.trade_message(buffer, offset)
  end
  -- Size of Equilibrium Price Update Message
  if message_type == "Z" then
    return asx_securities_trade_itch_v2_0_size_of.equilibrium_price_update_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
asx_securities_trade_itch_v2_0_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
asx_securities_trade_itch_v2_0_dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return asx_securities_trade_itch_v2_0_dissect.seconds_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory Message
  if message_type == "R" then
    return asx_securities_trade_itch_v2_0_dissect.order_book_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Combination Order Book Directory Message
  if message_type == "M" then
    return asx_securities_trade_itch_v2_0_dissect.combination_order_book_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Tick Size Message
  if message_type == "L" then
    return asx_securities_trade_itch_v2_0_dissect.tick_size_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return asx_securities_trade_itch_v2_0_dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if message_type == "O" then
    return asx_securities_trade_itch_v2_0_dissect.order_book_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order No Participant Id Message
  if message_type == "A" then
    return asx_securities_trade_itch_v2_0_dissect.add_order_no_participant_id_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Participant Id Message
  if message_type == "F" then
    return asx_securities_trade_itch_v2_0_dissect.add_order_participant_id_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return asx_securities_trade_itch_v2_0_dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return asx_securities_trade_itch_v2_0_dissect.order_executed_with_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return asx_securities_trade_itch_v2_0_dissect.order_replace_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return asx_securities_trade_itch_v2_0_dissect.order_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return asx_securities_trade_itch_v2_0_dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Update Message
  if message_type == "Z" then
    return asx_securities_trade_itch_v2_0_dissect.equilibrium_price_update_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
asx_securities_trade_itch_v2_0_dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return asx_securities_trade_itch_v2_0_dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = asx_securities_trade_itch_v2_0_size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = asx_securities_trade_itch_v2_0_display.payload(buffer, packet, parent)
  local element = parent:add(asx_securities_trade_itch_v2_0.fields.payload, range, display)

  return asx_securities_trade_itch_v2_0_dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
asx_securities_trade_itch_v2_0_size_of.message_type = 1

-- Display: Message Type
asx_securities_trade_itch_v2_0_display.message_type = function(value)
  if value == "T" then
    return "Message Type: Seconds Message (T)"
  end
  if value == "R" then
    return "Message Type: Order Book Directory Message (R)"
  end
  if value == "M" then
    return "Message Type: Combination Order Book Directory Message (M)"
  end
  if value == "L" then
    return "Message Type: Tick Size Message (L)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "O" then
    return "Message Type: Order Book State Message (O)"
  end
  if value == "A" then
    return "Message Type: Add Order No Participant Id Message (A)"
  end
  if value == "F" then
    return "Message Type: Add Order Participant Id Message (F)"
  end
  if value == "E" then
    return "Message Type: Order Executed Message (E)"
  end
  if value == "C" then
    return "Message Type: Order Executed With Price Message (C)"
  end
  if value == "U" then
    return "Message Type: Order Replace Message (U)"
  end
  if value == "D" then
    return "Message Type: Order Delete Message (D)"
  end
  if value == "P" then
    return "Message Type: Trade Message (P)"
  end
  if value == "Z" then
    return "Message Type: Equilibrium Price Update Message (Z)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
asx_securities_trade_itch_v2_0_dissect.message_type = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0_display.message_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
asx_securities_trade_itch_v2_0_size_of.message_length = 2

-- Display: Message Length
asx_securities_trade_itch_v2_0_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
asx_securities_trade_itch_v2_0_dissect.message_length = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.message_length(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
asx_securities_trade_itch_v2_0_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.message_length

  index = index + asx_securities_trade_itch_v2_0_size_of.message_type

  return index
end

-- Display: Message Header
asx_securities_trade_itch_v2_0_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
asx_securities_trade_itch_v2_0_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = asx_securities_trade_itch_v2_0_dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 14 values
  index, message_type = asx_securities_trade_itch_v2_0_dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
asx_securities_trade_itch_v2_0_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.message_header, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.message_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.message_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.message_header_fields(buffer, offset, packet, element)
  end
end

-- Display: Message
asx_securities_trade_itch_v2_0_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
asx_securities_trade_itch_v2_0_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- TODO
  if message_index ~= nil then
    local iteration = parent:add(asx_securities_trade_itch_v2_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = asx_securities_trade_itch_v2_0_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 14 branches
  index = asx_securities_trade_itch_v2_0_dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
asx_securities_trade_itch_v2_0_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(asx_securities_trade_itch_v2_0.fields.message, buffer(offset, 0))
    local current = asx_securities_trade_itch_v2_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = asx_securities_trade_itch_v2_0_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    asx_securities_trade_itch_v2_0_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Message Count
asx_securities_trade_itch_v2_0_size_of.message_count = 2

-- Display: Message Count
asx_securities_trade_itch_v2_0_display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
asx_securities_trade_itch_v2_0_dissect.message_count = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.message_count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0_display.message_count(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
asx_securities_trade_itch_v2_0_size_of.sequence_number = 8

-- Display: Sequence Number
asx_securities_trade_itch_v2_0_display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
asx_securities_trade_itch_v2_0_dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0_display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session
asx_securities_trade_itch_v2_0_size_of.session = 10

-- Display: Session
asx_securities_trade_itch_v2_0_display.session = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
asx_securities_trade_itch_v2_0_dissect.session = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0_size_of.session
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

  local display = asx_securities_trade_itch_v2_0_display.session(value, buffer, offset, packet, parent)

  parent:add(asx_securities_trade_itch_v2_0.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
asx_securities_trade_itch_v2_0_size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + asx_securities_trade_itch_v2_0_size_of.session

  index = index + asx_securities_trade_itch_v2_0_size_of.sequence_number

  index = index + asx_securities_trade_itch_v2_0_size_of.message_count

  return index
end

-- Display: Packet Header
asx_securities_trade_itch_v2_0_display.packet_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
asx_securities_trade_itch_v2_0_dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = asx_securities_trade_itch_v2_0_dissect.session(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = asx_securities_trade_itch_v2_0_dissect.sequence_number(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = asx_securities_trade_itch_v2_0_dissect.message_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
asx_securities_trade_itch_v2_0_dissect.packet_header = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    local element = parent:add(asx_securities_trade_itch_v2_0.fields.packet_header, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0_dissect.packet_header_fields(buffer, offset, packet, element)
    local length = index - offset
    element:set_len(length)
    local display = asx_securities_trade_itch_v2_0_display.packet_header(packet, parent, length)
    element:append_text(display)

    return index, element
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0_dissect.packet_header_fields(buffer, offset, packet, element)
  end
end

-- Dissect Packet
asx_securities_trade_itch_v2_0_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = asx_securities_trade_itch_v2_0_dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = asx_securities_trade_itch_v2_0_dissect.message(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function asx_securities_trade_itch_v2_0.init()
end

-- Dissector for Asx Securities Trade Itch 2.0
function asx_securities_trade_itch_v2_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = asx_securities_trade_itch_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(asx_securities_trade_itch_v2_0, buffer(), asx_securities_trade_itch_v2_0.description, "("..buffer:len().." Bytes)")
  return asx_securities_trade_itch_v2_0_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, asx_securities_trade_itch_v2_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.asx_securities_trade_itch_v2_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Asx Securities Trade Itch 2.0
local function asx_securities_trade_itch_v2_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.asx_securities_trade_itch_v2_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = asx_securities_trade_itch_v2_0
  asx_securities_trade_itch_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Asx Securities Trade Itch 2.0
asx_securities_trade_itch_v2_0:register_heuristic("udp", asx_securities_trade_itch_v2_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Australian Securities Exchange
--   Version: 2.0
--   Date: Wednesday, April 1, 2015
--   Specification: asx_041177.pdf
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
