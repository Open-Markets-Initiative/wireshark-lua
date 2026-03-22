-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lseg Millennium Level2 Mitch 11.9 Protocol
local omi_lseg_millennium_level2_mitch_v11_9 = Proto("Lseg.Millennium.Level2.Mitch.v11.9.Lua", "Lseg Millennium Level2 Mitch 11.9")

-- Protocol table
local lseg_millennium_level2_mitch_v11_9 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Lseg Millennium Level2 Mitch 11.9 Fields
omi_lseg_millennium_level2_mitch_v11_9.fields.add_attributed_order_flags = ProtoField.new("Add Attributed Order Flags", "lseg.millennium.level2.mitch.v11.9.addattributedorderflags", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.add_order_flags = ProtoField.new("Add Order Flags", "lseg.millennium.level2.mitch.v11.9.addorderflags", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.amnd = ProtoField.new("Amnd", "lseg.millennium.level2.mitch.v11.9.amnd", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_lseg_millennium_level2_mitch_v11_9.fields.attribution = ProtoField.new("Attribution", "lseg.millennium.level2.mitch.v11.9.attribution", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.auction_type = ProtoField.new("Auction Type", "lseg.millennium.level2.mitch.v11.9.auctiontype", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.book_type = ProtoField.new("Book Type", "lseg.millennium.level2.mitch.v11.9.booktype", ftypes.UINT8)
omi_lseg_millennium_level2_mitch_v11_9.fields.buy_limit_price = ProtoField.new("Buy Limit Price", "lseg.millennium.level2.mitch.v11.9.buylimitprice", ftypes.INT64)
omi_lseg_millennium_level2_mitch_v11_9.fields.buy_limit_size = ProtoField.new("Buy Limit Size", "lseg.millennium.level2.mitch.v11.9.buylimitsize", ftypes.UINT32)
omi_lseg_millennium_level2_mitch_v11_9.fields.canc = ProtoField.new("Canc", "lseg.millennium.level2.mitch.v11.9.canc", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_millennium_level2_mitch_v11_9.fields.cross_type = ProtoField.new("Cross Type", "lseg.millennium.level2.mitch.v11.9.crosstype", ftypes.UINT8)
omi_lseg_millennium_level2_mitch_v11_9.fields.currency = ProtoField.new("Currency", "lseg.millennium.level2.mitch.v11.9.currency", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.display_quantity = ProtoField.new("Display Quantity", "lseg.millennium.level2.mitch.v11.9.displayquantity", ftypes.UINT32)
omi_lseg_millennium_level2_mitch_v11_9.fields.event_code = ProtoField.new("Event Code", "lseg.millennium.level2.mitch.v11.9.eventcode", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.executed_quantity = ProtoField.new("Executed Quantity", "lseg.millennium.level2.mitch.v11.9.executedquantity", ftypes.UINT32)
omi_lseg_millennium_level2_mitch_v11_9.fields.firm_quote = ProtoField.new("Firm Quote", "lseg.millennium.level2.mitch.v11.9.firmquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_lseg_millennium_level2_mitch_v11_9.fields.instrument_id = ProtoField.new("Instrument Id", "lseg.millennium.level2.mitch.v11.9.instrumentid", ftypes.UINT32)
omi_lseg_millennium_level2_mitch_v11_9.fields.isin = ProtoField.new("Isin", "lseg.millennium.level2.mitch.v11.9.isin", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.length = ProtoField.new("Length", "lseg.millennium.level2.mitch.v11.9.length", ftypes.UINT16)
omi_lseg_millennium_level2_mitch_v11_9.fields.market_data_group = ProtoField.new("Market Data Group", "lseg.millennium.level2.mitch.v11.9.marketdatagroup", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.market_order = ProtoField.new("Market Order", "lseg.millennium.level2.mitch.v11.9.marketorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_lseg_millennium_level2_mitch_v11_9.fields.message = ProtoField.new("Message", "lseg.millennium.level2.mitch.v11.9.message", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.message_count = ProtoField.new("Message Count", "lseg.millennium.level2.mitch.v11.9.messagecount", ftypes.UINT8)
omi_lseg_millennium_level2_mitch_v11_9.fields.message_header = ProtoField.new("Message Header", "lseg.millennium.level2.mitch.v11.9.messageheader", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.message_length = ProtoField.new("Message Length", "lseg.millennium.level2.mitch.v11.9.messagelength", ftypes.UINT8)
omi_lseg_millennium_level2_mitch_v11_9.fields.message_type = ProtoField.new("Message Type", "lseg.millennium.level2.mitch.v11.9.messagetype", ftypes.UINT8)
omi_lseg_millennium_level2_mitch_v11_9.fields.named_market_order = ProtoField.new("Named Market Order", "lseg.millennium.level2.mitch.v11.9.namedmarketorder", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_lseg_millennium_level2_mitch_v11_9.fields.nanosecond = ProtoField.new("Nanosecond", "lseg.millennium.level2.mitch.v11.9.nanosecond", ftypes.UINT32)
omi_lseg_millennium_level2_mitch_v11_9.fields.new_end_time = ProtoField.new("New End Time", "lseg.millennium.level2.mitch.v11.9.newendtime", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.new_price = ProtoField.new("New Price", "lseg.millennium.level2.mitch.v11.9.newprice", ftypes.INT64)
omi_lseg_millennium_level2_mitch_v11_9.fields.new_quantity = ProtoField.new("New Quantity", "lseg.millennium.level2.mitch.v11.9.newquantity", ftypes.UINT32)
omi_lseg_millennium_level2_mitch_v11_9.fields.open_close_price_indicator = ProtoField.new("Open Close Price Indicator", "lseg.millennium.level2.mitch.v11.9.openclosepriceindicator", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.order_book_clear_flags = ProtoField.new("Order Book Clear Flags", "lseg.millennium.level2.mitch.v11.9.orderbookclearflags", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.order_deleted_flags = ProtoField.new("Order Deleted Flags", "lseg.millennium.level2.mitch.v11.9.orderdeletedflags", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.order_id = ProtoField.new("Order Id", "lseg.millennium.level2.mitch.v11.9.orderid", ftypes.UINT64)
omi_lseg_millennium_level2_mitch_v11_9.fields.order_modified_flags = ProtoField.new("Order Modified Flags", "lseg.millennium.level2.mitch.v11.9.ordermodifiedflags", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.packet = ProtoField.new("Packet", "lseg.millennium.level2.mitch.v11.9.packet", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.paired_quantity = ProtoField.new("Paired Quantity", "lseg.millennium.level2.mitch.v11.9.pairedquantity", ftypes.UINT32)
omi_lseg_millennium_level2_mitch_v11_9.fields.previous_close_price = ProtoField.new("Previous Close Price", "lseg.millennium.level2.mitch.v11.9.previouscloseprice", ftypes.INT64)
omi_lseg_millennium_level2_mitch_v11_9.fields.price = ProtoField.new("Price", "lseg.millennium.level2.mitch.v11.9.price", ftypes.INT64)
omi_lseg_millennium_level2_mitch_v11_9.fields.printable = ProtoField.new("Printable", "lseg.millennium.level2.mitch.v11.9.printable", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.priority_flag = ProtoField.new("Priority Flag", "lseg.millennium.level2.mitch.v11.9.priorityflag", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_lseg_millennium_level2_mitch_v11_9.fields.private_rfq = ProtoField.new("Private Rfq", "lseg.millennium.level2.mitch.v11.9.privaterfq", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_lseg_millennium_level2_mitch_v11_9.fields.pt_mod_flags = ProtoField.new("Pt Mod Flags", "lseg.millennium.level2.mitch.v11.9.ptmodflags", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.quantity = ProtoField.new("Quantity", "lseg.millennium.level2.mitch.v11.9.quantity", ftypes.UINT32)
omi_lseg_millennium_level2_mitch_v11_9.fields.reason = ProtoField.new("Reason", "lseg.millennium.level2.mitch.v11.9.reason", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.reserved_1 = ProtoField.new("Reserved 1", "lseg.millennium.level2.mitch.v11.9.reserved1", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.reserved_10 = ProtoField.new("Reserved 10", "lseg.millennium.level2.mitch.v11.9.reserved10", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.reserved_4 = ProtoField.new("Reserved 4", "lseg.millennium.level2.mitch.v11.9.reserved4", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.seconds = ProtoField.new("Seconds", "lseg.millennium.level2.mitch.v11.9.seconds", ftypes.UINT32)
omi_lseg_millennium_level2_mitch_v11_9.fields.sedol = ProtoField.new("Sedol", "lseg.millennium.level2.mitch.v11.9.sedol", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.segment = ProtoField.new("Segment", "lseg.millennium.level2.mitch.v11.9.segment", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.sell_limit_price = ProtoField.new("Sell Limit Price", "lseg.millennium.level2.mitch.v11.9.selllimitprice", ftypes.INT64)
omi_lseg_millennium_level2_mitch_v11_9.fields.sell_limit_size = ProtoField.new("Sell Limit Size", "lseg.millennium.level2.mitch.v11.9.selllimitsize", ftypes.UINT32)
omi_lseg_millennium_level2_mitch_v11_9.fields.sequence_number = ProtoField.new("Sequence Number", "lseg.millennium.level2.mitch.v11.9.sequencenumber", ftypes.UINT32)
omi_lseg_millennium_level2_mitch_v11_9.fields.session_change_reason = ProtoField.new("Session Change Reason", "lseg.millennium.level2.mitch.v11.9.sessionchangereason", ftypes.UINT8)
omi_lseg_millennium_level2_mitch_v11_9.fields.side = ProtoField.new("Side", "lseg.millennium.level2.mitch.v11.9.side", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.statistic_type = ProtoField.new("Statistic Type", "lseg.millennium.level2.mitch.v11.9.statistictype", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.sub_book = ProtoField.new("Sub Book", "lseg.millennium.level2.mitch.v11.9.subbook", ftypes.UINT8)
omi_lseg_millennium_level2_mitch_v11_9.fields.symbol_status = ProtoField.new("Symbol Status", "lseg.millennium.level2.mitch.v11.9.symbolstatus", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.symbol_status_flags = ProtoField.new("Symbol Status Flags", "lseg.millennium.level2.mitch.v11.9.symbolstatusflags", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.trade_match_id = ProtoField.new("Trade Match Id", "lseg.millennium.level2.mitch.v11.9.tradematchid", ftypes.UINT64)
omi_lseg_millennium_level2_mitch_v11_9.fields.trading_status = ProtoField.new("Trading Status", "lseg.millennium.level2.mitch.v11.9.tradingstatus", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.underlying = ProtoField.new("Underlying", "lseg.millennium.level2.mitch.v11.9.underlying", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.unit_header = ProtoField.new("Unit Header", "lseg.millennium.level2.mitch.v11.9.unitheader", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.unused_1 = ProtoField.new("Unused 1", "lseg.millennium.level2.mitch.v11.9.unused1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_lseg_millennium_level2_mitch_v11_9.fields.unused_2 = ProtoField.new("Unused 2", "lseg.millennium.level2.mitch.v11.9.unused2", ftypes.UINT8, nil, base.DEC, 0xC0)
omi_lseg_millennium_level2_mitch_v11_9.fields.unused_4 = ProtoField.new("Unused 4", "lseg.millennium.level2.mitch.v11.9.unused4", ftypes.UINT8, nil, base.DEC, 0x0F)
omi_lseg_millennium_level2_mitch_v11_9.fields.unused_5 = ProtoField.new("Unused 5", "lseg.millennium.level2.mitch.v11.9.unused5", ftypes.UINT8, nil, base.DEC, 0x1F)
omi_lseg_millennium_level2_mitch_v11_9.fields.unused_6 = ProtoField.new("Unused 6", "lseg.millennium.level2.mitch.v11.9.unused6", ftypes.UINT8, nil, base.DEC, 0xFC)

-- Lseg Millennium Mitch Level2 11.9 Application Messages
omi_lseg_millennium_level2_mitch_v11_9.fields.add_attributed_order_message = ProtoField.new("Add Attributed Order Message", "lseg.millennium.level2.mitch.v11.9.addattributedordermessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.add_order_message = ProtoField.new("Add Order Message", "lseg.millennium.level2.mitch.v11.9.addordermessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.auction_info_message = ProtoField.new("Auction Info Message", "lseg.millennium.level2.mitch.v11.9.auctioninfomessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "lseg.millennium.level2.mitch.v11.9.auctiontrademessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "lseg.millennium.level2.mitch.v11.9.orderbookclearmessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "lseg.millennium.level2.mitch.v11.9.orderdeletedmessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.order_executed_message = ProtoField.new("Order Executed Message", "lseg.millennium.level2.mitch.v11.9.orderexecutedmessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.order_executed_with_price_size_message = ProtoField.new("Order Executed With Price Size Message", "lseg.millennium.level2.mitch.v11.9.orderexecutedwithpricesizemessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.order_modified_message = ProtoField.new("Order Modified Message", "lseg.millennium.level2.mitch.v11.9.ordermodifiedmessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.statistics_message = ProtoField.new("Statistics Message", "lseg.millennium.level2.mitch.v11.9.statisticsmessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.symbol_directory_message = ProtoField.new("Symbol Directory Message", "lseg.millennium.level2.mitch.v11.9.symboldirectorymessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "lseg.millennium.level2.mitch.v11.9.symbolstatusmessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.system_event_message = ProtoField.new("System Event Message", "lseg.millennium.level2.mitch.v11.9.systemeventmessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.time_message = ProtoField.new("Time Message", "lseg.millennium.level2.mitch.v11.9.timemessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "lseg.millennium.level2.mitch.v11.9.topofbookmessage", ftypes.STRING)
omi_lseg_millennium_level2_mitch_v11_9.fields.trade_message = ProtoField.new("Trade Message", "lseg.millennium.level2.mitch.v11.9.trademessage", ftypes.STRING)

-- Lseg Millennium Level2 Mitch 11.9 generated fields
omi_lseg_millennium_level2_mitch_v11_9.fields.message_index = ProtoField.new("Message Index", "lseg.millennium.level2.mitch.v11.9.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Lseg Millennium Level2 Mitch 11.9 Element Dissection Options
show.add_attributed_order_flags = true
show.application_messages = true
show.add_order_flags = true
show.message = true
show.message_header = true
show.order_book_clear_flags = true
show.order_deleted_flags = true
show.order_modified_flags = true
show.packet = true
show.pt_mod_flags = true
show.symbol_status_flags = true
show.unit_header = true

-- Register Lseg Millennium Level2 Mitch 11.9 Show Options
omi_lseg_millennium_level2_mitch_v11_9.prefs.show_add_attributed_order_flags = Pref.bool("Show Add Attributed Order Flags", show.add_attributed_order_flags, "Parse and add Add Attributed Order Flags to protocol tree")
omi_lseg_millennium_level2_mitch_v11_9.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_lseg_millennium_level2_mitch_v11_9.prefs.show_add_order_flags = Pref.bool("Show Add Order Flags", show.add_order_flags, "Parse and add Add Order Flags to protocol tree")
omi_lseg_millennium_level2_mitch_v11_9.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_lseg_millennium_level2_mitch_v11_9.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_lseg_millennium_level2_mitch_v11_9.prefs.show_order_book_clear_flags = Pref.bool("Show Order Book Clear Flags", show.order_book_clear_flags, "Parse and add Order Book Clear Flags to protocol tree")
omi_lseg_millennium_level2_mitch_v11_9.prefs.show_order_deleted_flags = Pref.bool("Show Order Deleted Flags", show.order_deleted_flags, "Parse and add Order Deleted Flags to protocol tree")
omi_lseg_millennium_level2_mitch_v11_9.prefs.show_order_modified_flags = Pref.bool("Show Order Modified Flags", show.order_modified_flags, "Parse and add Order Modified Flags to protocol tree")
omi_lseg_millennium_level2_mitch_v11_9.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_lseg_millennium_level2_mitch_v11_9.prefs.show_pt_mod_flags = Pref.bool("Show Pt Mod Flags", show.pt_mod_flags, "Parse and add Pt Mod Flags to protocol tree")
omi_lseg_millennium_level2_mitch_v11_9.prefs.show_symbol_status_flags = Pref.bool("Show Symbol Status Flags", show.symbol_status_flags, "Parse and add Symbol Status Flags to protocol tree")
omi_lseg_millennium_level2_mitch_v11_9.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")

-- Handle changed preferences
function omi_lseg_millennium_level2_mitch_v11_9.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_attributed_order_flags ~= omi_lseg_millennium_level2_mitch_v11_9.prefs.show_add_attributed_order_flags then
    show.add_attributed_order_flags = omi_lseg_millennium_level2_mitch_v11_9.prefs.show_add_attributed_order_flags
    changed = true
  end
  if show.add_order_flags ~= omi_lseg_millennium_level2_mitch_v11_9.prefs.show_add_order_flags then
    show.add_order_flags = omi_lseg_millennium_level2_mitch_v11_9.prefs.show_add_order_flags
    changed = true
  end
  if show.application_messages ~= omi_lseg_millennium_level2_mitch_v11_9.prefs.show_application_messages then
    show.application_messages = omi_lseg_millennium_level2_mitch_v11_9.prefs.show_application_messages
    changed = true
  end
  if show.message ~= omi_lseg_millennium_level2_mitch_v11_9.prefs.show_message then
    show.message = omi_lseg_millennium_level2_mitch_v11_9.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_lseg_millennium_level2_mitch_v11_9.prefs.show_message_header then
    show.message_header = omi_lseg_millennium_level2_mitch_v11_9.prefs.show_message_header
    changed = true
  end
  if show.order_book_clear_flags ~= omi_lseg_millennium_level2_mitch_v11_9.prefs.show_order_book_clear_flags then
    show.order_book_clear_flags = omi_lseg_millennium_level2_mitch_v11_9.prefs.show_order_book_clear_flags
    changed = true
  end
  if show.order_deleted_flags ~= omi_lseg_millennium_level2_mitch_v11_9.prefs.show_order_deleted_flags then
    show.order_deleted_flags = omi_lseg_millennium_level2_mitch_v11_9.prefs.show_order_deleted_flags
    changed = true
  end
  if show.order_modified_flags ~= omi_lseg_millennium_level2_mitch_v11_9.prefs.show_order_modified_flags then
    show.order_modified_flags = omi_lseg_millennium_level2_mitch_v11_9.prefs.show_order_modified_flags
    changed = true
  end
  if show.packet ~= omi_lseg_millennium_level2_mitch_v11_9.prefs.show_packet then
    show.packet = omi_lseg_millennium_level2_mitch_v11_9.prefs.show_packet
    changed = true
  end
  if show.pt_mod_flags ~= omi_lseg_millennium_level2_mitch_v11_9.prefs.show_pt_mod_flags then
    show.pt_mod_flags = omi_lseg_millennium_level2_mitch_v11_9.prefs.show_pt_mod_flags
    changed = true
  end
  if show.symbol_status_flags ~= omi_lseg_millennium_level2_mitch_v11_9.prefs.show_symbol_status_flags then
    show.symbol_status_flags = omi_lseg_millennium_level2_mitch_v11_9.prefs.show_symbol_status_flags
    changed = true
  end
  if show.unit_header ~= omi_lseg_millennium_level2_mitch_v11_9.prefs.show_unit_header then
    show.unit_header = omi_lseg_millennium_level2_mitch_v11_9.prefs.show_unit_header
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Lseg Millennium Level2 Mitch 11.9 Fields
-----------------------------------------------------------------------

-- Attribution
lseg_millennium_level2_mitch_v11_9.attribution = {}

-- Size: Attribution
lseg_millennium_level2_mitch_v11_9.attribution.size = 11

-- Display: Attribution
lseg_millennium_level2_mitch_v11_9.attribution.display = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
lseg_millennium_level2_mitch_v11_9.attribution.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.attribution.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.attribution.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.attribution, range, value, display)

  return offset + length, value
end

-- Auction Type
lseg_millennium_level2_mitch_v11_9.auction_type = {}

-- Size: Auction Type
lseg_millennium_level2_mitch_v11_9.auction_type.size = 1

-- Display: Auction Type
lseg_millennium_level2_mitch_v11_9.auction_type.display = function(value)
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "A" then
    return "Auction Type: Aesp (A)"
  end
  if value == "B" then
    return "Auction Type: Edsp (B)"
  end
  if value == "E" then
    return "Auction Type: Resume Auction (E)"
  end
  if value == "F" then
    return "Auction Type: Periodic Auction (F)"
  end
  if value == "G" then
    return "Auction Type: Scheduled Level 1 Only Auction (G)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
lseg_millennium_level2_mitch_v11_9.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Book Type
lseg_millennium_level2_mitch_v11_9.book_type = {}

-- Size: Book Type
lseg_millennium_level2_mitch_v11_9.book_type.size = 1

-- Display: Book Type
lseg_millennium_level2_mitch_v11_9.book_type.display = function(value)
  if value == 1 then
    return "Book Type: On Book (1)"
  end
  if value == 2 then
    return "Book Type: Off Book (2)"
  end
  if value == 3 then
    return "Book Type: Private Rfq (3)"
  end

  return "Book Type: Unknown("..value..")"
end

-- Dissect: Book Type
lseg_millennium_level2_mitch_v11_9.book_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.book_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.book_type, range, value, display)

  return offset + length, value
end

-- Buy Limit Price
lseg_millennium_level2_mitch_v11_9.buy_limit_price = {}

-- Size: Buy Limit Price
lseg_millennium_level2_mitch_v11_9.buy_limit_price.size = 8

-- Display: Buy Limit Price
lseg_millennium_level2_mitch_v11_9.buy_limit_price.display = function(value)
  return "Buy Limit Price: "..value
end

-- Dissect: Buy Limit Price
lseg_millennium_level2_mitch_v11_9.buy_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.buy_limit_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = lseg_millennium_level2_mitch_v11_9.buy_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.buy_limit_price, range, value, display)

  return offset + length, value
end

-- Buy Limit Size
lseg_millennium_level2_mitch_v11_9.buy_limit_size = {}

-- Size: Buy Limit Size
lseg_millennium_level2_mitch_v11_9.buy_limit_size.size = 4

-- Display: Buy Limit Size
lseg_millennium_level2_mitch_v11_9.buy_limit_size.display = function(value)
  return "Buy Limit Size: "..value
end

-- Dissect: Buy Limit Size
lseg_millennium_level2_mitch_v11_9.buy_limit_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.buy_limit_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.buy_limit_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.buy_limit_size, range, value, display)

  return offset + length, value
end

-- Cross Type
lseg_millennium_level2_mitch_v11_9.cross_type = {}

-- Size: Cross Type
lseg_millennium_level2_mitch_v11_9.cross_type.size = 1

-- Display: Cross Type
lseg_millennium_level2_mitch_v11_9.cross_type.display = function(value)
  if value == Value then
    return "Cross Type: Meaning (Value)"
  end
  if value == 5 then
    return "Cross Type: Internal Cross (5)"
  end
  if value == 6 then
    return "Cross Type: Internal Btf (6)"
  end
  if value == 7 then
    return "Cross Type: Committed Cross (7)"
  end
  if value == 8 then
    return "Cross Type: Committed Btf (8)"
  end

  return "Cross Type: Unknown("..value..")"
end

-- Dissect: Cross Type
lseg_millennium_level2_mitch_v11_9.cross_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.cross_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.cross_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Currency
lseg_millennium_level2_mitch_v11_9.currency = {}

-- Size: Currency
lseg_millennium_level2_mitch_v11_9.currency.size = 3

-- Display: Currency
lseg_millennium_level2_mitch_v11_9.currency.display = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
lseg_millennium_level2_mitch_v11_9.currency.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.currency.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.currency, range, value, display)

  return offset + length, value
end

-- Display Quantity
lseg_millennium_level2_mitch_v11_9.display_quantity = {}

-- Size: Display Quantity
lseg_millennium_level2_mitch_v11_9.display_quantity.size = 4

-- Display: Display Quantity
lseg_millennium_level2_mitch_v11_9.display_quantity.display = function(value)
  return "Display Quantity: "..value
end

-- Dissect: Display Quantity
lseg_millennium_level2_mitch_v11_9.display_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.display_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.display_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.display_quantity, range, value, display)

  return offset + length, value
end

-- Event Code
lseg_millennium_level2_mitch_v11_9.event_code = {}

-- Size: Event Code
lseg_millennium_level2_mitch_v11_9.event_code.size = 1

-- Display: Event Code
lseg_millennium_level2_mitch_v11_9.event_code.display = function(value)
  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
lseg_millennium_level2_mitch_v11_9.event_code.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.event_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.event_code, range, value, display)

  return offset + length, value
end

-- Executed Quantity
lseg_millennium_level2_mitch_v11_9.executed_quantity = {}

-- Size: Executed Quantity
lseg_millennium_level2_mitch_v11_9.executed_quantity.size = 4

-- Display: Executed Quantity
lseg_millennium_level2_mitch_v11_9.executed_quantity.display = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
lseg_millennium_level2_mitch_v11_9.executed_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.executed_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.executed_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Instrument Id
lseg_millennium_level2_mitch_v11_9.instrument_id = {}

-- Size: Instrument Id
lseg_millennium_level2_mitch_v11_9.instrument_id.size = 4

-- Display: Instrument Id
lseg_millennium_level2_mitch_v11_9.instrument_id.display = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
lseg_millennium_level2_mitch_v11_9.instrument_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.instrument_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.instrument_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Isin
lseg_millennium_level2_mitch_v11_9.isin = {}

-- Size: Isin
lseg_millennium_level2_mitch_v11_9.isin.size = 12

-- Display: Isin
lseg_millennium_level2_mitch_v11_9.isin.display = function(value)
  return "Isin: "..value
end

-- Dissect: Isin
lseg_millennium_level2_mitch_v11_9.isin.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.isin.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.isin, range, value, display)

  return offset + length, value
end

-- Length
lseg_millennium_level2_mitch_v11_9.length = {}

-- Size: Length
lseg_millennium_level2_mitch_v11_9.length.size = 2

-- Display: Length
lseg_millennium_level2_mitch_v11_9.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
lseg_millennium_level2_mitch_v11_9.length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.length, range, value, display)

  return offset + length, value
end

-- Market Data Group
lseg_millennium_level2_mitch_v11_9.market_data_group = {}

-- Size: Market Data Group
lseg_millennium_level2_mitch_v11_9.market_data_group.size = 1

-- Display: Market Data Group
lseg_millennium_level2_mitch_v11_9.market_data_group.display = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
lseg_millennium_level2_mitch_v11_9.market_data_group.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.market_data_group.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.market_data_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Message Count
lseg_millennium_level2_mitch_v11_9.message_count = {}

-- Size: Message Count
lseg_millennium_level2_mitch_v11_9.message_count.size = 1

-- Display: Message Count
lseg_millennium_level2_mitch_v11_9.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
lseg_millennium_level2_mitch_v11_9.message_count.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Length
lseg_millennium_level2_mitch_v11_9.message_length = {}

-- Size: Message Length
lseg_millennium_level2_mitch_v11_9.message_length.size = 1

-- Display: Message Length
lseg_millennium_level2_mitch_v11_9.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
lseg_millennium_level2_mitch_v11_9.message_length.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
lseg_millennium_level2_mitch_v11_9.message_type = {}

-- Size: Message Type
lseg_millennium_level2_mitch_v11_9.message_type.size = 1

-- Display: Message Type
lseg_millennium_level2_mitch_v11_9.message_type.display = function(value)
  if value == 0x54 then
    return "Message Type: Time Message (0x54)"
  end
  if value == 0x53 then
    return "Message Type: System Event Message (0x53)"
  end
  if value == 0x52 then
    return "Message Type: Symbol Directory Message (0x52)"
  end
  if value == 0x48 then
    return "Message Type: Symbol Status Message (0x48)"
  end
  if value == 0x41 then
    return "Message Type: Add Order Message (0x41)"
  end
  if value == 0x46 then
    return "Message Type: Add Attributed Order Message (0x46)"
  end
  if value == 0x44 then
    return "Message Type: Order Deleted Message (0x44)"
  end
  if value == 0x55 then
    return "Message Type: Order Modified Message (0x55)"
  end
  if value == 0x79 then
    return "Message Type: Order Book Clear Message (0x79)"
  end
  if value == 0x45 then
    return "Message Type: Order Executed Message (0x45)"
  end
  if value == 0x43 then
    return "Message Type: Order Executed With Price Size Message (0x43)"
  end
  if value == 0x50 then
    return "Message Type: Trade Message (0x50)"
  end
  if value == 0x51 then
    return "Message Type: Auction Trade Message (0x51)"
  end
  if value == 0x49 then
    return "Message Type: Auction Info Message (0x49)"
  end
  if value == 0x77 then
    return "Message Type: Statistics Message (0x77)"
  end
  if value == 0x71 then
    return "Message Type: Top Of Book Message (0x71)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
lseg_millennium_level2_mitch_v11_9.message_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = lseg_millennium_level2_mitch_v11_9.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanosecond
lseg_millennium_level2_mitch_v11_9.nanosecond = {}

-- Size: Nanosecond
lseg_millennium_level2_mitch_v11_9.nanosecond.size = 4

-- Display: Nanosecond
lseg_millennium_level2_mitch_v11_9.nanosecond.display = function(value)
  return "Nanosecond: "..value
end

-- Dissect: Nanosecond
lseg_millennium_level2_mitch_v11_9.nanosecond.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.nanosecond.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.nanosecond.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.nanosecond, range, value, display)

  return offset + length, value
end

-- New End Time
lseg_millennium_level2_mitch_v11_9.new_end_time = {}

-- Size: New End Time
lseg_millennium_level2_mitch_v11_9.new_end_time.size = 8

-- Display: New End Time
lseg_millennium_level2_mitch_v11_9.new_end_time.display = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
lseg_millennium_level2_mitch_v11_9.new_end_time.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.new_end_time.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.new_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- New Price
lseg_millennium_level2_mitch_v11_9.new_price = {}

-- Size: New Price
lseg_millennium_level2_mitch_v11_9.new_price.size = 8

-- Display: New Price
lseg_millennium_level2_mitch_v11_9.new_price.display = function(value)
  return "New Price: "..value
end

-- Dissect: New Price
lseg_millennium_level2_mitch_v11_9.new_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.new_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = lseg_millennium_level2_mitch_v11_9.new_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.new_price, range, value, display)

  return offset + length, value
end

-- New Quantity
lseg_millennium_level2_mitch_v11_9.new_quantity = {}

-- Size: New Quantity
lseg_millennium_level2_mitch_v11_9.new_quantity.size = 4

-- Display: New Quantity
lseg_millennium_level2_mitch_v11_9.new_quantity.display = function(value)
  return "New Quantity: "..value
end

-- Dissect: New Quantity
lseg_millennium_level2_mitch_v11_9.new_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.new_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.new_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.new_quantity, range, value, display)

  return offset + length, value
end

-- Open Close Price Indicator
lseg_millennium_level2_mitch_v11_9.open_close_price_indicator = {}

-- Size: Open Close Price Indicator
lseg_millennium_level2_mitch_v11_9.open_close_price_indicator.size = 1

-- Display: Open Close Price Indicator
lseg_millennium_level2_mitch_v11_9.open_close_price_indicator.display = function(value)
  if value == "Value" then
    return "Open Close Price Indicator: Meaning (Value)"
  end
  if value == "A" then
    return "Open Close Price Indicator: Ut (A)"
  end
  if value == "B" then
    return "Open Close Price Indicator: At (B)"
  end
  if value == "C" then
    return "Open Close Price Indicator: Mid Of Bbo (C)"
  end
  if value == "D" then
    return "Open Close Price Indicator: Last At (D)"
  end
  if value == "E" then
    return "Open Close Price Indicator: Last Ut (E)"
  end
  if value == "F" then
    return "Open Close Price Indicator: Manual (F)"
  end
  if value == "I" then
    return "Open Close Price Indicator: Derived From Previous Close (I)"
  end

  return "Open Close Price Indicator: Unknown("..value..")"
end

-- Dissect: Open Close Price Indicator
lseg_millennium_level2_mitch_v11_9.open_close_price_indicator.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.open_close_price_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.open_close_price_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.open_close_price_indicator, range, value, display)

  return offset + length, value
end

-- Order Id
lseg_millennium_level2_mitch_v11_9.order_id = {}

-- Size: Order Id
lseg_millennium_level2_mitch_v11_9.order_id.size = 8

-- Display: Order Id
lseg_millennium_level2_mitch_v11_9.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
lseg_millennium_level2_mitch_v11_9.order_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_millennium_level2_mitch_v11_9.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.order_id, range, value, display)

  return offset + length, value
end

-- Paired Quantity
lseg_millennium_level2_mitch_v11_9.paired_quantity = {}

-- Size: Paired Quantity
lseg_millennium_level2_mitch_v11_9.paired_quantity.size = 4

-- Display: Paired Quantity
lseg_millennium_level2_mitch_v11_9.paired_quantity.display = function(value)
  return "Paired Quantity: "..value
end

-- Dissect: Paired Quantity
lseg_millennium_level2_mitch_v11_9.paired_quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.paired_quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.paired_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.paired_quantity, range, value, display)

  return offset + length, value
end

-- Previous Close Price
lseg_millennium_level2_mitch_v11_9.previous_close_price = {}

-- Size: Previous Close Price
lseg_millennium_level2_mitch_v11_9.previous_close_price.size = 8

-- Display: Previous Close Price
lseg_millennium_level2_mitch_v11_9.previous_close_price.display = function(value)
  return "Previous Close Price: "..value
end

-- Dissect: Previous Close Price
lseg_millennium_level2_mitch_v11_9.previous_close_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.previous_close_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = lseg_millennium_level2_mitch_v11_9.previous_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.previous_close_price, range, value, display)

  return offset + length, value
end

-- Price
lseg_millennium_level2_mitch_v11_9.price = {}

-- Size: Price
lseg_millennium_level2_mitch_v11_9.price.size = 8

-- Display: Price
lseg_millennium_level2_mitch_v11_9.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
lseg_millennium_level2_mitch_v11_9.price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = lseg_millennium_level2_mitch_v11_9.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.price, range, value, display)

  return offset + length, value
end

-- Printable
lseg_millennium_level2_mitch_v11_9.printable = {}

-- Size: Printable
lseg_millennium_level2_mitch_v11_9.printable.size = 1

-- Display: Printable
lseg_millennium_level2_mitch_v11_9.printable.display = function(value)
  if value == "N" then
    return "Printable: Non Printable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
lseg_millennium_level2_mitch_v11_9.printable.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.printable.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.printable.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.printable, range, value, display)

  return offset + length, value
end

-- Quantity
lseg_millennium_level2_mitch_v11_9.quantity = {}

-- Size: Quantity
lseg_millennium_level2_mitch_v11_9.quantity.size = 4

-- Display: Quantity
lseg_millennium_level2_mitch_v11_9.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
lseg_millennium_level2_mitch_v11_9.quantity.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.quantity.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.quantity, range, value, display)

  return offset + length, value
end

-- Reason
lseg_millennium_level2_mitch_v11_9.reason = {}

-- Size: Reason
lseg_millennium_level2_mitch_v11_9.reason.size = 4

-- Display: Reason
lseg_millennium_level2_mitch_v11_9.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
lseg_millennium_level2_mitch_v11_9.reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.reason, range, value, display)

  return offset + length, value
end

-- Reserved 1
lseg_millennium_level2_mitch_v11_9.reserved_1 = {}

-- Size: Reserved 1
lseg_millennium_level2_mitch_v11_9.reserved_1.size = 1

-- Display: Reserved 1
lseg_millennium_level2_mitch_v11_9.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
lseg_millennium_level2_mitch_v11_9.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 10
lseg_millennium_level2_mitch_v11_9.reserved_10 = {}

-- Size: Reserved 10
lseg_millennium_level2_mitch_v11_9.reserved_10.size = 10

-- Display: Reserved 10
lseg_millennium_level2_mitch_v11_9.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
lseg_millennium_level2_mitch_v11_9.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.reserved_10.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Reserved 4
lseg_millennium_level2_mitch_v11_9.reserved_4 = {}

-- Size: Reserved 4
lseg_millennium_level2_mitch_v11_9.reserved_4.size = 4

-- Display: Reserved 4
lseg_millennium_level2_mitch_v11_9.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
lseg_millennium_level2_mitch_v11_9.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.reserved_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Seconds
lseg_millennium_level2_mitch_v11_9.seconds = {}

-- Size: Seconds
lseg_millennium_level2_mitch_v11_9.seconds.size = 4

-- Display: Seconds
lseg_millennium_level2_mitch_v11_9.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
lseg_millennium_level2_mitch_v11_9.seconds.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.seconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.seconds, range, value, display)

  return offset + length, value
end

-- Sedol
lseg_millennium_level2_mitch_v11_9.sedol = {}

-- Size: Sedol
lseg_millennium_level2_mitch_v11_9.sedol.size = 12

-- Display: Sedol
lseg_millennium_level2_mitch_v11_9.sedol.display = function(value)
  return "Sedol: "..value
end

-- Dissect: Sedol
lseg_millennium_level2_mitch_v11_9.sedol.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.sedol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.sedol.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.sedol, range, value, display)

  return offset + length, value
end

-- Segment
lseg_millennium_level2_mitch_v11_9.segment = {}

-- Size: Segment
lseg_millennium_level2_mitch_v11_9.segment.size = 6

-- Display: Segment
lseg_millennium_level2_mitch_v11_9.segment.display = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
lseg_millennium_level2_mitch_v11_9.segment.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.segment.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.segment.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.segment, range, value, display)

  return offset + length, value
end

-- Sell Limit Price
lseg_millennium_level2_mitch_v11_9.sell_limit_price = {}

-- Size: Sell Limit Price
lseg_millennium_level2_mitch_v11_9.sell_limit_price.size = 8

-- Display: Sell Limit Price
lseg_millennium_level2_mitch_v11_9.sell_limit_price.display = function(value)
  return "Sell Limit Price: "..value
end

-- Dissect: Sell Limit Price
lseg_millennium_level2_mitch_v11_9.sell_limit_price.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.sell_limit_price.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = lseg_millennium_level2_mitch_v11_9.sell_limit_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.sell_limit_price, range, value, display)

  return offset + length, value
end

-- Sell Limit Size
lseg_millennium_level2_mitch_v11_9.sell_limit_size = {}

-- Size: Sell Limit Size
lseg_millennium_level2_mitch_v11_9.sell_limit_size.size = 4

-- Display: Sell Limit Size
lseg_millennium_level2_mitch_v11_9.sell_limit_size.display = function(value)
  return "Sell Limit Size: "..value
end

-- Dissect: Sell Limit Size
lseg_millennium_level2_mitch_v11_9.sell_limit_size.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.sell_limit_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.sell_limit_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.sell_limit_size, range, value, display)

  return offset + length, value
end

-- Sequence Number
lseg_millennium_level2_mitch_v11_9.sequence_number = {}

-- Size: Sequence Number
lseg_millennium_level2_mitch_v11_9.sequence_number.size = 4

-- Display: Sequence Number
lseg_millennium_level2_mitch_v11_9.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
lseg_millennium_level2_mitch_v11_9.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Change Reason
lseg_millennium_level2_mitch_v11_9.session_change_reason = {}

-- Size: Session Change Reason
lseg_millennium_level2_mitch_v11_9.session_change_reason.size = 1

-- Display: Session Change Reason
lseg_millennium_level2_mitch_v11_9.session_change_reason.display = function(value)
  if value == 0 then
    return "Session Change Reason: Scheduled Transition (0)"
  end
  if value == 1 then
    return "Session Change Reason: Extended By Market Ops (1)"
  end
  if value == 2 then
    return "Session Change Reason: Shortened By Market Ops (2)"
  end
  if value == 3 then
    return "Session Change Reason: Market Order Imbalance (3)"
  end
  if value == 4 then
    return "Session Change Reason: Price Outside Range (4)"
  end
  if value == 9 then
    return "Session Change Reason: Unavailable Recovery Service Only (9)"
  end

  return "Session Change Reason: Unknown("..value..")"
end

-- Dissect: Session Change Reason
lseg_millennium_level2_mitch_v11_9.session_change_reason.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.session_change_reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.session_change_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Side
lseg_millennium_level2_mitch_v11_9.side = {}

-- Size: Side
lseg_millennium_level2_mitch_v11_9.side.size = 1

-- Display: Side
lseg_millennium_level2_mitch_v11_9.side.display = function(value)
  if value == "B" then
    return "Side: Buy Order (B)"
  end
  if value == "S" then
    return "Side: Sell Order (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
lseg_millennium_level2_mitch_v11_9.side.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.side, range, value, display)

  return offset + length, value
end

-- Statistic Type
lseg_millennium_level2_mitch_v11_9.statistic_type = {}

-- Size: Statistic Type
lseg_millennium_level2_mitch_v11_9.statistic_type.size = 1

-- Display: Statistic Type
lseg_millennium_level2_mitch_v11_9.statistic_type.display = function(value)
  if value == "O" then
    return "Statistic Type: Opening Price (O)"
  end
  if value == "C" then
    return "Statistic Type: Closing Price (C)"
  end

  return "Statistic Type: Unknown("..value..")"
end

-- Dissect: Statistic Type
lseg_millennium_level2_mitch_v11_9.statistic_type.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.statistic_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.statistic_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.statistic_type, range, value, display)

  return offset + length, value
end

-- Sub Book
lseg_millennium_level2_mitch_v11_9.sub_book = {}

-- Size: Sub Book
lseg_millennium_level2_mitch_v11_9.sub_book.size = 1

-- Display: Sub Book
lseg_millennium_level2_mitch_v11_9.sub_book.display = function(value)
  if value == 0 then
    return "Sub Book: Regular Trades (0)"
  end
  if value == 11 then
    return "Sub Book: Rfq Trades (11)"
  end

  return "Sub Book: Unknown("..value..")"
end

-- Dissect: Sub Book
lseg_millennium_level2_mitch_v11_9.sub_book.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.sub_book.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.sub_book.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.sub_book, range, value, display)

  return offset + length, value
end

-- Symbol Status
lseg_millennium_level2_mitch_v11_9.symbol_status = {}

-- Size: Symbol Status
lseg_millennium_level2_mitch_v11_9.symbol_status.size = 1

-- Display: Symbol Status
lseg_millennium_level2_mitch_v11_9.symbol_status.display = function(value)
  if value == " " then
    return "Symbol Status: Active (<whitespace>)"
  end
  if value == "S" then
    return "Symbol Status: Suspended (S)"
  end
  if value == "a" then
    return "Symbol Status: Inactive (a)"
  end
  if value == "H" then
    return "Symbol Status: Halt (H)"
  end

  return "Symbol Status: Unknown("..value..")"
end

-- Dissect: Symbol Status
lseg_millennium_level2_mitch_v11_9.symbol_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.symbol_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.symbol_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.symbol_status, range, value, display)

  return offset + length, value
end

-- Trade Match Id
lseg_millennium_level2_mitch_v11_9.trade_match_id = {}

-- Size: Trade Match Id
lseg_millennium_level2_mitch_v11_9.trade_match_id.size = 8

-- Display: Trade Match Id
lseg_millennium_level2_mitch_v11_9.trade_match_id.display = function(value)
  return "Trade Match Id: "..value
end

-- Dissect: Trade Match Id
lseg_millennium_level2_mitch_v11_9.trade_match_id.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.trade_match_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = lseg_millennium_level2_mitch_v11_9.trade_match_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.trade_match_id, range, value, display)

  return offset + length, value
end

-- Trading Status
lseg_millennium_level2_mitch_v11_9.trading_status = {}

-- Size: Trading Status
lseg_millennium_level2_mitch_v11_9.trading_status.size = 1

-- Display: Trading Status
lseg_millennium_level2_mitch_v11_9.trading_status.display = function(value)
  if value == " " then
    return "Trading Status: Active (<whitespace>)"
  end
  if value == "Value" then
    return "Trading Status: Meaning (Value)"
  end
  if value == "H" then
    return "Trading Status: Halt (H)"
  end
  if value == "T" then
    return "Trading Status: Regular Trading Start Of Trade Reporting (T)"
  end
  if value == "a" then
    return "Trading Status: Opening First Auction Call (a)"
  end
  if value == "b" then
    return "Trading Status: Post Close (b)"
  end
  if value == "c" then
    return "Trading Status: Market Close System Shutdown (c)"
  end
  if value == "d" then
    return "Trading Status: Closing Auction Call (d)"
  end
  if value == "e" then
    return "Trading Status: Aesp Auction Call (e)"
  end
  if value == "f" then
    return "Trading Status: Resume Auction Call (f)"
  end
  if value == "l" then
    return "Trading Status: Pause (l)"
  end
  if value == "m" then
    return "Trading Status: Pre Mandatory (m)"
  end
  if value == "n" then
    return "Trading Status: Mandatory (n)"
  end
  if value == "o" then
    return "Trading Status: Post Mandatory (o)"
  end
  if value == "q" then
    return "Trading Status: Edsp Auction Call (q)"
  end
  if value == "r" then
    return "Trading Status: Periodic Auction Call (r)"
  end
  if value == "t" then
    return "Trading Status: End Trade Reporting (t)"
  end
  if value == "w" then
    return "Trading Status: No Active Session (w)"
  end
  if value == "x" then
    return "Trading Status: End Of Post Close (x)"
  end
  if value == "u" then
    return "Trading Status: Closing Price Crossing (u)"
  end
  if value == "G" then
    return "Trading Status: Scheduled Level 1 Only Auction (G)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
lseg_millennium_level2_mitch_v11_9.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Underlying
lseg_millennium_level2_mitch_v11_9.underlying = {}

-- Size: Underlying
lseg_millennium_level2_mitch_v11_9.underlying.size = 6

-- Display: Underlying
lseg_millennium_level2_mitch_v11_9.underlying.display = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
lseg_millennium_level2_mitch_v11_9.underlying.dissect = function(buffer, offset, packet, parent)
  local length = lseg_millennium_level2_mitch_v11_9.underlying.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = lseg_millennium_level2_mitch_v11_9.underlying.display(value, buffer, offset, packet, parent)

  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.underlying, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Lseg Millennium Level2 Mitch 11.9
-----------------------------------------------------------------------

-- Top Of Book Message
lseg_millennium_level2_mitch_v11_9.top_of_book_message = {}

-- Size: Top Of Book Message
lseg_millennium_level2_mitch_v11_9.top_of_book_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2_mitch_v11_9.buy_limit_price.size + 
  lseg_millennium_level2_mitch_v11_9.buy_limit_size.size + 
  lseg_millennium_level2_mitch_v11_9.sell_limit_price.size + 
  lseg_millennium_level2_mitch_v11_9.sell_limit_size.size

-- Display: Top Of Book Message
lseg_millennium_level2_mitch_v11_9.top_of_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Top Of Book Message
lseg_millennium_level2_mitch_v11_9.top_of_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Buy Limit Price: Price
  index, buy_limit_price = lseg_millennium_level2_mitch_v11_9.buy_limit_price.dissect(buffer, index, packet, parent)

  -- Buy Limit Size: UInt32
  index, buy_limit_size = lseg_millennium_level2_mitch_v11_9.buy_limit_size.dissect(buffer, index, packet, parent)

  -- Sell Limit Price: Price
  index, sell_limit_price = lseg_millennium_level2_mitch_v11_9.sell_limit_price.dissect(buffer, index, packet, parent)

  -- Sell Limit Size: UInt32
  index, sell_limit_size = lseg_millennium_level2_mitch_v11_9.sell_limit_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book Message
lseg_millennium_level2_mitch_v11_9.top_of_book_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.top_of_book_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.top_of_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.top_of_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.top_of_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Statistics Message
lseg_millennium_level2_mitch_v11_9.statistics_message = {}

-- Size: Statistics Message
lseg_millennium_level2_mitch_v11_9.statistics_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.statistic_type.size + 
  lseg_millennium_level2_mitch_v11_9.price.size + 
  lseg_millennium_level2_mitch_v11_9.open_close_price_indicator.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size

-- Display: Statistics Message
lseg_millennium_level2_mitch_v11_9.statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Statistics Message
lseg_millennium_level2_mitch_v11_9.statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Statistic Type: Alpha
  index, statistic_type = lseg_millennium_level2_mitch_v11_9.statistic_type.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_millennium_level2_mitch_v11_9.price.dissect(buffer, index, packet, parent)

  -- Open Close Price Indicator: Alpha
  index, open_close_price_indicator = lseg_millennium_level2_mitch_v11_9.open_close_price_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
lseg_millennium_level2_mitch_v11_9.statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.statistics_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Info Message
lseg_millennium_level2_mitch_v11_9.auction_info_message = {}

-- Size: Auction Info Message
lseg_millennium_level2_mitch_v11_9.auction_info_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.paired_quantity.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_4.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.price.size + 
  lseg_millennium_level2_mitch_v11_9.auction_type.size

-- Display: Auction Info Message
lseg_millennium_level2_mitch_v11_9.auction_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Info Message
lseg_millennium_level2_mitch_v11_9.auction_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Paired Quantity: UInt32
  index, paired_quantity = lseg_millennium_level2_mitch_v11_9.paired_quantity.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = lseg_millennium_level2_mitch_v11_9.reserved_4.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_millennium_level2_mitch_v11_9.price.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = lseg_millennium_level2_mitch_v11_9.auction_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Info Message
lseg_millennium_level2_mitch_v11_9.auction_info_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.auction_info_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.auction_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.auction_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.auction_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Pt Mod Flags
lseg_millennium_level2_mitch_v11_9.pt_mod_flags = {}

-- Size: Pt Mod Flags
lseg_millennium_level2_mitch_v11_9.pt_mod_flags.size = 1

-- Display: Pt Mod Flags
lseg_millennium_level2_mitch_v11_9.pt_mod_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Canc flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Canc"
  end
  -- Is Amnd flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Amnd"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Pt Mod Flags
lseg_millennium_level2_mitch_v11_9.pt_mod_flags.bits = function(range, value, packet, parent)

  -- Canc: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.canc, range, value)

  -- Amnd: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.amnd, range, value)

  -- Unused 6: 6 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_6, range, value)
end

-- Dissect: Pt Mod Flags
lseg_millennium_level2_mitch_v11_9.pt_mod_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_millennium_level2_mitch_v11_9.pt_mod_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.pt_mod_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.pt_mod_flags, range, display)

  if show.pt_mod_flags then
    lseg_millennium_level2_mitch_v11_9.pt_mod_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Auction Trade Message
lseg_millennium_level2_mitch_v11_9.auction_trade_message = {}

-- Size: Auction Trade Message
lseg_millennium_level2_mitch_v11_9.auction_trade_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.quantity.size + 
  lseg_millennium_level2_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.price.size + 
  lseg_millennium_level2_mitch_v11_9.trade_match_id.size + 
  lseg_millennium_level2_mitch_v11_9.auction_type.size + 
  lseg_millennium_level2_mitch_v11_9.pt_mod_flags.size

-- Display: Auction Trade Message
lseg_millennium_level2_mitch_v11_9.auction_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Trade Message
lseg_millennium_level2_mitch_v11_9.auction_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = lseg_millennium_level2_mitch_v11_9.quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_millennium_level2_mitch_v11_9.price.dissect(buffer, index, packet, parent)

  -- Trade Match Id: UInt64
  index, trade_match_id = lseg_millennium_level2_mitch_v11_9.trade_match_id.dissect(buffer, index, packet, parent)

  -- Auction Type: Byte
  index, auction_type = lseg_millennium_level2_mitch_v11_9.auction_type.dissect(buffer, index, packet, parent)

  -- Pt Mod Flags: Struct of 3 fields
  index, pt_mod_flags = lseg_millennium_level2_mitch_v11_9.pt_mod_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
lseg_millennium_level2_mitch_v11_9.auction_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.auction_trade_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.auction_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.auction_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.auction_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message
lseg_millennium_level2_mitch_v11_9.trade_message = {}

-- Size: Trade Message
lseg_millennium_level2_mitch_v11_9.trade_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.executed_quantity.size + 
  lseg_millennium_level2_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.price.size + 
  lseg_millennium_level2_mitch_v11_9.trade_match_id.size + 
  lseg_millennium_level2_mitch_v11_9.cross_type.size + 
  lseg_millennium_level2_mitch_v11_9.sub_book.size + 
  lseg_millennium_level2_mitch_v11_9.pt_mod_flags.size

-- Display: Trade Message
lseg_millennium_level2_mitch_v11_9.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
lseg_millennium_level2_mitch_v11_9.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = lseg_millennium_level2_mitch_v11_9.executed_quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_millennium_level2_mitch_v11_9.price.dissect(buffer, index, packet, parent)

  -- Trade Match Id: UInt64
  index, trade_match_id = lseg_millennium_level2_mitch_v11_9.trade_match_id.dissect(buffer, index, packet, parent)

  -- Cross Type: UInt8
  index, cross_type = lseg_millennium_level2_mitch_v11_9.cross_type.dissect(buffer, index, packet, parent)

  -- Sub Book: UInt8
  index, sub_book = lseg_millennium_level2_mitch_v11_9.sub_book.dissect(buffer, index, packet, parent)

  -- Pt Mod Flags: Struct of 3 fields
  index, pt_mod_flags = lseg_millennium_level2_mitch_v11_9.pt_mod_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
lseg_millennium_level2_mitch_v11_9.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.trade_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed With Price Size Message
lseg_millennium_level2_mitch_v11_9.order_executed_with_price_size_message = {}

-- Size: Order Executed With Price Size Message
lseg_millennium_level2_mitch_v11_9.order_executed_with_price_size_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.order_id.size + 
  lseg_millennium_level2_mitch_v11_9.executed_quantity.size + 
  lseg_millennium_level2_mitch_v11_9.display_quantity.size + 
  lseg_millennium_level2_mitch_v11_9.trade_match_id.size + 
  lseg_millennium_level2_mitch_v11_9.printable.size + 
  lseg_millennium_level2_mitch_v11_9.price.size

-- Display: Order Executed With Price Size Message
lseg_millennium_level2_mitch_v11_9.order_executed_with_price_size_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed With Price Size Message
lseg_millennium_level2_mitch_v11_9.order_executed_with_price_size_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = lseg_millennium_level2_mitch_v11_9.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = lseg_millennium_level2_mitch_v11_9.executed_quantity.dissect(buffer, index, packet, parent)

  -- Display Quantity: UInt32
  index, display_quantity = lseg_millennium_level2_mitch_v11_9.display_quantity.dissect(buffer, index, packet, parent)

  -- Trade Match Id: UInt64
  index, trade_match_id = lseg_millennium_level2_mitch_v11_9.trade_match_id.dissect(buffer, index, packet, parent)

  -- Printable: Byte
  index, printable = lseg_millennium_level2_mitch_v11_9.printable.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_millennium_level2_mitch_v11_9.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Size Message
lseg_millennium_level2_mitch_v11_9.order_executed_with_price_size_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.order_executed_with_price_size_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.order_executed_with_price_size_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.order_executed_with_price_size_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.order_executed_with_price_size_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
lseg_millennium_level2_mitch_v11_9.order_executed_message = {}

-- Size: Order Executed Message
lseg_millennium_level2_mitch_v11_9.order_executed_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.order_id.size + 
  lseg_millennium_level2_mitch_v11_9.executed_quantity.size + 
  lseg_millennium_level2_mitch_v11_9.trade_match_id.size

-- Display: Order Executed Message
lseg_millennium_level2_mitch_v11_9.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
lseg_millennium_level2_mitch_v11_9.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = lseg_millennium_level2_mitch_v11_9.order_id.dissect(buffer, index, packet, parent)

  -- Executed Quantity: UInt32
  index, executed_quantity = lseg_millennium_level2_mitch_v11_9.executed_quantity.dissect(buffer, index, packet, parent)

  -- Trade Match Id: UInt64
  index, trade_match_id = lseg_millennium_level2_mitch_v11_9.trade_match_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
lseg_millennium_level2_mitch_v11_9.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.order_executed_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Book Clear Flags
lseg_millennium_level2_mitch_v11_9.order_book_clear_flags = {}

-- Size: Order Book Clear Flags
lseg_millennium_level2_mitch_v11_9.order_book_clear_flags.size = 1

-- Display: Order Book Clear Flags
lseg_millennium_level2_mitch_v11_9.order_book_clear_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Firm Quote flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Firm Quote"
  end
  -- Is Private Rfq flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Private Rfq"
  end
  -- Is Unused 1 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Unused 1"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Book Clear Flags
lseg_millennium_level2_mitch_v11_9.order_book_clear_flags.bits = function(range, value, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_5, range, value)

  -- Firm Quote: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.firm_quote, range, value)

  -- Private Rfq: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.private_rfq, range, value)

  -- Unused 1: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_1, range, value)
end

-- Dissect: Order Book Clear Flags
lseg_millennium_level2_mitch_v11_9.order_book_clear_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_millennium_level2_mitch_v11_9.order_book_clear_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.order_book_clear_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.order_book_clear_flags, range, display)

  if show.order_book_clear_flags then
    lseg_millennium_level2_mitch_v11_9.order_book_clear_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Book Clear Message
lseg_millennium_level2_mitch_v11_9.order_book_clear_message = {}

-- Size: Order Book Clear Message
lseg_millennium_level2_mitch_v11_9.order_book_clear_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.order_book_clear_flags.size

-- Display: Order Book Clear Message
lseg_millennium_level2_mitch_v11_9.order_book_clear_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Book Clear Message
lseg_millennium_level2_mitch_v11_9.order_book_clear_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Order Book Clear Flags: Struct of 4 fields
  index, order_book_clear_flags = lseg_millennium_level2_mitch_v11_9.order_book_clear_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
lseg_millennium_level2_mitch_v11_9.order_book_clear_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.order_book_clear_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.order_book_clear_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.order_book_clear_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.order_book_clear_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modified Flags
lseg_millennium_level2_mitch_v11_9.order_modified_flags = {}

-- Size: Order Modified Flags
lseg_millennium_level2_mitch_v11_9.order_modified_flags.size = 1

-- Display: Order Modified Flags
lseg_millennium_level2_mitch_v11_9.order_modified_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Priority Flag flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Priority Flag"
  end
  -- Is Firm Quote flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Firm Quote"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Modified Flags
lseg_millennium_level2_mitch_v11_9.order_modified_flags.bits = function(range, value, packet, parent)

  -- Priority Flag: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.priority_flag, range, value)

  -- Unused 4: 4 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_4, range, value)

  -- Firm Quote: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.firm_quote, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_2, range, value)
end

-- Dissect: Order Modified Flags
lseg_millennium_level2_mitch_v11_9.order_modified_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_millennium_level2_mitch_v11_9.order_modified_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.order_modified_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.order_modified_flags, range, display)

  if show.order_modified_flags then
    lseg_millennium_level2_mitch_v11_9.order_modified_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Modified Message
lseg_millennium_level2_mitch_v11_9.order_modified_message = {}

-- Size: Order Modified Message
lseg_millennium_level2_mitch_v11_9.order_modified_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.order_id.size + 
  lseg_millennium_level2_mitch_v11_9.new_quantity.size + 
  lseg_millennium_level2_mitch_v11_9.new_price.size + 
  lseg_millennium_level2_mitch_v11_9.order_modified_flags.size

-- Display: Order Modified Message
lseg_millennium_level2_mitch_v11_9.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
lseg_millennium_level2_mitch_v11_9.order_modified_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = lseg_millennium_level2_mitch_v11_9.order_id.dissect(buffer, index, packet, parent)

  -- New Quantity: UInt32
  index, new_quantity = lseg_millennium_level2_mitch_v11_9.new_quantity.dissect(buffer, index, packet, parent)

  -- New Price: Price
  index, new_price = lseg_millennium_level2_mitch_v11_9.new_price.dissect(buffer, index, packet, parent)

  -- Order Modified Flags: Struct of 4 fields
  index, order_modified_flags = lseg_millennium_level2_mitch_v11_9.order_modified_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Message
lseg_millennium_level2_mitch_v11_9.order_modified_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.order_modified_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.order_modified_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.order_modified_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.order_modified_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Deleted Flags
lseg_millennium_level2_mitch_v11_9.order_deleted_flags = {}

-- Size: Order Deleted Flags
lseg_millennium_level2_mitch_v11_9.order_deleted_flags.size = 1

-- Display: Order Deleted Flags
lseg_millennium_level2_mitch_v11_9.order_deleted_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Firm Quote flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Firm Quote"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Deleted Flags
lseg_millennium_level2_mitch_v11_9.order_deleted_flags.bits = function(range, value, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_5, range, value)

  -- Firm Quote: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.firm_quote, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_2, range, value)
end

-- Dissect: Order Deleted Flags
lseg_millennium_level2_mitch_v11_9.order_deleted_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_millennium_level2_mitch_v11_9.order_deleted_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.order_deleted_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.order_deleted_flags, range, display)

  if show.order_deleted_flags then
    lseg_millennium_level2_mitch_v11_9.order_deleted_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Deleted Message
