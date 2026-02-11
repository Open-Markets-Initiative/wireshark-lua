-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Jpx OseDerivatives GeniumInet Itch 1.1 Protocol
local omi_jpx_osederivatives_geniuminet_itch_v1_1 = Proto("Jpx.OseDerivatives.GeniumInet.Itch.v1.1.Lua", "Jpx OseDerivatives GeniumInet Itch 1.1")

-- Protocol table
local jpx_osederivatives_geniuminet_itch_v1_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Jpx OseDerivatives GeniumInet Itch 1.1 Fields
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.available_ask_quantity_at_equilibrium_price = ProtoField.new("Available Ask Quantity At Equilibrium Price", "jpx.osederivatives.geniuminet.itch.v1.1.availableaskquantityatequilibriumprice", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.available_bid_quantity_at_equilibrium_price = ProtoField.new("Available Bid Quantity At Equilibrium Price", "jpx.osederivatives.geniuminet.itch.v1.1.availablebidquantityatequilibriumprice", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.block_lot_size = ProtoField.new("Block Lot Size", "jpx.osederivatives.geniuminet.itch.v1.1.blocklotsize", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.combination_orderbook_id = ProtoField.new("Combination Orderbook Id", "jpx.osederivatives.geniuminet.itch.v1.1.combinationorderbookid", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.combo_group_id = ProtoField.new("Combo Group Id", "jpx.osederivatives.geniuminet.itch.v1.1.combogroupid", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.counterparty_participant_id = ProtoField.new("Counterparty Participant Id", "jpx.osederivatives.geniuminet.itch.v1.1.counterpartyparticipantid", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.decimals_in_nominal_value = ProtoField.new("Decimals In Nominal Value", "jpx.osederivatives.geniuminet.itch.v1.1.decimalsinnominalvalue", ftypes.UINT16)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.decimals_in_price = ProtoField.new("Decimals In Price", "jpx.osederivatives.geniuminet.itch.v1.1.decimalsinprice", ftypes.UINT16)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.decimals_in_strike_price = ProtoField.new("Decimals In Strike Price", "jpx.osederivatives.geniuminet.itch.v1.1.decimalsinstrikeprice", ftypes.UINT16)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.equilibrium_price = ProtoField.new("Equilibrium Price", "jpx.osederivatives.geniuminet.itch.v1.1.equilibriumprice", ftypes.INT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.event_code = ProtoField.new("Event Code", "jpx.osederivatives.geniuminet.itch.v1.1.eventcode", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.executed_quantity = ProtoField.new("Executed Quantity", "jpx.osederivatives.geniuminet.itch.v1.1.executedquantity", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.expiration_date = ProtoField.new("Expiration Date", "jpx.osederivatives.geniuminet.itch.v1.1.expirationdate", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.financial_product = ProtoField.new("Financial Product", "jpx.osederivatives.geniuminet.itch.v1.1.financialproduct", ftypes.UINT8)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.force = ProtoField.new("Force", "jpx.osederivatives.geniuminet.itch.v1.1.force", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0001)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.isin = ProtoField.new("Isin", "jpx.osederivatives.geniuminet.itch.v1.1.isin", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.leg_orderbook_id = ProtoField.new("Leg Orderbook Id", "jpx.osederivatives.geniuminet.itch.v1.1.legorderbookid", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.leg_ratio = ProtoField.new("Leg Ratio", "jpx.osederivatives.geniuminet.itch.v1.1.legratio", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.leg_side = ProtoField.new("Leg Side", "jpx.osederivatives.geniuminet.itch.v1.1.legside", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.long_name = ProtoField.new("Long Name", "jpx.osederivatives.geniuminet.itch.v1.1.longname", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.lot_type = ProtoField.new("Lot Type", "jpx.osederivatives.geniuminet.itch.v1.1.lottype", ftypes.UINT8)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.market_bid = ProtoField.new("Market Bid", "jpx.osederivatives.geniuminet.itch.v1.1.marketbid", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0004)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.match_id = ProtoField.new("Match Id", "jpx.osederivatives.geniuminet.itch.v1.1.matchid", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.message = ProtoField.new("Message", "jpx.osederivatives.geniuminet.itch.v1.1.message", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.message_count = ProtoField.new("Message Count", "jpx.osederivatives.geniuminet.itch.v1.1.messagecount", ftypes.UINT16)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.message_header = ProtoField.new("Message Header", "jpx.osederivatives.geniuminet.itch.v1.1.messageheader", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.message_length = ProtoField.new("Message Length", "jpx.osederivatives.geniuminet.itch.v1.1.messagelength", ftypes.UINT16)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.message_type = ProtoField.new("Message Type", "jpx.osederivatives.geniuminet.itch.v1.1.messagetype", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.new_orderbook_position = ProtoField.new("New Orderbook Position", "jpx.osederivatives.geniuminet.itch.v1.1.neworderbookposition", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.nominal_value = ProtoField.new("Nominal Value", "jpx.osederivatives.geniuminet.itch.v1.1.nominalvalue", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.number_of_legs = ProtoField.new("Number Of Legs", "jpx.osederivatives.geniuminet.itch.v1.1.numberoflegs", ftypes.UINT8)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.occurred_at_cross = ProtoField.new("Occurred At Cross", "jpx.osederivatives.geniuminet.itch.v1.1.occurredatcross", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.odd_lot_size = ProtoField.new("Odd Lot Size", "jpx.osederivatives.geniuminet.itch.v1.1.oddlotsize", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_attributes = ProtoField.new("Order Attributes", "jpx.osederivatives.geniuminet.itch.v1.1.orderattributes", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_book_id = ProtoField.new("Order Book Id", "jpx.osederivatives.geniuminet.itch.v1.1.orderbookid", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_book_position = ProtoField.new("Order Book Position", "jpx.osederivatives.geniuminet.itch.v1.1.orderbookposition", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_id = ProtoField.new("Order Id", "jpx.osederivatives.geniuminet.itch.v1.1.orderid", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.override_crossing = ProtoField.new("Override Crossing", "jpx.osederivatives.geniuminet.itch.v1.1.overridecrossing", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0010)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.owner_participant_id = ProtoField.new("Owner Participant Id", "jpx.osederivatives.geniuminet.itch.v1.1.ownerparticipantid", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.packet = ProtoField.new("Packet", "jpx.osederivatives.geniuminet.itch.v1.1.packet", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.packet_header = ProtoField.new("Packet Header", "jpx.osederivatives.geniuminet.itch.v1.1.packetheader", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.participant_id = ProtoField.new("Participant Id", "jpx.osederivatives.geniuminet.itch.v1.1.participantid", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.participant_id_counterparty = ProtoField.new("Participant Id Counterparty", "jpx.osederivatives.geniuminet.itch.v1.1.participantidcounterparty", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.participant_id_owner = ProtoField.new("Participant Id Owner", "jpx.osederivatives.geniuminet.itch.v1.1.participantidowner", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.payload = ProtoField.new("Payload", "jpx.osederivatives.geniuminet.itch.v1.1.payload", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.price = ProtoField.new("Price", "jpx.osederivatives.geniuminet.itch.v1.1.price", ftypes.INT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.price_from = ProtoField.new("Price From", "jpx.osederivatives.geniuminet.itch.v1.1.pricefrom", ftypes.INT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.price_stabilization = ProtoField.new("Price Stabilization", "jpx.osederivatives.geniuminet.itch.v1.1.pricestabilization", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0008)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.price_to = ProtoField.new("Price To", "jpx.osederivatives.geniuminet.itch.v1.1.priceto", ftypes.INT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.printable = ProtoField.new("Printable", "jpx.osederivatives.geniuminet.itch.v1.1.printable", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.put_or_call = ProtoField.new("Put Or Call", "jpx.osederivatives.geniuminet.itch.v1.1.putorcall", ftypes.UINT8)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.quantity = ProtoField.new("Quantity", "jpx.osederivatives.geniuminet.itch.v1.1.quantity", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.reserved_24 = ProtoField.new("Reserved 24", "jpx.osederivatives.geniuminet.itch.v1.1.reserved24", ftypes.BYTES)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.round_lot_size = ProtoField.new("Round Lot Size", "jpx.osederivatives.geniuminet.itch.v1.1.roundlotsize", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.seconds = ProtoField.new("Seconds", "jpx.osederivatives.geniuminet.itch.v1.1.seconds", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.sequence_number = ProtoField.new("Sequence Number", "jpx.osederivatives.geniuminet.itch.v1.1.sequencenumber", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.session = ProtoField.new("Session", "jpx.osederivatives.geniuminet.itch.v1.1.session", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.short_sell = ProtoField.new("Short Sell", "jpx.osederivatives.geniuminet.itch.v1.1.shortsell", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0002)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.side = ProtoField.new("Side", "jpx.osederivatives.geniuminet.itch.v1.1.side", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.state_name = ProtoField.new("State Name", "jpx.osederivatives.geniuminet.itch.v1.1.statename", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.strike_price = ProtoField.new("Strike Price", "jpx.osederivatives.geniuminet.itch.v1.1.strikeprice", ftypes.INT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.symbol = ProtoField.new("Symbol", "jpx.osederivatives.geniuminet.itch.v1.1.symbol", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.tick_size = ProtoField.new("Tick Size", "jpx.osederivatives.geniuminet.itch.v1.1.ticksize", ftypes.UINT64)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.timestamp = ProtoField.new("Timestamp", "jpx.osederivatives.geniuminet.itch.v1.1.timestamp", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.trade_price = ProtoField.new("Trade Price", "jpx.osederivatives.geniuminet.itch.v1.1.tradeprice", ftypes.INT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.trading_currency = ProtoField.new("Trading Currency", "jpx.osederivatives.geniuminet.itch.v1.1.tradingcurrency", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.underlying_orderbook_id = ProtoField.new("Underlying Orderbook Id", "jpx.osederivatives.geniuminet.itch.v1.1.underlyingorderbookid", ftypes.UINT32)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.undisclosed = ProtoField.new("Undisclosed", "jpx.osederivatives.geniuminet.itch.v1.1.undisclosed", ftypes.UINT16, {[1]="Yes",[0]="No"}, base.DEC, 0x0020)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.unused = ProtoField.new("Unused", "jpx.osederivatives.geniuminet.itch.v1.1.unused", ftypes.UINT16, nil, base.DEC, 0xFFC0)

-- Jpx OseDerivatives Itch GeniumInet 1.1 Application Messages
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.add_order_no_mpid = ProtoField.new("Add Order No Mpid", "jpx.osederivatives.geniuminet.itch.v1.1.addordernompid", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.add_order_with_mpid = ProtoField.new("Add Order With Mpid", "jpx.osederivatives.geniuminet.itch.v1.1.addorderwithmpid", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.combination_orderbook_leg = ProtoField.new("Combination Orderbook Leg", "jpx.osederivatives.geniuminet.itch.v1.1.combinationorderbookleg", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.equilibrium_price_update = ProtoField.new("Equilibrium Price Update", "jpx.osederivatives.geniuminet.itch.v1.1.equilibriumpriceupdate", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_book_directory = ProtoField.new("Order Book Directory", "jpx.osederivatives.geniuminet.itch.v1.1.orderbookdirectory", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_book_state_message = ProtoField.new("Order Book State Message", "jpx.osederivatives.geniuminet.itch.v1.1.orderbookstatemessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_delete_message = ProtoField.new("Order Delete Message", "jpx.osederivatives.geniuminet.itch.v1.1.orderdeletemessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_executed_message = ProtoField.new("Order Executed Message", "jpx.osederivatives.geniuminet.itch.v1.1.orderexecutedmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_executed_with_price_message = ProtoField.new("Order Executed With Price Message", "jpx.osederivatives.geniuminet.itch.v1.1.orderexecutedwithpricemessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_replace_message = ProtoField.new("Order Replace Message", "jpx.osederivatives.geniuminet.itch.v1.1.orderreplacemessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.seconds_message = ProtoField.new("Seconds Message", "jpx.osederivatives.geniuminet.itch.v1.1.secondsmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.system_event_message = ProtoField.new("System Event Message", "jpx.osederivatives.geniuminet.itch.v1.1.systemeventmessage", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.tick_size_table_entry = ProtoField.new("Tick Size Table Entry", "jpx.osederivatives.geniuminet.itch.v1.1.ticksizetableentry", ftypes.STRING)
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.trade_message = ProtoField.new("Trade Message", "jpx.osederivatives.geniuminet.itch.v1.1.trademessage", ftypes.STRING)

-- Jpx OseDerivatives GeniumInet Itch 1.1 generated fields
omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.message_index = ProtoField.new("Message Index", "jpx.osederivatives.geniuminet.itch.v1.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Jpx OseDerivatives GeniumInet Itch 1.1 Element Dissection Options
show.add_order_no_mpid = true
show.add_order_with_mpid = true
show.combination_orderbook_leg = true
show.equilibrium_price_update = true
show.message = true
show.message_header = true
show.order_attributes = true
show.order_book_directory = true
show.order_book_state_message = true
show.order_delete_message = true
show.order_executed_message = true
show.order_executed_with_price_message = true
show.order_replace_message = true
show.packet = true
show.packet_header = true
show.seconds_message = true
show.system_event_message = true
show.tick_size_table_entry = true
show.trade_message = true
show.payload = false

-- Register Jpx OseDerivatives GeniumInet Itch 1.1 Show Options
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_add_order_no_mpid = Pref.bool("Show Add Order No Mpid", show.add_order_no_mpid, "Parse and add Add Order No Mpid to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_add_order_with_mpid = Pref.bool("Show Add Order With Mpid", show.add_order_with_mpid, "Parse and add Add Order With Mpid to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_combination_orderbook_leg = Pref.bool("Show Combination Orderbook Leg", show.combination_orderbook_leg, "Parse and add Combination Orderbook Leg to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_equilibrium_price_update = Pref.bool("Show Equilibrium Price Update", show.equilibrium_price_update, "Parse and add Equilibrium Price Update to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_attributes = Pref.bool("Show Order Attributes", show.order_attributes, "Parse and add Order Attributes to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_book_directory = Pref.bool("Show Order Book Directory", show.order_book_directory, "Parse and add Order Book Directory to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_book_state_message = Pref.bool("Show Order Book State Message", show.order_book_state_message, "Parse and add Order Book State Message to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_delete_message = Pref.bool("Show Order Delete Message", show.order_delete_message, "Parse and add Order Delete Message to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_executed_with_price_message = Pref.bool("Show Order Executed With Price Message", show.order_executed_with_price_message, "Parse and add Order Executed With Price Message to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_replace_message = Pref.bool("Show Order Replace Message", show.order_replace_message, "Parse and add Order Replace Message to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_seconds_message = Pref.bool("Show Seconds Message", show.seconds_message, "Parse and add Seconds Message to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_tick_size_table_entry = Pref.bool("Show Tick Size Table Entry", show.tick_size_table_entry, "Parse and add Tick Size Table Entry to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_order_no_mpid ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_add_order_no_mpid then
    show.add_order_no_mpid = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_add_order_no_mpid
    changed = true
  end
  if show.add_order_with_mpid ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_add_order_with_mpid then
    show.add_order_with_mpid = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_add_order_with_mpid
    changed = true
  end
  if show.combination_orderbook_leg ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_combination_orderbook_leg then
    show.combination_orderbook_leg = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_combination_orderbook_leg
    changed = true
  end
  if show.equilibrium_price_update ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_equilibrium_price_update then
    show.equilibrium_price_update = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_equilibrium_price_update
    changed = true
  end
  if show.message ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_message then
    show.message = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_message_header then
    show.message_header = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_message_header
    changed = true
  end
  if show.order_attributes ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_attributes then
    show.order_attributes = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_attributes
    changed = true
  end
  if show.order_book_directory ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_book_directory then
    show.order_book_directory = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_book_directory
    changed = true
  end
  if show.order_book_state_message ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_book_state_message then
    show.order_book_state_message = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_book_state_message
    changed = true
  end
  if show.order_delete_message ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_delete_message then
    show.order_delete_message = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_delete_message
    changed = true
  end
  if show.order_executed_message ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_executed_message then
    show.order_executed_message = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_executed_message
    changed = true
  end
  if show.order_executed_with_price_message ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_executed_with_price_message then
    show.order_executed_with_price_message = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_executed_with_price_message
    changed = true
  end
  if show.order_replace_message ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_replace_message then
    show.order_replace_message = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_order_replace_message
    changed = true
  end
  if show.packet ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_packet then
    show.packet = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_packet_header then
    show.packet_header = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_packet_header
    changed = true
  end
  if show.seconds_message ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_seconds_message then
    show.seconds_message = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_seconds_message
    changed = true
  end
  if show.system_event_message ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_system_event_message then
    show.system_event_message = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_system_event_message
    changed = true
  end
  if show.tick_size_table_entry ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_tick_size_table_entry then
    show.tick_size_table_entry = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_tick_size_table_entry
    changed = true
  end
  if show.trade_message ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_trade_message then
    show.trade_message = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_payload then
    show.payload = omi_jpx_osederivatives_geniuminet_itch_v1_1.prefs.show_payload
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
-- Dissect Jpx OseDerivatives GeniumInet Itch 1.1
-----------------------------------------------------------------------

-- Reserved 24
jpx_osederivatives_geniuminet_itch_v1_1.reserved_24 = {}

-- Size: Reserved 24
jpx_osederivatives_geniuminet_itch_v1_1.reserved_24.size = 24

-- Display: Reserved 24
jpx_osederivatives_geniuminet_itch_v1_1.reserved_24.display = function(value)
  return "Reserved 24: "..value
end

-- Dissect: Reserved 24
jpx_osederivatives_geniuminet_itch_v1_1.reserved_24.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.reserved_24.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = jpx_osederivatives_geniuminet_itch_v1_1.reserved_24.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.reserved_24, range, value, display)

  return offset + length, value
end

-- Equilibrium Price
jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price = {}

-- Size: Equilibrium Price
jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price.size = 4

-- Display: Equilibrium Price
jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price.display = function(value)
  return "Equilibrium Price: "..value
end

-- Dissect: Equilibrium Price
jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.equilibrium_price, range, value, display)

  return offset + length, value
end

-- Available Ask Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_itch_v1_1.available_ask_quantity_at_equilibrium_price = {}

-- Size: Available Ask Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_itch_v1_1.available_ask_quantity_at_equilibrium_price.size = 8

-- Display: Available Ask Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_itch_v1_1.available_ask_quantity_at_equilibrium_price.display = function(value)
  return "Available Ask Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Ask Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_itch_v1_1.available_ask_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.available_ask_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.available_ask_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.available_ask_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Available Bid Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_itch_v1_1.available_bid_quantity_at_equilibrium_price = {}

-- Size: Available Bid Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_itch_v1_1.available_bid_quantity_at_equilibrium_price.size = 8

-- Display: Available Bid Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_itch_v1_1.available_bid_quantity_at_equilibrium_price.display = function(value)
  return "Available Bid Quantity At Equilibrium Price: "..value
end

-- Dissect: Available Bid Quantity At Equilibrium Price
jpx_osederivatives_geniuminet_itch_v1_1.available_bid_quantity_at_equilibrium_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.available_bid_quantity_at_equilibrium_price.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.available_bid_quantity_at_equilibrium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.available_bid_quantity_at_equilibrium_price, range, value, display)

  return offset + length, value
end

-- Order Book Id
jpx_osederivatives_geniuminet_itch_v1_1.order_book_id = {}

-- Size: Order Book Id
jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.size = 4

-- Display: Order Book Id
jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.display = function(value)
  return "Order Book Id: "..value
end

-- Dissect: Order Book Id
jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_book_id, range, value, display)

  return offset + length, value
end

-- Timestamp
jpx_osederivatives_geniuminet_itch_v1_1.timestamp = {}

-- Size: Timestamp
jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size = 4

-- Display: Timestamp
jpx_osederivatives_geniuminet_itch_v1_1.timestamp.display = function(nanoseconds, info, parent)
  -- Lookup seconds
  local seconds = jpx_osederivatives_geniuminet_itch_v1_1.seconds.store

  if seconds ~= nil then
    return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
  end

  return "Timestamp: "..nanoseconds
end

-- Dissect: Timestamp
jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Equilibrium Price Update
jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price_update = {}

-- Size: Equilibrium Price Update
jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price_update.size =
  jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.available_bid_quantity_at_equilibrium_price.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.available_ask_quantity_at_equilibrium_price.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.reserved_24.size

-- Display: Equilibrium Price Update
jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price_update.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equilibrium Price Update
jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price_update.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.dissect(buffer, index, packet, parent)

  -- Available Bid Quantity At Equilibrium Price: Numeric
  index, available_bid_quantity_at_equilibrium_price = jpx_osederivatives_geniuminet_itch_v1_1.available_bid_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Available Ask Quantity At Equilibrium Price: Numeric
  index, available_ask_quantity_at_equilibrium_price = jpx_osederivatives_geniuminet_itch_v1_1.available_ask_quantity_at_equilibrium_price.dissect(buffer, index, packet, parent)

  -- Equilibrium Price: Price
  index, equilibrium_price = jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price.dissect(buffer, index, packet, parent)

  -- Reserved 24: Reserved
  index, reserved_24 = jpx_osederivatives_geniuminet_itch_v1_1.reserved_24.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equilibrium Price Update
jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price_update.dissect = function(buffer, offset, packet, parent)
  if show.equilibrium_price_update then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.equilibrium_price_update, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price_update.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price_update.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price_update.fields(buffer, offset, packet, parent)
  end
end

-- Occurred At Cross
jpx_osederivatives_geniuminet_itch_v1_1.occurred_at_cross = {}

-- Size: Occurred At Cross
jpx_osederivatives_geniuminet_itch_v1_1.occurred_at_cross.size = 1

-- Display: Occurred At Cross
jpx_osederivatives_geniuminet_itch_v1_1.occurred_at_cross.display = function(value)
  if value == "N" then
    return "Occurred At Cross: No (N)"
  end
  if value == "Y" then
    return "Occurred At Cross: Yes (Y)"
  end

  return "Occurred At Cross: Unknown("..value..")"
end

-- Dissect: Occurred At Cross
jpx_osederivatives_geniuminet_itch_v1_1.occurred_at_cross.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.occurred_at_cross.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.occurred_at_cross.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.occurred_at_cross, range, value, display)

  return offset + length, value
end

-- Printable
jpx_osederivatives_geniuminet_itch_v1_1.printable = {}

-- Size: Printable
jpx_osederivatives_geniuminet_itch_v1_1.printable.size = 1

-- Display: Printable
jpx_osederivatives_geniuminet_itch_v1_1.printable.display = function(value)
  if value == "N" then
    return "Printable: Non Printable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
jpx_osederivatives_geniuminet_itch_v1_1.printable.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.printable, range, value, display)

  return offset + length, value
end

-- Counterparty Participant Id
jpx_osederivatives_geniuminet_itch_v1_1.counterparty_participant_id = {}

-- Size: Counterparty Participant Id
jpx_osederivatives_geniuminet_itch_v1_1.counterparty_participant_id.size = 7

-- Display: Counterparty Participant Id
jpx_osederivatives_geniuminet_itch_v1_1.counterparty_participant_id.display = function(value)
  return "Counterparty Participant Id: "..value
end

-- Dissect: Counterparty Participant Id
jpx_osederivatives_geniuminet_itch_v1_1.counterparty_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.counterparty_participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_itch_v1_1.counterparty_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.counterparty_participant_id, range, value, display)

  return offset + length, value
end

-- Owner Participant Id
jpx_osederivatives_geniuminet_itch_v1_1.owner_participant_id = {}

-- Size: Owner Participant Id
jpx_osederivatives_geniuminet_itch_v1_1.owner_participant_id.size = 7

-- Display: Owner Participant Id
jpx_osederivatives_geniuminet_itch_v1_1.owner_participant_id.display = function(value)
  return "Owner Participant Id: "..value
end

-- Dissect: Owner Participant Id
jpx_osederivatives_geniuminet_itch_v1_1.owner_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.owner_participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_itch_v1_1.owner_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.owner_participant_id, range, value, display)

  return offset + length, value
end

-- Trade Price
jpx_osederivatives_geniuminet_itch_v1_1.trade_price = {}

-- Size: Trade Price
jpx_osederivatives_geniuminet_itch_v1_1.trade_price.size = 4

-- Display: Trade Price
jpx_osederivatives_geniuminet_itch_v1_1.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
jpx_osederivatives_geniuminet_itch_v1_1.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.trade_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Quantity
jpx_osederivatives_geniuminet_itch_v1_1.quantity = {}

-- Size: Quantity
jpx_osederivatives_geniuminet_itch_v1_1.quantity.size = 8

-- Display: Quantity
jpx_osederivatives_geniuminet_itch_v1_1.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
jpx_osederivatives_geniuminet_itch_v1_1.quantity.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.quantity, range, value, display)

  return offset + length, value
end

-- Side
jpx_osederivatives_geniuminet_itch_v1_1.side = {}

-- Size: Side
jpx_osederivatives_geniuminet_itch_v1_1.side.size = 1

-- Display: Side
jpx_osederivatives_geniuminet_itch_v1_1.side.display = function(value)
  if value == "B" then
    return "Side: Buy Order (B)"
  end
  if value == "S" then
    return "Side: Sell Order (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
jpx_osederivatives_geniuminet_itch_v1_1.side.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.side, range, value, display)

  return offset + length, value
end

-- Combo Group Id
jpx_osederivatives_geniuminet_itch_v1_1.combo_group_id = {}

-- Size: Combo Group Id
jpx_osederivatives_geniuminet_itch_v1_1.combo_group_id.size = 4

-- Display: Combo Group Id
jpx_osederivatives_geniuminet_itch_v1_1.combo_group_id.display = function(value)
  return "Combo Group Id: "..value
end

-- Dissect: Combo Group Id
jpx_osederivatives_geniuminet_itch_v1_1.combo_group_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.combo_group_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.combo_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.combo_group_id, range, value, display)

  return offset + length, value
end

-- Match Id
jpx_osederivatives_geniuminet_itch_v1_1.match_id = {}

-- Size: Match Id
jpx_osederivatives_geniuminet_itch_v1_1.match_id.size = 8

-- Display: Match Id
jpx_osederivatives_geniuminet_itch_v1_1.match_id.display = function(value)
  return "Match Id: "..value
end

-- Dissect: Match Id
jpx_osederivatives_geniuminet_itch_v1_1.match_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.match_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.match_id, range, value, display)

  return offset + length, value
end

-- Trade Message
jpx_osederivatives_geniuminet_itch_v1_1.trade_message = {}

-- Size: Trade Message
jpx_osederivatives_geniuminet_itch_v1_1.trade_message.size =
  jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.match_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.combo_group_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.side.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.quantity.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.trade_price.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.owner_participant_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.counterparty_participant_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.printable.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.occurred_at_cross.size

-- Display: Trade Message
jpx_osederivatives_geniuminet_itch_v1_1.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
jpx_osederivatives_geniuminet_itch_v1_1.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = jpx_osederivatives_geniuminet_itch_v1_1.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = jpx_osederivatives_geniuminet_itch_v1_1.combo_group_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_itch_v1_1.side.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = jpx_osederivatives_geniuminet_itch_v1_1.quantity.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = jpx_osederivatives_geniuminet_itch_v1_1.trade_price.dissect(buffer, index, packet, parent)

  -- Owner Participant Id: Alpha
  index, owner_participant_id = jpx_osederivatives_geniuminet_itch_v1_1.owner_participant_id.dissect(buffer, index, packet, parent)

  -- Counterparty Participant Id: Alpha
  index, counterparty_participant_id = jpx_osederivatives_geniuminet_itch_v1_1.counterparty_participant_id.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = jpx_osederivatives_geniuminet_itch_v1_1.printable.dissect(buffer, index, packet, parent)

  -- Occurred At Cross: Alpha
  index, occurred_at_cross = jpx_osederivatives_geniuminet_itch_v1_1.occurred_at_cross.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
jpx_osederivatives_geniuminet_itch_v1_1.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.trade_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Id
jpx_osederivatives_geniuminet_itch_v1_1.order_id = {}

-- Size: Order Id
jpx_osederivatives_geniuminet_itch_v1_1.order_id.size = 8

-- Display: Order Id
jpx_osederivatives_geniuminet_itch_v1_1.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
jpx_osederivatives_geniuminet_itch_v1_1.order_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.order_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Delete Message
jpx_osederivatives_geniuminet_itch_v1_1.order_delete_message = {}

-- Size: Order Delete Message
jpx_osederivatives_geniuminet_itch_v1_1.order_delete_message.size =
  jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.side.size

-- Display: Order Delete Message
jpx_osederivatives_geniuminet_itch_v1_1.order_delete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Delete Message
jpx_osederivatives_geniuminet_itch_v1_1.order_delete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = jpx_osederivatives_geniuminet_itch_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_itch_v1_1.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Delete Message
jpx_osederivatives_geniuminet_itch_v1_1.order_delete_message.dissect = function(buffer, offset, packet, parent)
  if show.order_delete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_delete_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.order_delete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.order_delete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.order_delete_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Attributes
jpx_osederivatives_geniuminet_itch_v1_1.order_attributes = {}

-- Size: Order Attributes
jpx_osederivatives_geniuminet_itch_v1_1.order_attributes.size = 2

-- Display: Order Attributes
jpx_osederivatives_geniuminet_itch_v1_1.order_attributes.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Force flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Force"
  end
  -- Is Short Sell flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Short Sell"
  end
  -- Is Market Bid flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Market Bid"
  end
  -- Is Price Stabilization flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Price Stabilization"
  end
  -- Is Override Crossing flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Override Crossing"
  end
  -- Is Undisclosed flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Undisclosed"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Attributes
jpx_osederivatives_geniuminet_itch_v1_1.order_attributes.bits = function(range, value, packet, parent)

  -- Force: 1 Bit
  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.force, range, value)

  -- Short Sell: 1 Bit
  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.short_sell, range, value)

  -- Market Bid: 1 Bit
  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.market_bid, range, value)

  -- Price Stabilization: 1 Bit
  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.price_stabilization, range, value)

  -- Override Crossing: 1 Bit
  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.override_crossing, range, value)

  -- Undisclosed: 1 Bit
  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.undisclosed, range, value)

  -- Unused: 10 Bit
  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.unused, range, value)
end

-- Dissect: Order Attributes
jpx_osederivatives_geniuminet_itch_v1_1.order_attributes.dissect = function(buffer, offset, packet, parent)
  local size = jpx_osederivatives_geniuminet_itch_v1_1.order_attributes.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.order_attributes.display(range, value, packet, parent)
  local element = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_attributes, range, display)

  if show.order_attributes then
    jpx_osederivatives_geniuminet_itch_v1_1.order_attributes.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Price
jpx_osederivatives_geniuminet_itch_v1_1.price = {}

-- Size: Price
jpx_osederivatives_geniuminet_itch_v1_1.price.size = 4

-- Display: Price
jpx_osederivatives_geniuminet_itch_v1_1.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
jpx_osederivatives_geniuminet_itch_v1_1.price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.price, range, value, display)

  return offset + length, value
end

-- New Orderbook Position
jpx_osederivatives_geniuminet_itch_v1_1.new_orderbook_position = {}

-- Size: New Orderbook Position
jpx_osederivatives_geniuminet_itch_v1_1.new_orderbook_position.size = 4

-- Display: New Orderbook Position
jpx_osederivatives_geniuminet_itch_v1_1.new_orderbook_position.display = function(value)
  return "New Orderbook Position: "..value
end

-- Dissect: New Orderbook Position
jpx_osederivatives_geniuminet_itch_v1_1.new_orderbook_position.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.new_orderbook_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.new_orderbook_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.new_orderbook_position, range, value, display)

  return offset + length, value
end

-- Order Replace Message
jpx_osederivatives_geniuminet_itch_v1_1.order_replace_message = {}

-- Size: Order Replace Message
jpx_osederivatives_geniuminet_itch_v1_1.order_replace_message.size =
  jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.side.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.new_orderbook_position.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.quantity.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.price.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_attributes.size

-- Display: Order Replace Message
jpx_osederivatives_geniuminet_itch_v1_1.order_replace_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replace Message
jpx_osederivatives_geniuminet_itch_v1_1.order_replace_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = jpx_osederivatives_geniuminet_itch_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_itch_v1_1.side.dissect(buffer, index, packet, parent)

  -- New Orderbook Position: Numeric
  index, new_orderbook_position = jpx_osederivatives_geniuminet_itch_v1_1.new_orderbook_position.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = jpx_osederivatives_geniuminet_itch_v1_1.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jpx_osederivatives_geniuminet_itch_v1_1.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 7 fields
  index, order_attributes = jpx_osederivatives_geniuminet_itch_v1_1.order_attributes.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Replace Message
jpx_osederivatives_geniuminet_itch_v1_1.order_replace_message.dissect = function(buffer, offset, packet, parent)
  if show.order_replace_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_replace_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.order_replace_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.order_replace_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.order_replace_message.fields(buffer, offset, packet, parent)
  end
end

-- Executed Quantity
jpx_osederivatives_geniuminet_itch_v1_1.executed_quantity = {}

-- Size: Executed Quantity
jpx_osederivatives_geniuminet_itch_v1_1.executed_quantity.size = 8

-- Display: Executed Quantity
jpx_osederivatives_geniuminet_itch_v1_1.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
jpx_osederivatives_geniuminet_itch_v1_1.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Order Executed With Price Message
jpx_osederivatives_geniuminet_itch_v1_1.order_executed_with_price_message = {}

-- Size: Order Executed With Price Message
jpx_osederivatives_geniuminet_itch_v1_1.order_executed_with_price_message.size =
  jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.side.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.executed_quantity.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.match_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.combo_group_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.owner_participant_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.counterparty_participant_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.trade_price.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.occurred_at_cross.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.printable.size

-- Display: Order Executed With Price Message
jpx_osederivatives_geniuminet_itch_v1_1.order_executed_with_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Message
jpx_osederivatives_geniuminet_itch_v1_1.order_executed_with_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = jpx_osederivatives_geniuminet_itch_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_itch_v1_1.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = jpx_osederivatives_geniuminet_itch_v1_1.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = jpx_osederivatives_geniuminet_itch_v1_1.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = jpx_osederivatives_geniuminet_itch_v1_1.combo_group_id.dissect(buffer, index, packet, parent)

  -- Owner Participant Id: Alpha
  index, owner_participant_id = jpx_osederivatives_geniuminet_itch_v1_1.owner_participant_id.dissect(buffer, index, packet, parent)

  -- Counterparty Participant Id: Alpha
  index, counterparty_participant_id = jpx_osederivatives_geniuminet_itch_v1_1.counterparty_participant_id.dissect(buffer, index, packet, parent)

  -- Trade Price: Price
  index, trade_price = jpx_osederivatives_geniuminet_itch_v1_1.trade_price.dissect(buffer, index, packet, parent)

  -- Occurred At Cross: Alpha
  index, occurred_at_cross = jpx_osederivatives_geniuminet_itch_v1_1.occurred_at_cross.dissect(buffer, index, packet, parent)

  -- Printable: Alpha
  index, printable = jpx_osederivatives_geniuminet_itch_v1_1.printable.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Message
jpx_osederivatives_geniuminet_itch_v1_1.order_executed_with_price_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_with_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_executed_with_price_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.order_executed_with_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.order_executed_with_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.order_executed_with_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant Id Counterparty
jpx_osederivatives_geniuminet_itch_v1_1.participant_id_counterparty = {}

-- Size: Participant Id Counterparty
jpx_osederivatives_geniuminet_itch_v1_1.participant_id_counterparty.size = 7

-- Display: Participant Id Counterparty
jpx_osederivatives_geniuminet_itch_v1_1.participant_id_counterparty.display = function(value)
  return "Participant Id Counterparty: "..value
end

-- Dissect: Participant Id Counterparty
jpx_osederivatives_geniuminet_itch_v1_1.participant_id_counterparty.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.participant_id_counterparty.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_itch_v1_1.participant_id_counterparty.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.participant_id_counterparty, range, value, display)

  return offset + length, value
end

-- Participant Id Owner
jpx_osederivatives_geniuminet_itch_v1_1.participant_id_owner = {}

-- Size: Participant Id Owner
jpx_osederivatives_geniuminet_itch_v1_1.participant_id_owner.size = 7

-- Display: Participant Id Owner
jpx_osederivatives_geniuminet_itch_v1_1.participant_id_owner.display = function(value)
  return "Participant Id Owner: "..value
end

-- Dissect: Participant Id Owner
jpx_osederivatives_geniuminet_itch_v1_1.participant_id_owner.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.participant_id_owner.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_itch_v1_1.participant_id_owner.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.participant_id_owner, range, value, display)

  return offset + length, value
end

-- Order Executed Message
jpx_osederivatives_geniuminet_itch_v1_1.order_executed_message = {}

-- Size: Order Executed Message
jpx_osederivatives_geniuminet_itch_v1_1.order_executed_message.size =
  jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.side.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.executed_quantity.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.match_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.combo_group_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.participant_id_owner.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.participant_id_counterparty.size

-- Display: Order Executed Message
jpx_osederivatives_geniuminet_itch_v1_1.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
jpx_osederivatives_geniuminet_itch_v1_1.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = jpx_osederivatives_geniuminet_itch_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_itch_v1_1.side.dissect(buffer, index, packet, parent)

  -- Executed Quantity: Numeric
  index, executed_quantity = jpx_osederivatives_geniuminet_itch_v1_1.executed_quantity.dissect(buffer, index, packet, parent)

  -- Match Id: Numeric
  index, match_id = jpx_osederivatives_geniuminet_itch_v1_1.match_id.dissect(buffer, index, packet, parent)

  -- Combo Group Id: Numeric
  index, combo_group_id = jpx_osederivatives_geniuminet_itch_v1_1.combo_group_id.dissect(buffer, index, packet, parent)

  -- Participant Id Owner: Alpha
  index, participant_id_owner = jpx_osederivatives_geniuminet_itch_v1_1.participant_id_owner.dissect(buffer, index, packet, parent)

  -- Participant Id Counterparty: Alpha
  index, participant_id_counterparty = jpx_osederivatives_geniuminet_itch_v1_1.participant_id_counterparty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
jpx_osederivatives_geniuminet_itch_v1_1.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.order_executed_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_executed_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant Id
jpx_osederivatives_geniuminet_itch_v1_1.participant_id = {}

-- Size: Participant Id
jpx_osederivatives_geniuminet_itch_v1_1.participant_id.size = 7

-- Display: Participant Id
jpx_osederivatives_geniuminet_itch_v1_1.participant_id.display = function(value)
  return "Participant Id: "..value
end

-- Dissect: Participant Id
jpx_osederivatives_geniuminet_itch_v1_1.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.participant_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_itch_v1_1.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Lot Type
jpx_osederivatives_geniuminet_itch_v1_1.lot_type = {}

-- Size: Lot Type
jpx_osederivatives_geniuminet_itch_v1_1.lot_type.size = 1

-- Display: Lot Type
jpx_osederivatives_geniuminet_itch_v1_1.lot_type.display = function(value)
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
jpx_osederivatives_geniuminet_itch_v1_1.lot_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.lot_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.lot_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.lot_type, range, value, display)

  return offset + length, value
end

-- Order Book Position
jpx_osederivatives_geniuminet_itch_v1_1.order_book_position = {}

-- Size: Order Book Position
jpx_osederivatives_geniuminet_itch_v1_1.order_book_position.size = 4

-- Display: Order Book Position
jpx_osederivatives_geniuminet_itch_v1_1.order_book_position.display = function(value)
  return "Order Book Position: "..value
end

-- Dissect: Order Book Position
jpx_osederivatives_geniuminet_itch_v1_1.order_book_position.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.order_book_position.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.order_book_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_book_position, range, value, display)

  return offset + length, value
end

-- Add Order With Mpid
jpx_osederivatives_geniuminet_itch_v1_1.add_order_with_mpid = {}

-- Size: Add Order With Mpid
jpx_osederivatives_geniuminet_itch_v1_1.add_order_with_mpid.size =
  jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.side.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_book_position.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.quantity.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.price.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_attributes.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.lot_type.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.participant_id.size

-- Display: Add Order With Mpid
jpx_osederivatives_geniuminet_itch_v1_1.add_order_with_mpid.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order With Mpid
jpx_osederivatives_geniuminet_itch_v1_1.add_order_with_mpid.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = jpx_osederivatives_geniuminet_itch_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_itch_v1_1.side.dissect(buffer, index, packet, parent)

  -- Order Book Position: Numeric
  index, order_book_position = jpx_osederivatives_geniuminet_itch_v1_1.order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = jpx_osederivatives_geniuminet_itch_v1_1.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jpx_osederivatives_geniuminet_itch_v1_1.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 7 fields
  index, order_attributes = jpx_osederivatives_geniuminet_itch_v1_1.order_attributes.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = jpx_osederivatives_geniuminet_itch_v1_1.lot_type.dissect(buffer, index, packet, parent)

  -- Participant Id: Alpha
  index, participant_id = jpx_osederivatives_geniuminet_itch_v1_1.participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order With Mpid
jpx_osederivatives_geniuminet_itch_v1_1.add_order_with_mpid.dissect = function(buffer, offset, packet, parent)
  if show.add_order_with_mpid then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.add_order_with_mpid, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.add_order_with_mpid.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.add_order_with_mpid.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.add_order_with_mpid.fields(buffer, offset, packet, parent)
  end
end

-- Add Order No Mpid
jpx_osederivatives_geniuminet_itch_v1_1.add_order_no_mpid = {}

-- Size: Add Order No Mpid
jpx_osederivatives_geniuminet_itch_v1_1.add_order_no_mpid.size =
  jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.side.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_book_position.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.quantity.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.price.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_attributes.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.lot_type.size

-- Display: Add Order No Mpid
jpx_osederivatives_geniuminet_itch_v1_1.add_order_no_mpid.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order No Mpid
jpx_osederivatives_geniuminet_itch_v1_1.add_order_no_mpid.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = jpx_osederivatives_geniuminet_itch_v1_1.order_id.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = jpx_osederivatives_geniuminet_itch_v1_1.side.dissect(buffer, index, packet, parent)

  -- Order Book Position: Numeric
  index, order_book_position = jpx_osederivatives_geniuminet_itch_v1_1.order_book_position.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = jpx_osederivatives_geniuminet_itch_v1_1.quantity.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = jpx_osederivatives_geniuminet_itch_v1_1.price.dissect(buffer, index, packet, parent)

  -- Order Attributes: Struct of 7 fields
  index, order_attributes = jpx_osederivatives_geniuminet_itch_v1_1.order_attributes.dissect(buffer, index, packet, parent)

  -- Lot Type: Numeric
  index, lot_type = jpx_osederivatives_geniuminet_itch_v1_1.lot_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order No Mpid
jpx_osederivatives_geniuminet_itch_v1_1.add_order_no_mpid.dissect = function(buffer, offset, packet, parent)
  if show.add_order_no_mpid then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.add_order_no_mpid, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.add_order_no_mpid.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.add_order_no_mpid.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.add_order_no_mpid.fields(buffer, offset, packet, parent)
  end
end

-- State Name
jpx_osederivatives_geniuminet_itch_v1_1.state_name = {}

-- Size: State Name
jpx_osederivatives_geniuminet_itch_v1_1.state_name.size = 20

-- Display: State Name
jpx_osederivatives_geniuminet_itch_v1_1.state_name.display = function(value)
  return "State Name: "..value
end

-- Dissect: State Name
jpx_osederivatives_geniuminet_itch_v1_1.state_name.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.state_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_itch_v1_1.state_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.state_name, range, value, display)

  return offset + length, value
end

-- Order Book State Message
jpx_osederivatives_geniuminet_itch_v1_1.order_book_state_message = {}

-- Size: Order Book State Message
jpx_osederivatives_geniuminet_itch_v1_1.order_book_state_message.size =
  jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.state_name.size

-- Display: Order Book State Message
jpx_osederivatives_geniuminet_itch_v1_1.order_book_state_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book State Message
jpx_osederivatives_geniuminet_itch_v1_1.order_book_state_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.dissect(buffer, index, packet, parent)

  -- State Name: Alpha
  index, state_name = jpx_osederivatives_geniuminet_itch_v1_1.state_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book State Message
jpx_osederivatives_geniuminet_itch_v1_1.order_book_state_message.dissect = function(buffer, offset, packet, parent)
  if show.order_book_state_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_book_state_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.order_book_state_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.order_book_state_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.order_book_state_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Code
jpx_osederivatives_geniuminet_itch_v1_1.event_code = {}

-- Size: Event Code
jpx_osederivatives_geniuminet_itch_v1_1.event_code.size = 1

-- Display: Event Code
jpx_osederivatives_geniuminet_itch_v1_1.event_code.display = function(value)
  if value == "O" then
    return "Event Code: Start Of Messages (O)"
  end
  if value == "C" then
    return "Event Code: End Of Messages (C)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
jpx_osederivatives_geniuminet_itch_v1_1.event_code.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.event_code, range, value, display)

  return offset + length, value
end

-- System Event Message
jpx_osederivatives_geniuminet_itch_v1_1.system_event_message = {}

-- Size: System Event Message
jpx_osederivatives_geniuminet_itch_v1_1.system_event_message.size =
  jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.event_code.size

-- Display: System Event Message
jpx_osederivatives_geniuminet_itch_v1_1.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
jpx_osederivatives_geniuminet_itch_v1_1.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = jpx_osederivatives_geniuminet_itch_v1_1.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
jpx_osederivatives_geniuminet_itch_v1_1.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.system_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.system_event_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Price To
jpx_osederivatives_geniuminet_itch_v1_1.price_to = {}

-- Size: Price To
jpx_osederivatives_geniuminet_itch_v1_1.price_to.size = 4

-- Display: Price To
jpx_osederivatives_geniuminet_itch_v1_1.price_to.display = function(value)
  return "Price To: "..value
end

-- Dissect: Price To
jpx_osederivatives_geniuminet_itch_v1_1.price_to.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.price_to.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.price_to.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.price_to, range, value, display)

  return offset + length, value
end

-- Price From
jpx_osederivatives_geniuminet_itch_v1_1.price_from = {}

-- Size: Price From
jpx_osederivatives_geniuminet_itch_v1_1.price_from.size = 4

-- Display: Price From
jpx_osederivatives_geniuminet_itch_v1_1.price_from.display = function(value)
  return "Price From: "..value
end

-- Dissect: Price From
jpx_osederivatives_geniuminet_itch_v1_1.price_from.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.price_from.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.price_from.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.price_from, range, value, display)

  return offset + length, value
end

-- Tick Size
jpx_osederivatives_geniuminet_itch_v1_1.tick_size = {}

-- Size: Tick Size
jpx_osederivatives_geniuminet_itch_v1_1.tick_size.size = 8

-- Display: Tick Size
jpx_osederivatives_geniuminet_itch_v1_1.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
jpx_osederivatives_geniuminet_itch_v1_1.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.tick_size.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Tick Size Table Entry
jpx_osederivatives_geniuminet_itch_v1_1.tick_size_table_entry = {}

-- Size: Tick Size Table Entry
jpx_osederivatives_geniuminet_itch_v1_1.tick_size_table_entry.size =
  jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.tick_size.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.price_from.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.price_to.size

-- Display: Tick Size Table Entry
jpx_osederivatives_geniuminet_itch_v1_1.tick_size_table_entry.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tick Size Table Entry
jpx_osederivatives_geniuminet_itch_v1_1.tick_size_table_entry.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.dissect(buffer, index, packet, parent)

  -- Tick Size: Numeric
  index, tick_size = jpx_osederivatives_geniuminet_itch_v1_1.tick_size.dissect(buffer, index, packet, parent)

  -- Price From: Price
  index, price_from = jpx_osederivatives_geniuminet_itch_v1_1.price_from.dissect(buffer, index, packet, parent)

  -- Price To: Price
  index, price_to = jpx_osederivatives_geniuminet_itch_v1_1.price_to.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Size Table Entry
jpx_osederivatives_geniuminet_itch_v1_1.tick_size_table_entry.dissect = function(buffer, offset, packet, parent)
  if show.tick_size_table_entry then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.tick_size_table_entry, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.tick_size_table_entry.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.tick_size_table_entry.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.tick_size_table_entry.fields(buffer, offset, packet, parent)
  end
end

-- Leg Ratio
jpx_osederivatives_geniuminet_itch_v1_1.leg_ratio = {}

-- Size: Leg Ratio
jpx_osederivatives_geniuminet_itch_v1_1.leg_ratio.size = 4

-- Display: Leg Ratio
jpx_osederivatives_geniuminet_itch_v1_1.leg_ratio.display = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
jpx_osederivatives_geniuminet_itch_v1_1.leg_ratio.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.leg_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.leg_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Leg Side
jpx_osederivatives_geniuminet_itch_v1_1.leg_side = {}

-- Size: Leg Side
jpx_osederivatives_geniuminet_itch_v1_1.leg_side.size = 1

-- Display: Leg Side
jpx_osederivatives_geniuminet_itch_v1_1.leg_side.display = function(value)
  if value == "B" then
    return "Leg Side: As Defined (B)"
  end
  if value == "C" then
    return "Leg Side: Opposite (C)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
jpx_osederivatives_geniuminet_itch_v1_1.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.leg_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Leg Orderbook Id
jpx_osederivatives_geniuminet_itch_v1_1.leg_orderbook_id = {}

-- Size: Leg Orderbook Id
jpx_osederivatives_geniuminet_itch_v1_1.leg_orderbook_id.size = 4

-- Display: Leg Orderbook Id
jpx_osederivatives_geniuminet_itch_v1_1.leg_orderbook_id.display = function(value)
  return "Leg Orderbook Id: "..value
end

-- Dissect: Leg Orderbook Id
jpx_osederivatives_geniuminet_itch_v1_1.leg_orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.leg_orderbook_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.leg_orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.leg_orderbook_id, range, value, display)

  return offset + length, value
end

-- Combination Orderbook Id
jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_id = {}

-- Size: Combination Orderbook Id
jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_id.size = 4

-- Display: Combination Orderbook Id
jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_id.display = function(value)
  return "Combination Orderbook Id: "..value
end

-- Dissect: Combination Orderbook Id
jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.combination_orderbook_id, range, value, display)

  return offset + length, value
end

-- Combination Orderbook Leg
jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_leg = {}

-- Size: Combination Orderbook Leg
jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_leg.size =
  jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.leg_orderbook_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.leg_side.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.leg_ratio.size

-- Display: Combination Orderbook Leg
jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_leg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Combination Orderbook Leg
jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_leg.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Combination Orderbook Id: Numeric
  index, combination_orderbook_id = jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_id.dissect(buffer, index, packet, parent)

  -- Leg Orderbook Id: Numeric
  index, leg_orderbook_id = jpx_osederivatives_geniuminet_itch_v1_1.leg_orderbook_id.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = jpx_osederivatives_geniuminet_itch_v1_1.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Ratio: Numeric
  index, leg_ratio = jpx_osederivatives_geniuminet_itch_v1_1.leg_ratio.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Combination Orderbook Leg
jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_leg.dissect = function(buffer, offset, packet, parent)
  if show.combination_orderbook_leg then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.combination_orderbook_leg, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_leg.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_leg.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_leg.fields(buffer, offset, packet, parent)
  end
end

-- Put Or Call
jpx_osederivatives_geniuminet_itch_v1_1.put_or_call = {}

-- Size: Put Or Call
jpx_osederivatives_geniuminet_itch_v1_1.put_or_call.size = 1

-- Display: Put Or Call
jpx_osederivatives_geniuminet_itch_v1_1.put_or_call.display = function(value)
  if value == 1 then
    return "Put Or Call: Call (1)"
  end
  if value == 2 then
    return "Put Or Call: Put (2)"
  end

  return "Put Or Call: Unknown("..value..")"
end

-- Dissect: Put Or Call
jpx_osederivatives_geniuminet_itch_v1_1.put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.put_or_call.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.put_or_call, range, value, display)

  return offset + length, value
end

-- Decimals In Strike Price
jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_strike_price = {}

-- Size: Decimals In Strike Price
jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_strike_price.size = 2

-- Display: Decimals In Strike Price
jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_strike_price.display = function(value)
  return "Decimals In Strike Price: "..value
end

-- Dissect: Decimals In Strike Price
jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.decimals_in_strike_price, range, value, display)

  return offset + length, value
end

-- Expiration Date
jpx_osederivatives_geniuminet_itch_v1_1.expiration_date = {}

-- Size: Expiration Date
jpx_osederivatives_geniuminet_itch_v1_1.expiration_date.size = 4

-- Display: Expiration Date
jpx_osederivatives_geniuminet_itch_v1_1.expiration_date.display = function(value)
  return "Expiration Date: "..value
end

-- Dissect: Expiration Date
jpx_osederivatives_geniuminet_itch_v1_1.expiration_date.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.expiration_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.expiration_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.expiration_date, range, value, display)

  return offset + length, value
end

-- Strike Price
jpx_osederivatives_geniuminet_itch_v1_1.strike_price = {}

-- Size: Strike Price
jpx_osederivatives_geniuminet_itch_v1_1.strike_price.size = 4

-- Display: Strike Price
jpx_osederivatives_geniuminet_itch_v1_1.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
jpx_osederivatives_geniuminet_itch_v1_1.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.strike_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Underlying Orderbook Id
jpx_osederivatives_geniuminet_itch_v1_1.underlying_orderbook_id = {}

-- Size: Underlying Orderbook Id
jpx_osederivatives_geniuminet_itch_v1_1.underlying_orderbook_id.size = 4

-- Display: Underlying Orderbook Id
jpx_osederivatives_geniuminet_itch_v1_1.underlying_orderbook_id.display = function(value)
  return "Underlying Orderbook Id: "..value
end

-- Dissect: Underlying Orderbook Id
jpx_osederivatives_geniuminet_itch_v1_1.underlying_orderbook_id.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.underlying_orderbook_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.underlying_orderbook_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.underlying_orderbook_id, range, value, display)

  return offset + length, value
end

-- Number Of Legs
jpx_osederivatives_geniuminet_itch_v1_1.number_of_legs = {}

-- Size: Number Of Legs
jpx_osederivatives_geniuminet_itch_v1_1.number_of_legs.size = 1

-- Display: Number Of Legs
jpx_osederivatives_geniuminet_itch_v1_1.number_of_legs.display = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
jpx_osederivatives_geniuminet_itch_v1_1.number_of_legs.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.number_of_legs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.number_of_legs.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Nominal Value
jpx_osederivatives_geniuminet_itch_v1_1.nominal_value = {}

-- Size: Nominal Value
jpx_osederivatives_geniuminet_itch_v1_1.nominal_value.size = 8

-- Display: Nominal Value
jpx_osederivatives_geniuminet_itch_v1_1.nominal_value.display = function(value)
  return "Nominal Value: "..value
end

-- Dissect: Nominal Value
jpx_osederivatives_geniuminet_itch_v1_1.nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.nominal_value, range, value, display)

  return offset + length, value
end

-- Block Lot Size
jpx_osederivatives_geniuminet_itch_v1_1.block_lot_size = {}

-- Size: Block Lot Size
jpx_osederivatives_geniuminet_itch_v1_1.block_lot_size.size = 4

-- Display: Block Lot Size
jpx_osederivatives_geniuminet_itch_v1_1.block_lot_size.display = function(value)
  return "Block Lot Size: "..value
end

-- Dissect: Block Lot Size
jpx_osederivatives_geniuminet_itch_v1_1.block_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.block_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.block_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.block_lot_size, range, value, display)

  return offset + length, value
end

-- Round Lot Size
jpx_osederivatives_geniuminet_itch_v1_1.round_lot_size = {}

-- Size: Round Lot Size
jpx_osederivatives_geniuminet_itch_v1_1.round_lot_size.size = 4

-- Display: Round Lot Size
jpx_osederivatives_geniuminet_itch_v1_1.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
jpx_osederivatives_geniuminet_itch_v1_1.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Odd Lot Size
jpx_osederivatives_geniuminet_itch_v1_1.odd_lot_size = {}

-- Size: Odd Lot Size
jpx_osederivatives_geniuminet_itch_v1_1.odd_lot_size.size = 4

-- Display: Odd Lot Size
jpx_osederivatives_geniuminet_itch_v1_1.odd_lot_size.display = function(value)
  return "Odd Lot Size: "..value
end

-- Dissect: Odd Lot Size
jpx_osederivatives_geniuminet_itch_v1_1.odd_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.odd_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.odd_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.odd_lot_size, range, value, display)

  return offset + length, value
end

-- Decimals In Nominal Value
jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_nominal_value = {}

-- Size: Decimals In Nominal Value
jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_nominal_value.size = 2

-- Display: Decimals In Nominal Value
jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_nominal_value.display = function(value)
  return "Decimals In Nominal Value: "..value
end

-- Dissect: Decimals In Nominal Value
jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_nominal_value.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_nominal_value.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_nominal_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.decimals_in_nominal_value, range, value, display)

  return offset + length, value
end

-- Decimals In Price
jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_price = {}

-- Size: Decimals In Price
jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_price.size = 2

-- Display: Decimals In Price
jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_price.display = function(value)
  return "Decimals In Price: "..value
end

-- Dissect: Decimals In Price
jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_price.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.decimals_in_price, range, value, display)

  return offset + length, value
end

-- Trading Currency
jpx_osederivatives_geniuminet_itch_v1_1.trading_currency = {}

-- Size: Trading Currency
jpx_osederivatives_geniuminet_itch_v1_1.trading_currency.size = 3

-- Display: Trading Currency
jpx_osederivatives_geniuminet_itch_v1_1.trading_currency.display = function(value)
  return "Trading Currency: "..value
end

-- Dissect: Trading Currency
jpx_osederivatives_geniuminet_itch_v1_1.trading_currency.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.trading_currency.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_itch_v1_1.trading_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.trading_currency, range, value, display)

  return offset + length, value
end

-- Financial Product
jpx_osederivatives_geniuminet_itch_v1_1.financial_product = {}

-- Size: Financial Product
jpx_osederivatives_geniuminet_itch_v1_1.financial_product.size = 1

-- Display: Financial Product
jpx_osederivatives_geniuminet_itch_v1_1.financial_product.display = function(value)
  if value == 1 then
    return "Financial Product: Option (1)"
  end
  if value == 2 then
    return "Financial Product: Forward (2)"
  end
  if value == 3 then
    return "Financial Product: Future (3)"
  end
  if value == 4 then
    return "Financial Product: Fra (4)"
  end
  if value == 5 then
    return "Financial Product: Cash (5)"
  end
  if value == 6 then
    return "Financial Product: Payment (6)"
  end
  if value == 7 then
    return "Financial Product: Exchange Rate (7)"
  end
  if value == 8 then
    return "Financial Product: Interest Rate Swap (8)"
  end
  if value == 9 then
    return "Financial Product: Repo (9)"
  end
  if value == 10 then
    return "Financial Product: Synthetic Box Leg Or Reference (10)"
  end
  if value == 11 then
    return "Financial Product: Combination (11)"
  end
  if value == 12 then
    return "Financial Product: Guarantee (12)"
  end
  if value == 13 then
    return "Financial Product: Otc General (13)"
  end
  if value == 14 then
    return "Financial Product: Equity Warrant (14)"
  end
  if value == 15 then
    return "Financial Product: Security Lending (15)"
  end

  return "Financial Product: Unknown("..value..")"
end

-- Dissect: Financial Product
jpx_osederivatives_geniuminet_itch_v1_1.financial_product.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.financial_product.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.financial_product.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.financial_product, range, value, display)

  return offset + length, value
end

-- Isin
jpx_osederivatives_geniuminet_itch_v1_1.isin = {}

-- Size: Isin
jpx_osederivatives_geniuminet_itch_v1_1.isin.size = 12

-- Display: Isin
jpx_osederivatives_geniuminet_itch_v1_1.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
jpx_osederivatives_geniuminet_itch_v1_1.isin.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.isin.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_itch_v1_1.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.isin, range, value, display)

  return offset + length, value
end

-- Long Name
jpx_osederivatives_geniuminet_itch_v1_1.long_name = {}

-- Size: Long Name
jpx_osederivatives_geniuminet_itch_v1_1.long_name.size = 32

-- Display: Long Name
jpx_osederivatives_geniuminet_itch_v1_1.long_name.display = function(value)
  return "Long Name: "..value
end

-- Dissect: Long Name
jpx_osederivatives_geniuminet_itch_v1_1.long_name.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.long_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_itch_v1_1.long_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.long_name, range, value, display)

  return offset + length, value
end

-- Symbol
jpx_osederivatives_geniuminet_itch_v1_1.symbol = {}

-- Size: Symbol
jpx_osederivatives_geniuminet_itch_v1_1.symbol.size = 32

-- Display: Symbol
jpx_osederivatives_geniuminet_itch_v1_1.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
jpx_osederivatives_geniuminet_itch_v1_1.symbol.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = jpx_osederivatives_geniuminet_itch_v1_1.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.symbol, range, value, display)

  return offset + length, value
end

-- Order Book Directory
jpx_osederivatives_geniuminet_itch_v1_1.order_book_directory = {}

-- Size: Order Book Directory
jpx_osederivatives_geniuminet_itch_v1_1.order_book_directory.size =
  jpx_osederivatives_geniuminet_itch_v1_1.timestamp.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.symbol.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.long_name.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.isin.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.financial_product.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.trading_currency.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_price.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_nominal_value.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.odd_lot_size.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.round_lot_size.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.block_lot_size.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.nominal_value.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.number_of_legs.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.underlying_orderbook_id.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.strike_price.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.expiration_date.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_strike_price.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.put_or_call.size

-- Display: Order Book Directory
jpx_osederivatives_geniuminet_itch_v1_1.order_book_directory.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Directory
jpx_osederivatives_geniuminet_itch_v1_1.order_book_directory.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: Numeric
  index, timestamp = jpx_osederivatives_geniuminet_itch_v1_1.timestamp.dissect(buffer, index, packet, parent)

  -- Order Book Id: Numeric
  index, order_book_id = jpx_osederivatives_geniuminet_itch_v1_1.order_book_id.dissect(buffer, index, packet, parent)

  -- Symbol: Alpha
  index, symbol = jpx_osederivatives_geniuminet_itch_v1_1.symbol.dissect(buffer, index, packet, parent)

  -- Long Name: Alpha
  index, long_name = jpx_osederivatives_geniuminet_itch_v1_1.long_name.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = jpx_osederivatives_geniuminet_itch_v1_1.isin.dissect(buffer, index, packet, parent)

  -- Financial Product: Numeric
  index, financial_product = jpx_osederivatives_geniuminet_itch_v1_1.financial_product.dissect(buffer, index, packet, parent)

  -- Trading Currency: Alpha
  index, trading_currency = jpx_osederivatives_geniuminet_itch_v1_1.trading_currency.dissect(buffer, index, packet, parent)

  -- Decimals In Price: Numeric
  index, decimals_in_price = jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_price.dissect(buffer, index, packet, parent)

  -- Decimals In Nominal Value: Numeric
  index, decimals_in_nominal_value = jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_nominal_value.dissect(buffer, index, packet, parent)

  -- Odd Lot Size: Numeric
  index, odd_lot_size = jpx_osederivatives_geniuminet_itch_v1_1.odd_lot_size.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Numeric
  index, round_lot_size = jpx_osederivatives_geniuminet_itch_v1_1.round_lot_size.dissect(buffer, index, packet, parent)

  -- Block Lot Size: Numeric
  index, block_lot_size = jpx_osederivatives_geniuminet_itch_v1_1.block_lot_size.dissect(buffer, index, packet, parent)

  -- Nominal Value: Numeric
  index, nominal_value = jpx_osederivatives_geniuminet_itch_v1_1.nominal_value.dissect(buffer, index, packet, parent)

  -- Number Of Legs: Numeric
  index, number_of_legs = jpx_osederivatives_geniuminet_itch_v1_1.number_of_legs.dissect(buffer, index, packet, parent)

  -- Underlying Orderbook Id: Numeric
  index, underlying_orderbook_id = jpx_osederivatives_geniuminet_itch_v1_1.underlying_orderbook_id.dissect(buffer, index, packet, parent)

  -- Strike Price: Price
  index, strike_price = jpx_osederivatives_geniuminet_itch_v1_1.strike_price.dissect(buffer, index, packet, parent)

  -- Expiration Date: Date
  index, expiration_date = jpx_osederivatives_geniuminet_itch_v1_1.expiration_date.dissect(buffer, index, packet, parent)

  -- Decimals In Strike Price: Numeric
  index, decimals_in_strike_price = jpx_osederivatives_geniuminet_itch_v1_1.decimals_in_strike_price.dissect(buffer, index, packet, parent)

  -- Put Or Call: Numeric
  index, put_or_call = jpx_osederivatives_geniuminet_itch_v1_1.put_or_call.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Directory
jpx_osederivatives_geniuminet_itch_v1_1.order_book_directory.dissect = function(buffer, offset, packet, parent)
  if show.order_book_directory then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.order_book_directory, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.order_book_directory.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.order_book_directory.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.order_book_directory.fields(buffer, offset, packet, parent)
  end
end

-- Seconds
jpx_osederivatives_geniuminet_itch_v1_1.seconds = {}

-- Size: Seconds
jpx_osederivatives_geniuminet_itch_v1_1.seconds.size = 4

-- Store: Seconds
jpx_osederivatives_geniuminet_itch_v1_1.seconds.store = nil

-- Display: Seconds
jpx_osederivatives_geniuminet_itch_v1_1.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
jpx_osederivatives_geniuminet_itch_v1_1.seconds.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.seconds, range, value, display)

  return offset + length, value
end

-- Seconds Message
jpx_osederivatives_geniuminet_itch_v1_1.seconds_message = {}

-- Size: Seconds Message
jpx_osederivatives_geniuminet_itch_v1_1.seconds_message.size =
  jpx_osederivatives_geniuminet_itch_v1_1.seconds.size

-- Display: Seconds Message
jpx_osederivatives_geniuminet_itch_v1_1.seconds_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seconds Message
jpx_osederivatives_geniuminet_itch_v1_1.seconds_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Numeric
  index, seconds = jpx_osederivatives_geniuminet_itch_v1_1.seconds.dissect(buffer, index, packet, parent)

  -- Store Seconds Value
  jpx_osederivatives_geniuminet_itch_v1_1.seconds.store = seconds

  return index
end

-- Dissect: Seconds Message
jpx_osederivatives_geniuminet_itch_v1_1.seconds_message.dissect = function(buffer, offset, packet, parent)
  if show.seconds_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.seconds_message, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.seconds_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.seconds_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.seconds_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
jpx_osederivatives_geniuminet_itch_v1_1.payload = {}

-- Size: Payload
jpx_osederivatives_geniuminet_itch_v1_1.payload.size = function(buffer, offset, message_type)
  -- Size of Seconds Message
  if message_type == "T" then
    return jpx_osederivatives_geniuminet_itch_v1_1.seconds_message.size
  end
  -- Size of Order Book Directory
  if message_type == "R" then
    return jpx_osederivatives_geniuminet_itch_v1_1.order_book_directory.size
  end
  -- Size of Combination Orderbook Leg
  if message_type == "M" then
    return jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_leg.size
  end
  -- Size of Tick Size Table Entry
  if message_type == "L" then
    return jpx_osederivatives_geniuminet_itch_v1_1.tick_size_table_entry.size
  end
  -- Size of System Event Message
  if message_type == "S" then
    return jpx_osederivatives_geniuminet_itch_v1_1.system_event_message.size
  end
  -- Size of Order Book State Message
  if message_type == "O" then
    return jpx_osederivatives_geniuminet_itch_v1_1.order_book_state_message.size
  end
  -- Size of Add Order No Mpid
  if message_type == "A" then
    return jpx_osederivatives_geniuminet_itch_v1_1.add_order_no_mpid.size
  end
  -- Size of Add Order With Mpid
  if message_type == "F" then
    return jpx_osederivatives_geniuminet_itch_v1_1.add_order_with_mpid.size
  end
  -- Size of Order Executed Message
  if message_type == "E" then
    return jpx_osederivatives_geniuminet_itch_v1_1.order_executed_message.size
  end
  -- Size of Order Executed With Price Message
  if message_type == "C" then
    return jpx_osederivatives_geniuminet_itch_v1_1.order_executed_with_price_message.size
  end
  -- Size of Order Replace Message
  if message_type == "U" then
    return jpx_osederivatives_geniuminet_itch_v1_1.order_replace_message.size
  end
  -- Size of Order Delete Message
  if message_type == "D" then
    return jpx_osederivatives_geniuminet_itch_v1_1.order_delete_message.size
  end
  -- Size of Trade Message
  if message_type == "P" then
    return jpx_osederivatives_geniuminet_itch_v1_1.trade_message.size
  end
  -- Size of Equilibrium Price Update
  if message_type == "Z" then
    return jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price_update.size
  end

  return 0
end

-- Display: Payload
jpx_osederivatives_geniuminet_itch_v1_1.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
jpx_osederivatives_geniuminet_itch_v1_1.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Seconds Message
  if message_type == "T" then
    return jpx_osederivatives_geniuminet_itch_v1_1.seconds_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Directory
  if message_type == "R" then
    return jpx_osederivatives_geniuminet_itch_v1_1.order_book_directory.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Combination Orderbook Leg
  if message_type == "M" then
    return jpx_osederivatives_geniuminet_itch_v1_1.combination_orderbook_leg.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tick Size Table Entry
  if message_type == "L" then
    return jpx_osederivatives_geniuminet_itch_v1_1.tick_size_table_entry.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == "S" then
    return jpx_osederivatives_geniuminet_itch_v1_1.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book State Message
  if message_type == "O" then
    return jpx_osederivatives_geniuminet_itch_v1_1.order_book_state_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order No Mpid
  if message_type == "A" then
    return jpx_osederivatives_geniuminet_itch_v1_1.add_order_no_mpid.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order With Mpid
  if message_type == "F" then
    return jpx_osederivatives_geniuminet_itch_v1_1.add_order_with_mpid.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == "E" then
    return jpx_osederivatives_geniuminet_itch_v1_1.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Message
  if message_type == "C" then
    return jpx_osederivatives_geniuminet_itch_v1_1.order_executed_with_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replace Message
  if message_type == "U" then
    return jpx_osederivatives_geniuminet_itch_v1_1.order_replace_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Delete Message
  if message_type == "D" then
    return jpx_osederivatives_geniuminet_itch_v1_1.order_delete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "P" then
    return jpx_osederivatives_geniuminet_itch_v1_1.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equilibrium Price Update
  if message_type == "Z" then
    return jpx_osederivatives_geniuminet_itch_v1_1.equilibrium_price_update.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
jpx_osederivatives_geniuminet_itch_v1_1.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return jpx_osederivatives_geniuminet_itch_v1_1.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = jpx_osederivatives_geniuminet_itch_v1_1.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = jpx_osederivatives_geniuminet_itch_v1_1.payload.display(buffer, packet, parent)
  local element = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.payload, range, display)

  return jpx_osederivatives_geniuminet_itch_v1_1.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Message Type
jpx_osederivatives_geniuminet_itch_v1_1.message_type = {}

-- Size: Message Type
jpx_osederivatives_geniuminet_itch_v1_1.message_type.size = 1

-- Display: Message Type
jpx_osederivatives_geniuminet_itch_v1_1.message_type.display = function(value)
  if value == "T" then
    return "Message Type: Seconds Message (T)"
  end
  if value == "R" then
    return "Message Type: Order Book Directory (R)"
  end
  if value == "M" then
    return "Message Type: Combination Orderbook Leg (M)"
  end
  if value == "L" then
    return "Message Type: Tick Size Table Entry (L)"
  end
  if value == "S" then
    return "Message Type: System Event Message (S)"
  end
  if value == "O" then
    return "Message Type: Order Book State Message (O)"
  end
  if value == "A" then
    return "Message Type: Add Order No Mpid (A)"
  end
  if value == "F" then
    return "Message Type: Add Order With Mpid (F)"
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
    return "Message Type: Equilibrium Price Update (Z)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
jpx_osederivatives_geniuminet_itch_v1_1.message_type.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Length
jpx_osederivatives_geniuminet_itch_v1_1.message_length = {}

-- Size: Message Length
jpx_osederivatives_geniuminet_itch_v1_1.message_length.size = 2

-- Display: Message Length
jpx_osederivatives_geniuminet_itch_v1_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
jpx_osederivatives_geniuminet_itch_v1_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
jpx_osederivatives_geniuminet_itch_v1_1.message_header = {}

-- Size: Message Header
jpx_osederivatives_geniuminet_itch_v1_1.message_header.size =
  jpx_osederivatives_geniuminet_itch_v1_1.message_length.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.message_type.size

-- Display: Message Header
jpx_osederivatives_geniuminet_itch_v1_1.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
jpx_osederivatives_geniuminet_itch_v1_1.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = jpx_osederivatives_geniuminet_itch_v1_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 14 values
  index, message_type = jpx_osederivatives_geniuminet_itch_v1_1.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
jpx_osederivatives_geniuminet_itch_v1_1.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.message_header, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
jpx_osederivatives_geniuminet_itch_v1_1.message = {}

-- Display: Message
jpx_osederivatives_geniuminet_itch_v1_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
jpx_osederivatives_geniuminet_itch_v1_1.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = jpx_osederivatives_geniuminet_itch_v1_1.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 14 branches
  index = jpx_osederivatives_geniuminet_itch_v1_1.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
jpx_osederivatives_geniuminet_itch_v1_1.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.message, buffer(offset, 0))
    local current = jpx_osederivatives_geniuminet_itch_v1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    jpx_osederivatives_geniuminet_itch_v1_1.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Message Count
jpx_osederivatives_geniuminet_itch_v1_1.message_count = {}

-- Size: Message Count
jpx_osederivatives_geniuminet_itch_v1_1.message_count.size = 2

-- Display: Message Count
jpx_osederivatives_geniuminet_itch_v1_1.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
jpx_osederivatives_geniuminet_itch_v1_1.message_count.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequence Number
jpx_osederivatives_geniuminet_itch_v1_1.sequence_number = {}

-- Size: Sequence Number
jpx_osederivatives_geniuminet_itch_v1_1.sequence_number.size = 8

-- Display: Sequence Number
jpx_osederivatives_geniuminet_itch_v1_1.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
jpx_osederivatives_geniuminet_itch_v1_1.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = jpx_osederivatives_geniuminet_itch_v1_1.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session
jpx_osederivatives_geniuminet_itch_v1_1.session = {}

-- Size: Session
jpx_osederivatives_geniuminet_itch_v1_1.session.size = 10

-- Display: Session
jpx_osederivatives_geniuminet_itch_v1_1.session.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Session: No Value"
  end

  return "Session: "..value
end

-- Dissect: Session
jpx_osederivatives_geniuminet_itch_v1_1.session.dissect = function(buffer, offset, packet, parent)
  local length = jpx_osederivatives_geniuminet_itch_v1_1.session.size
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

  local display = jpx_osederivatives_geniuminet_itch_v1_1.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
jpx_osederivatives_geniuminet_itch_v1_1.packet_header = {}

-- Size: Packet Header
jpx_osederivatives_geniuminet_itch_v1_1.packet_header.size =
  jpx_osederivatives_geniuminet_itch_v1_1.session.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.sequence_number.size + 
  jpx_osederivatives_geniuminet_itch_v1_1.message_count.size

-- Display: Packet Header
jpx_osederivatives_geniuminet_itch_v1_1.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
jpx_osederivatives_geniuminet_itch_v1_1.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 10 Byte Ascii String
  index, session = jpx_osederivatives_geniuminet_itch_v1_1.session.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = jpx_osederivatives_geniuminet_itch_v1_1.sequence_number.dissect(buffer, index, packet, parent)

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = jpx_osederivatives_geniuminet_itch_v1_1.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
jpx_osederivatives_geniuminet_itch_v1_1.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1.fields.packet_header, buffer(offset, 0))
    local index = jpx_osederivatives_geniuminet_itch_v1_1.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = jpx_osederivatives_geniuminet_itch_v1_1.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return jpx_osederivatives_geniuminet_itch_v1_1.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
jpx_osederivatives_geniuminet_itch_v1_1.packet = {}

-- Dissect Packet
jpx_osederivatives_geniuminet_itch_v1_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 3 fields
  index, packet_header = jpx_osederivatives_geniuminet_itch_v1_1.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 2, 2):uint()

  -- Repeating: Message
  for message_index = 1, message_count do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    local size_of_message = message_length + 2

    -- Message: Struct of 2 fields
    index, message = jpx_osederivatives_geniuminet_itch_v1_1.message.dissect(buffer, index, packet, parent, size_of_message, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_jpx_osederivatives_geniuminet_itch_v1_1.init()
end

-- Dissector for Jpx OseDerivatives GeniumInet Itch 1.1
function omi_jpx_osederivatives_geniuminet_itch_v1_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_jpx_osederivatives_geniuminet_itch_v1_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_jpx_osederivatives_geniuminet_itch_v1_1, buffer(), omi_jpx_osederivatives_geniuminet_itch_v1_1.description, "("..buffer:len().." Bytes)")
  return jpx_osederivatives_geniuminet_itch_v1_1.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_jpx_osederivatives_geniuminet_itch_v1_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
jpx_osederivatives_geniuminet_itch_v1_1.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Jpx OseDerivatives GeniumInet Itch 1.1
local function omi_jpx_osederivatives_geniuminet_itch_v1_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not jpx_osederivatives_geniuminet_itch_v1_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_jpx_osederivatives_geniuminet_itch_v1_1
  omi_jpx_osederivatives_geniuminet_itch_v1_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Jpx OseDerivatives GeniumInet Itch 1.1
omi_jpx_osederivatives_geniuminet_itch_v1_1:register_heuristic("udp", omi_jpx_osederivatives_geniuminet_itch_v1_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Japan Exchange Group
--   Version: 1.1
--   Date: Wednesday, May 8, 2024
--   Specification: ITCH_ProtSpec_OSE_va70.pdf
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
