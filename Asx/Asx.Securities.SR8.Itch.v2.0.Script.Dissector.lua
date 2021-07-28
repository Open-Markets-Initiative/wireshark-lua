-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Asx Securities SR8 Itch 2.0 Protocol
local asx_securities_sr8_itch_v2_0 = Proto("Asx.Securities.SR8.Itch.v2.0.Lua", "Asx Securities SR8 Itch 2.0")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Asx Securities SR8 Itch 2.0 Fields
asx_securities_sr8_itch_v2_0.fields.add_order_no_participant_id_message = ProtoField.new("Add Order No Participant Id Message", "asx.securities.sr8.itch.v2.0.addordernoparticipantidmessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.add_order_participant_id_message = ProtoField.new("Add Order Participant Id Message", "asx.securities.sr8.itch.v2.0.addorderparticipantidmessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.ask_quantity = ProtoField.new("Ask Quantity", "asx.securities.sr8.itch.v2.0.askquantity", ftypes.UINT64)
asx_securities_sr8_itch_v2_0.fields.best_ask_price = ProtoField.new("Best Ask Price", "asx.securities.sr8.itch.v2.0.bestaskprice", ftypes.INT32)
asx_securities_sr8_itch_v2_0.fields.best_ask_quantity = ProtoField.new("Best Ask Quantity", "asx.securities.sr8.itch.v2.0.bestaskquantity", ftypes.UINT64)
asx_securities_sr8_itch_v2_0.fields.best_bid_price = ProtoField.new("Best Bid Price", "asx.securities.sr8.itch.v2.0.bestbidprice", ftypes.INT32)
asx_securities_sr8_itch_v2_0.fields.best_bid_quantity = ProtoField.new("Best Bid Quantity", "asx.securities.sr8.itch.v2.0.bestbidquantity", ftypes.UINT64)
asx_securities_sr8_itch_v2_0.fields.bid_quantity = ProtoField.new("Bid Quantity", "asx.securities.sr8.itch.v2.0.bidquantity", ftypes.UINT64)
asx_securities_sr8_itch_v2_0.fields.block_lot_size = ProtoField.new("Block Lot Size", "asx.securities.sr8.itch.v2.0.blocklotsize", ftypes.UINT32)
asx_securities_sr8_itch_v2_0.fields.combination_order_book_directory_message = ProtoField.new("Combination Order Book Directory Message", "asx.securities.sr8.itch.v2.0.combinationorderbookdirectorymessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.count = ProtoField.new("Count", "asx.securities.sr8.itch.v2.0.count", ftypes.UINT16)
asx_securities_sr8_itch_v2_0.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "asx.securities.sr8.itch.v2.0.equilibriumprice", ftypes.INT32)
asx_securities_sr8_itch_v2_0.fields.equilibrium_price_update_message = ProtoField.new("Equilibrium Price Update Message", "asx.securities.sr8.itch.v2.0.equilibriumpriceupdatemessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.event_code = ProtoField.new("Event Code", "asx.securities.sr8.itch.v2.0.eventcode", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.exchange_order_type = ProtoField.new("Exchange Order Type", "asx.securities.sr8.itch.v2.0.exchangeordertype", ftypes.UINT16)
asx_securities_sr8_itch_v2_0.fields.executed_quantity = ProtoField.new("Executed Quantity", "asx.securities.sr8.itch.v2.0.executedquantity", ftypes.UINT64)
asx_securities_sr8_itch_v2_0.fields.financial_product = ProtoField.new("Financial Product", "asx.securities.sr8.itch.v2.0.financialproduct", ftypes.UINT8)
asx_securities_sr8_itch_v2_0.fields.isin = ProtoField.new("Isin", "asx.securities.sr8.itch.v2.0.isin", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.leg_1_ratio = ProtoField.new("Leg 1 Ratio", "asx.securities.sr8.itch.v2.0.leg1ratio", ftypes.UINT32)
asx_securities_sr8_itch_v2_0.fields.leg_1_side = ProtoField.new("Leg 1 Side", "asx.securities.sr8.itch.v2.0.leg1side", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.leg_1_symbol = ProtoField.new("Leg 1 Symbol", "asx.securities.sr8.itch.v2.0.leg1symbol", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.leg_2_ratio = ProtoField.new("Leg 2 Ratio", "asx.securities.sr8.itch.v2.0.leg2ratio", ftypes.UINT32)
asx_securities_sr8_itch_v2_0.fields.leg_2_side = ProtoField.new("Leg 2 Side", "asx.securities.sr8.itch.v2.0.leg2side", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.leg_2_symbol = ProtoField.new("Leg 2 Symbol", "asx.securities.sr8.itch.v2.0.leg2symbol", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.leg_3_ratio = ProtoField.new("Leg 3 Ratio", "asx.securities.sr8.itch.v2.0.leg3ratio", ftypes.UINT32)
asx_securities_sr8_itch_v2_0.fields.leg_3_side = ProtoField.new("Leg 3 Side", "asx.securities.sr8.itch.v2.0.leg3side", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.leg_3_symbol = ProtoField.new("Leg 3 Symbol", "asx.securities.sr8.itch.v2.0.leg3symbol", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.leg_4_ratio = ProtoField.new("Leg 4 Ratio", "asx.securities.sr8.itch.v2.0.leg4ratio", ftypes.UINT32)
asx_securities_sr8_itch_v2_0.fields.leg_4_side = ProtoField.new("Leg 4 Side", "asx.securities.sr8.itch.v2.0.leg4side", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.leg_4_symbol = ProtoField.new("Leg 4 Symbol", "asx.securities.sr8.itch.v2.0.leg4symbol", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.length = ProtoField.new("Length", "asx.securities.sr8.itch.v2.0.length", ftypes.UINT16)
asx_securities_sr8_itch_v2_0.fields.long_name = ProtoField.new("Long Name", "asx.securities.sr8.itch.v2.0.longname", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.lot_type = ProtoField.new("Lot Type", "asx.securities.sr8.itch.v2.0.lottype", ftypes.UINT8)
asx_securities_sr8_itch_v2_0.fields.match_id = ProtoField.new("Match Id", "asx.securities.sr8.itch.v2.0.matchid", ftypes.BYTES)
asx_securities_sr8_itch_v2_0.fields.message = ProtoField.new("Message", "asx.securities.sr8.itch.v2.0.message", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.message_header = ProtoField.new("Message Header", "asx.securities.sr8.itch.v2.0.messageheader", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.message_type = ProtoField.new("Message Type", "asx.securities.sr8.itch.v2.0.messagetype", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.new_order_book_position = ProtoField.new("New Order Book Position", "asx.securities.sr8.itch.v2.0.neworderbookposition", ftypes.UINT32)
asx_securities_sr8_itch_v2_0.fields.nominal_value = ProtoField.new("Nominal Value", "asx.securities.sr8.itch.v2.0.nominalvalue", ftypes.UINT64)
asx_securities_sr8_itch_v2_0.fields.number_of_decimals_in_nominal_value = ProtoField.new("Number Of Decimals In Nominal Value", "asx.securities.sr8.itch.v2.0.numberofdecimalsinnominalvalue", ftypes.UINT16)
asx_securities_sr8_itch_v2_0.fields.number_of_decimals_in_price = ProtoField.new("Number Of Decimals In Price", "asx.securities.sr8.itch.v2.0.numberofdecimalsinprice", ftypes.UINT16)
asx_securities_sr8_itch_v2_0.fields.occurred_at_cross = ProtoField.new("Occurred At Cross", "asx.securities.sr8.itch.v2.0.occurredatcross", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.odd_lot_size = ProtoField.new("Odd Lot Size", "asx.securities.sr8.itch.v2.0.oddlotsize", ftypes.UINT32)
asx_securities_sr8_itch_v2_0.fields.order_book_directory_message = ProtoField.new("Order Book Directory Message", "asx.securities.sr8.itch.v2.0.orderbookdirectorymessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.order_book_id = ProtoField.new("Order Book Id", "asx.securities.sr8.itch.v2.0.orderbookid", ftypes.UINT32)
asx_securities_sr8_itch_v2_0.fields.order_book_position = ProtoField.new("Order Book Position", "asx.securities.sr8.itch.v2.0.orderbookposition", ftypes.UINT32)
asx_securities_sr8_itch_v2_0.fields.order_book_state_message = ProtoField.new("Order Book State Message", "asx.securities.sr8.itch.v2.0.orderbookstatemessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.order_delete_message = ProtoField.new("Order Delete Message", "asx.securities.sr8.itch.v2.0.orderdeletemessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "asx.securities.sr8.itch.v2.0.orderexecutedmessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "asx.securities.sr8.itch.v2.0.orderexecutedwithpricemessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.order_id = ProtoField.new("Order Id", "asx.securities.sr8.itch.v2.0.orderid", ftypes.UINT64)
asx_securities_sr8_itch_v2_0.fields.order_replace_message = ProtoField.new("Order Replace Message", "asx.securities.sr8.itch.v2.0.orderreplacemessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.packet = ProtoField.new("Packet", "asx.securities.sr8.itch.v2.0.packet", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.packet_header = ProtoField.new("Packet Header", "asx.securities.sr8.itch.v2.0.packetheader", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.participant_id = ProtoField.new("Participant Id", "asx.securities.sr8.itch.v2.0.participantid", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.participant_id_counterparty = ProtoField.new("Participant Id Counterparty", "asx.securities.sr8.itch.v2.0.participantidcounterparty", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.participant_id_owner = ProtoField.new("Participant Id Owner", "asx.securities.sr8.itch.v2.0.participantidowner", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.payload = ProtoField.new("Payload", "asx.securities.sr8.itch.v2.0.payload", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.price = ProtoField.new("Price", "asx.securities.sr8.itch.v2.0.price", ftypes.INT32)
asx_securities_sr8_itch_v2_0.fields.price_from = ProtoField.new("Price From", "asx.securities.sr8.itch.v2.0.pricefrom", ftypes.INT32)
asx_securities_sr8_itch_v2_0.fields.price_to = ProtoField.new("Price To", "asx.securities.sr8.itch.v2.0.priceto", ftypes.INT32)
asx_securities_sr8_itch_v2_0.fields.printable = ProtoField.new("Printable", "asx.securities.sr8.itch.v2.0.printable", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.quantity = ProtoField.new("Quantity", "asx.securities.sr8.itch.v2.0.quantity", ftypes.UINT64)
asx_securities_sr8_itch_v2_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "asx.securities.sr8.itch.v2.0.roundlotsize", ftypes.UINT32)
asx_securities_sr8_itch_v2_0.fields.seconds_message = ProtoField.new("Seconds Message", "asx.securities.sr8.itch.v2.0.secondsmessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.sequence = ProtoField.new("Sequence", "asx.securities.sr8.itch.v2.0.sequence", ftypes.UINT64)
asx_securities_sr8_itch_v2_0.fields.session = ProtoField.new("Session", "asx.securities.sr8.itch.v2.0.session", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.side = ProtoField.new("Side", "asx.securities.sr8.itch.v2.0.side", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.state_name = ProtoField.new("State Name", "asx.securities.sr8.itch.v2.0.statename", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.symbol = ProtoField.new("Symbol", "asx.securities.sr8.itch.v2.0.symbol", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.system_event_message = ProtoField.new("System Event Message", "asx.securities.sr8.itch.v2.0.systemeventmessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.tick_size = ProtoField.new("Tick Size", "asx.securities.sr8.itch.v2.0.ticksize", ftypes.UINT64)
asx_securities_sr8_itch_v2_0.fields.tick_size_message = ProtoField.new("Tick Size Message", "asx.securities.sr8.itch.v2.0.ticksizemessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "asx.securities.sr8.itch.v2.0.timestampnanoseconds", ftypes.UINT32)
asx_securities_sr8_itch_v2_0.fields.timestamp_seconds = ProtoField.new("Timestamp Seconds", "asx.securities.sr8.itch.v2.0.timestampseconds", ftypes.UINT32)
asx_securities_sr8_itch_v2_0.fields.trade_message = ProtoField.new("Trade Message", "asx.securities.sr8.itch.v2.0.trademessage", ftypes.STRING)
asx_securities_sr8_itch_v2_0.fields.trade_price = ProtoField.new("Trade Price", "asx.securities.sr8.itch.v2.0.tradeprice", ftypes.INT32)
asx_securities_sr8_itch_v2_0.fields.trading_currency = ProtoField.new("Trading Currency", "asx.securities.sr8.itch.v2.0.tradingcurrency", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Asx Securities SR8 Itch 2.0 Element Dissection Options
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

-- Register Asx Securities SR8 Itch 2.0 Show Options
asx_securities_sr8_itch_v2_0.prefs.show_add_order_no_participant_id_message = Pref.bool("Show Add Order No Participant Id Message", show.add_order_no_participant_id_message, "Parse and add Add Order No Participant Id Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_add_order_participant_id_message = Pref.bool("Show Add Order Participant Id Message", show.add_order_participant_id_message, "Parse and add Add Order Participant Id Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_combination_order_book_directory_message = Pref.bool("Show Combination Order Book Directory Message", show.combination_order_book_directory_message, "Parse and add Combination Order Book Directory Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_equilibrium_price_update_message = Pref.bool("Show Equilibrium Price Update Message", show.equilibrium_price_update_message, "Parse and add Equilibrium Price Update Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_order_book_directory_message = Pref.bool("Show Order Book Directory Message", show.order_book_directory_message, "Parse and add Order Book Directory Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_order_book_state_message = Pref.bool("Show Order Book State Message", show.order_book_state_message, "Parse and add Order Book State Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_order_executed_with_price_message = Pref.bool("Show Order Executed With Price Message", show.order_executed_with_price_message, "Parse and add Order Executed With Price Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_order_replace_message = Pref.bool("Show Order Replace Message", show.order_replace_message, "Parse and add Order Replace Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_seconds_message = Pref.bool("Show Seconds Message", show.seconds_message, "Parse and add Seconds Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_tick_size_message = Pref.bool("Show Tick Size Message", show.tick_size_message, "Parse and add Tick Size Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
asx_securities_sr8_itch_v2_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function asx_securities_sr8_itch_v2_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_no_participant_id_message ~= asx_securities_sr8_itch_v2_0.prefs.show_add_order_no_participant_id_message then
    show.add_order_no_participant_id_message = asx_securities_sr8_itch_v2_0.prefs.show_add_order_no_participant_id_message
    changed = true
  end
  if show.add_order_participant_id_message ~= asx_securities_sr8_itch_v2_0.prefs.show_add_order_participant_id_message then
    show.add_order_participant_id_message = asx_securities_sr8_itch_v2_0.prefs.show_add_order_participant_id_message
    changed = true
  end
  if show.combination_order_book_directory_message ~= asx_securities_sr8_itch_v2_0.prefs.show_combination_order_book_directory_message then
    show.combination_order_book_directory_message = asx_securities_sr8_itch_v2_0.prefs.show_combination_order_book_directory_message
    changed = true
  end
  if show.equilibrium_price_update_message ~= asx_securities_sr8_itch_v2_0.prefs.show_equilibrium_price_update_message then
    show.equilibrium_price_update_message = asx_securities_sr8_itch_v2_0.prefs.show_equilibrium_price_update_message
    changed = true
  end
  if show.message ~= asx_securities_sr8_itch_v2_0.prefs.show_message then
    show.message = asx_securities_sr8_itch_v2_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= asx_securities_sr8_itch_v2_0.prefs.show_message_header then
    show.message_header = asx_securities_sr8_itch_v2_0.prefs.show_message_header
    changed = true
  end
  if show.order_book_directory_message ~= asx_securities_sr8_itch_v2_0.prefs.show_order_book_directory_message then
    show.order_book_directory_message = asx_securities_sr8_itch_v2_0.prefs.show_order_book_directory_message
    changed = true
  end
  if show.order_book_state_message ~= asx_securities_sr8_itch_v2_0.prefs.show_order_book_state_message then
    show.order_book_state_message = asx_securities_sr8_itch_v2_0.prefs.show_order_book_state_message
    changed = true
  end
  if show.order_delete_message ~= asx_securities_sr8_itch_v2_0.prefs.show_order_delete_message then
    show.order_delete_message = asx_securities_sr8_itch_v2_0.prefs.show_order_delete_message
    changed = true
  end
  if show.order_executed_message ~= asx_securities_sr8_itch_v2_0.prefs.show_order_executed_message then
    show.order_executed_message = asx_securities_sr8_itch_v2_0.prefs.show_order_executed_message
    changed = true
  end
  if show.order_executed_with_price_message ~= asx_securities_sr8_itch_v2_0.prefs.show_order_executed_with_price_message then
    show.order_executed_with_price_message = asx_securities_sr8_itch_v2_0.prefs.show_order_executed_with_price_message
    changed = true
  end
  if show.order_replace_message ~= asx_securities_sr8_itch_v2_0.prefs.show_order_replace_message then
    show.order_replace_message = asx_securities_sr8_itch_v2_0.prefs.show_order_replace_message
    changed = true
  end
  if show.packet ~= asx_securities_sr8_itch_v2_0.prefs.show_packet then
    show.packet = asx_securities_sr8_itch_v2_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= asx_securities_sr8_itch_v2_0.prefs.show_packet_header then
    show.packet_header = asx_securities_sr8_itch_v2_0.prefs.show_packet_header
    changed = true
  end
  if show.seconds_message ~= asx_securities_sr8_itch_v2_0.prefs.show_seconds_message then
    show.seconds_message = asx_securities_sr8_itch_v2_0.prefs.show_seconds_message
    changed = true
  end
  if show.system_event_message ~= asx_securities_sr8_itch_v2_0.prefs.show_system_event_message then
    show.system_event_message = asx_securities_sr8_itch_v2_0.prefs.show_system_event_message
    changed = true
  end
  if show.tick_size_message ~= asx_securities_sr8_itch_v2_0.prefs.show_tick_size_message then
    show.tick_size_message = asx_securities_sr8_itch_v2_0.prefs.show_tick_size_message
    changed = true
  end
  if show.trade_message ~= asx_securities_sr8_itch_v2_0.prefs.show_trade_message then
    show.trade_message = asx_securities_sr8_itch_v2_0.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= asx_securities_sr8_itch_v2_0.prefs.show_payload then
    show.payload = asx_securities_sr8_itch_v2_0.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Asx Securities SR8 Itch 2.0
-----------------------------------------------------------------------

-- Size: Best Ask Quantity
size_of.best_ask_quantity = 8

-- Display: Best Ask Quantity
display.best_ask_quantity = function(value)
  return "Best Ask Quantity: "..value
end

-- Dissect: Best Ask Quantity
dissect.best_ask_quantity = function(buffer, offset, packet, parent)
  local length = size_of.best_ask_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.best_ask_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.best_ask_quantity, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Quantity
size_of.best_bid_quantity = 8

-- Display: Best Bid Quantity
display.best_bid_quantity = function(value)
  return "Best Bid Quantity: "..value
end

-- Dissect: Best Bid Quantity
dissect.best_bid_quantity = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.best_bid_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.best_bid_quantity, range, value, display)

  return offset + length, value
end

-- Size: Best Ask Price
size_of.best_ask_price = 4

-- Display: Best Ask Price
display.best_ask_price = function(value)
  return "Best Ask Price: "..value
end

-- Dissect: Best Ask Price
dissect.best_ask_price = function(buffer, offset, packet, parent)
  local length = size_of.best_ask_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.best_ask_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Price
size_of.best_bid_price = 4

-- Display: Best Bid Price
display.best_bid_price = function(value)
  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
dissect.best_bid_price = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.best_bid_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Equilibrium Price
size_of.equilibrium_price = 4

-- Display: Equilibrium Price
display.equilibrium_price = function(value)
  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
dissect.equilibrium_price = function(buffer, offset, packet, parent)
  local length = size_of.equilibrium_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.equilibrium_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Size: Ask Quantity
size_of.ask_quantity = 8

-- Display: Ask Quantity
display.ask_quantity = function(value)
  return "Ask Quantity: "..value
end

-- Dissect: Ask Quantity
dissect.ask_quantity = function(buffer, offset, packet, parent)
  local length = size_of.ask_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.ask_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.ask_quantity, range, value, display)

  return offset + length, value
end

-- Size: Bid Quantity
size_of.bid_quantity = 8

-- Display: Bid Quantity
display.bid_quantity = function(value)
  return "Bid Quantity: "..value
end

-- Dissect: Bid Quantity
dissect.bid_quantity = function(buffer, offset, packet, parent)
  local length = size_of.bid_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.bid_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.bid_quantity, range, value, display)

  return offset + length, value
end

-- Size: Order Book Id
size_of.order_book_id = 4

-- Display: Order Book Id
display.order_book_id = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
dissect.order_book_id = function(buffer, offset, packet, parent)
  local length = size_of.order_book_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.order_book_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Size: Timestamp Nanoseconds
size_of.timestamp_nanoseconds = 4

-- Display: Timestamp Nanoseconds
display.timestamp_nanoseconds = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
dissect.timestamp_nanoseconds = function(buffer, offset, packet, parent)
  local length = size_of.timestamp_nanoseconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.timestamp_nanoseconds(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Equilibrium Price Update Message
size_of.equilibrium_price_update_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_nanoseconds

  index = index + size_of.order_book_id

  index = index + size_of.bid_quantity

  index = index + size_of.ask_quantity

  index = index + size_of.equilibrium_price

  index = index + size_of.best_bid_price

  index = index + size_of.best_ask_price

  index = index + size_of.best_bid_quantity

  index = index + size_of.best_ask_quantity

  return index
end

-- Display: Equilibrium Price Update Message
display.equilibrium_price_update_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equilibrium Price Update Message
dissect.equilibrium_price_update_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = dissect.order_book_id(buffer, index, packet, parent)

  -- Bid Quantity: 8 Byte Unsigned Fixed Width Integer
  index, bid_quantity = dissect.bid_quantity(buffer, index, packet, parent)

  -- Ask Quantity: 8 Byte Unsigned Fixed Width Integer
  index, ask_quantity = dissect.ask_quantity(buffer, index, packet, parent)

  -- Equilibrium Price: 4 Byte Signed Fixed Width Integer
  index, equilibrium_price = dissect.equilibrium_price(buffer, index, packet, parent)

  -- Best Bid Price: 4 Byte Signed Fixed Width Integer
  index, best_bid_price = dissect.best_bid_price(buffer, index, packet, parent)

  -- Best Ask Price: 4 Byte Signed Fixed Width Integer
  index, best_ask_price = dissect.best_ask_price(buffer, index, packet, parent)

  -- Best Bid Quantity: 8 Byte Unsigned Fixed Width Integer
  index, best_bid_quantity = dissect.best_bid_quantity(buffer, index, packet, parent)

  -- Best Ask Quantity: 8 Byte Unsigned Fixed Width Integer
  index, best_ask_quantity = dissect.best_ask_quantity(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Update Message
dissect.equilibrium_price_update_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.equilibrium_price_update_message then
    local length = size_of.equilibrium_price_update_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.equilibrium_price_update_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.equilibrium_price_update_message, range, display)
  end

  return dissect.equilibrium_price_update_message_fields(buffer, offset, packet, parent)
end

-- Size: Occurred At Cross
size_of.occurred_at_cross = 1

-- Display: Occurred At Cross
display.occurred_at_cross = function(value)
  if value == "Y" then
    return "Occurred At Cross: Yes (Y)"
  end
  if value == "N" then
    return "Occurred At Cross: No (N)"
  end

  return "Occurred At Cross: Unknown("..value..")"
end

-- Dissect: Occurred At Cross
dissect.occurred_at_cross = function(buffer, offset, packet, parent)
  local length = size_of.occurred_at_cross
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.occurred_at_cross(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.occurred_at_cross, range, value, display)

  return offset + length, value
end

-- Size: Printable
size_of.printable = 1

-- Display: Printable
display.printable = function(value)
  if value == "Y" then
    return "Printable: Yes (Y)"
  end
  if value == "N" then
    return "Printable: No (N)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
dissect.printable = function(buffer, offset, packet, parent)
  local length = size_of.printable
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.printable(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.printable, range, value, display)

  return offset + length, value
end

-- Size: Participant Id Counterparty
size_of.participant_id_counterparty = 7

-- Display: Participant Id Counterparty
display.participant_id_counterparty = function(value)
  return "Participant Id Counterparty: "..value
end

-- Dissect: Participant Id Counterparty
dissect.participant_id_counterparty = function(buffer, offset, packet, parent)
  local length = size_of.participant_id_counterparty
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.participant_id_counterparty(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.participant_id_counterparty, range, value, display)

  return offset + length, value
end

-- Size: Participant Id Owner
size_of.participant_id_owner = 7

-- Display: Participant Id Owner
display.participant_id_owner = function(value)
  return "Participant Id Owner: "..value
end

-- Dissect: Participant Id Owner
dissect.participant_id_owner = function(buffer, offset, packet, parent)
  local length = size_of.participant_id_owner
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.participant_id_owner(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.participant_id_owner, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
size_of.trade_price = 4

-- Display: Trade Price
display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
dissect.trade_price = function(buffer, offset, packet, parent)
  local length = size_of.trade_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.trade_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Quantity
size_of.quantity = 8

-- Display: Quantity
display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
dissect.quantity = function(buffer, offset, packet, parent)
  local length = size_of.quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "B" then
    return "Side: Buy (B)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local length = size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.side, range, value, display)

  return offset + length, value
end

-- Size: Match Id
size_of.match_id = 12

-- Display: Match Id
display.match_id = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
dissect.match_id = function(buffer, offset, packet, parent)
  local length = size_of.match_id
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.match_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Message
size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_nanoseconds

  index = index + size_of.match_id

  index = index + size_of.side

  index = index + size_of.quantity

  index = index + size_of.order_book_id

  index = index + size_of.trade_price

  index = index + size_of.participant_id_owner

  index = index + size_of.participant_id_counterparty

  index = index + size_of.printable

  index = index + size_of.occurred_at_cross

  return index
end

-- Display: Trade Message
display.trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Message
dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Match Id: 12 Byte Unsigned Fixed Width Integer
  index, match_id = dissect.match_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = dissect.order_book_id(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Participant Id Owner: 7 Byte Ascii String
  index, participant_id_owner = dissect.participant_id_owner(buffer, index, packet, parent)

  -- Participant Id Counterparty: 7 Byte Ascii String
  index, participant_id_counterparty = dissect.participant_id_counterparty(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = dissect.printable(buffer, index, packet, parent)

  -- Occurred At Cross: 1 Byte Ascii String Enum with 2 values
  index, occurred_at_cross = dissect.occurred_at_cross(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
dissect.trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_message then
    local length = size_of.trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.trade_message, range, display)
  end

  return dissect.trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Order Id
size_of.order_id = 8

-- Display: Order Id
display.order_id = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
dissect.order_id = function(buffer, offset, packet, parent)
  local length = size_of.order_id
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Delete Message
size_of.order_delete_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_nanoseconds

  index = index + size_of.order_id

  index = index + size_of.order_book_id

  index = index + size_of.side

  return index
end

-- Display: Order Delete Message
display.order_delete_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Delete Message
dissect.order_delete_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
dissect.order_delete_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_delete_message then
    local length = size_of.order_delete_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_delete_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.order_delete_message, range, display)
  end

  return dissect.order_delete_message_fields(buffer, offset, packet, parent)
end

-- Size: Exchange Order Type
size_of.exchange_order_type = 2

-- Display: Exchange Order Type
display.exchange_order_type = function(value)
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
dissect.exchange_order_type = function(buffer, offset, packet, parent)
  local length = size_of.exchange_order_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.exchange_order_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.exchange_order_type, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 4

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- Size: New Order Book Position
size_of.new_order_book_position = 4

-- Display: New Order Book Position
display.new_order_book_position = function(value)
  return "New Order Book Position: "..value
end

-- Dissect: New Order Book Position
dissect.new_order_book_position = function(buffer, offset, packet, parent)
  local length = size_of.new_order_book_position
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.new_order_book_position(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.new_order_book_position, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Replace Message
size_of.order_replace_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_nanoseconds

  index = index + size_of.order_id

  index = index + size_of.order_book_id

  index = index + size_of.side

  index = index + size_of.new_order_book_position

  index = index + size_of.quantity

  index = index + size_of.price

  index = index + size_of.exchange_order_type

  return index
end

-- Display: Order Replace Message
display.order_replace_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Replace Message
dissect.order_replace_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- New Order Book Position: 4 Byte Unsigned Fixed Width Integer
  index, new_order_book_position = dissect.new_order_book_position(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Exchange Order Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, exchange_order_type = dissect.exchange_order_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
dissect.order_replace_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_replace_message then
    local length = size_of.order_replace_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_replace_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.order_replace_message, range, display)
  end

  return dissect.order_replace_message_fields(buffer, offset, packet, parent)
end

-- Size: Executed Quantity
size_of.executed_quantity = 8

-- Display: Executed Quantity
display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
dissect.executed_quantity = function(buffer, offset, packet, parent)
  local length = size_of.executed_quantity
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed With Price Message
size_of.order_executed_with_price_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_nanoseconds

  index = index + size_of.order_id

  index = index + size_of.order_book_id

  index = index + size_of.side

  index = index + size_of.executed_quantity

  index = index + size_of.match_id

  index = index + size_of.participant_id_owner

  index = index + size_of.participant_id_counterparty

  index = index + size_of.trade_price

  index = index + size_of.occurred_at_cross

  index = index + size_of.printable

  return index
end

-- Display: Order Executed With Price Message
display.order_executed_with_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
dissect.order_executed_with_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Executed Quantity: 8 Byte Unsigned Fixed Width Integer
  index, executed_quantity = dissect.executed_quantity(buffer, index, packet, parent)

  -- Match Id: 12 Byte Unsigned Fixed Width Integer
  index, match_id = dissect.match_id(buffer, index, packet, parent)

  -- Participant Id Owner: 7 Byte Ascii String
  index, participant_id_owner = dissect.participant_id_owner(buffer, index, packet, parent)

  -- Participant Id Counterparty: 7 Byte Ascii String
  index, participant_id_counterparty = dissect.participant_id_counterparty(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Occurred At Cross: 1 Byte Ascii String Enum with 2 values
  index, occurred_at_cross = dissect.occurred_at_cross(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = dissect.printable(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
dissect.order_executed_with_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_with_price_message then
    local length = size_of.order_executed_with_price_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_executed_with_price_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.order_executed_with_price_message, range, display)
  end

  return dissect.order_executed_with_price_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Executed Message
size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_nanoseconds

  index = index + size_of.order_id

  index = index + size_of.order_book_id

  index = index + size_of.side

  index = index + size_of.executed_quantity

  index = index + size_of.match_id

  index = index + size_of.participant_id_owner

  index = index + size_of.participant_id_counterparty

  return index
end

-- Display: Order Executed Message
display.order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Message
dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Executed Quantity: 8 Byte Unsigned Fixed Width Integer
  index, executed_quantity = dissect.executed_quantity(buffer, index, packet, parent)

  -- Match Id: 12 Byte Unsigned Fixed Width Integer
  index, match_id = dissect.match_id(buffer, index, packet, parent)

  -- Participant Id Owner: 7 Byte Ascii String
  index, participant_id_owner = dissect.participant_id_owner(buffer, index, packet, parent)

  -- Participant Id Counterparty: 7 Byte Ascii String
  index, participant_id_counterparty = dissect.participant_id_counterparty(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
dissect.order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_message then
    local length = size_of.order_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_executed_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.order_executed_message, range, display)
  end

  return dissect.order_executed_message_fields(buffer, offset, packet, parent)
end

-- Size: Participant Id
size_of.participant_id = 7

-- Display: Participant Id
display.participant_id = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
dissect.participant_id = function(buffer, offset, packet, parent)
  local length = size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.participant_id(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Size: Lot Type
size_of.lot_type = 1

-- Display: Lot Type
display.lot_type = function(value)
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
dissect.lot_type = function(buffer, offset, packet, parent)
  local length = size_of.lot_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.lot_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Size: Order Book Position
size_of.order_book_position = 4

-- Display: Order Book Position
display.order_book_position = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
dissect.order_book_position = function(buffer, offset, packet, parent)
  local length = size_of.order_book_position
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.order_book_position(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Order Participant Id Message
size_of.add_order_participant_id_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_nanoseconds

  index = index + size_of.order_id

  index = index + size_of.order_book_id

  index = index + size_of.side

  index = index + size_of.order_book_position

  index = index + size_of.quantity

  index = index + size_of.price

  index = index + size_of.exchange_order_type

  index = index + size_of.lot_type

  index = index + size_of.participant_id

  return index
end

-- Display: Add Order Participant Id Message
display.add_order_participant_id_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Participant Id Message
dissect.add_order_participant_id_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Order Book Position: 4 Byte Unsigned Fixed Width Integer
  index, order_book_position = dissect.order_book_position(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Exchange Order Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, exchange_order_type = dissect.exchange_order_type(buffer, index, packet, parent)

  -- Lot Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, lot_type = dissect.lot_type(buffer, index, packet, parent)

  -- Participant Id: 7 Byte Ascii String
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Participant Id Message
dissect.add_order_participant_id_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_participant_id_message then
    local length = size_of.add_order_participant_id_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_order_participant_id_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.add_order_participant_id_message, range, display)
  end

  return dissect.add_order_participant_id_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order No Participant Id Message
size_of.add_order_no_participant_id_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_nanoseconds

  index = index + size_of.order_id

  index = index + size_of.order_book_id

  index = index + size_of.side

  index = index + size_of.order_book_position

  index = index + size_of.quantity

  index = index + size_of.price

  index = index + size_of.exchange_order_type

  index = index + size_of.lot_type

  return index
end

-- Display: Add Order No Participant Id Message
display.add_order_no_participant_id_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order No Participant Id Message
dissect.add_order_no_participant_id_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = dissect.order_book_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Order Book Position: 4 Byte Unsigned Fixed Width Integer
  index, order_book_position = dissect.order_book_position(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Exchange Order Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, exchange_order_type = dissect.exchange_order_type(buffer, index, packet, parent)

  -- Lot Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, lot_type = dissect.lot_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Participant Id Message
dissect.add_order_no_participant_id_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_no_participant_id_message then
    local length = size_of.add_order_no_participant_id_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_order_no_participant_id_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.add_order_no_participant_id_message, range, display)
  end

  return dissect.add_order_no_participant_id_message_fields(buffer, offset, packet, parent)
end

-- Size: State Name
size_of.state_name = 20

-- Display: State Name
display.state_name = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
dissect.state_name = function(buffer, offset, packet, parent)
  local length = size_of.state_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.state_name(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.state_name, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Book State Message
size_of.order_book_state_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_nanoseconds

  index = index + size_of.order_book_id

  index = index + size_of.state_name

  return index
end

-- Display: Order Book State Message
display.order_book_state_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book State Message
dissect.order_book_state_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = dissect.order_book_id(buffer, index, packet, parent)

  -- State Name: 20 Byte Ascii String
  index, state_name = dissect.state_name(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
dissect.order_book_state_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_state_message then
    local length = size_of.order_book_state_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_book_state_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.order_book_state_message, range, display)
  end

  return dissect.order_book_state_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
size_of.event_code = 1

-- Display: Event Code
display.event_code = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
dissect.event_code = function(buffer, offset, packet, parent)
  local length = size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.event_code(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_nanoseconds

  index = index + size_of.event_code

  return index
end

-- Display: System Event Message
display.system_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Event Message
dissect.system_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 2 values
  index, event_code = dissect.event_code(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
dissect.system_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_event_message then
    local length = size_of.system_event_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.system_event_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.system_event_message, range, display)
  end

  return dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Size: Price To
size_of.price_to = 4

-- Display: Price To
display.price_to = function(value)
  return "Price To: "..value
end

-- Dissect: Price To
dissect.price_to = function(buffer, offset, packet, parent)
  local length = size_of.price_to
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.price_to(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.price_to, range, value, display)

  return offset + length, value
end

-- Size: Price From
size_of.price_from = 4

-- Display: Price From
display.price_from = function(value)
  return "Price From: "..value
end

-- Dissect: Price From
dissect.price_from = function(buffer, offset, packet, parent)
  local length = size_of.price_from
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.price_from(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.price_from, range, value, display)

  return offset + length, value
end

-- Size: Tick Size
size_of.tick_size = 8

-- Display: Tick Size
display.tick_size = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
dissect.tick_size = function(buffer, offset, packet, parent)
  local length = size_of.tick_size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.tick_size(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tick Size Message
size_of.tick_size_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_nanoseconds

  index = index + size_of.order_book_id

  index = index + size_of.tick_size

  index = index + size_of.price_from

  index = index + size_of.price_to

  return index
end

-- Display: Tick Size Message
display.tick_size_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tick Size Message
dissect.tick_size_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = dissect.order_book_id(buffer, index, packet, parent)

  -- Tick Size: 8 Byte Unsigned Fixed Width Integer
  index, tick_size = dissect.tick_size(buffer, index, packet, parent)

  -- Price From: 4 Byte Signed Fixed Width Integer
  index, price_from = dissect.price_from(buffer, index, packet, parent)

  -- Price To: 4 Byte Signed Fixed Width Integer
  index, price_to = dissect.price_to(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Message
dissect.tick_size_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tick_size_message then
    local length = size_of.tick_size_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tick_size_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.tick_size_message, range, display)
  end

  return dissect.tick_size_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg 4 Ratio
size_of.leg_4_ratio = 4

-- Display: Leg 4 Ratio
display.leg_4_ratio = function(value)
  return "Leg 4 Ratio: "..value
end

-- Dissect: Leg 4 Ratio
dissect.leg_4_ratio = function(buffer, offset, packet, parent)
  local length = size_of.leg_4_ratio
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.leg_4_ratio(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.leg_4_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg 4 Side
size_of.leg_4_side = 1

-- Display: Leg 4 Side
display.leg_4_side = function(value)
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
dissect.leg_4_side = function(buffer, offset, packet, parent)
  local length = size_of.leg_4_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_4_side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.leg_4_side, range, value, display)

  return offset + length, value
end

-- Size: Leg 4 Symbol
size_of.leg_4_symbol = 32

-- Display: Leg 4 Symbol
display.leg_4_symbol = function(value)
  return "Leg 4 Symbol: "..value
end

-- Dissect: Leg 4 Symbol
dissect.leg_4_symbol = function(buffer, offset, packet, parent)
  local length = size_of.leg_4_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_4_symbol(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.leg_4_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leg 3 Ratio
size_of.leg_3_ratio = 4

-- Display: Leg 3 Ratio
display.leg_3_ratio = function(value)
  return "Leg 3 Ratio: "..value
end

-- Dissect: Leg 3 Ratio
dissect.leg_3_ratio = function(buffer, offset, packet, parent)
  local length = size_of.leg_3_ratio
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.leg_3_ratio(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.leg_3_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg 3 Side
size_of.leg_3_side = 1

-- Display: Leg 3 Side
display.leg_3_side = function(value)
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
dissect.leg_3_side = function(buffer, offset, packet, parent)
  local length = size_of.leg_3_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_3_side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.leg_3_side, range, value, display)

  return offset + length, value
end

-- Size: Leg 3 Symbol
size_of.leg_3_symbol = 32

-- Display: Leg 3 Symbol
display.leg_3_symbol = function(value)
  return "Leg 3 Symbol: "..value
end

-- Dissect: Leg 3 Symbol
dissect.leg_3_symbol = function(buffer, offset, packet, parent)
  local length = size_of.leg_3_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_3_symbol(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.leg_3_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leg 2 Ratio
size_of.leg_2_ratio = 4

-- Display: Leg 2 Ratio
display.leg_2_ratio = function(value)
  return "Leg 2 Ratio: "..value
end

-- Dissect: Leg 2 Ratio
dissect.leg_2_ratio = function(buffer, offset, packet, parent)
  local length = size_of.leg_2_ratio
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.leg_2_ratio(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.leg_2_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg 2 Side
size_of.leg_2_side = 1

-- Display: Leg 2 Side
display.leg_2_side = function(value)
  if value == "B" then
    return "Leg 2 Side: Buy Leg (B)"
  end
  if value == "C" then
    return "Leg 2 Side: Sell Leg (C)"
  end

  return "Leg 2 Side: Unknown("..value..")"
end

-- Dissect: Leg 2 Side
dissect.leg_2_side = function(buffer, offset, packet, parent)
  local length = size_of.leg_2_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_2_side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.leg_2_side, range, value, display)

  return offset + length, value
end

-- Size: Leg 2 Symbol
size_of.leg_2_symbol = 32

-- Display: Leg 2 Symbol
display.leg_2_symbol = function(value)
  return "Leg 2 Symbol: "..value
end

-- Dissect: Leg 2 Symbol
dissect.leg_2_symbol = function(buffer, offset, packet, parent)
  local length = size_of.leg_2_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_2_symbol(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.leg_2_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leg 1 Ratio
size_of.leg_1_ratio = 4

-- Display: Leg 1 Ratio
display.leg_1_ratio = function(value)
  return "Leg 1 Ratio: "..value
end

-- Dissect: Leg 1 Ratio
dissect.leg_1_ratio = function(buffer, offset, packet, parent)
  local length = size_of.leg_1_ratio
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.leg_1_ratio(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.leg_1_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg 1 Side
size_of.leg_1_side = 1

-- Display: Leg 1 Side
display.leg_1_side = function(value)
  if value == "B" then
    return "Leg 1 Side: Buy Leg (B)"
  end
  if value == "C" then
    return "Leg 1 Side: Sell Leg (C)"
  end

  return "Leg 1 Side: Unknown("..value..")"
end

-- Dissect: Leg 1 Side
dissect.leg_1_side = function(buffer, offset, packet, parent)
  local length = size_of.leg_1_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_1_side(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.leg_1_side, range, value, display)

  return offset + length, value
end

-- Size: Leg 1 Symbol
size_of.leg_1_symbol = 32

-- Display: Leg 1 Symbol
display.leg_1_symbol = function(value)
  return "Leg 1 Symbol: "..value
end

-- Dissect: Leg 1 Symbol
dissect.leg_1_symbol = function(buffer, offset, packet, parent)
  local length = size_of.leg_1_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_1_symbol(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.leg_1_symbol, range, value, display)

  return offset + length, value
end

-- Size: Nominal Value
size_of.nominal_value = 8

-- Display: Nominal Value
display.nominal_value = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
dissect.nominal_value = function(buffer, offset, packet, parent)
  local length = size_of.nominal_value
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.nominal_value(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Size: Block Lot Size
size_of.block_lot_size = 4

-- Display: Block Lot Size
display.block_lot_size = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
dissect.block_lot_size = function(buffer, offset, packet, parent)
  local length = size_of.block_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.block_lot_size(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Round Lot Size
size_of.round_lot_size = 4

-- Display: Round Lot Size
display.round_lot_size = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
dissect.round_lot_size = function(buffer, offset, packet, parent)
  local length = size_of.round_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.round_lot_size(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Odd Lot Size
size_of.odd_lot_size = 4

-- Display: Odd Lot Size
display.odd_lot_size = function(value)
  return "Odd Lot Size: "..value
end

-- Dissect: Odd Lot Size
dissect.odd_lot_size = function(buffer, offset, packet, parent)
  local length = size_of.odd_lot_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.odd_lot_size(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.odd_lot_size, range, value, display)

  return offset + length, value
end

-- Size: Number Of Decimals In Nominal Value
size_of.number_of_decimals_in_nominal_value = 2

-- Display: Number Of Decimals In Nominal Value
display.number_of_decimals_in_nominal_value = function(value)
  return "Number Of Decimals In Nominal Value: "..value
end

-- Dissect: Number Of Decimals In Nominal Value
dissect.number_of_decimals_in_nominal_value = function(buffer, offset, packet, parent)
  local length = size_of.number_of_decimals_in_nominal_value
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.number_of_decimals_in_nominal_value(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.number_of_decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Size: Number Of Decimals In Price
size_of.number_of_decimals_in_price = 2

-- Display: Number Of Decimals In Price
display.number_of_decimals_in_price = function(value)
  return "Number Of Decimals In Price: "..value
end

-- Dissect: Number Of Decimals In Price
dissect.number_of_decimals_in_price = function(buffer, offset, packet, parent)
  local length = size_of.number_of_decimals_in_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.number_of_decimals_in_price(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.number_of_decimals_in_price, range, value, display)

  return offset + length, value
end

-- Size: Trading Currency
size_of.trading_currency = 3

-- Display: Trading Currency
display.trading_currency = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
dissect.trading_currency = function(buffer, offset, packet, parent)
  local length = size_of.trading_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trading_currency(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Size: Financial Product
size_of.financial_product = 1

-- Display: Financial Product
display.financial_product = function(value)
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
dissect.financial_product = function(buffer, offset, packet, parent)
  local length = size_of.financial_product
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.financial_product(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Size: Isin
size_of.isin = 12

-- Display: Isin
display.isin = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
dissect.isin = function(buffer, offset, packet, parent)
  local length = size_of.isin
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.isin(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.isin, range, value, display)

  return offset + length, value
end

-- Size: Long Name
size_of.long_name = 32

-- Display: Long Name
display.long_name = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
dissect.long_name = function(buffer, offset, packet, parent)
  local length = size_of.long_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.long_name(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.long_name, range, value, display)

  return offset + length, value
end

-- Size: Symbol
size_of.symbol = 32

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

  parent:add(asx_securities_sr8_itch_v2_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Combination Order Book Directory Message
size_of.combination_order_book_directory_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_nanoseconds

  index = index + size_of.order_book_id

  index = index + size_of.symbol

  index = index + size_of.long_name

  index = index + size_of.isin

  index = index + size_of.financial_product

  index = index + size_of.trading_currency

  index = index + size_of.number_of_decimals_in_price

  index = index + size_of.number_of_decimals_in_nominal_value

  index = index + size_of.odd_lot_size

  index = index + size_of.round_lot_size

  index = index + size_of.block_lot_size

  index = index + size_of.nominal_value

  index = index + size_of.leg_1_symbol

  index = index + size_of.leg_1_side

  index = index + size_of.leg_1_ratio

  index = index + size_of.leg_2_symbol

  index = index + size_of.leg_2_side

  index = index + size_of.leg_2_ratio

  index = index + size_of.leg_3_symbol

  index = index + size_of.leg_3_side

  index = index + size_of.leg_3_ratio

  index = index + size_of.leg_4_symbol

  index = index + size_of.leg_4_side

  index = index + size_of.leg_4_ratio

  return index
end

-- Display: Combination Order Book Directory Message
display.combination_order_book_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Combination Order Book Directory Message
dissect.combination_order_book_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = dissect.order_book_id(buffer, index, packet, parent)

  -- Symbol: 32 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Long Name: 32 Byte Ascii String
  index, long_name = dissect.long_name(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = dissect.isin(buffer, index, packet, parent)

  -- Financial Product: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, financial_product = dissect.financial_product(buffer, index, packet, parent)

  -- Trading Currency: 3 Byte Ascii String
  index, trading_currency = dissect.trading_currency(buffer, index, packet, parent)

  -- Number Of Decimals In Price: 2 Byte Unsigned Fixed Width Integer
  index, number_of_decimals_in_price = dissect.number_of_decimals_in_price(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: 2 Byte Unsigned Fixed Width Integer
  index, number_of_decimals_in_nominal_value = dissect.number_of_decimals_in_nominal_value(buffer, index, packet, parent)

  -- Odd Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, odd_lot_size = dissect.odd_lot_size(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = dissect.round_lot_size(buffer, index, packet, parent)

  -- Block Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, block_lot_size = dissect.block_lot_size(buffer, index, packet, parent)

  -- Nominal Value: 8 Byte Unsigned Fixed Width Integer
  index, nominal_value = dissect.nominal_value(buffer, index, packet, parent)

  -- Leg 1 Symbol: 32 Byte Ascii String
  index, leg_1_symbol = dissect.leg_1_symbol(buffer, index, packet, parent)

  -- Leg 1 Side: 1 Byte Ascii String Enum with 2 values
  index, leg_1_side = dissect.leg_1_side(buffer, index, packet, parent)

  -- Leg 1 Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_1_ratio = dissect.leg_1_ratio(buffer, index, packet, parent)

  -- Leg 2 Symbol: 32 Byte Ascii String
  index, leg_2_symbol = dissect.leg_2_symbol(buffer, index, packet, parent)

  -- Leg 2 Side: 1 Byte Ascii String Enum with 2 values
  index, leg_2_side = dissect.leg_2_side(buffer, index, packet, parent)

  -- Leg 2 Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_2_ratio = dissect.leg_2_ratio(buffer, index, packet, parent)

  -- Leg 3 Symbol: 32 Byte Ascii String
  index, leg_3_symbol = dissect.leg_3_symbol(buffer, index, packet, parent)

  -- Leg 3 Side: 1 Byte Ascii String Enum with 3 values
  index, leg_3_side = dissect.leg_3_side(buffer, index, packet, parent)

  -- Leg 3 Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_3_ratio = dissect.leg_3_ratio(buffer, index, packet, parent)

  -- Leg 4 Symbol: 32 Byte Ascii String
  index, leg_4_symbol = dissect.leg_4_symbol(buffer, index, packet, parent)

  -- Leg 4 Side: 1 Byte Ascii String Enum with 3 values
  index, leg_4_side = dissect.leg_4_side(buffer, index, packet, parent)

  -- Leg 4 Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_4_ratio = dissect.leg_4_ratio(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Book Directory Message
dissect.combination_order_book_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.combination_order_book_directory_message then
    local length = size_of.combination_order_book_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.combination_order_book_directory_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.combination_order_book_directory_message, range, display)
  end

  return dissect.combination_order_book_directory_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Book Directory Message
size_of.order_book_directory_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_nanoseconds

  index = index + size_of.order_book_id

  index = index + size_of.symbol

  index = index + size_of.long_name

  index = index + size_of.isin

  index = index + size_of.financial_product

  index = index + size_of.trading_currency

  index = index + size_of.number_of_decimals_in_price

  index = index + size_of.number_of_decimals_in_nominal_value

  index = index + size_of.odd_lot_size

  index = index + size_of.round_lot_size

  index = index + size_of.block_lot_size

  index = index + size_of.nominal_value

  return index
end

-- Display: Order Book Directory Message
display.order_book_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book Directory Message
dissect.order_book_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = dissect.timestamp_nanoseconds(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = dissect.order_book_id(buffer, index, packet, parent)

  -- Symbol: 32 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Long Name: 32 Byte Ascii String
  index, long_name = dissect.long_name(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = dissect.isin(buffer, index, packet, parent)

  -- Financial Product: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, financial_product = dissect.financial_product(buffer, index, packet, parent)

  -- Trading Currency: 3 Byte Ascii String
  index, trading_currency = dissect.trading_currency(buffer, index, packet, parent)

  -- Number Of Decimals In Price: 2 Byte Unsigned Fixed Width Integer
  index, number_of_decimals_in_price = dissect.number_of_decimals_in_price(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: 2 Byte Unsigned Fixed Width Integer
  index, number_of_decimals_in_nominal_value = dissect.number_of_decimals_in_nominal_value(buffer, index, packet, parent)

  -- Odd Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, odd_lot_size = dissect.odd_lot_size(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = dissect.round_lot_size(buffer, index, packet, parent)

  -- Block Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, block_lot_size = dissect.block_lot_size(buffer, index, packet, parent)

  -- Nominal Value: 8 Byte Unsigned Fixed Width Integer
  index, nominal_value = dissect.nominal_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory Message
dissect.order_book_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_directory_message then
    local length = size_of.order_book_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_book_directory_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.order_book_directory_message, range, display)
  end

  return dissect.order_book_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Timestamp Seconds
size_of.timestamp_seconds = 4

-- Display: Timestamp Seconds
display.timestamp_seconds = function(value)
  return "Timestamp Seconds: "..value
end

-- Dissect: Timestamp Seconds
dissect.timestamp_seconds = function(buffer, offset, packet, parent)
  local length = size_of.timestamp_seconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.timestamp_seconds(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.timestamp_seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Seconds Message
size_of.seconds_message = function(buffer, offset)
  local index = 0

  index = index + size_of.timestamp_seconds

  return index
end

-- Display: Seconds Message
display.seconds_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Seconds Message
dissect.seconds_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Seconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_seconds = dissect.timestamp_seconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
dissect.seconds_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.seconds_message then
    local length = size_of.seconds_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.seconds_message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.seconds_message, range, display)
  end

  return dissect.seconds_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, message_type)
  -- Size of Seconds Message
  if message_type == "T" then
    return size_of.seconds_message(buffer, offset)
  end
  -- Size of Order Book Directory Message
  if message_type == "R" then
    return size_of.order_book_directory_message(buffer, offset)
  end
  -- Size of Combination Order Book Directory Message
  if message_type == "M" then
    return size_of.combination_order_book_directory_message(buffer, offset)
  end
  -- Size of Tick Size Message
  if message_type == "L" then
    return size_of.tick_size_message(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return size_of.system_event_message(buffer, offset)
  end
  -- Size of Order Book State Message
  if message_type == "O" then
    return size_of.order_book_state_message(buffer, offset)
  end
  -- Size of Add Order No Participant Id Message
  if message_type == "A" then
    return size_of.add_order_no_participant_id_message(buffer, offset)
  end
  -- Size of Add Order Participant Id Message
  if message_type == "F" then
    return size_of.add_order_participant_id_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return size_of.order_executed_message(buffer, offset)
  end
  -- Size of Order Executed With Price Message
  if message_type == "C" then
    return size_of.order_executed_with_price_message(buffer, offset)
  end
  -- Size of Order Replace Message
  if message_type == "U" then
    return size_of.order_replace_message(buffer, offset)
  end
  -- Size of Order Delete Message
  if message_type == "D" then
    return size_of.order_delete_message(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == "P" then
    return size_of.trade_message(buffer, offset)
  end
  -- Size of Equilibrium Price Update Message
  if message_type == "Z" then
    return size_of.equilibrium_price_update_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return dissect.seconds_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory Message
  if message_type == "R" then
    return dissect.order_book_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Combination Order Book Directory Message
  if message_type == "M" then
    return dissect.combination_order_book_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Tick Size Message
  if message_type == "L" then
    return dissect.tick_size_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if message_type == "O" then
    return dissect.order_book_state_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order No Participant Id Message
  if message_type == "A" then
    return dissect.add_order_no_participant_id_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Participant Id Message
  if message_type == "F" then
    return dissect.add_order_participant_id_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return dissect.order_executed_with_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return dissect.order_replace_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return dissect.order_delete_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Update Message
  if message_type == "Z" then
    return dissect.equilibrium_price_update_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(asx_securities_sr8_itch_v2_0.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
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
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Length
size_of.length = 2

-- Display: Length
display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
dissect.length = function(buffer, offset, packet, parent)
  local length = size_of.length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.length

  index = index + size_of.message_type

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = dissect.length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 14 values
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
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
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 14 branches
  index = dissect.payload(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Count
size_of.count = 2

-- Display: Count
display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
dissect.count = function(buffer, offset, packet, parent)
  local length = size_of.count
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.count, range, value, display)

  return offset + length, value
end

-- Size: Sequence
size_of.sequence = 8

-- Display: Sequence
display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
dissect.sequence = function(buffer, offset, packet, parent)
  local length = size_of.sequence
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.sequence, range, value, display)

  return offset + length, value
end

-- Size: Session
size_of.session = 10

-- Display: Session
display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  local length = size_of.session
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(asx_securities_sr8_itch_v2_0.fields.session, range, value, display)

  return offset + length, value
end

-- Calculate size of: Packet Header
size_of.packet_header = function(buffer, offset)
  local index = 0

  index = index + size_of.session

  index = index + size_of.sequence

  index = index + size_of.count

  return index
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = dissect.session(buffer, index, packet, parent)

  -- Sequence: 8 Byte Unsigned Fixed Width Integer
  index, sequence = dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index, count = dissect.count(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local length = size_of.packet_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(asx_securities_sr8_itch_v2_0.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = dissect.packet_header(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function asx_securities_sr8_itch_v2_0.init()
end

-- Dissector for Asx Securities SR8 Itch 2.0
function asx_securities_sr8_itch_v2_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = asx_securities_sr8_itch_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(asx_securities_sr8_itch_v2_0, buffer(), asx_securities_sr8_itch_v2_0.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, asx_securities_sr8_itch_v2_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.asx_securities_sr8_itch_v2_0_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Asx Securities SR8 Itch 2.0
local function asx_securities_sr8_itch_v2_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.asx_securities_sr8_itch_v2_0_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = asx_securities_sr8_itch_v2_0
  asx_securities_sr8_itch_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Asx Securities SR8 Itch 2.0
asx_securities_sr8_itch_v2_0:register_heuristic("udp", asx_securities_sr8_itch_v2_0_heuristic)

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