lseg_millennium_level2_mitch_v11_9.order_deleted_message = {}

-- Size: Order Deleted Message
lseg_millennium_level2_mitch_v11_9.order_deleted_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.order_id.size + 
  lseg_millennium_level2_mitch_v11_9.order_deleted_flags.size + 
  lseg_millennium_level2_mitch_v11_9.instrument_id.size

-- Display: Order Deleted Message
lseg_millennium_level2_mitch_v11_9.order_deleted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Deleted Message
lseg_millennium_level2_mitch_v11_9.order_deleted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = lseg_millennium_level2_mitch_v11_9.order_id.dissect(buffer, index, packet, parent)

  -- Order Deleted Flags: Struct of 3 fields
  index, order_deleted_flags = lseg_millennium_level2_mitch_v11_9.order_deleted_flags.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
lseg_millennium_level2_mitch_v11_9.order_deleted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.order_deleted_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.order_deleted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.order_deleted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.order_deleted_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Attributed Order Flags
lseg_millennium_level2_mitch_v11_9.add_attributed_order_flags = {}

-- Size: Add Attributed Order Flags
lseg_millennium_level2_mitch_v11_9.add_attributed_order_flags.size = 1

-- Display: Add Attributed Order Flags
lseg_millennium_level2_mitch_v11_9.add_attributed_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Named Market Order flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Named Market Order"
  end
  -- Is Firm Quote flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Firm Quote"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Attributed Order Flags
