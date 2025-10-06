-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Asx Securities Trade Itch 2.0 Protocol
local omi_asx_securities_trade_itch_v2_0 = Proto("Asx.Securities.Trade.Itch.v2.0.Lua", "Asx Securities Trade Itch 2.0")

-- Protocol table
local asx_securities_trade_itch_v2_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Asx Securities Trade Itch 2.0 Fields
omi_asx_securities_trade_itch_v2_0.fields.ask_quantity = ProtoField.new("Ask Quantity", "asx.securities.trade.itch.v2.0.askquantity", ftypes.UINT64)
omi_asx_securities_trade_itch_v2_0.fields.best_ask_price = ProtoField.new("Best Ask Price", "asx.securities.trade.itch.v2.0.bestaskprice", ftypes.INT32)
omi_asx_securities_trade_itch_v2_0.fields.best_ask_quantity = ProtoField.new("Best Ask Quantity", "asx.securities.trade.itch.v2.0.bestaskquantity", ftypes.UINT64)
omi_asx_securities_trade_itch_v2_0.fields.best_bid_price = ProtoField.new("Best Bid Price", "asx.securities.trade.itch.v2.0.bestbidprice", ftypes.INT32)
omi_asx_securities_trade_itch_v2_0.fields.best_bid_quantity = ProtoField.new("Best Bid Quantity", "asx.securities.trade.itch.v2.0.bestbidquantity", ftypes.UINT64)
omi_asx_securities_trade_itch_v2_0.fields.bid_quantity = ProtoField.new("Bid Quantity", "asx.securities.trade.itch.v2.0.bidquantity", ftypes.UINT64)
omi_asx_securities_trade_itch_v2_0.fields.block_lot_size = ProtoField.new("Block Lot Size", "asx.securities.trade.itch.v2.0.blocklotsize", ftypes.UINT32)
omi_asx_securities_trade_itch_v2_0.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "asx.securities.trade.itch.v2.0.equilibriumprice", ftypes.INT32)
omi_asx_securities_trade_itch_v2_0.fields.event_code = ProtoField.new("Event Code", "asx.securities.trade.itch.v2.0.eventcode", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.exchange_order_type = ProtoField.new("Exchange Order Type", "asx.securities.trade.itch.v2.0.exchangeordertype", ftypes.UINT16)
omi_asx_securities_trade_itch_v2_0.fields.executed_quantity = ProtoField.new("Executed Quantity", "asx.securities.trade.itch.v2.0.executedquantity", ftypes.UINT64)
omi_asx_securities_trade_itch_v2_0.fields.financial_product = ProtoField.new("Financial Product", "asx.securities.trade.itch.v2.0.financialproduct", ftypes.UINT8)
omi_asx_securities_trade_itch_v2_0.fields.isin = ProtoField.new("Isin", "asx.securities.trade.itch.v2.0.isin", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.leg_1_ratio = ProtoField.new("Leg 1 Ratio", "asx.securities.trade.itch.v2.0.leg1ratio", ftypes.UINT32)
omi_asx_securities_trade_itch_v2_0.fields.leg_1_side = ProtoField.new("Leg 1 Side", "asx.securities.trade.itch.v2.0.leg1side", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.leg_1_symbol = ProtoField.new("Leg 1 Symbol", "asx.securities.trade.itch.v2.0.leg1symbol", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.leg_2_ratio = ProtoField.new("Leg 2 Ratio", "asx.securities.trade.itch.v2.0.leg2ratio", ftypes.UINT32)
omi_asx_securities_trade_itch_v2_0.fields.leg_2_side = ProtoField.new("Leg 2 Side", "asx.securities.trade.itch.v2.0.leg2side", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.leg_2_symbol = ProtoField.new("Leg 2 Symbol", "asx.securities.trade.itch.v2.0.leg2symbol", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.leg_3_ratio = ProtoField.new("Leg 3 Ratio", "asx.securities.trade.itch.v2.0.leg3ratio", ftypes.UINT32)
omi_asx_securities_trade_itch_v2_0.fields.leg_3_side = ProtoField.new("Leg 3 Side", "asx.securities.trade.itch.v2.0.leg3side", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.leg_3_symbol = ProtoField.new("Leg 3 Symbol", "asx.securities.trade.itch.v2.0.leg3symbol", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.leg_4_ratio = ProtoField.new("Leg 4 Ratio", "asx.securities.trade.itch.v2.0.leg4ratio", ftypes.UINT32)
omi_asx_securities_trade_itch_v2_0.fields.leg_4_side = ProtoField.new("Leg 4 Side", "asx.securities.trade.itch.v2.0.leg4side", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.leg_4_symbol = ProtoField.new("Leg 4 Symbol", "asx.securities.trade.itch.v2.0.leg4symbol", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.long_name = ProtoField.new("Long Name", "asx.securities.trade.itch.v2.0.longname", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.lot_type = ProtoField.new("Lot Type", "asx.securities.trade.itch.v2.0.lottype", ftypes.UINT8)
omi_asx_securities_trade_itch_v2_0.fields.match_id = ProtoField.new("Match Id", "asx.securities.trade.itch.v2.0.matchid", ftypes.BYTES)
omi_asx_securities_trade_itch_v2_0.fields.message = ProtoField.new("Message", "asx.securities.trade.itch.v2.0.message", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.message_count = ProtoField.new("Message Count", "asx.securities.trade.itch.v2.0.messagecount", ftypes.UINT16)
omi_asx_securities_trade_itch_v2_0.fields.message_header = ProtoField.new("Message Header", "asx.securities.trade.itch.v2.0.messageheader", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.message_length = ProtoField.new("Message Length", "asx.securities.trade.itch.v2.0.messagelength", ftypes.UINT16)
omi_asx_securities_trade_itch_v2_0.fields.message_type = ProtoField.new("Message Type", "asx.securities.trade.itch.v2.0.messagetype", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.new_order_book_position = ProtoField.new("New Order Book Position", "asx.securities.trade.itch.v2.0.neworderbookposition", ftypes.UINT32)
omi_asx_securities_trade_itch_v2_0.fields.nominal_value = ProtoField.new("Nominal Value", "asx.securities.trade.itch.v2.0.nominalvalue", ftypes.UINT64)
omi_asx_securities_trade_itch_v2_0.fields.number_of_decimals_in_nominal_value = ProtoField.new("Number Of Decimals In Nominal Value", "asx.securities.trade.itch.v2.0.numberofdecimalsinnominalvalue", ftypes.UINT16)
omi_asx_securities_trade_itch_v2_0.fields.number_of_decimals_in_price = ProtoField.new("Number Of Decimals In Price", "asx.securities.trade.itch.v2.0.numberofdecimalsinprice", ftypes.UINT16)
omi_asx_securities_trade_itch_v2_0.fields.occurred_at_cross = ProtoField.new("Occurred At Cross", "asx.securities.trade.itch.v2.0.occurredatcross", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.odd_lot_size = ProtoField.new("Odd Lot Size", "asx.securities.trade.itch.v2.0.oddlotsize", ftypes.UINT32)
omi_asx_securities_trade_itch_v2_0.fields.order_book_id = ProtoField.new("Order Book Id", "asx.securities.trade.itch.v2.0.orderbookid", ftypes.UINT32)
omi_asx_securities_trade_itch_v2_0.fields.order_book_position = ProtoField.new("Order Book Position", "asx.securities.trade.itch.v2.0.orderbookposition", ftypes.UINT32)
omi_asx_securities_trade_itch_v2_0.fields.order_id = ProtoField.new("Order Id", "asx.securities.trade.itch.v2.0.orderid", ftypes.UINT64)
omi_asx_securities_trade_itch_v2_0.fields.packet = ProtoField.new("Packet", "asx.securities.trade.itch.v2.0.packet", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.packet_header = ProtoField.new("Packet Header", "asx.securities.trade.itch.v2.0.packetheader", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.participant_id = ProtoField.new("Participant Id", "asx.securities.trade.itch.v2.0.participantid", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.participant_id_counterparty = ProtoField.new("Participant Id Counterparty", "asx.securities.trade.itch.v2.0.participantidcounterparty", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.participant_id_owner = ProtoField.new("Participant Id Owner", "asx.securities.trade.itch.v2.0.participantidowner", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.payload = ProtoField.new("Payload", "asx.securities.trade.itch.v2.0.payload", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.price = ProtoField.new("Price", "asx.securities.trade.itch.v2.0.price", ftypes.INT32)
omi_asx_securities_trade_itch_v2_0.fields.price_from = ProtoField.new("Price From", "asx.securities.trade.itch.v2.0.pricefrom", ftypes.INT32)
omi_asx_securities_trade_itch_v2_0.fields.price_to = ProtoField.new("Price To", "asx.securities.trade.itch.v2.0.priceto", ftypes.INT32)
omi_asx_securities_trade_itch_v2_0.fields.printable = ProtoField.new("Printable", "asx.securities.trade.itch.v2.0.printable", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.quantity = ProtoField.new("Quantity", "asx.securities.trade.itch.v2.0.quantity", ftypes.UINT64)
omi_asx_securities_trade_itch_v2_0.fields.round_lot_size = ProtoField.new("Round Lot Size", "asx.securities.trade.itch.v2.0.roundlotsize", ftypes.UINT32)
omi_asx_securities_trade_itch_v2_0.fields.sequence_number = ProtoField.new("Sequence Number", "asx.securities.trade.itch.v2.0.sequencenumber", ftypes.UINT64)
omi_asx_securities_trade_itch_v2_0.fields.session = ProtoField.new("Session", "asx.securities.trade.itch.v2.0.session", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.side = ProtoField.new("Side", "asx.securities.trade.itch.v2.0.side", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.state_name = ProtoField.new("State Name", "asx.securities.trade.itch.v2.0.statename", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.symbol = ProtoField.new("Symbol", "asx.securities.trade.itch.v2.0.symbol", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.tick_size = ProtoField.new("Tick Size", "asx.securities.trade.itch.v2.0.ticksize", ftypes.UINT64)
omi_asx_securities_trade_itch_v2_0.fields.timestamp_nanoseconds = ProtoField.new("Timestamp Nanoseconds", "asx.securities.trade.itch.v2.0.timestampnanoseconds", ftypes.UINT32)
omi_asx_securities_trade_itch_v2_0.fields.timestamp_seconds = ProtoField.new("Timestamp Seconds", "asx.securities.trade.itch.v2.0.timestampseconds", ftypes.UINT32)
omi_asx_securities_trade_itch_v2_0.fields.trade_price = ProtoField.new("Trade Price", "asx.securities.trade.itch.v2.0.tradeprice", ftypes.INT32)
omi_asx_securities_trade_itch_v2_0.fields.trading_currency = ProtoField.new("Trading Currency", "asx.securities.trade.itch.v2.0.tradingcurrency", ftypes.STRING)

-- Asx Securities Trade Itch 2.0 messages
omi_asx_securities_trade_itch_v2_0.fields.add_order_no_participant_id_message = ProtoField.new("Add Order No Participant Id Message", "asx.securities.trade.itch.v2.0.addordernoparticipantidmessage", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.add_order_participant_id_message = ProtoField.new("Add Order Participant Id Message", "asx.securities.trade.itch.v2.0.addorderparticipantidmessage", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.combination_order_book_directory_message = ProtoField.new("Combination Order Book Directory Message", "asx.securities.trade.itch.v2.0.combinationorderbookdirectorymessage", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.equilibrium_price_update_message = ProtoField.new("Equilibrium Price Update Message", "asx.securities.trade.itch.v2.0.equilibriumpriceupdatemessage", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.order_book_directory_message = ProtoField.new("Order Book Directory Message", "asx.securities.trade.itch.v2.0.orderbookdirectorymessage", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.order_book_state_message = ProtoField.new("Order Book State Message", "asx.securities.trade.itch.v2.0.orderbookstatemessage", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.order_delete_message = ProtoField.new("Order Delete Message", "asx.securities.trade.itch.v2.0.orderdeletemessage", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "asx.securities.trade.itch.v2.0.orderexecutedmessage", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "asx.securities.trade.itch.v2.0.orderexecutedwithpricemessage", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.order_replace_message = ProtoField.new("Order Replace Message", "asx.securities.trade.itch.v2.0.orderreplacemessage", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.seconds_message = ProtoField.new("Seconds Message", "asx.securities.trade.itch.v2.0.secondsmessage", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.system_event_message = ProtoField.new("System Event Message", "asx.securities.trade.itch.v2.0.systemeventmessage", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.tick_size_message = ProtoField.new("Tick Size Message", "asx.securities.trade.itch.v2.0.ticksizemessage", ftypes.STRING)
omi_asx_securities_trade_itch_v2_0.fields.trade_message = ProtoField.new("Trade Message", "asx.securities.trade.itch.v2.0.trademessage", ftypes.STRING)

-- Asx Securities Trade Itch 2.0 generated fields
omi_asx_securities_trade_itch_v2_0.fields.message_index = ProtoField.new("Message Index", "asx.securities.trade.itch.v2.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

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
omi_asx_securities_trade_itch_v2_0.prefs.show_add_order_no_participant_id_message = Pref.bool("Show Add Order No Participant Id Message", show.add_order_no_participant_id_message, "Parse and add Add Order No Participant Id Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_add_order_participant_id_message = Pref.bool("Show Add Order Participant Id Message", show.add_order_participant_id_message, "Parse and add Add Order Participant Id Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_combination_order_book_directory_message = Pref.bool("Show Combination Order Book Directory Message", show.combination_order_book_directory_message, "Parse and add Combination Order Book Directory Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_equilibrium_price_update_message = Pref.bool("Show Equilibrium Price Update Message", show.equilibrium_price_update_message, "Parse and add Equilibrium Price Update Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_order_book_directory_message = Pref.bool("Show Order Book Directory Message", show.order_book_directory_message, "Parse and add Order Book Directory Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_order_book_state_message = Pref.bool("Show Order Book State Message", show.order_book_state_message, "Parse and add Order Book State Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_order_executed_with_price_message = Pref.bool("Show Order Executed With Price Message", show.order_executed_with_price_message, "Parse and add Order Executed With Price Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_order_replace_message = Pref.bool("Show Order Replace Message", show.order_replace_message, "Parse and add Order Replace Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_seconds_message = Pref.bool("Show Seconds Message", show.seconds_message, "Parse and add Seconds Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_tick_size_message = Pref.bool("Show Tick Size Message", show.tick_size_message, "Parse and add Tick Size Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_asx_securities_trade_itch_v2_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_asx_securities_trade_itch_v2_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_no_participant_id_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_add_order_no_participant_id_message then
    show.add_order_no_participant_id_message = omi_asx_securities_trade_itch_v2_0.prefs.show_add_order_no_participant_id_message
    changed = true
  end
  if show.add_order_participant_id_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_add_order_participant_id_message then
    show.add_order_participant_id_message = omi_asx_securities_trade_itch_v2_0.prefs.show_add_order_participant_id_message
    changed = true
  end
  if show.combination_order_book_directory_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_combination_order_book_directory_message then
    show.combination_order_book_directory_message = omi_asx_securities_trade_itch_v2_0.prefs.show_combination_order_book_directory_message
    changed = true
  end
  if show.equilibrium_price_update_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_equilibrium_price_update_message then
    show.equilibrium_price_update_message = omi_asx_securities_trade_itch_v2_0.prefs.show_equilibrium_price_update_message
    changed = true
  end
  if show.message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_message then
    show.message = omi_asx_securities_trade_itch_v2_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_asx_securities_trade_itch_v2_0.prefs.show_message_header then
    show.message_header = omi_asx_securities_trade_itch_v2_0.prefs.show_message_header
    changed = true
  end
  if show.order_book_directory_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_order_book_directory_message then
    show.order_book_directory_message = omi_asx_securities_trade_itch_v2_0.prefs.show_order_book_directory_message
    changed = true
  end
  if show.order_book_state_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_order_book_state_message then
    show.order_book_state_message = omi_asx_securities_trade_itch_v2_0.prefs.show_order_book_state_message
    changed = true
  end
  if show.order_delete_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_order_delete_message then
    show.order_delete_message = omi_asx_securities_trade_itch_v2_0.prefs.show_order_delete_message
    changed = true
  end
  if show.order_executed_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_order_executed_message then
    show.order_executed_message = omi_asx_securities_trade_itch_v2_0.prefs.show_order_executed_message
    changed = true
  end
  if show.order_executed_with_price_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_order_executed_with_price_message then
    show.order_executed_with_price_message = omi_asx_securities_trade_itch_v2_0.prefs.show_order_executed_with_price_message
    changed = true
  end
  if show.order_replace_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_order_replace_message then
    show.order_replace_message = omi_asx_securities_trade_itch_v2_0.prefs.show_order_replace_message
    changed = true
  end
  if show.packet ~= omi_asx_securities_trade_itch_v2_0.prefs.show_packet then
    show.packet = omi_asx_securities_trade_itch_v2_0.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_asx_securities_trade_itch_v2_0.prefs.show_packet_header then
    show.packet_header = omi_asx_securities_trade_itch_v2_0.prefs.show_packet_header
    changed = true
  end
  if show.seconds_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_seconds_message then
    show.seconds_message = omi_asx_securities_trade_itch_v2_0.prefs.show_seconds_message
    changed = true
  end
  if show.system_event_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_system_event_message then
    show.system_event_message = omi_asx_securities_trade_itch_v2_0.prefs.show_system_event_message
    changed = true
  end
  if show.tick_size_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_tick_size_message then
    show.tick_size_message = omi_asx_securities_trade_itch_v2_0.prefs.show_tick_size_message
    changed = true
  end
  if show.trade_message ~= omi_asx_securities_trade_itch_v2_0.prefs.show_trade_message then
    show.trade_message = omi_asx_securities_trade_itch_v2_0.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= omi_asx_securities_trade_itch_v2_0.prefs.show_payload then
    show.payload = omi_asx_securities_trade_itch_v2_0.prefs.show_payload
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

-- Best Ask Quantity
asx_securities_trade_itch_v2_0.best_ask_quantity = {}

-- Size Of: Best Ask Quantity
asx_securities_trade_itch_v2_0.best_ask_quantity.size = 8

-- Display: Best Ask Quantity
asx_securities_trade_itch_v2_0.best_ask_quantity.display = function(value)
  return "Best Ask Quantity: "..value
end

-- Dissect: Best Ask Quantity
asx_securities_trade_itch_v2_0.best_ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.best_ask_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0.best_ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.best_ask_quantity, range, value, display)

  return offset + length, value
end

-- Best Bid Quantity
asx_securities_trade_itch_v2_0.best_bid_quantity = {}

-- Size Of: Best Bid Quantity
asx_securities_trade_itch_v2_0.best_bid_quantity.size = 8

-- Display: Best Bid Quantity
asx_securities_trade_itch_v2_0.best_bid_quantity.display = function(value)
  return "Best Bid Quantity: "..value
end

-- Dissect: Best Bid Quantity
asx_securities_trade_itch_v2_0.best_bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.best_bid_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0.best_bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.best_bid_quantity, range, value, display)

  return offset + length, value
end

-- Best Ask Price
asx_securities_trade_itch_v2_0.best_ask_price = {}

-- Size Of: Best Ask Price
asx_securities_trade_itch_v2_0.best_ask_price.size = 4

-- Display: Best Ask Price
asx_securities_trade_itch_v2_0.best_ask_price.display = function(value)
  return "Best Ask Price: "..value
end

-- Dissect: Best Ask Price
asx_securities_trade_itch_v2_0.best_ask_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.best_ask_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0.best_ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.best_ask_price, range, value, display)

  return offset + length, value
end

-- Best Bid Price
asx_securities_trade_itch_v2_0.best_bid_price = {}

-- Size Of: Best Bid Price
asx_securities_trade_itch_v2_0.best_bid_price.size = 4

-- Display: Best Bid Price
asx_securities_trade_itch_v2_0.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
asx_securities_trade_itch_v2_0.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.best_bid_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Equilibrium Price
asx_securities_trade_itch_v2_0.equilibrium_price = {}

-- Size Of: Equilibrium Price
asx_securities_trade_itch_v2_0.equilibrium_price.size = 4

-- Display: Equilibrium Price
asx_securities_trade_itch_v2_0.equilibrium_price.display = function(value)
  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
asx_securities_trade_itch_v2_0.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Ask Quantity
asx_securities_trade_itch_v2_0.ask_quantity = {}

-- Size Of: Ask Quantity
asx_securities_trade_itch_v2_0.ask_quantity.size = 8

-- Display: Ask Quantity
asx_securities_trade_itch_v2_0.ask_quantity.display = function(value)
  return "Ask Quantity: "..value
end

-- Dissect: Ask Quantity
asx_securities_trade_itch_v2_0.ask_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.ask_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0.ask_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.ask_quantity, range, value, display)

  return offset + length, value
end

-- Bid Quantity
asx_securities_trade_itch_v2_0.bid_quantity = {}

-- Size Of: Bid Quantity
asx_securities_trade_itch_v2_0.bid_quantity.size = 8

-- Display: Bid Quantity
asx_securities_trade_itch_v2_0.bid_quantity.display = function(value)
  return "Bid Quantity: "..value
end

-- Dissect: Bid Quantity
asx_securities_trade_itch_v2_0.bid_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.bid_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0.bid_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.bid_quantity, range, value, display)

  return offset + length, value
end

-- Order Book Id
asx_securities_trade_itch_v2_0.order_book_id = {}

-- Size Of: Order Book Id
asx_securities_trade_itch_v2_0.order_book_id.size = 4

-- Display: Order Book Id
asx_securities_trade_itch_v2_0.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
asx_securities_trade_itch_v2_0.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Timestamp Nanoseconds
asx_securities_trade_itch_v2_0.timestamp_nanoseconds = {}

-- Size Of: Timestamp Nanoseconds
asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size = 4

-- Display: Timestamp Nanoseconds
asx_securities_trade_itch_v2_0.timestamp_nanoseconds.display = function(value)
  return "Timestamp Nanoseconds: "..value
end

-- Dissect: Timestamp Nanoseconds
asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.timestamp_nanoseconds, range, value, display)

  return offset + length, value
end

-- Equilibrium Price Update Message
asx_securities_trade_itch_v2_0.equilibrium_price_update_message = {}

-- Size Of: Equilibrium Price Update Message
asx_securities_trade_itch_v2_0.equilibrium_price_update_message.size =
  asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_itch_v2_0.order_book_id.size + 
  asx_securities_trade_itch_v2_0.bid_quantity.size + 
  asx_securities_trade_itch_v2_0.ask_quantity.size + 
  asx_securities_trade_itch_v2_0.equilibrium_price.size + 
  asx_securities_trade_itch_v2_0.best_bid_price.size + 
  asx_securities_trade_itch_v2_0.best_ask_price.size + 
  asx_securities_trade_itch_v2_0.best_bid_quantity.size + 
  asx_securities_trade_itch_v2_0.best_ask_quantity.size;

-- Display: Equilibrium Price Update Message
asx_securities_trade_itch_v2_0.equilibrium_price_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equilibrium Price Update Message
asx_securities_trade_itch_v2_0.equilibrium_price_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Bid Quantity: 8 Byte Unsigned Fixed Width Integer
  index, bid_quantity = asx_securities_trade_itch_v2_0.bid_quantity.dissect(buffer, index, packet, parent)

  -- Ask Quantity: 8 Byte Unsigned Fixed Width Integer
  index, ask_quantity = asx_securities_trade_itch_v2_0.ask_quantity.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: 4 Byte Signed Fixed Width Integer
  index, equilibrium_price = asx_securities_trade_itch_v2_0.equilibrium_price.dissect(buffer, index, packet, parent)

  -- Best Bid Price: 4 Byte Signed Fixed Width Integer
  index, best_bid_price = asx_securities_trade_itch_v2_0.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Ask Price: 4 Byte Signed Fixed Width Integer
  index, best_ask_price = asx_securities_trade_itch_v2_0.best_ask_price.dissect(buffer, index, packet, parent)

  -- Best Bid Quantity: 8 Byte Unsigned Fixed Width Integer
  index, best_bid_quantity = asx_securities_trade_itch_v2_0.best_bid_quantity.dissect(buffer, index, packet, parent)

  -- Best Ask Quantity: 8 Byte Unsigned Fixed Width Integer
  index, best_ask_quantity = asx_securities_trade_itch_v2_0.best_ask_quantity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Update Message
asx_securities_trade_itch_v2_0.equilibrium_price_update_message.dissect = function(buffer, offset, packet, parent)
  if show.equilibrium_price_update_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.equilibrium_price_update_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.equilibrium_price_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.equilibrium_price_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.equilibrium_price_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Occurred At Cross
asx_securities_trade_itch_v2_0.occurred_at_cross = {}

-- Size Of: Occurred At Cross
asx_securities_trade_itch_v2_0.occurred_at_cross.size = 1

-- Display: Occurred At Cross
asx_securities_trade_itch_v2_0.occurred_at_cross.display = function(value)
  if value == "Y" then
    return "Occurred At Cross: Yes (Y)"
  end
  if value == "N" then
    return "Occurred At Cross: No (N)"
  end

  return "Occurred At Cross: Unknown("..value..")"
end

-- Dissect: Occurred At Cross
asx_securities_trade_itch_v2_0.occurred_at_cross.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.occurred_at_cross.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0.occurred_at_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.occurred_at_cross, range, value, display)

  return offset + length, value
end

-- Printable
asx_securities_trade_itch_v2_0.printable = {}

-- Size Of: Printable
asx_securities_trade_itch_v2_0.printable.size = 1

-- Display: Printable
asx_securities_trade_itch_v2_0.printable.display = function(value)
  if value == "Y" then
    return "Printable: Yes (Y)"
  end
  if value == "N" then
    return "Printable: No (N)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
asx_securities_trade_itch_v2_0.printable.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.printable, range, value, display)

  return offset + length, value
end

-- Participant Id Counterparty
asx_securities_trade_itch_v2_0.participant_id_counterparty = {}

-- Size Of: Participant Id Counterparty
asx_securities_trade_itch_v2_0.participant_id_counterparty.size = 7

-- Display: Participant Id Counterparty
asx_securities_trade_itch_v2_0.participant_id_counterparty.display = function(value)
  return "Participant Id Counterparty: "..value
end

-- Dissect: Participant Id Counterparty
asx_securities_trade_itch_v2_0.participant_id_counterparty.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.participant_id_counterparty.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0.participant_id_counterparty.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.participant_id_counterparty, range, value, display)

  return offset + length, value
end

-- Participant Id Owner
asx_securities_trade_itch_v2_0.participant_id_owner = {}

-- Size Of: Participant Id Owner
asx_securities_trade_itch_v2_0.participant_id_owner.size = 7

-- Display: Participant Id Owner
asx_securities_trade_itch_v2_0.participant_id_owner.display = function(value)
  return "Participant Id Owner: "..value
end

-- Dissect: Participant Id Owner
asx_securities_trade_itch_v2_0.participant_id_owner.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.participant_id_owner.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0.participant_id_owner.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.participant_id_owner, range, value, display)

  return offset + length, value
end

-- Trade Price
asx_securities_trade_itch_v2_0.trade_price = {}

-- Size Of: Trade Price
asx_securities_trade_itch_v2_0.trade_price.size = 4

-- Display: Trade Price
asx_securities_trade_itch_v2_0.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
asx_securities_trade_itch_v2_0.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Quantity
asx_securities_trade_itch_v2_0.quantity = {}

-- Size Of: Quantity
asx_securities_trade_itch_v2_0.quantity.size = 8

-- Display: Quantity
asx_securities_trade_itch_v2_0.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
asx_securities_trade_itch_v2_0.quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.quantity, range, value, display)

  return offset + length, value
end

-- Side
asx_securities_trade_itch_v2_0.side = {}

-- Size Of: Side
asx_securities_trade_itch_v2_0.side.size = 1

-- Display: Side
asx_securities_trade_itch_v2_0.side.display = function(value)
  if value == "S" then
    return "Side: Sell (S)"
  end
  if value == "B" then
    return "Side: Buy (B)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
asx_securities_trade_itch_v2_0.side.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.side, range, value, display)

  return offset + length, value
end

-- Match Id
asx_securities_trade_itch_v2_0.match_id = {}

-- Size Of: Match Id
asx_securities_trade_itch_v2_0.match_id.size = 12

-- Display: Match Id
asx_securities_trade_itch_v2_0.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
asx_securities_trade_itch_v2_0.match_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.match_id.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = asx_securities_trade_itch_v2_0.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.match_id, range, value, display)

  return offset + length, value
end

-- Trade Message
asx_securities_trade_itch_v2_0.trade_message = {}

-- Size Of: Trade Message
asx_securities_trade_itch_v2_0.trade_message.size =
  asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_itch_v2_0.match_id.size + 
  asx_securities_trade_itch_v2_0.side.size + 
  asx_securities_trade_itch_v2_0.quantity.size + 
  asx_securities_trade_itch_v2_0.order_book_id.size + 
  asx_securities_trade_itch_v2_0.trade_price.size + 
  asx_securities_trade_itch_v2_0.participant_id_owner.size + 
  asx_securities_trade_itch_v2_0.participant_id_counterparty.size + 
  asx_securities_trade_itch_v2_0.printable.size + 
  asx_securities_trade_itch_v2_0.occurred_at_cross.size;

-- Display: Trade Message
asx_securities_trade_itch_v2_0.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
asx_securities_trade_itch_v2_0.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Match Id: 12 Byte Unsigned Fixed Width Integer
  index, match_id = asx_securities_trade_itch_v2_0.match_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0.side.dissect(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_trade_itch_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_trade_itch_v2_0.trade_price.dissect(buffer, index, packet, parent)

  -- Participant Id Owner: 7 Byte Ascii String
  index, participant_id_owner = asx_securities_trade_itch_v2_0.participant_id_owner.dissect(buffer, index, packet, parent)

  -- Participant Id Counterparty: 7 Byte Ascii String
  index, participant_id_counterparty = asx_securities_trade_itch_v2_0.participant_id_counterparty.dissect(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = asx_securities_trade_itch_v2_0.printable.dissect(buffer, index, packet, parent)

  -- Occurred At Cross: 1 Byte Ascii String Enum with 2 values
  index, occurred_at_cross = asx_securities_trade_itch_v2_0.occurred_at_cross.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
asx_securities_trade_itch_v2_0.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.trade_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
asx_securities_trade_itch_v2_0.order_id = {}

-- Size Of: Order Id
asx_securities_trade_itch_v2_0.order_id.size = 8

-- Display: Order Id
asx_securities_trade_itch_v2_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
asx_securities_trade_itch_v2_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Delete Message
asx_securities_trade_itch_v2_0.order_delete_message = {}

-- Size Of: Order Delete Message
asx_securities_trade_itch_v2_0.order_delete_message.size =
  asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_itch_v2_0.order_id.size + 
  asx_securities_trade_itch_v2_0.order_book_id.size + 
  asx_securities_trade_itch_v2_0.side.size;

-- Display: Order Delete Message
asx_securities_trade_itch_v2_0.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
asx_securities_trade_itch_v2_0.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_itch_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
asx_securities_trade_itch_v2_0.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.order_delete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.order_delete_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Exchange Order Type
asx_securities_trade_itch_v2_0.exchange_order_type = {}

-- Size Of: Exchange Order Type
asx_securities_trade_itch_v2_0.exchange_order_type.size = 2

-- Display: Exchange Order Type
asx_securities_trade_itch_v2_0.exchange_order_type.display = function(value)
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
asx_securities_trade_itch_v2_0.exchange_order_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.exchange_order_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.exchange_order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.exchange_order_type, range, value, display)

  return offset + length, value
end

-- Price
asx_securities_trade_itch_v2_0.price = {}

-- Size Of: Price
asx_securities_trade_itch_v2_0.price.size = 4

-- Display: Price
asx_securities_trade_itch_v2_0.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
asx_securities_trade_itch_v2_0.price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.price, range, value, display)

  return offset + length, value
end

-- New Order Book Position
asx_securities_trade_itch_v2_0.new_order_book_position = {}

-- Size Of: New Order Book Position
asx_securities_trade_itch_v2_0.new_order_book_position.size = 4

-- Display: New Order Book Position
asx_securities_trade_itch_v2_0.new_order_book_position.display = function(value)
  return "New Order Book Position: "..value
end

-- Dissect: New Order Book Position
asx_securities_trade_itch_v2_0.new_order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.new_order_book_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.new_order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.new_order_book_position, range, value, display)

  return offset + length, value
end

-- Order Replace Message
asx_securities_trade_itch_v2_0.order_replace_message = {}

-- Size Of: Order Replace Message
asx_securities_trade_itch_v2_0.order_replace_message.size =
  asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_itch_v2_0.order_id.size + 
  asx_securities_trade_itch_v2_0.order_book_id.size + 
  asx_securities_trade_itch_v2_0.side.size + 
  asx_securities_trade_itch_v2_0.new_order_book_position.size + 
  asx_securities_trade_itch_v2_0.quantity.size + 
  asx_securities_trade_itch_v2_0.price.size + 
  asx_securities_trade_itch_v2_0.exchange_order_type.size;

-- Display: Order Replace Message
asx_securities_trade_itch_v2_0.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
asx_securities_trade_itch_v2_0.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_itch_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0.side.dissect(buffer, index, packet, parent)

  -- New Order Book Position: 4 Byte Unsigned Fixed Width Integer
  index, new_order_book_position = asx_securities_trade_itch_v2_0.new_order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_trade_itch_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_trade_itch_v2_0.price.dissect(buffer, index, packet, parent)

  -- Exchange Order Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, exchange_order_type = asx_securities_trade_itch_v2_0.exchange_order_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
asx_securities_trade_itch_v2_0.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.order_replace_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.order_replace_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Executed Quantity
asx_securities_trade_itch_v2_0.executed_quantity = {}

-- Size Of: Executed Quantity
asx_securities_trade_itch_v2_0.executed_quantity.size = 8

-- Display: Executed Quantity
asx_securities_trade_itch_v2_0.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
asx_securities_trade_itch_v2_0.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Order Executed With Price Message
asx_securities_trade_itch_v2_0.order_executed_with_price_message = {}

-- Size Of: Order Executed With Price Message
asx_securities_trade_itch_v2_0.order_executed_with_price_message.size =
  asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_itch_v2_0.order_id.size + 
  asx_securities_trade_itch_v2_0.order_book_id.size + 
  asx_securities_trade_itch_v2_0.side.size + 
  asx_securities_trade_itch_v2_0.executed_quantity.size + 
  asx_securities_trade_itch_v2_0.match_id.size + 
  asx_securities_trade_itch_v2_0.participant_id_owner.size + 
  asx_securities_trade_itch_v2_0.participant_id_counterparty.size + 
  asx_securities_trade_itch_v2_0.trade_price.size + 
  asx_securities_trade_itch_v2_0.occurred_at_cross.size + 
  asx_securities_trade_itch_v2_0.printable.size;

-- Display: Order Executed With Price Message
asx_securities_trade_itch_v2_0.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
asx_securities_trade_itch_v2_0.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_itch_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 8 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_trade_itch_v2_0.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: 12 Byte Unsigned Fixed Width Integer
  index, match_id = asx_securities_trade_itch_v2_0.match_id.dissect(buffer, index, packet, parent)

  -- Participant Id Owner: 7 Byte Ascii String
  index, participant_id_owner = asx_securities_trade_itch_v2_0.participant_id_owner.dissect(buffer, index, packet, parent)

  -- Participant Id Counterparty: 7 Byte Ascii String
  index, participant_id_counterparty = asx_securities_trade_itch_v2_0.participant_id_counterparty.dissect(buffer, index, packet, parent)

  -- Trade Price: 4 Byte Signed Fixed Width Integer
  index, trade_price = asx_securities_trade_itch_v2_0.trade_price.dissect(buffer, index, packet, parent)

  -- Occurred At Cross: 1 Byte Ascii String Enum with 2 values
  index, occurred_at_cross = asx_securities_trade_itch_v2_0.occurred_at_cross.dissect(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = asx_securities_trade_itch_v2_0.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
asx_securities_trade_itch_v2_0.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_with_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
asx_securities_trade_itch_v2_0.order_executed_message = {}

-- Size Of: Order Executed Message
asx_securities_trade_itch_v2_0.order_executed_message.size =
  asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_itch_v2_0.order_id.size + 
  asx_securities_trade_itch_v2_0.order_book_id.size + 
  asx_securities_trade_itch_v2_0.side.size + 
  asx_securities_trade_itch_v2_0.executed_quantity.size + 
  asx_securities_trade_itch_v2_0.match_id.size + 
  asx_securities_trade_itch_v2_0.participant_id_owner.size + 
  asx_securities_trade_itch_v2_0.participant_id_counterparty.size;

-- Display: Order Executed Message
asx_securities_trade_itch_v2_0.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
asx_securities_trade_itch_v2_0.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_itch_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: 8 Byte Unsigned Fixed Width Integer
  index, executed_quantity = asx_securities_trade_itch_v2_0.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: 12 Byte Unsigned Fixed Width Integer
  index, match_id = asx_securities_trade_itch_v2_0.match_id.dissect(buffer, index, packet, parent)

  -- Participant Id Owner: 7 Byte Ascii String
  index, participant_id_owner = asx_securities_trade_itch_v2_0.participant_id_owner.dissect(buffer, index, packet, parent)

  -- Participant Id Counterparty: 7 Byte Ascii String
  index, participant_id_counterparty = asx_securities_trade_itch_v2_0.participant_id_counterparty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
asx_securities_trade_itch_v2_0.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.order_executed_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant Id
asx_securities_trade_itch_v2_0.participant_id = {}

-- Size Of: Participant Id
asx_securities_trade_itch_v2_0.participant_id.size = 7

-- Display: Participant Id
asx_securities_trade_itch_v2_0.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
asx_securities_trade_itch_v2_0.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Lot Type
asx_securities_trade_itch_v2_0.lot_type = {}

-- Size Of: Lot Type
asx_securities_trade_itch_v2_0.lot_type.size = 1

-- Display: Lot Type
asx_securities_trade_itch_v2_0.lot_type.display = function(value)
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
asx_securities_trade_itch_v2_0.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.lot_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Order Book Position
asx_securities_trade_itch_v2_0.order_book_position = {}

-- Size Of: Order Book Position
asx_securities_trade_itch_v2_0.order_book_position.size = 4

-- Display: Order Book Position
asx_securities_trade_itch_v2_0.order_book_position.display = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
asx_securities_trade_itch_v2_0.order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.order_book_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Add Order Participant Id Message
asx_securities_trade_itch_v2_0.add_order_participant_id_message = {}

-- Size Of: Add Order Participant Id Message
asx_securities_trade_itch_v2_0.add_order_participant_id_message.size =
  asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_itch_v2_0.order_id.size + 
  asx_securities_trade_itch_v2_0.order_book_id.size + 
  asx_securities_trade_itch_v2_0.side.size + 
  asx_securities_trade_itch_v2_0.order_book_position.size + 
  asx_securities_trade_itch_v2_0.quantity.size + 
  asx_securities_trade_itch_v2_0.price.size + 
  asx_securities_trade_itch_v2_0.exchange_order_type.size + 
  asx_securities_trade_itch_v2_0.lot_type.size + 
  asx_securities_trade_itch_v2_0.participant_id.size;

-- Display: Add Order Participant Id Message
asx_securities_trade_itch_v2_0.add_order_participant_id_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Participant Id Message
asx_securities_trade_itch_v2_0.add_order_participant_id_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_itch_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0.side.dissect(buffer, index, packet, parent)

  -- Order Book Position: 4 Byte Unsigned Fixed Width Integer
  index, order_book_position = asx_securities_trade_itch_v2_0.order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_trade_itch_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_trade_itch_v2_0.price.dissect(buffer, index, packet, parent)

  -- Exchange Order Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, exchange_order_type = asx_securities_trade_itch_v2_0.exchange_order_type.dissect(buffer, index, packet, parent)

  -- Lot Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, lot_type = asx_securities_trade_itch_v2_0.lot_type.dissect(buffer, index, packet, parent)

  -- Participant Id: 7 Byte Ascii String
  index, participant_id = asx_securities_trade_itch_v2_0.participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Participant Id Message
asx_securities_trade_itch_v2_0.add_order_participant_id_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_participant_id_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.add_order_participant_id_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.add_order_participant_id_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.add_order_participant_id_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.add_order_participant_id_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order No Participant Id Message
asx_securities_trade_itch_v2_0.add_order_no_participant_id_message = {}

-- Size Of: Add Order No Participant Id Message
asx_securities_trade_itch_v2_0.add_order_no_participant_id_message.size =
  asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_itch_v2_0.order_id.size + 
  asx_securities_trade_itch_v2_0.order_book_id.size + 
  asx_securities_trade_itch_v2_0.side.size + 
  asx_securities_trade_itch_v2_0.order_book_position.size + 
  asx_securities_trade_itch_v2_0.quantity.size + 
  asx_securities_trade_itch_v2_0.price.size + 
  asx_securities_trade_itch_v2_0.exchange_order_type.size + 
  asx_securities_trade_itch_v2_0.lot_type.size;

-- Display: Add Order No Participant Id Message
asx_securities_trade_itch_v2_0.add_order_no_participant_id_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order No Participant Id Message
asx_securities_trade_itch_v2_0.add_order_no_participant_id_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = asx_securities_trade_itch_v2_0.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = asx_securities_trade_itch_v2_0.side.dissect(buffer, index, packet, parent)

  -- Order Book Position: 4 Byte Unsigned Fixed Width Integer
  index, order_book_position = asx_securities_trade_itch_v2_0.order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: 8 Byte Unsigned Fixed Width Integer
  index, quantity = asx_securities_trade_itch_v2_0.quantity.dissect(buffer, index, packet, parent)

  -- Price: 4 Byte Signed Fixed Width Integer
  index, price = asx_securities_trade_itch_v2_0.price.dissect(buffer, index, packet, parent)

  -- Exchange Order Type: 2 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, exchange_order_type = asx_securities_trade_itch_v2_0.exchange_order_type.dissect(buffer, index, packet, parent)

  -- Lot Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, lot_type = asx_securities_trade_itch_v2_0.lot_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Participant Id Message
asx_securities_trade_itch_v2_0.add_order_no_participant_id_message.dissect = function(buffer, offset, packet, parent)
  if show.add_order_no_participant_id_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.add_order_no_participant_id_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.add_order_no_participant_id_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.add_order_no_participant_id_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.add_order_no_participant_id_message.fields(buffer, offset, packet, parent)
  end
end

-- State Name
asx_securities_trade_itch_v2_0.state_name = {}

-- Size Of: State Name
asx_securities_trade_itch_v2_0.state_name.size = 20

-- Display: State Name
asx_securities_trade_itch_v2_0.state_name.display = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
asx_securities_trade_itch_v2_0.state_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0.state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.state_name, range, value, display)

  return offset + length, value
end

-- Order Book State Message
asx_securities_trade_itch_v2_0.order_book_state_message = {}

-- Size Of: Order Book State Message
asx_securities_trade_itch_v2_0.order_book_state_message.size =
  asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_itch_v2_0.order_book_id.size + 
  asx_securities_trade_itch_v2_0.state_name.size;

-- Display: Order Book State Message
asx_securities_trade_itch_v2_0.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
asx_securities_trade_itch_v2_0.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- State Name: 20 Byte Ascii String
  index, state_name = asx_securities_trade_itch_v2_0.state_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
asx_securities_trade_itch_v2_0.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.order_book_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.order_book_state_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
asx_securities_trade_itch_v2_0.event_code = {}

-- Size Of: Event Code
asx_securities_trade_itch_v2_0.event_code.size = 1

-- Display: Event Code
asx_securities_trade_itch_v2_0.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
asx_securities_trade_itch_v2_0.event_code.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
asx_securities_trade_itch_v2_0.system_event_message = {}

-- Size Of: System Event Message
asx_securities_trade_itch_v2_0.system_event_message.size =
  asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_itch_v2_0.event_code.size;

-- Display: System Event Message
asx_securities_trade_itch_v2_0.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
asx_securities_trade_itch_v2_0.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Event Code: 1 Byte Ascii String Enum with 2 values
  index, event_code = asx_securities_trade_itch_v2_0.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
asx_securities_trade_itch_v2_0.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.system_event_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Price To
asx_securities_trade_itch_v2_0.price_to = {}

-- Size Of: Price To
asx_securities_trade_itch_v2_0.price_to.size = 4

-- Display: Price To
asx_securities_trade_itch_v2_0.price_to.display = function(value)
  return "Price To: "..value
end

-- Dissect: Price To
asx_securities_trade_itch_v2_0.price_to.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.price_to.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0.price_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.price_to, range, value, display)

  return offset + length, value
end

-- Price From
asx_securities_trade_itch_v2_0.price_from = {}

-- Size Of: Price From
asx_securities_trade_itch_v2_0.price_from.size = 4

-- Display: Price From
asx_securities_trade_itch_v2_0.price_from.display = function(value)
  return "Price From: "..value
end

-- Dissect: Price From
asx_securities_trade_itch_v2_0.price_from.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.price_from.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = asx_securities_trade_itch_v2_0.price_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.price_from, range, value, display)

  return offset + length, value
end

-- Tick Size
asx_securities_trade_itch_v2_0.tick_size = {}

-- Size Of: Tick Size
asx_securities_trade_itch_v2_0.tick_size.size = 8

-- Display: Tick Size
asx_securities_trade_itch_v2_0.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
asx_securities_trade_itch_v2_0.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.tick_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Tick Size Message
asx_securities_trade_itch_v2_0.tick_size_message = {}

-- Size Of: Tick Size Message
asx_securities_trade_itch_v2_0.tick_size_message.size =
  asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_itch_v2_0.order_book_id.size + 
  asx_securities_trade_itch_v2_0.tick_size.size + 
  asx_securities_trade_itch_v2_0.price_from.size + 
  asx_securities_trade_itch_v2_0.price_to.size;

-- Display: Tick Size Message
asx_securities_trade_itch_v2_0.tick_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Message
asx_securities_trade_itch_v2_0.tick_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Tick Size: 8 Byte Unsigned Fixed Width Integer
  index, tick_size = asx_securities_trade_itch_v2_0.tick_size.dissect(buffer, index, packet, parent)

  -- Price From: 4 Byte Signed Fixed Width Integer
  index, price_from = asx_securities_trade_itch_v2_0.price_from.dissect(buffer, index, packet, parent)

  -- Price To: 4 Byte Signed Fixed Width Integer
  index, price_to = asx_securities_trade_itch_v2_0.price_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Message
asx_securities_trade_itch_v2_0.tick_size_message.dissect = function(buffer, offset, packet, parent)
  if show.tick_size_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.tick_size_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.tick_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.tick_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.tick_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg 4 Ratio
asx_securities_trade_itch_v2_0.leg_4_ratio = {}

-- Size Of: Leg 4 Ratio
asx_securities_trade_itch_v2_0.leg_4_ratio.size = 4

-- Display: Leg 4 Ratio
asx_securities_trade_itch_v2_0.leg_4_ratio.display = function(value)
  return "Leg 4 Ratio: "..value
end

-- Dissect: Leg 4 Ratio
asx_securities_trade_itch_v2_0.leg_4_ratio.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.leg_4_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.leg_4_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.leg_4_ratio, range, value, display)

  return offset + length, value
end

-- Leg 4 Side
asx_securities_trade_itch_v2_0.leg_4_side = {}

-- Size Of: Leg 4 Side
asx_securities_trade_itch_v2_0.leg_4_side.size = 1

-- Display: Leg 4 Side
asx_securities_trade_itch_v2_0.leg_4_side.display = function(value)
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
asx_securities_trade_itch_v2_0.leg_4_side.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.leg_4_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0.leg_4_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.leg_4_side, range, value, display)

  return offset + length, value
end

-- Leg 4 Symbol
asx_securities_trade_itch_v2_0.leg_4_symbol = {}

-- Size Of: Leg 4 Symbol
asx_securities_trade_itch_v2_0.leg_4_symbol.size = 32

-- Display: Leg 4 Symbol
asx_securities_trade_itch_v2_0.leg_4_symbol.display = function(value)
  return "Leg 4 Symbol: "..value
end

-- Dissect: Leg 4 Symbol
asx_securities_trade_itch_v2_0.leg_4_symbol.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.leg_4_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0.leg_4_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.leg_4_symbol, range, value, display)

  return offset + length, value
end

-- Leg 3 Ratio
asx_securities_trade_itch_v2_0.leg_3_ratio = {}

-- Size Of: Leg 3 Ratio
asx_securities_trade_itch_v2_0.leg_3_ratio.size = 4

-- Display: Leg 3 Ratio
asx_securities_trade_itch_v2_0.leg_3_ratio.display = function(value)
  return "Leg 3 Ratio: "..value
end

-- Dissect: Leg 3 Ratio
asx_securities_trade_itch_v2_0.leg_3_ratio.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.leg_3_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.leg_3_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.leg_3_ratio, range, value, display)

  return offset + length, value
end

-- Leg 3 Side
asx_securities_trade_itch_v2_0.leg_3_side = {}

-- Size Of: Leg 3 Side
asx_securities_trade_itch_v2_0.leg_3_side.size = 1

-- Display: Leg 3 Side
asx_securities_trade_itch_v2_0.leg_3_side.display = function(value)
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
asx_securities_trade_itch_v2_0.leg_3_side.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.leg_3_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0.leg_3_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.leg_3_side, range, value, display)

  return offset + length, value
end

-- Leg 3 Symbol
asx_securities_trade_itch_v2_0.leg_3_symbol = {}

-- Size Of: Leg 3 Symbol
asx_securities_trade_itch_v2_0.leg_3_symbol.size = 32

-- Display: Leg 3 Symbol
asx_securities_trade_itch_v2_0.leg_3_symbol.display = function(value)
  return "Leg 3 Symbol: "..value
end

-- Dissect: Leg 3 Symbol
asx_securities_trade_itch_v2_0.leg_3_symbol.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.leg_3_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0.leg_3_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.leg_3_symbol, range, value, display)

  return offset + length, value
end

-- Leg 2 Ratio
asx_securities_trade_itch_v2_0.leg_2_ratio = {}

-- Size Of: Leg 2 Ratio
asx_securities_trade_itch_v2_0.leg_2_ratio.size = 4

-- Display: Leg 2 Ratio
asx_securities_trade_itch_v2_0.leg_2_ratio.display = function(value)
  return "Leg 2 Ratio: "..value
end

-- Dissect: Leg 2 Ratio
asx_securities_trade_itch_v2_0.leg_2_ratio.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.leg_2_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.leg_2_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.leg_2_ratio, range, value, display)

  return offset + length, value
end

-- Leg 2 Side
asx_securities_trade_itch_v2_0.leg_2_side = {}

-- Size Of: Leg 2 Side
asx_securities_trade_itch_v2_0.leg_2_side.size = 1

-- Display: Leg 2 Side
asx_securities_trade_itch_v2_0.leg_2_side.display = function(value)
  if value == "B" then
    return "Leg 2 Side: Buy Leg (B)"
  end
  if value == "C" then
    return "Leg 2 Side: Sell Leg (C)"
  end

  return "Leg 2 Side: Unknown("..value..")"
end

-- Dissect: Leg 2 Side
asx_securities_trade_itch_v2_0.leg_2_side.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.leg_2_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0.leg_2_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.leg_2_side, range, value, display)

  return offset + length, value
end

-- Leg 2 Symbol
asx_securities_trade_itch_v2_0.leg_2_symbol = {}

-- Size Of: Leg 2 Symbol
asx_securities_trade_itch_v2_0.leg_2_symbol.size = 32

-- Display: Leg 2 Symbol
asx_securities_trade_itch_v2_0.leg_2_symbol.display = function(value)
  return "Leg 2 Symbol: "..value
end

-- Dissect: Leg 2 Symbol
asx_securities_trade_itch_v2_0.leg_2_symbol.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.leg_2_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0.leg_2_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.leg_2_symbol, range, value, display)

  return offset + length, value
end

-- Leg 1 Ratio
asx_securities_trade_itch_v2_0.leg_1_ratio = {}

-- Size Of: Leg 1 Ratio
asx_securities_trade_itch_v2_0.leg_1_ratio.size = 4

-- Display: Leg 1 Ratio
asx_securities_trade_itch_v2_0.leg_1_ratio.display = function(value)
  return "Leg 1 Ratio: "..value
end

-- Dissect: Leg 1 Ratio
asx_securities_trade_itch_v2_0.leg_1_ratio.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.leg_1_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.leg_1_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.leg_1_ratio, range, value, display)

  return offset + length, value
end

-- Leg 1 Side
asx_securities_trade_itch_v2_0.leg_1_side = {}

-- Size Of: Leg 1 Side
asx_securities_trade_itch_v2_0.leg_1_side.size = 1

-- Display: Leg 1 Side
asx_securities_trade_itch_v2_0.leg_1_side.display = function(value)
  if value == "B" then
    return "Leg 1 Side: Buy Leg (B)"
  end
  if value == "C" then
    return "Leg 1 Side: Sell Leg (C)"
  end

  return "Leg 1 Side: Unknown("..value..")"
end

-- Dissect: Leg 1 Side
asx_securities_trade_itch_v2_0.leg_1_side.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.leg_1_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0.leg_1_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.leg_1_side, range, value, display)

  return offset + length, value
end

-- Leg 1 Symbol
asx_securities_trade_itch_v2_0.leg_1_symbol = {}

-- Size Of: Leg 1 Symbol
asx_securities_trade_itch_v2_0.leg_1_symbol.size = 32

-- Display: Leg 1 Symbol
asx_securities_trade_itch_v2_0.leg_1_symbol.display = function(value)
  return "Leg 1 Symbol: "..value
end

-- Dissect: Leg 1 Symbol
asx_securities_trade_itch_v2_0.leg_1_symbol.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.leg_1_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0.leg_1_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.leg_1_symbol, range, value, display)

  return offset + length, value
end

-- Nominal Value
asx_securities_trade_itch_v2_0.nominal_value = {}

-- Size Of: Nominal Value
asx_securities_trade_itch_v2_0.nominal_value.size = 8

-- Display: Nominal Value
asx_securities_trade_itch_v2_0.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
asx_securities_trade_itch_v2_0.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Block Lot Size
asx_securities_trade_itch_v2_0.block_lot_size = {}

-- Size Of: Block Lot Size
asx_securities_trade_itch_v2_0.block_lot_size.size = 4

-- Display: Block Lot Size
asx_securities_trade_itch_v2_0.block_lot_size.display = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
asx_securities_trade_itch_v2_0.block_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.block_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.block_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lot Size
asx_securities_trade_itch_v2_0.round_lot_size = {}

-- Size Of: Round Lot Size
asx_securities_trade_itch_v2_0.round_lot_size.size = 4

-- Display: Round Lot Size
asx_securities_trade_itch_v2_0.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
asx_securities_trade_itch_v2_0.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Odd Lot Size
asx_securities_trade_itch_v2_0.odd_lot_size = {}

-- Size Of: Odd Lot Size
asx_securities_trade_itch_v2_0.odd_lot_size.size = 4

-- Display: Odd Lot Size
asx_securities_trade_itch_v2_0.odd_lot_size.display = function(value)
  return "Odd Lot Size: "..value
end

-- Dissect: Odd Lot Size
asx_securities_trade_itch_v2_0.odd_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.odd_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.odd_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.odd_lot_size, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Nominal Value
asx_securities_trade_itch_v2_0.number_of_decimals_in_nominal_value = {}

-- Size Of: Number Of Decimals In Nominal Value
asx_securities_trade_itch_v2_0.number_of_decimals_in_nominal_value.size = 2

-- Display: Number Of Decimals In Nominal Value
asx_securities_trade_itch_v2_0.number_of_decimals_in_nominal_value.display = function(value)
  return "Number Of Decimals In Nominal Value: "..value
end

-- Dissect: Number Of Decimals In Nominal Value
asx_securities_trade_itch_v2_0.number_of_decimals_in_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.number_of_decimals_in_nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.number_of_decimals_in_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.number_of_decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Number Of Decimals In Price
asx_securities_trade_itch_v2_0.number_of_decimals_in_price = {}

-- Size Of: Number Of Decimals In Price
asx_securities_trade_itch_v2_0.number_of_decimals_in_price.size = 2

-- Display: Number Of Decimals In Price
asx_securities_trade_itch_v2_0.number_of_decimals_in_price.display = function(value)
  return "Number Of Decimals In Price: "..value
end

-- Dissect: Number Of Decimals In Price
asx_securities_trade_itch_v2_0.number_of_decimals_in_price.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.number_of_decimals_in_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.number_of_decimals_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.number_of_decimals_in_price, range, value, display)

  return offset + length, value
end

-- Trading Currency
asx_securities_trade_itch_v2_0.trading_currency = {}

-- Size Of: Trading Currency
asx_securities_trade_itch_v2_0.trading_currency.size = 3

-- Display: Trading Currency
asx_securities_trade_itch_v2_0.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
asx_securities_trade_itch_v2_0.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Financial Product
asx_securities_trade_itch_v2_0.financial_product = {}

-- Size Of: Financial Product
asx_securities_trade_itch_v2_0.financial_product.size = 1

-- Display: Financial Product
asx_securities_trade_itch_v2_0.financial_product.display = function(value)
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
asx_securities_trade_itch_v2_0.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Isin
asx_securities_trade_itch_v2_0.isin = {}

-- Size Of: Isin
asx_securities_trade_itch_v2_0.isin.size = 12

-- Display: Isin
asx_securities_trade_itch_v2_0.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
asx_securities_trade_itch_v2_0.isin.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.isin, range, value, display)

  return offset + length, value
end

-- Long Name
asx_securities_trade_itch_v2_0.long_name = {}

-- Size Of: Long Name
asx_securities_trade_itch_v2_0.long_name.size = 32

-- Display: Long Name
asx_securities_trade_itch_v2_0.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
asx_securities_trade_itch_v2_0.long_name.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.long_name, range, value, display)

  return offset + length, value
end

-- Symbol
asx_securities_trade_itch_v2_0.symbol = {}

-- Size Of: Symbol
asx_securities_trade_itch_v2_0.symbol.size = 32

-- Display: Symbol
asx_securities_trade_itch_v2_0.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
asx_securities_trade_itch_v2_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = asx_securities_trade_itch_v2_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Combination Order Book Directory Message
asx_securities_trade_itch_v2_0.combination_order_book_directory_message = {}

-- Size Of: Combination Order Book Directory Message
asx_securities_trade_itch_v2_0.combination_order_book_directory_message.size =
  asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_itch_v2_0.order_book_id.size + 
  asx_securities_trade_itch_v2_0.symbol.size + 
  asx_securities_trade_itch_v2_0.long_name.size + 
  asx_securities_trade_itch_v2_0.isin.size + 
  asx_securities_trade_itch_v2_0.financial_product.size + 
  asx_securities_trade_itch_v2_0.trading_currency.size + 
  asx_securities_trade_itch_v2_0.number_of_decimals_in_price.size + 
  asx_securities_trade_itch_v2_0.number_of_decimals_in_nominal_value.size + 
  asx_securities_trade_itch_v2_0.odd_lot_size.size + 
  asx_securities_trade_itch_v2_0.round_lot_size.size + 
  asx_securities_trade_itch_v2_0.block_lot_size.size + 
  asx_securities_trade_itch_v2_0.nominal_value.size + 
  asx_securities_trade_itch_v2_0.leg_1_symbol.size + 
  asx_securities_trade_itch_v2_0.leg_1_side.size + 
  asx_securities_trade_itch_v2_0.leg_1_ratio.size + 
  asx_securities_trade_itch_v2_0.leg_2_symbol.size + 
  asx_securities_trade_itch_v2_0.leg_2_side.size + 
  asx_securities_trade_itch_v2_0.leg_2_ratio.size + 
  asx_securities_trade_itch_v2_0.leg_3_symbol.size + 
  asx_securities_trade_itch_v2_0.leg_3_side.size + 
  asx_securities_trade_itch_v2_0.leg_3_ratio.size + 
  asx_securities_trade_itch_v2_0.leg_4_symbol.size + 
  asx_securities_trade_itch_v2_0.leg_4_side.size + 
  asx_securities_trade_itch_v2_0.leg_4_ratio.size;

-- Display: Combination Order Book Directory Message
asx_securities_trade_itch_v2_0.combination_order_book_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Order Book Directory Message
asx_securities_trade_itch_v2_0.combination_order_book_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: 32 Byte Ascii String
  index, symbol = asx_securities_trade_itch_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: 32 Byte Ascii String
  index, long_name = asx_securities_trade_itch_v2_0.long_name.dissect(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = asx_securities_trade_itch_v2_0.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, financial_product = asx_securities_trade_itch_v2_0.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: 3 Byte Ascii String
  index, trading_currency = asx_securities_trade_itch_v2_0.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: 2 Byte Unsigned Fixed Width Integer
  index, number_of_decimals_in_price = asx_securities_trade_itch_v2_0.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: 2 Byte Unsigned Fixed Width Integer
  index, number_of_decimals_in_nominal_value = asx_securities_trade_itch_v2_0.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Odd Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, odd_lot_size = asx_securities_trade_itch_v2_0.odd_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = asx_securities_trade_itch_v2_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Block Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, block_lot_size = asx_securities_trade_itch_v2_0.block_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: 8 Byte Unsigned Fixed Width Integer
  index, nominal_value = asx_securities_trade_itch_v2_0.nominal_value.dissect(buffer, index, packet, parent)

  -- Leg 1 Symbol: 32 Byte Ascii String
  index, leg_1_symbol = asx_securities_trade_itch_v2_0.leg_1_symbol.dissect(buffer, index, packet, parent)

  -- Leg 1 Side: 1 Byte Ascii String Enum with 2 values
  index, leg_1_side = asx_securities_trade_itch_v2_0.leg_1_side.dissect(buffer, index, packet, parent)

  -- Leg 1 Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_1_ratio = asx_securities_trade_itch_v2_0.leg_1_ratio.dissect(buffer, index, packet, parent)

  -- Leg 2 Symbol: 32 Byte Ascii String
  index, leg_2_symbol = asx_securities_trade_itch_v2_0.leg_2_symbol.dissect(buffer, index, packet, parent)

  -- Leg 2 Side: 1 Byte Ascii String Enum with 2 values
  index, leg_2_side = asx_securities_trade_itch_v2_0.leg_2_side.dissect(buffer, index, packet, parent)

  -- Leg 2 Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_2_ratio = asx_securities_trade_itch_v2_0.leg_2_ratio.dissect(buffer, index, packet, parent)

  -- Leg 3 Symbol: 32 Byte Ascii String
  index, leg_3_symbol = asx_securities_trade_itch_v2_0.leg_3_symbol.dissect(buffer, index, packet, parent)

  -- Leg 3 Side: 1 Byte Ascii String Enum with 3 values
  index, leg_3_side = asx_securities_trade_itch_v2_0.leg_3_side.dissect(buffer, index, packet, parent)

  -- Leg 3 Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_3_ratio = asx_securities_trade_itch_v2_0.leg_3_ratio.dissect(buffer, index, packet, parent)

  -- Leg 4 Symbol: 32 Byte Ascii String
  index, leg_4_symbol = asx_securities_trade_itch_v2_0.leg_4_symbol.dissect(buffer, index, packet, parent)

  -- Leg 4 Side: 1 Byte Ascii String Enum with 3 values
  index, leg_4_side = asx_securities_trade_itch_v2_0.leg_4_side.dissect(buffer, index, packet, parent)

  -- Leg 4 Ratio: 4 Byte Unsigned Fixed Width Integer
  index, leg_4_ratio = asx_securities_trade_itch_v2_0.leg_4_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Order Book Directory Message
asx_securities_trade_itch_v2_0.combination_order_book_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.combination_order_book_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.combination_order_book_directory_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.combination_order_book_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.combination_order_book_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.combination_order_book_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Directory Message
asx_securities_trade_itch_v2_0.order_book_directory_message = {}

-- Size Of: Order Book Directory Message
asx_securities_trade_itch_v2_0.order_book_directory_message.size =
  asx_securities_trade_itch_v2_0.timestamp_nanoseconds.size + 
  asx_securities_trade_itch_v2_0.order_book_id.size + 
  asx_securities_trade_itch_v2_0.symbol.size + 
  asx_securities_trade_itch_v2_0.long_name.size + 
  asx_securities_trade_itch_v2_0.isin.size + 
  asx_securities_trade_itch_v2_0.financial_product.size + 
  asx_securities_trade_itch_v2_0.trading_currency.size + 
  asx_securities_trade_itch_v2_0.number_of_decimals_in_price.size + 
  asx_securities_trade_itch_v2_0.number_of_decimals_in_nominal_value.size + 
  asx_securities_trade_itch_v2_0.odd_lot_size.size + 
  asx_securities_trade_itch_v2_0.round_lot_size.size + 
  asx_securities_trade_itch_v2_0.block_lot_size.size + 
  asx_securities_trade_itch_v2_0.nominal_value.size;

-- Display: Order Book Directory Message
asx_securities_trade_itch_v2_0.order_book_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory Message
asx_securities_trade_itch_v2_0.order_book_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_nanoseconds = asx_securities_trade_itch_v2_0.timestamp_nanoseconds.dissect(buffer, index, packet, parent)

  -- Order Book Id: 4 Byte Unsigned Fixed Width Integer
  index, order_book_id = asx_securities_trade_itch_v2_0.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: 32 Byte Ascii String
  index, symbol = asx_securities_trade_itch_v2_0.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: 32 Byte Ascii String
  index, long_name = asx_securities_trade_itch_v2_0.long_name.dissect(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = asx_securities_trade_itch_v2_0.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, financial_product = asx_securities_trade_itch_v2_0.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: 3 Byte Ascii String
  index, trading_currency = asx_securities_trade_itch_v2_0.trading_currency.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Price: 2 Byte Unsigned Fixed Width Integer
  index, number_of_decimals_in_price = asx_securities_trade_itch_v2_0.number_of_decimals_in_price.dissect(buffer, index, packet, parent)

  -- Number Of Decimals In Nominal Value: 2 Byte Unsigned Fixed Width Integer
  index, number_of_decimals_in_nominal_value = asx_securities_trade_itch_v2_0.number_of_decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Odd Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, odd_lot_size = asx_securities_trade_itch_v2_0.odd_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, round_lot_size = asx_securities_trade_itch_v2_0.round_lot_size.dissect(buffer, index, packet, parent)

  -- Block Lot Size: 4 Byte Unsigned Fixed Width Integer
  index, block_lot_size = asx_securities_trade_itch_v2_0.block_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: 8 Byte Unsigned Fixed Width Integer
  index, nominal_value = asx_securities_trade_itch_v2_0.nominal_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory Message
asx_securities_trade_itch_v2_0.order_book_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.order_book_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.order_book_directory_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.order_book_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.order_book_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.order_book_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp Seconds
asx_securities_trade_itch_v2_0.timestamp_seconds = {}

-- Size Of: Timestamp Seconds
asx_securities_trade_itch_v2_0.timestamp_seconds.size = 4

-- Display: Timestamp Seconds
asx_securities_trade_itch_v2_0.timestamp_seconds.display = function(value)
  return "Timestamp Seconds: "..value
end

-- Dissect: Timestamp Seconds
asx_securities_trade_itch_v2_0.timestamp_seconds.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.timestamp_seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.timestamp_seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.timestamp_seconds, range, value, display)

  return offset + length, value
end

-- Seconds Message
asx_securities_trade_itch_v2_0.seconds_message = {}

-- Size Of: Seconds Message
asx_securities_trade_itch_v2_0.seconds_message.size =
  asx_securities_trade_itch_v2_0.timestamp_seconds.size;

-- Display: Seconds Message
asx_securities_trade_itch_v2_0.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
asx_securities_trade_itch_v2_0.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp Seconds: 4 Byte Unsigned Fixed Width Integer
  index, timestamp_seconds = asx_securities_trade_itch_v2_0.timestamp_seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seconds Message
asx_securities_trade_itch_v2_0.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.seconds_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.seconds_message, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
asx_securities_trade_itch_v2_0.payload = {}

-- Calculate runtime size of: Payload
asx_securities_trade_itch_v2_0.payload.size = function(buffer, offset, message_type)
  -- Size of Seconds Message
  if message_type == "T" then
    return asx_securities_trade_itch_v2_0.seconds_message.size(buffer, offset)
  end
  -- Size of Order Book Directory Message
  if message_type == "R" then
    return asx_securities_trade_itch_v2_0.order_book_directory_message.size(buffer, offset)
  end
  -- Size of Combination Order Book Directory Message
  if message_type == "M" then
    return asx_securities_trade_itch_v2_0.combination_order_book_directory_message.size(buffer, offset)
  end
  -- Size of Tick Size Message
  if message_type == "L" then
    return asx_securities_trade_itch_v2_0.tick_size_message.size(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == "S" then
    return asx_securities_trade_itch_v2_0.system_event_message.size(buffer, offset)
  end
  -- Size of Order Book State Message
  if message_type == "O" then
    return asx_securities_trade_itch_v2_0.order_book_state_message.size(buffer, offset)
  end
  -- Size of Add Order No Participant Id Message
  if message_type == "A" then
    return asx_securities_trade_itch_v2_0.add_order_no_participant_id_message.size(buffer, offset)
  end
  -- Size of Add Order Participant Id Message
  if message_type == "F" then
    return asx_securities_trade_itch_v2_0.add_order_participant_id_message.size(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return asx_securities_trade_itch_v2_0.order_executed_message.size(buffer, offset)
  end
  -- Size of Order Executed With Price Message
  if message_type == "C" then
    return asx_securities_trade_itch_v2_0.order_executed_with_price_message.size(buffer, offset)
  end
  -- Size of Order Replace Message
  if message_type == "U" then
    return asx_securities_trade_itch_v2_0.order_replace_message.size(buffer, offset)
  end
  -- Size of Order Delete Message
  if message_type == "D" then
    return asx_securities_trade_itch_v2_0.order_delete_message.size(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == "P" then
    return asx_securities_trade_itch_v2_0.trade_message.size(buffer, offset)
  end
  -- Size of Equilibrium Price Update Message
  if message_type == "Z" then
    return asx_securities_trade_itch_v2_0.equilibrium_price_update_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
asx_securities_trade_itch_v2_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
asx_securities_trade_itch_v2_0.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return asx_securities_trade_itch_v2_0.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory Message
  if message_type == "R" then
    return asx_securities_trade_itch_v2_0.order_book_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Order Book Directory Message
  if message_type == "M" then
    return asx_securities_trade_itch_v2_0.combination_order_book_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Size Message
  if message_type == "L" then
    return asx_securities_trade_itch_v2_0.tick_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return asx_securities_trade_itch_v2_0.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if message_type == "O" then
    return asx_securities_trade_itch_v2_0.order_book_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order No Participant Id Message
  if message_type == "A" then
    return asx_securities_trade_itch_v2_0.add_order_no_participant_id_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Participant Id Message
  if message_type == "F" then
    return asx_securities_trade_itch_v2_0.add_order_participant_id_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return asx_securities_trade_itch_v2_0.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return asx_securities_trade_itch_v2_0.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return asx_securities_trade_itch_v2_0.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return asx_securities_trade_itch_v2_0.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return asx_securities_trade_itch_v2_0.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Update Message
  if message_type == "Z" then
    return asx_securities_trade_itch_v2_0.equilibrium_price_update_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
asx_securities_trade_itch_v2_0.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return asx_securities_trade_itch_v2_0.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = asx_securities_trade_itch_v2_0.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = asx_securities_trade_itch_v2_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_asx_securities_trade_itch_v2_0.fields.payload, range, display)

  return asx_securities_trade_itch_v2_0.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
asx_securities_trade_itch_v2_0.message_type = {}

-- Size Of: Message Type
asx_securities_trade_itch_v2_0.message_type.size = 1

-- Display: Message Type
asx_securities_trade_itch_v2_0.message_type.display = function(value)
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
asx_securities_trade_itch_v2_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = asx_securities_trade_itch_v2_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
asx_securities_trade_itch_v2_0.message_length = {}

-- Size Of: Message Length
asx_securities_trade_itch_v2_0.message_length.size = 2

-- Display: Message Length
asx_securities_trade_itch_v2_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
asx_securities_trade_itch_v2_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
asx_securities_trade_itch_v2_0.message_header = {}

-- Size Of: Message Header
asx_securities_trade_itch_v2_0.message_header.size =
  asx_securities_trade_itch_v2_0.message_length.size + 
  asx_securities_trade_itch_v2_0.message_type.size;

-- Display: Message Header
asx_securities_trade_itch_v2_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
asx_securities_trade_itch_v2_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = asx_securities_trade_itch_v2_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 14 values
  index, message_type = asx_securities_trade_itch_v2_0.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
asx_securities_trade_itch_v2_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.message_header, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
asx_securities_trade_itch_v2_0.message = {}

-- Display: Message
asx_securities_trade_itch_v2_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
asx_securities_trade_itch_v2_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_asx_securities_trade_itch_v2_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = asx_securities_trade_itch_v2_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 14 branches
  index = asx_securities_trade_itch_v2_0.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
asx_securities_trade_itch_v2_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.message, buffer(offset, 0))
    local current = asx_securities_trade_itch_v2_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = asx_securities_trade_itch_v2_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    asx_securities_trade_itch_v2_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
asx_securities_trade_itch_v2_0.message_count = {}

-- Size Of: Message Count
asx_securities_trade_itch_v2_0.message_count.size = 2

-- Display: Message Count
asx_securities_trade_itch_v2_0.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
asx_securities_trade_itch_v2_0.message_count.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = asx_securities_trade_itch_v2_0.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
asx_securities_trade_itch_v2_0.sequence_number = {}

-- Size Of: Sequence Number
asx_securities_trade_itch_v2_0.sequence_number.size = 8

-- Display: Sequence Number
asx_securities_trade_itch_v2_0.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
asx_securities_trade_itch_v2_0.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = asx_securities_trade_itch_v2_0.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
asx_securities_trade_itch_v2_0.session = {}

-- Size Of: Session
asx_securities_trade_itch_v2_0.session.size = 10

-- Display: Session
asx_securities_trade_itch_v2_0.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
asx_securities_trade_itch_v2_0.session.dissect = function(buffer, offset, packet, parent)
  local length = asx_securities_trade_itch_v2_0.session.size
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

  local display = asx_securities_trade_itch_v2_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_asx_securities_trade_itch_v2_0.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
asx_securities_trade_itch_v2_0.packet_header = {}

-- Size Of: Packet Header
asx_securities_trade_itch_v2_0.packet_header.size =
  asx_securities_trade_itch_v2_0.session.size + 
  asx_securities_trade_itch_v2_0.sequence_number.size + 
  asx_securities_trade_itch_v2_0.message_count.size;

-- Display: Packet Header
asx_securities_trade_itch_v2_0.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
asx_securities_trade_itch_v2_0.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = asx_securities_trade_itch_v2_0.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = asx_securities_trade_itch_v2_0.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = asx_securities_trade_itch_v2_0.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
asx_securities_trade_itch_v2_0.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_asx_securities_trade_itch_v2_0.fields.packet_header, buffer(offset, 0))
    local index = asx_securities_trade_itch_v2_0.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = asx_securities_trade_itch_v2_0.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return asx_securities_trade_itch_v2_0.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
asx_securities_trade_itch_v2_0.packet = {}

-- Dissect Packet
asx_securities_trade_itch_v2_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = asx_securities_trade_itch_v2_0.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = asx_securities_trade_itch_v2_0.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_asx_securities_trade_itch_v2_0.init()
end

-- Dissector for Asx Securities Trade Itch 2.0
function omi_asx_securities_trade_itch_v2_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_asx_securities_trade_itch_v2_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_asx_securities_trade_itch_v2_0, buffer(), omi_asx_securities_trade_itch_v2_0.description, "("..buffer:len().." Bytes)")
  return asx_securities_trade_itch_v2_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_asx_securities_trade_itch_v2_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
asx_securities_trade_itch_v2_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Asx Securities Trade Itch 2.0
local function omi_asx_securities_trade_itch_v2_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not asx_securities_trade_itch_v2_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_asx_securities_trade_itch_v2_0
  omi_asx_securities_trade_itch_v2_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Asx Securities Trade Itch 2.0
omi_asx_securities_trade_itch_v2_0:register_heuristic("udp", omi_asx_securities_trade_itch_v2_0_heuristic)

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