lseg_millennium_level2_mitch_v11_9.add_attributed_order_flags.bits = function(range, value, packet, parent)

  -- Unused 4: 4 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_4, range, value)

  -- Named Market Order: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.named_market_order, range, value)

  -- Firm Quote: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.firm_quote, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_2, range, value)
end

-- Dissect: Add Attributed Order Flags
lseg_millennium_level2_mitch_v11_9.add_attributed_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_millennium_level2_mitch_v11_9.add_attributed_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.add_attributed_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.add_attributed_order_flags, range, display)

  if show.add_attributed_order_flags then
    lseg_millennium_level2_mitch_v11_9.add_attributed_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Attributed Order Message
lseg_millennium_level2_mitch_v11_9.add_attributed_order_message = {}

-- Size: Add Attributed Order Message
lseg_millennium_level2_mitch_v11_9.add_attributed_order_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.order_id.size + 
  lseg_millennium_level2_mitch_v11_9.side.size + 
  lseg_millennium_level2_mitch_v11_9.quantity.size + 
  lseg_millennium_level2_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.price.size + 
  lseg_millennium_level2_mitch_v11_9.attribution.size + 
  lseg_millennium_level2_mitch_v11_9.add_attributed_order_flags.size

-- Display: Add Attributed Order Message
lseg_millennium_level2_mitch_v11_9.add_attributed_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Attributed Order Message
lseg_millennium_level2_mitch_v11_9.add_attributed_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = lseg_millennium_level2_mitch_v11_9.order_id.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = lseg_millennium_level2_mitch_v11_9.side.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = lseg_millennium_level2_mitch_v11_9.quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_millennium_level2_mitch_v11_9.price.dissect(buffer, index, packet, parent)

  -- Attribution: Alpha
  index, attribution = lseg_millennium_level2_mitch_v11_9.attribution.dissect(buffer, index, packet, parent)

  -- Add Attributed Order Flags: Struct of 4 fields
  index, add_attributed_order_flags = lseg_millennium_level2_mitch_v11_9.add_attributed_order_flags.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Attributed Order Message
lseg_millennium_level2_mitch_v11_9.add_attributed_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.add_attributed_order_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.add_attributed_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.add_attributed_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.add_attributed_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Order Flags
lseg_millennium_level2_mitch_v11_9.add_order_flags = {}

-- Size: Add Order Flags
lseg_millennium_level2_mitch_v11_9.add_order_flags.size = 1

-- Display: Add Order Flags
lseg_millennium_level2_mitch_v11_9.add_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Market Order flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Market Order"
  end
  -- Is Unused 1 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Unused 1"
  end
  -- Is Private Rfq flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Private Rfq"
  end
  -- Is Unused 1 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Unused 1"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Add Order Flags
lseg_millennium_level2_mitch_v11_9.add_order_flags.bits = function(range, value, packet, parent)

  -- Unused 4: 4 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_4, range, value)

  -- Market Order: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.market_order, range, value)

  -- Unused 1: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_1, range, value)

  -- Private Rfq: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.private_rfq, range, value)

  -- Unused 1: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_1, range, value)
end

-- Dissect: Add Order Flags
lseg_millennium_level2_mitch_v11_9.add_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_millennium_level2_mitch_v11_9.add_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.add_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.add_order_flags, range, display)

  if show.add_order_flags then
    lseg_millennium_level2_mitch_v11_9.add_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Add Order Message
lseg_millennium_level2_mitch_v11_9.add_order_message = {}

-- Size: Add Order Message
lseg_millennium_level2_mitch_v11_9.add_order_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.order_id.size + 
  lseg_millennium_level2_mitch_v11_9.side.size + 
  lseg_millennium_level2_mitch_v11_9.quantity.size + 
  lseg_millennium_level2_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.price.size + 
  lseg_millennium_level2_mitch_v11_9.add_order_flags.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_10.size

-- Display: Add Order Message
lseg_millennium_level2_mitch_v11_9.add_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Order Message
lseg_millennium_level2_mitch_v11_9.add_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Order Id: UInt64
  index, order_id = lseg_millennium_level2_mitch_v11_9.order_id.dissect(buffer, index, packet, parent)

  -- Side: Byte
  index, side = lseg_millennium_level2_mitch_v11_9.side.dissect(buffer, index, packet, parent)

  -- Quantity: UInt32
  index, quantity = lseg_millennium_level2_mitch_v11_9.quantity.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = lseg_millennium_level2_mitch_v11_9.price.dissect(buffer, index, packet, parent)

  -- Add Order Flags: Struct of 5 fields
  index, add_order_flags = lseg_millennium_level2_mitch_v11_9.add_order_flags.dissect(buffer, index, packet, parent)

  -- Reserved 10: Alpha
  index, reserved_10 = lseg_millennium_level2_mitch_v11_9.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
lseg_millennium_level2_mitch_v11_9.add_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.add_order_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.add_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.add_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.add_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Status Flags
lseg_millennium_level2_mitch_v11_9.symbol_status_flags = {}

-- Size: Symbol Status Flags
lseg_millennium_level2_mitch_v11_9.symbol_status_flags.size = 1

-- Display: Symbol Status Flags
lseg_millennium_level2_mitch_v11_9.symbol_status_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Firm Quote flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Firm Quote"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Symbol Status Flags
lseg_millennium_level2_mitch_v11_9.symbol_status_flags.bits = function(range, value, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_5, range, value)

  -- Firm Quote: 1 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.firm_quote, range, value)

  -- Unused 2: 2 Bit
  parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unused_2, range, value)
end

-- Dissect: Symbol Status Flags
lseg_millennium_level2_mitch_v11_9.symbol_status_flags.dissect = function(buffer, offset, packet, parent)
  local size = lseg_millennium_level2_mitch_v11_9.symbol_status_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = lseg_millennium_level2_mitch_v11_9.symbol_status_flags.display(range, value, packet, parent)
  local element = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.symbol_status_flags, range, display)

  if show.symbol_status_flags then
    lseg_millennium_level2_mitch_v11_9.symbol_status_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Symbol Status Message
lseg_millennium_level2_mitch_v11_9.symbol_status_message = {}

-- Size: Symbol Status Message
lseg_millennium_level2_mitch_v11_9.symbol_status_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.trading_status.size + 
  lseg_millennium_level2_mitch_v11_9.symbol_status_flags.size + 
  lseg_millennium_level2_mitch_v11_9.reason.size + 
  lseg_millennium_level2_mitch_v11_9.session_change_reason.size + 
  lseg_millennium_level2_mitch_v11_9.new_end_time.size + 
  lseg_millennium_level2_mitch_v11_9.book_type.size

-- Display: Symbol Status Message
lseg_millennium_level2_mitch_v11_9.symbol_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
lseg_millennium_level2_mitch_v11_9.symbol_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Trading Status: Byte
  index, trading_status = lseg_millennium_level2_mitch_v11_9.trading_status.dissect(buffer, index, packet, parent)

  -- Symbol Status Flags: Struct of 3 fields
  index, symbol_status_flags = lseg_millennium_level2_mitch_v11_9.symbol_status_flags.dissect(buffer, index, packet, parent)

  -- Reason: Alpha
  index, reason = lseg_millennium_level2_mitch_v11_9.reason.dissect(buffer, index, packet, parent)

  -- Session Change Reason: UInt8
  index, session_change_reason = lseg_millennium_level2_mitch_v11_9.session_change_reason.dissect(buffer, index, packet, parent)

  -- New End Time: Time
  index, new_end_time = lseg_millennium_level2_mitch_v11_9.new_end_time.dissect(buffer, index, packet, parent)

  -- Book Type: UInt8
  index, book_type = lseg_millennium_level2_mitch_v11_9.book_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
lseg_millennium_level2_mitch_v11_9.symbol_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.symbol_status_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.symbol_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.symbol_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.symbol_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Directory Message
lseg_millennium_level2_mitch_v11_9.symbol_directory_message = {}

-- Size: Symbol Directory Message
lseg_millennium_level2_mitch_v11_9.symbol_directory_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.instrument_id.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.symbol_status.size + 
  lseg_millennium_level2_mitch_v11_9.isin.size + 
  lseg_millennium_level2_mitch_v11_9.sedol.size + 
  lseg_millennium_level2_mitch_v11_9.segment.size + 
  lseg_millennium_level2_mitch_v11_9.underlying.size + 
  lseg_millennium_level2_mitch_v11_9.currency.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_1.size + 
  lseg_millennium_level2_mitch_v11_9.reserved_4.size + 
  lseg_millennium_level2_mitch_v11_9.previous_close_price.size

-- Display: Symbol Directory Message
lseg_millennium_level2_mitch_v11_9.symbol_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Directory Message
lseg_millennium_level2_mitch_v11_9.symbol_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Instrument Id: UInt32
  index, instrument_id = lseg_millennium_level2_mitch_v11_9.instrument_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Symbol Status: Alpha
  index, symbol_status = lseg_millennium_level2_mitch_v11_9.symbol_status.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = lseg_millennium_level2_mitch_v11_9.isin.dissect(buffer, index, packet, parent)

  -- Sedol: Alpha
  index, sedol = lseg_millennium_level2_mitch_v11_9.sedol.dissect(buffer, index, packet, parent)

  -- Segment: Alpha
  index, segment = lseg_millennium_level2_mitch_v11_9.segment.dissect(buffer, index, packet, parent)

  -- Underlying: Alpha
  index, underlying = lseg_millennium_level2_mitch_v11_9.underlying.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = lseg_millennium_level2_mitch_v11_9.currency.dissect(buffer, index, packet, parent)

  -- Reserved 1: Byte
  index, reserved_1 = lseg_millennium_level2_mitch_v11_9.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 4: Alpha
  index, reserved_4 = lseg_millennium_level2_mitch_v11_9.reserved_4.dissect(buffer, index, packet, parent)

  -- Previous Close Price: Price
  index, previous_close_price = lseg_millennium_level2_mitch_v11_9.previous_close_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Directory Message
lseg_millennium_level2_mitch_v11_9.symbol_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.symbol_directory_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.symbol_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.symbol_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.symbol_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
lseg_millennium_level2_mitch_v11_9.system_event_message = {}

-- Size: System Event Message
lseg_millennium_level2_mitch_v11_9.system_event_message.size =
  lseg_millennium_level2_mitch_v11_9.nanosecond.size + 
  lseg_millennium_level2_mitch_v11_9.event_code.size

-- Display: System Event Message
lseg_millennium_level2_mitch_v11_9.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
lseg_millennium_level2_mitch_v11_9.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: UInt32
  index, nanosecond = lseg_millennium_level2_mitch_v11_9.nanosecond.dissect(buffer, index, packet, parent)

  -- Event Code: Byte
  index, event_code = lseg_millennium_level2_mitch_v11_9.event_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
lseg_millennium_level2_mitch_v11_9.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.system_event_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Time Message
lseg_millennium_level2_mitch_v11_9.time_message = {}

-- Size: Time Message
lseg_millennium_level2_mitch_v11_9.time_message.size =
  lseg_millennium_level2_mitch_v11_9.seconds.size

-- Display: Time Message
lseg_millennium_level2_mitch_v11_9.time_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Time Message
lseg_millennium_level2_mitch_v11_9.time_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: UInt32
  index, seconds = lseg_millennium_level2_mitch_v11_9.seconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
lseg_millennium_level2_mitch_v11_9.time_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.time_message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.time_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.time_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.time_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
lseg_millennium_level2_mitch_v11_9.payload = {}

-- Dissect: Payload
lseg_millennium_level2_mitch_v11_9.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x54 then
    return lseg_millennium_level2_mitch_v11_9.time_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == 0x53 then
    return lseg_millennium_level2_mitch_v11_9.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Directory Message
  if message_type == 0x52 then
    return lseg_millennium_level2_mitch_v11_9.symbol_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Status Message
  if message_type == 0x48 then
    return lseg_millennium_level2_mitch_v11_9.symbol_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == 0x41 then
    return lseg_millennium_level2_mitch_v11_9.add_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Attributed Order Message
  if message_type == 0x46 then
    return lseg_millennium_level2_mitch_v11_9.add_attributed_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if message_type == 0x44 then
    return lseg_millennium_level2_mitch_v11_9.order_deleted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if message_type == 0x55 then
    return lseg_millennium_level2_mitch_v11_9.order_modified_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x79 then
    return lseg_millennium_level2_mitch_v11_9.order_book_clear_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x45 then
    return lseg_millennium_level2_mitch_v11_9.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Size Message
  if message_type == 0x43 then
    return lseg_millennium_level2_mitch_v11_9.order_executed_with_price_size_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x50 then
    return lseg_millennium_level2_mitch_v11_9.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0x51 then
    return lseg_millennium_level2_mitch_v11_9.auction_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Info Message
  if message_type == 0x49 then
    return lseg_millennium_level2_mitch_v11_9.auction_info_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x77 then
    return lseg_millennium_level2_mitch_v11_9.statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book Message
  if message_type == 0x71 then
    return lseg_millennium_level2_mitch_v11_9.top_of_book_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
lseg_millennium_level2_mitch_v11_9.message_header = {}

-- Size: Message Header
lseg_millennium_level2_mitch_v11_9.message_header.size =
  lseg_millennium_level2_mitch_v11_9.message_length.size + 
  lseg_millennium_level2_mitch_v11_9.message_type.size

-- Display: Message Header
lseg_millennium_level2_mitch_v11_9.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
lseg_millennium_level2_mitch_v11_9.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = lseg_millennium_level2_mitch_v11_9.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
  index, message_type = lseg_millennium_level2_mitch_v11_9.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
lseg_millennium_level2_mitch_v11_9.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.message_header, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
lseg_millennium_level2_mitch_v11_9.message = {}

-- Calculate size of: Message
lseg_millennium_level2_mitch_v11_9.message.size = function(buffer, offset)
  local index = 0

  index = index + lseg_millennium_level2_mitch_v11_9.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):uint()
  index = index + lseg_millennium_level2_mitch_v11_9.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
lseg_millennium_level2_mitch_v11_9.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
lseg_millennium_level2_mitch_v11_9.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = lseg_millennium_level2_mitch_v11_9.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 16 branches
  index = lseg_millennium_level2_mitch_v11_9.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
lseg_millennium_level2_mitch_v11_9.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.message, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Unit Header
lseg_millennium_level2_mitch_v11_9.unit_header = {}

-- Size: Unit Header
lseg_millennium_level2_mitch_v11_9.unit_header.size =
  lseg_millennium_level2_mitch_v11_9.length.size + 
  lseg_millennium_level2_mitch_v11_9.message_count.size + 
  lseg_millennium_level2_mitch_v11_9.market_data_group.size + 
  lseg_millennium_level2_mitch_v11_9.sequence_number.size

-- Display: Unit Header
lseg_millennium_level2_mitch_v11_9.unit_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Unit Header
lseg_millennium_level2_mitch_v11_9.unit_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = lseg_millennium_level2_mitch_v11_9.length.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = lseg_millennium_level2_mitch_v11_9.message_count.dissect(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = lseg_millennium_level2_mitch_v11_9.market_data_group.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = lseg_millennium_level2_mitch_v11_9.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
lseg_millennium_level2_mitch_v11_9.unit_header.dissect = function(buffer, offset, packet, parent)
  if show.unit_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_lseg_millennium_level2_mitch_v11_9.fields.unit_header, buffer(offset, 0))
    local index = lseg_millennium_level2_mitch_v11_9.unit_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = lseg_millennium_level2_mitch_v11_9.unit_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return lseg_millennium_level2_mitch_v11_9.unit_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
lseg_millennium_level2_mitch_v11_9.packet = {}

-- Dissect Packet
lseg_millennium_level2_mitch_v11_9.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = lseg_millennium_level2_mitch_v11_9.unit_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = lseg_millennium_level2_mitch_v11_9.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_lseg_millennium_level2_mitch_v11_9.init()
end

-- Dissector for Lseg Millennium Level2 Mitch 11.9
function omi_lseg_millennium_level2_mitch_v11_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_lseg_millennium_level2_mitch_v11_9.name

  -- Dissect protocol
  local protocol = parent:add(omi_lseg_millennium_level2_mitch_v11_9, buffer(), omi_lseg_millennium_level2_mitch_v11_9.description, "("..buffer:len().." Bytes)")
  return lseg_millennium_level2_mitch_v11_9.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_lseg_millennium_level2_mitch_v11_9)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
lseg_millennium_level2_mitch_v11_9.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Lseg Millennium Level2 Mitch 11.9
local function omi_lseg_millennium_level2_mitch_v11_9_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not lseg_millennium_level2_mitch_v11_9.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_lseg_millennium_level2_mitch_v11_9
  omi_lseg_millennium_level2_mitch_v11_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lseg Millennium Level2 Mitch 11.9
omi_lseg_millennium_level2_mitch_v11_9:register_heuristic("udp", omi_lseg_millennium_level2_mitch_v11_9_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: London Stock Exchange Group
--   Version: 11.9
--   Date: Tuesday, August 28, 2018
--   Specification: mit303issue119.pdf
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
