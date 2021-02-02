-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Lse Millennium Level 2 Mitch 11.9 Protocol
local lse_millennium_level_2_mitch_v11_9 = Proto("Lse.Millennium.Level 2.Mitch.v11.9.Lua", "Lse Millennium Level 2 Mitch 11.9")

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

-- Lse Millennium Level 2 Mitch 11.9 Fields
lse_millennium_level_2_mitch_v11_9.fields.add_attributed_order_message = ProtoField.new("Add Attributed Order Message", "lse.millennium.level 2.mitch.v11.9.addattributedordermessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.add_order_message = ProtoField.new("Add Order Message", "lse.millennium.level 2.mitch.v11.9.addordermessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.amnd = ProtoField.new("Amnd", "lse.millennium.level 2.mitch.v11.9.amnd", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x40")
lse_millennium_level_2_mitch_v11_9.fields.attribution = ProtoField.new("Attribution", "lse.millennium.level 2.mitch.v11.9.attribution", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.auction_info_message = ProtoField.new("Auction Info Message", "lse.millennium.level 2.mitch.v11.9.auctioninfomessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.auction_trade_message = ProtoField.new("Auction Trade Message", "lse.millennium.level 2.mitch.v11.9.auctiontrademessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.auction_type = ProtoField.new("Auction Type", "lse.millennium.level 2.mitch.v11.9.auctiontype", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.book_type = ProtoField.new("Book Type", "lse.millennium.level 2.mitch.v11.9.booktype", ftypes.UINT8)
lse_millennium_level_2_mitch_v11_9.fields.buy_limit_price = ProtoField.new("Buy Limit Price", "lse.millennium.level 2.mitch.v11.9.buylimitprice", ftypes.INT64)
lse_millennium_level_2_mitch_v11_9.fields.buy_limit_size = ProtoField.new("Buy Limit Size", "lse.millennium.level 2.mitch.v11.9.buylimitsize", ftypes.UINT32)
lse_millennium_level_2_mitch_v11_9.fields.canc = ProtoField.new("Canc", "lse.millennium.level 2.mitch.v11.9.canc", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
lse_millennium_level_2_mitch_v11_9.fields.cross_type = ProtoField.new("Cross Type", "lse.millennium.level 2.mitch.v11.9.crosstype", ftypes.UINT8)
lse_millennium_level_2_mitch_v11_9.fields.currency = ProtoField.new("Currency", "lse.millennium.level 2.mitch.v11.9.currency", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.display_quantity = ProtoField.new("Display Quantity", "lse.millennium.level 2.mitch.v11.9.displayquantity", ftypes.UINT32)
lse_millennium_level_2_mitch_v11_9.fields.event_code = ProtoField.new("Event Code", "lse.millennium.level 2.mitch.v11.9.eventcode", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.executed_quantity = ProtoField.new("Executed Quantity", "lse.millennium.level 2.mitch.v11.9.executedquantity", ftypes.UINT32)
lse_millennium_level_2_mitch_v11_9.fields.firm_quote = ProtoField.new("Firm Quote", "lse.millennium.level 2.mitch.v11.9.firmquote", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x04")
lse_millennium_level_2_mitch_v11_9.fields.flags = ProtoField.new("Flags", "lse.millennium.level 2.mitch.v11.9.flags", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.instrument_id = ProtoField.new("Instrument Id", "lse.millennium.level 2.mitch.v11.9.instrumentid", ftypes.UINT32)
lse_millennium_level_2_mitch_v11_9.fields.isin = ProtoField.new("Isin", "lse.millennium.level 2.mitch.v11.9.isin", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.length = ProtoField.new("Length", "lse.millennium.level 2.mitch.v11.9.length", ftypes.UINT16)
lse_millennium_level_2_mitch_v11_9.fields.market_data_group = ProtoField.new("Market Data Group", "lse.millennium.level 2.mitch.v11.9.marketdatagroup", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.market_order = ProtoField.new("Market Order", "lse.millennium.level 2.mitch.v11.9.marketorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x08")
lse_millennium_level_2_mitch_v11_9.fields.message = ProtoField.new("Message", "lse.millennium.level 2.mitch.v11.9.message", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.message_count = ProtoField.new("Message Count", "lse.millennium.level 2.mitch.v11.9.messagecount", ftypes.UINT8)
lse_millennium_level_2_mitch_v11_9.fields.message_header = ProtoField.new("Message Header", "lse.millennium.level 2.mitch.v11.9.messageheader", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.message_length = ProtoField.new("Message Length", "lse.millennium.level 2.mitch.v11.9.messagelength", ftypes.UINT8)
lse_millennium_level_2_mitch_v11_9.fields.message_type = ProtoField.new("Message Type", "lse.millennium.level 2.mitch.v11.9.messagetype", ftypes.UINT8)
lse_millennium_level_2_mitch_v11_9.fields.nanosecond = ProtoField.new("Nanosecond", "lse.millennium.level 2.mitch.v11.9.nanosecond", ftypes.UINT32)
lse_millennium_level_2_mitch_v11_9.fields.new_end_time = ProtoField.new("New End Time", "lse.millennium.level 2.mitch.v11.9.newendtime", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.new_price = ProtoField.new("New Price", "lse.millennium.level 2.mitch.v11.9.newprice", ftypes.INT64)
lse_millennium_level_2_mitch_v11_9.fields.new_quantity = ProtoField.new("New Quantity", "lse.millennium.level 2.mitch.v11.9.newquantity", ftypes.UINT32)
lse_millennium_level_2_mitch_v11_9.fields.open_close_price_indicator = ProtoField.new("Open Close Price Indicator", "lse.millennium.level 2.mitch.v11.9.openclosepriceindicator", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.order_book_clear_message = ProtoField.new("Order Book Clear Message", "lse.millennium.level 2.mitch.v11.9.orderbookclearmessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.order_deleted_message = ProtoField.new("Order Deleted Message", "lse.millennium.level 2.mitch.v11.9.orderdeletedmessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.order_executed_message = ProtoField.new("Order Executed Message", "lse.millennium.level 2.mitch.v11.9.orderexecutedmessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.order_executed_with_price_size_message = ProtoField.new("Order Executed With Price Size Message", "lse.millennium.level 2.mitch.v11.9.orderexecutedwithpricesizemessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.order_id = ProtoField.new("Order Id", "lse.millennium.level 2.mitch.v11.9.orderid", ftypes.UINT64)
lse_millennium_level_2_mitch_v11_9.fields.order_modified_message = ProtoField.new("Order Modified Message", "lse.millennium.level 2.mitch.v11.9.ordermodifiedmessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.packet = ProtoField.new("Packet", "lse.millennium.level 2.mitch.v11.9.packet", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.paired_quantity = ProtoField.new("Paired Quantity", "lse.millennium.level 2.mitch.v11.9.pairedquantity", ftypes.UINT32)
lse_millennium_level_2_mitch_v11_9.fields.payload = ProtoField.new("Payload", "lse.millennium.level 2.mitch.v11.9.payload", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.previous_close_price = ProtoField.new("Previous Close Price", "lse.millennium.level 2.mitch.v11.9.previouscloseprice", ftypes.INT64)
lse_millennium_level_2_mitch_v11_9.fields.price = ProtoField.new("Price", "lse.millennium.level 2.mitch.v11.9.price", ftypes.INT64)
lse_millennium_level_2_mitch_v11_9.fields.printable = ProtoField.new("Printable", "lse.millennium.level 2.mitch.v11.9.printable", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.priority_flag = ProtoField.new("Priority Flag", "lse.millennium.level 2.mitch.v11.9.priorityflag", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x80")
lse_millennium_level_2_mitch_v11_9.fields.private_rfq = ProtoField.new("Private Rfq", "lse.millennium.level 2.mitch.v11.9.privaterfq", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x02")
lse_millennium_level_2_mitch_v11_9.fields.pt_mod_flags = ProtoField.new("Pt Mod Flags", "lse.millennium.level 2.mitch.v11.9.ptmodflags", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.quantity = ProtoField.new("Quantity", "lse.millennium.level 2.mitch.v11.9.quantity", ftypes.UINT32)
lse_millennium_level_2_mitch_v11_9.fields.reason = ProtoField.new("Reason", "lse.millennium.level 2.mitch.v11.9.reason", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.reserved = ProtoField.new("Reserved", "lse.millennium.level 2.mitch.v11.9.reserved", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.reserved_a = ProtoField.new("Reserved A", "lse.millennium.level 2.mitch.v11.9.reserveda", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.reserved_alpha = ProtoField.new("Reserved Alpha", "lse.millennium.level 2.mitch.v11.9.reservedalpha", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.reserved_b = ProtoField.new("Reserved B", "lse.millennium.level 2.mitch.v11.9.reservedb", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.reserved_byte = ProtoField.new("Reserved Byte", "lse.millennium.level 2.mitch.v11.9.reservedbyte", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.seconds = ProtoField.new("Seconds", "lse.millennium.level 2.mitch.v11.9.seconds", ftypes.UINT32)
lse_millennium_level_2_mitch_v11_9.fields.sedol = ProtoField.new("Sedol", "lse.millennium.level 2.mitch.v11.9.sedol", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.segment = ProtoField.new("Segment", "lse.millennium.level 2.mitch.v11.9.segment", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.sell_limit_price = ProtoField.new("Sell Limit Price", "lse.millennium.level 2.mitch.v11.9.selllimitprice", ftypes.INT64)
lse_millennium_level_2_mitch_v11_9.fields.sell_limit_size = ProtoField.new("Sell Limit Size", "lse.millennium.level 2.mitch.v11.9.selllimitsize", ftypes.UINT32)
lse_millennium_level_2_mitch_v11_9.fields.sequence_number = ProtoField.new("Sequence Number", "lse.millennium.level 2.mitch.v11.9.sequencenumber", ftypes.UINT32)
lse_millennium_level_2_mitch_v11_9.fields.session_change_reason = ProtoField.new("Session Change Reason", "lse.millennium.level 2.mitch.v11.9.sessionchangereason", ftypes.UINT8)
lse_millennium_level_2_mitch_v11_9.fields.side = ProtoField.new("Side", "lse.millennium.level 2.mitch.v11.9.side", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.statistic_type = ProtoField.new("Statistic Type", "lse.millennium.level 2.mitch.v11.9.statistictype", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.statistics_message = ProtoField.new("Statistics Message", "lse.millennium.level 2.mitch.v11.9.statisticsmessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.sub_book = ProtoField.new("Sub Book", "lse.millennium.level 2.mitch.v11.9.subbook", ftypes.UINT8)
lse_millennium_level_2_mitch_v11_9.fields.symbol_directory_message = ProtoField.new("Symbol Directory Message", "lse.millennium.level 2.mitch.v11.9.symboldirectorymessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.symbol_status = ProtoField.new("Symbol Status", "lse.millennium.level 2.mitch.v11.9.symbolstatus", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "lse.millennium.level 2.mitch.v11.9.symbolstatusmessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.system_event_message = ProtoField.new("System Event Message", "lse.millennium.level 2.mitch.v11.9.systemeventmessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.time_message = ProtoField.new("Time Message", "lse.millennium.level 2.mitch.v11.9.timemessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.top_of_book_message = ProtoField.new("Top Of Book Message", "lse.millennium.level 2.mitch.v11.9.topofbookmessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.trade_match_id = ProtoField.new("Trade Match Id", "lse.millennium.level 2.mitch.v11.9.tradematchid", ftypes.UINT64)
lse_millennium_level_2_mitch_v11_9.fields.trade_message = ProtoField.new("Trade Message", "lse.millennium.level 2.mitch.v11.9.trademessage", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.trading_status = ProtoField.new("Trading Status", "lse.millennium.level 2.mitch.v11.9.tradingstatus", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.underlying = ProtoField.new("Underlying", "lse.millennium.level 2.mitch.v11.9.underlying", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.unit_header = ProtoField.new("Unit Header", "lse.millennium.level 2.mitch.v11.9.unitheader", ftypes.STRING)
lse_millennium_level_2_mitch_v11_9.fields.unused_1 = ProtoField.new("Unused 1", "lse.millennium.level 2.mitch.v11.9.unused1", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, "0x01")
lse_millennium_level_2_mitch_v11_9.fields.unused_3 = ProtoField.new("Unused 3", "lse.millennium.level 2.mitch.v11.9.unused3", ftypes.UINT8, nil, base.DEC, "0x70")
lse_millennium_level_2_mitch_v11_9.fields.unused_6 = ProtoField.new("Unused 6", "lse.millennium.level 2.mitch.v11.9.unused6", ftypes.UINT8, nil, base.DEC, "0x3F")

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Lse Millennium Level 2 Mitch 11.9 Element Dissection Options
show.add_attributed_order_message = true
show.add_order_message = true
show.auction_info_message = true
show.auction_trade_message = true
show.flags = true
show.message = true
show.message_header = true
show.order_book_clear_message = true
show.order_deleted_message = true
show.order_executed_message = true
show.order_executed_with_price_size_message = true
show.order_modified_message = true
show.packet = true
show.pt_mod_flags = true
show.statistics_message = true
show.symbol_directory_message = true
show.symbol_status_message = true
show.system_event_message = true
show.time_message = true
show.top_of_book_message = true
show.trade_message = true
show.unit_header = true
show.payload = false

-- Register Lse Millennium Level 2 Mitch 11.9 Show Options
lse_millennium_level_2_mitch_v11_9.prefs.show_add_attributed_order_message = Pref.bool("Show Add Attributed Order Message", show.add_attributed_order_message, "Parse and add Add Attributed Order Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_add_order_message = Pref.bool("Show Add Order Message", show.add_order_message, "Parse and add Add Order Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_auction_info_message = Pref.bool("Show Auction Info Message", show.auction_info_message, "Parse and add Auction Info Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_auction_trade_message = Pref.bool("Show Auction Trade Message", show.auction_trade_message, "Parse and add Auction Trade Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_flags = Pref.bool("Show Flags", show.flags, "Parse and add Flags to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_order_book_clear_message = Pref.bool("Show Order Book Clear Message", show.order_book_clear_message, "Parse and add Order Book Clear Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_order_deleted_message = Pref.bool("Show Order Deleted Message", show.order_deleted_message, "Parse and add Order Deleted Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_order_executed_message = Pref.bool("Show Order Executed Message", show.order_executed_message, "Parse and add Order Executed Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_order_executed_with_price_size_message = Pref.bool("Show Order Executed With Price Size Message", show.order_executed_with_price_size_message, "Parse and add Order Executed With Price Size Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_order_modified_message = Pref.bool("Show Order Modified Message", show.order_modified_message, "Parse and add Order Modified Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_pt_mod_flags = Pref.bool("Show Pt Mod Flags", show.pt_mod_flags, "Parse and add Pt Mod Flags to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_statistics_message = Pref.bool("Show Statistics Message", show.statistics_message, "Parse and add Statistics Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_symbol_directory_message = Pref.bool("Show Symbol Directory Message", show.symbol_directory_message, "Parse and add Symbol Directory Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_symbol_status_message = Pref.bool("Show Symbol Status Message", show.symbol_status_message, "Parse and add Symbol Status Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_system_event_message = Pref.bool("Show System Event Message", show.system_event_message, "Parse and add System Event Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_time_message = Pref.bool("Show Time Message", show.time_message, "Parse and add Time Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_top_of_book_message = Pref.bool("Show Top Of Book Message", show.top_of_book_message, "Parse and add Top Of Book Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_unit_header = Pref.bool("Show Unit Header", show.unit_header, "Parse and add Unit Header to protocol tree")
lse_millennium_level_2_mitch_v11_9.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")

-- Handle changed preferences
function lse_millennium_level_2_mitch_v11_9.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_attributed_order_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_add_attributed_order_message then
    show.add_attributed_order_message = lse_millennium_level_2_mitch_v11_9.prefs.show_add_attributed_order_message
    changed = true
  end
  if show.add_order_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_add_order_message then
    show.add_order_message = lse_millennium_level_2_mitch_v11_9.prefs.show_add_order_message
    changed = true
  end
  if show.auction_info_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_auction_info_message then
    show.auction_info_message = lse_millennium_level_2_mitch_v11_9.prefs.show_auction_info_message
    changed = true
  end
  if show.auction_trade_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_auction_trade_message then
    show.auction_trade_message = lse_millennium_level_2_mitch_v11_9.prefs.show_auction_trade_message
    changed = true
  end
  if show.flags ~= lse_millennium_level_2_mitch_v11_9.prefs.show_flags then
    show.flags = lse_millennium_level_2_mitch_v11_9.prefs.show_flags
    changed = true
  end
  if show.message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_message then
    show.message = lse_millennium_level_2_mitch_v11_9.prefs.show_message
    changed = true
  end
  if show.message_header ~= lse_millennium_level_2_mitch_v11_9.prefs.show_message_header then
    show.message_header = lse_millennium_level_2_mitch_v11_9.prefs.show_message_header
    changed = true
  end
  if show.order_book_clear_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_order_book_clear_message then
    show.order_book_clear_message = lse_millennium_level_2_mitch_v11_9.prefs.show_order_book_clear_message
    changed = true
  end
  if show.order_deleted_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_order_deleted_message then
    show.order_deleted_message = lse_millennium_level_2_mitch_v11_9.prefs.show_order_deleted_message
    changed = true
  end
  if show.order_executed_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_order_executed_message then
    show.order_executed_message = lse_millennium_level_2_mitch_v11_9.prefs.show_order_executed_message
    changed = true
  end
  if show.order_executed_with_price_size_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_order_executed_with_price_size_message then
    show.order_executed_with_price_size_message = lse_millennium_level_2_mitch_v11_9.prefs.show_order_executed_with_price_size_message
    changed = true
  end
  if show.order_modified_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_order_modified_message then
    show.order_modified_message = lse_millennium_level_2_mitch_v11_9.prefs.show_order_modified_message
    changed = true
  end
  if show.packet ~= lse_millennium_level_2_mitch_v11_9.prefs.show_packet then
    show.packet = lse_millennium_level_2_mitch_v11_9.prefs.show_packet
    changed = true
  end
  if show.pt_mod_flags ~= lse_millennium_level_2_mitch_v11_9.prefs.show_pt_mod_flags then
    show.pt_mod_flags = lse_millennium_level_2_mitch_v11_9.prefs.show_pt_mod_flags
    changed = true
  end
  if show.statistics_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_statistics_message then
    show.statistics_message = lse_millennium_level_2_mitch_v11_9.prefs.show_statistics_message
    changed = true
  end
  if show.symbol_directory_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_symbol_directory_message then
    show.symbol_directory_message = lse_millennium_level_2_mitch_v11_9.prefs.show_symbol_directory_message
    changed = true
  end
  if show.symbol_status_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_symbol_status_message then
    show.symbol_status_message = lse_millennium_level_2_mitch_v11_9.prefs.show_symbol_status_message
    changed = true
  end
  if show.system_event_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_system_event_message then
    show.system_event_message = lse_millennium_level_2_mitch_v11_9.prefs.show_system_event_message
    changed = true
  end
  if show.time_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_time_message then
    show.time_message = lse_millennium_level_2_mitch_v11_9.prefs.show_time_message
    changed = true
  end
  if show.top_of_book_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_top_of_book_message then
    show.top_of_book_message = lse_millennium_level_2_mitch_v11_9.prefs.show_top_of_book_message
    changed = true
  end
  if show.trade_message ~= lse_millennium_level_2_mitch_v11_9.prefs.show_trade_message then
    show.trade_message = lse_millennium_level_2_mitch_v11_9.prefs.show_trade_message
    changed = true
  end
  if show.unit_header ~= lse_millennium_level_2_mitch_v11_9.prefs.show_unit_header then
    show.unit_header = lse_millennium_level_2_mitch_v11_9.prefs.show_unit_header
    changed = true
  end
  if show.payload ~= lse_millennium_level_2_mitch_v11_9.prefs.show_payload then
    show.payload = lse_millennium_level_2_mitch_v11_9.prefs.show_payload
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Lse Millennium Level 2 Mitch 11.9
-----------------------------------------------------------------------

-- Size: Sell Limit Size
size_of.sell_limit_size = 4

-- Display: Sell Limit Size
display.sell_limit_size = function(value)
  return "Sell Limit Size: "..value
end

-- Dissect: Sell Limit Size
dissect.sell_limit_size = function(buffer, offset, packet, parent)
  local length = size_of.sell_limit_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sell_limit_size(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.sell_limit_size, range, value, display)

  return offset + length, value
end

-- Size: Sell Limit Price
size_of.sell_limit_price = 8

-- Display: Sell Limit Price
display.sell_limit_price = function(value)
  return "Sell Limit Price: "..value
end

-- Dissect: Sell Limit Price
dissect.sell_limit_price = function(buffer, offset, packet, parent)
  local length = size_of.sell_limit_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.sell_limit_price(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.sell_limit_price, range, value, display)

  return offset + length, value
end

-- Size: Buy Limit Size
size_of.buy_limit_size = 4

-- Display: Buy Limit Size
display.buy_limit_size = function(value)
  return "Buy Limit Size: "..value
end

-- Dissect: Buy Limit Size
dissect.buy_limit_size = function(buffer, offset, packet, parent)
  local length = size_of.buy_limit_size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.buy_limit_size(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.buy_limit_size, range, value, display)

  return offset + length, value
end

-- Size: Buy Limit Price
size_of.buy_limit_price = 8

-- Display: Buy Limit Price
display.buy_limit_price = function(value)
  return "Buy Limit Price: "..value
end

-- Dissect: Buy Limit Price
dissect.buy_limit_price = function(buffer, offset, packet, parent)
  local length = size_of.buy_limit_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.buy_limit_price(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.buy_limit_price, range, value, display)

  return offset + length, value
end

-- Size: Instrument Id
size_of.instrument_id = 4

-- Display: Instrument Id
display.instrument_id = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
dissect.instrument_id = function(buffer, offset, packet, parent)
  local length = size_of.instrument_id
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.instrument_id(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Nanosecond
size_of.nanosecond = 4

-- Display: Nanosecond
display.nanosecond = function(value)
  return "Nanosecond: "..value
end

-- Dissect: Nanosecond
dissect.nanosecond = function(buffer, offset, packet, parent)
  local length = size_of.nanosecond
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.nanosecond(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.nanosecond, range, value, display)

  return offset + length, value
end

-- Calculate size of: Top Of Book Message
size_of.top_of_book_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.instrument_id

  index = index + size_of.buy_limit_price

  index = index + size_of.buy_limit_size

  index = index + size_of.sell_limit_price

  index = index + size_of.sell_limit_size

  return index
end

-- Display: Top Of Book Message
display.top_of_book_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Top Of Book Message
dissect.top_of_book_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = dissect.instrument_id(buffer, index, packet, parent)

  -- Buy Limit Price: 8 Byte Signed Fixed Width Integer
  index, buy_limit_price = dissect.buy_limit_price(buffer, index, packet, parent)

  -- Buy Limit Size: 4 Byte Unsigned Fixed Width Integer
  index, buy_limit_size = dissect.buy_limit_size(buffer, index, packet, parent)

  -- Sell Limit Price: 8 Byte Signed Fixed Width Integer
  index, sell_limit_price = dissect.sell_limit_price(buffer, index, packet, parent)

  -- Sell Limit Size: 4 Byte Unsigned Fixed Width Integer
  index, sell_limit_size = dissect.sell_limit_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Top Of Book Message
dissect.top_of_book_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.top_of_book_message then
    local length = size_of.top_of_book_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.top_of_book_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.top_of_book_message, range, display)
  end

  return dissect.top_of_book_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved
size_of.reserved = 10

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local length = size_of.reserved
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Open Close Price Indicator
size_of.open_close_price_indicator = 1

-- Display: Open Close Price Indicator
display.open_close_price_indicator = function(value)
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
dissect.open_close_price_indicator = function(buffer, offset, packet, parent)
  local length = size_of.open_close_price_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.open_close_price_indicator(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.open_close_price_indicator, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 8

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Statistic Type
size_of.statistic_type = 1

-- Display: Statistic Type
display.statistic_type = function(value)
  if value == "O" then
    return "Statistic Type: Opening Price (O)"
  end
  if value == "C" then
    return "Statistic Type: Closing Price (C)"
  end

  return "Statistic Type: Unknown("..value..")"
end

-- Dissect: Statistic Type
dissect.statistic_type = function(buffer, offset, packet, parent)
  local length = size_of.statistic_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.statistic_type(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.statistic_type, range, value, display)

  return offset + length, value
end

-- Size: Reserved B
size_of.reserved_b = 1

-- Display: Reserved B
display.reserved_b = function(value)
  return "Reserved B: "..value
end

-- Dissect: Reserved B
dissect.reserved_b = function(buffer, offset, packet, parent)
  local length = size_of.reserved_b
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reserved_b(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.reserved_b, range, value, display)

  return offset + length, value
end

-- Size: Reserved A
size_of.reserved_a = 1

-- Display: Reserved A
display.reserved_a = function(value)
  return "Reserved A: "..value
end

-- Dissect: Reserved A
dissect.reserved_a = function(buffer, offset, packet, parent)
  local length = size_of.reserved_a
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reserved_a(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.reserved_a, range, value, display)

  return offset + length, value
end

-- Calculate size of: Statistics Message
size_of.statistics_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.instrument_id

  index = index + size_of.reserved_a

  index = index + size_of.reserved_b

  index = index + size_of.statistic_type

  index = index + size_of.price

  index = index + size_of.open_close_price_indicator

  index = index + size_of.reserved

  return index
end

-- Display: Statistics Message
display.statistics_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Statistics Message
dissect.statistics_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = dissect.instrument_id(buffer, index, packet, parent)

  -- Reserved A: 1 Byte Ascii String
  index, reserved_a = dissect.reserved_a(buffer, index, packet, parent)

  -- Reserved B: 1 Byte Ascii String
  index, reserved_b = dissect.reserved_b(buffer, index, packet, parent)

  -- Statistic Type: 1 Byte Ascii String Enum with 2 values
  index, statistic_type = dissect.statistic_type(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Open Close Price Indicator: 1 Byte Ascii String Enum with 8 values
  index, open_close_price_indicator = dissect.open_close_price_indicator(buffer, index, packet, parent)

  -- Reserved: 10 Byte Ascii String
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Statistics Message
dissect.statistics_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.statistics_message then
    local length = size_of.statistics_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.statistics_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.statistics_message, range, display)
  end

  return dissect.statistics_message_fields(buffer, offset, packet, parent)
end

-- Size: Auction Type
size_of.auction_type = 1

-- Display: Auction Type
display.auction_type = function(value)
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
dissect.auction_type = function(buffer, offset, packet, parent)
  local length = size_of.auction_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.auction_type(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Size: Paired Quantity
size_of.paired_quantity = 4

-- Display: Paired Quantity
display.paired_quantity = function(value)
  return "Paired Quantity: "..value
end

-- Dissect: Paired Quantity
dissect.paired_quantity = function(buffer, offset, packet, parent)
  local length = size_of.paired_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.paired_quantity(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.paired_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Info Message
size_of.auction_info_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.paired_quantity

  index = index + size_of.reserved

  index = index + size_of.reserved

  index = index + size_of.instrument_id

  index = index + size_of.reserved_a

  index = index + size_of.reserved_b

  index = index + size_of.price

  index = index + size_of.auction_type

  return index
end

-- Display: Auction Info Message
display.auction_info_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Info Message
dissect.auction_info_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Paired Quantity: 4 Byte Unsigned Fixed Width Integer
  index, paired_quantity = dissect.paired_quantity(buffer, index, packet, parent)

  -- Reserved: 10 Byte Ascii String
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  -- Reserved: 10 Byte Ascii String
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = dissect.instrument_id(buffer, index, packet, parent)

  -- Reserved A: 1 Byte Ascii String
  index, reserved_a = dissect.reserved_a(buffer, index, packet, parent)

  -- Reserved B: 1 Byte Ascii String
  index, reserved_b = dissect.reserved_b(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 7 values
  index, auction_type = dissect.auction_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Info Message
dissect.auction_info_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_info_message then
    local length = size_of.auction_info_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.auction_info_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.auction_info_message, range, display)
  end

  return dissect.auction_info_message_fields(buffer, offset, packet, parent)
end

-- Size: Pt Mod Flags
size_of.pt_mod_flags = 1

-- Display: Pt Mod Flags
display.pt_mod_flags = function(buffer, packet, parent)
  local display = ""

  -- Is Canc flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Canc|"
  end
  -- Is Amnd flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Amnd|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Pt Mod Flags
dissect.pt_mod_flags_bits = function(buffer, offset, packet, parent)

  -- Canc: 1 Bit
  parent:add(lse_millennium_level_2_mitch_v11_9.fields.canc, buffer(offset, 1))

  -- Amnd: 1 Bit
  parent:add(lse_millennium_level_2_mitch_v11_9.fields.amnd, buffer(offset, 1))

  -- Unused 6: 6 Bit
  parent:add(lse_millennium_level_2_mitch_v11_9.fields.unused_6, buffer(offset, 1))
end

-- Dissect: Pt Mod Flags
dissect.pt_mod_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.pt_mod_flags(range, packet, parent)
  local element = parent:add(lse_millennium_level_2_mitch_v11_9.fields.pt_mod_flags, range, display)

  if show.pt_mod_flags then
    dissect.pt_mod_flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Size: Trade Match Id
size_of.trade_match_id = 8

-- Display: Trade Match Id
display.trade_match_id = function(value)
  return "Trade Match Id: "..value
end

-- Dissect: Trade Match Id
dissect.trade_match_id = function(buffer, offset, packet, parent)
  local length = size_of.trade_match_id
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = display.trade_match_id(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.trade_match_id, range, value, display)

  return offset + length, value
end

-- Size: Quantity
size_of.quantity = 4

-- Display: Quantity
display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
dissect.quantity = function(buffer, offset, packet, parent)
  local length = size_of.quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.quantity(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Auction Trade Message
size_of.auction_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.quantity

  index = index + size_of.instrument_id

  index = index + size_of.reserved_a

  index = index + size_of.reserved_b

  index = index + size_of.price

  index = index + size_of.trade_match_id

  index = index + size_of.auction_type

  index = index + size_of.pt_mod_flags

  return index
end

-- Display: Auction Trade Message
display.auction_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Trade Message
dissect.auction_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = dissect.instrument_id(buffer, index, packet, parent)

  -- Reserved A: 1 Byte Ascii String
  index, reserved_a = dissect.reserved_a(buffer, index, packet, parent)

  -- Reserved B: 1 Byte Ascii String
  index, reserved_b = dissect.reserved_b(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Trade Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_match_id = dissect.trade_match_id(buffer, index, packet, parent)

  -- Auction Type: 1 Byte Ascii String Enum with 7 values
  index, auction_type = dissect.auction_type(buffer, index, packet, parent)

  -- Pt Mod Flags: Struct of 3 fields
  index, pt_mod_flags = dissect.pt_mod_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Trade Message
dissect.auction_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.auction_trade_message then
    local length = size_of.auction_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.auction_trade_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.auction_trade_message, range, display)
  end

  return dissect.auction_trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Sub Book
size_of.sub_book = 1

-- Display: Sub Book
display.sub_book = function(value)
  if value == 0 then
    return "Sub Book: Regular Trades (0)"
  end
  if value == 11 then
    return "Sub Book: Rfq Trades (11)"
  end

  return "Sub Book: Unknown("..value..")"
end

-- Dissect: Sub Book
dissect.sub_book = function(buffer, offset, packet, parent)
  local length = size_of.sub_book
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sub_book(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.sub_book, range, value, display)

  return offset + length, value
end

-- Size: Cross Type
size_of.cross_type = 1

-- Display: Cross Type
display.cross_type = function(value)
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
dissect.cross_type = function(buffer, offset, packet, parent)
  local length = size_of.cross_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.cross_type(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.cross_type, range, value, display)

  return offset + length, value
end

-- Size: Executed Quantity
size_of.executed_quantity = 4

-- Display: Executed Quantity
display.executed_quantity = function(value)
  return "Executed Quantity: "..value
end

-- Dissect: Executed Quantity
dissect.executed_quantity = function(buffer, offset, packet, parent)
  local length = size_of.executed_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.executed_quantity(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.executed_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Trade Message
size_of.trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.executed_quantity

  index = index + size_of.instrument_id

  index = index + size_of.reserved_a

  index = index + size_of.reserved_b

  index = index + size_of.price

  index = index + size_of.trade_match_id

  index = index + size_of.cross_type

  index = index + size_of.sub_book

  index = index + size_of.pt_mod_flags

  return index
end

-- Display: Trade Message
display.trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Message
dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = dissect.executed_quantity(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = dissect.instrument_id(buffer, index, packet, parent)

  -- Reserved A: 1 Byte Ascii String
  index, reserved_a = dissect.reserved_a(buffer, index, packet, parent)

  -- Reserved B: 1 Byte Ascii String
  index, reserved_b = dissect.reserved_b(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Trade Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_match_id = dissect.trade_match_id(buffer, index, packet, parent)

  -- Cross Type: 1 Byte Unsigned Fixed Width Integer Enum with 5 values
  index, cross_type = dissect.cross_type(buffer, index, packet, parent)

  -- Sub Book: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, sub_book = dissect.sub_book(buffer, index, packet, parent)

  -- Pt Mod Flags: Struct of 3 fields
  index, pt_mod_flags = dissect.pt_mod_flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
dissect.trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_message then
    local length = size_of.trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.trade_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.trade_message, range, display)
  end

  return dissect.trade_message_fields(buffer, offset, packet, parent)
end

-- Size: Printable
size_of.printable = 1

-- Display: Printable
display.printable = function(value)
  if value == "N" then
    return "Printable: Non Printable (N)"
  end
  if value == "Y" then
    return "Printable: Printable (Y)"
  end

  return "Printable: Unknown("..value..")"
end

-- Dissect: Printable
dissect.printable = function(buffer, offset, packet, parent)
  local length = size_of.printable
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.printable(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.printable, range, value, display)

  return offset + length, value
end

-- Size: Display Quantity
size_of.display_quantity = 4

-- Display: Display Quantity
display.display_quantity = function(value)
  return "Display Quantity: "..value
end

-- Dissect: Display Quantity
dissect.display_quantity = function(buffer, offset, packet, parent)
  local length = size_of.display_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.display_quantity(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.display_quantity, range, value, display)

  return offset + length, value
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
  local value = range:le_uint64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.order_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Executed With Price Size Message
size_of.order_executed_with_price_size_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.order_id

  index = index + size_of.executed_quantity

  index = index + size_of.display_quantity

  index = index + size_of.trade_match_id

  index = index + size_of.printable

  index = index + size_of.price

  return index
end

-- Display: Order Executed With Price Size Message
display.order_executed_with_price_size_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed With Price Size Message
dissect.order_executed_with_price_size_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = dissect.executed_quantity(buffer, index, packet, parent)

  -- Display Quantity: 4 Byte Unsigned Fixed Width Integer
  index, display_quantity = dissect.display_quantity(buffer, index, packet, parent)

  -- Trade Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_match_id = dissect.trade_match_id(buffer, index, packet, parent)

  -- Printable: 1 Byte Ascii String Enum with 2 values
  index, printable = dissect.printable(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed With Price Size Message
dissect.order_executed_with_price_size_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_with_price_size_message then
    local length = size_of.order_executed_with_price_size_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_executed_with_price_size_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.order_executed_with_price_size_message, range, display)
  end

  return dissect.order_executed_with_price_size_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Executed Message
size_of.order_executed_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.order_id

  index = index + size_of.executed_quantity

  index = index + size_of.trade_match_id

  return index
end

-- Display: Order Executed Message
display.order_executed_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Executed Message
dissect.order_executed_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Executed Quantity: 4 Byte Unsigned Fixed Width Integer
  index, executed_quantity = dissect.executed_quantity(buffer, index, packet, parent)

  -- Trade Match Id: 8 Byte Unsigned Fixed Width Integer
  index, trade_match_id = dissect.trade_match_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
dissect.order_executed_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_executed_message then
    local length = size_of.order_executed_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_executed_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.order_executed_message, range, display)
  end

  return dissect.order_executed_message_fields(buffer, offset, packet, parent)
end

-- Size: Flags
size_of.flags = 1

-- Display: Flags
display.flags = function(buffer, packet, parent)
  local display = ""

  -- Is Priority Flag flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Priority Flag|"
  end
  -- Is Market Order flag set?
  if buffer:bitfield(4) > 0 then
    display = display.."Market Order|"
  end
  -- Is Firm Quote flag set?
  if buffer:bitfield(5) > 0 then
    display = display.."Firm Quote|"
  end
  -- Is Private Rfq flag set?
  if buffer:bitfield(6) > 0 then
    display = display.."Private Rfq|"
  end
  -- Is Unused 1 flag set?
  if buffer:bitfield(7) > 0 then
    display = display.."Unused 1|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Flags
dissect.flags_bits = function(buffer, offset, packet, parent)

  -- Priority Flag: 1 Bit
  parent:add(lse_millennium_level_2_mitch_v11_9.fields.priority_flag, buffer(offset, 1))

  -- Unused 3: 3 Bit
  parent:add(lse_millennium_level_2_mitch_v11_9.fields.unused_3, buffer(offset, 1))

  -- Market Order: 1 Bit
  parent:add(lse_millennium_level_2_mitch_v11_9.fields.market_order, buffer(offset, 1))

  -- Firm Quote: 1 Bit
  parent:add(lse_millennium_level_2_mitch_v11_9.fields.firm_quote, buffer(offset, 1))

  -- Private Rfq: 1 Bit
  parent:add(lse_millennium_level_2_mitch_v11_9.fields.private_rfq, buffer(offset, 1))

  -- Unused 1: 1 Bit
  parent:add(lse_millennium_level_2_mitch_v11_9.fields.unused_1, buffer(offset, 1))
end

-- Dissect: Flags
dissect.flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = display.flags(range, packet, parent)
  local element = parent:add(lse_millennium_level_2_mitch_v11_9.fields.flags, range, display)

  if show.flags then
    dissect.flags_bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Calculate size of: Order Book Clear Message
size_of.order_book_clear_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.instrument_id

  index = index + size_of.reserved_a

  index = index + size_of.reserved_b

  index = index + size_of.flags

  return index
end

-- Display: Order Book Clear Message
display.order_book_clear_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Book Clear Message
dissect.order_book_clear_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = dissect.instrument_id(buffer, index, packet, parent)

  -- Reserved A: 1 Byte Ascii String
  index, reserved_a = dissect.reserved_a(buffer, index, packet, parent)

  -- Reserved B: 1 Byte Ascii String
  index, reserved_b = dissect.reserved_b(buffer, index, packet, parent)

  -- Flags: Struct of 6 fields
  index, flags = dissect.flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Book Clear Message
dissect.order_book_clear_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_book_clear_message then
    local length = size_of.order_book_clear_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_book_clear_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.order_book_clear_message, range, display)
  end

  return dissect.order_book_clear_message_fields(buffer, offset, packet, parent)
end

-- Size: New Price
size_of.new_price = 8

-- Display: New Price
display.new_price = function(value)
  return "New Price: "..value
end

-- Dissect: New Price
dissect.new_price = function(buffer, offset, packet, parent)
  local length = size_of.new_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.new_price(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.new_price, range, value, display)

  return offset + length, value
end

-- Size: New Quantity
size_of.new_quantity = 4

-- Display: New Quantity
display.new_quantity = function(value)
  return "New Quantity: "..value
end

-- Dissect: New Quantity
dissect.new_quantity = function(buffer, offset, packet, parent)
  local length = size_of.new_quantity
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.new_quantity(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.new_quantity, range, value, display)

  return offset + length, value
end

-- Calculate size of: Order Modified Message
size_of.order_modified_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.order_id

  index = index + size_of.new_quantity

  index = index + size_of.new_price

  index = index + size_of.flags

  return index
end

-- Display: Order Modified Message
display.order_modified_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Modified Message
dissect.order_modified_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- New Quantity: 4 Byte Unsigned Fixed Width Integer
  index, new_quantity = dissect.new_quantity(buffer, index, packet, parent)

  -- New Price: 8 Byte Signed Fixed Width Integer
  index, new_price = dissect.new_price(buffer, index, packet, parent)

  -- Flags: Struct of 6 fields
  index, flags = dissect.flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modified Message
dissect.order_modified_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_modified_message then
    local length = size_of.order_modified_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_modified_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.order_modified_message, range, display)
  end

  return dissect.order_modified_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Order Deleted Message
size_of.order_deleted_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.order_id

  index = index + size_of.flags

  index = index + size_of.instrument_id

  return index
end

-- Display: Order Deleted Message
display.order_deleted_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Order Deleted Message
dissect.order_deleted_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Flags: Struct of 6 fields
  index, flags = dissect.flags(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = dissect.instrument_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Deleted Message
dissect.order_deleted_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.order_deleted_message then
    local length = size_of.order_deleted_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.order_deleted_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.order_deleted_message, range, display)
  end

  return dissect.order_deleted_message_fields(buffer, offset, packet, parent)
end

-- Size: Attribution
size_of.attribution = 11

-- Display: Attribution
display.attribution = function(value)
  return "Attribution: "..value
end

-- Dissect: Attribution
dissect.attribution = function(buffer, offset, packet, parent)
  local length = size_of.attribution
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.attribution(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.attribution, range, value, display)

  return offset + length, value
end

-- Size: Side
size_of.side = 1

-- Display: Side
display.side = function(value)
  if value == "B" then
    return "Side: Buy Order (B)"
  end
  if value == "S" then
    return "Side: Sell Order (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local length = size_of.side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.side, range, value, display)

  return offset + length, value
end

-- Calculate size of: Add Attributed Order Message
size_of.add_attributed_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.order_id

  index = index + size_of.side

  index = index + size_of.quantity

  index = index + size_of.instrument_id

  index = index + size_of.reserved_a

  index = index + size_of.reserved_b

  index = index + size_of.price

  index = index + size_of.attribution

  index = index + size_of.flags

  return index
end

-- Display: Add Attributed Order Message
display.add_attributed_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Attributed Order Message
dissect.add_attributed_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = dissect.instrument_id(buffer, index, packet, parent)

  -- Reserved A: 1 Byte Ascii String
  index, reserved_a = dissect.reserved_a(buffer, index, packet, parent)

  -- Reserved B: 1 Byte Ascii String
  index, reserved_b = dissect.reserved_b(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Attribution: 11 Byte Ascii String
  index, attribution = dissect.attribution(buffer, index, packet, parent)

  -- Flags: Struct of 6 fields
  index, flags = dissect.flags(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Attributed Order Message
dissect.add_attributed_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_attributed_order_message then
    local length = size_of.add_attributed_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_attributed_order_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.add_attributed_order_message, range, display)
  end

  return dissect.add_attributed_order_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Add Order Message
size_of.add_order_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.order_id

  index = index + size_of.side

  index = index + size_of.quantity

  index = index + size_of.instrument_id

  index = index + size_of.reserved_a

  index = index + size_of.reserved_b

  index = index + size_of.price

  index = index + size_of.flags

  index = index + size_of.reserved

  return index
end

-- Display: Add Order Message
display.add_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Order Message
dissect.add_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Order Id: 8 Byte Unsigned Fixed Width Integer
  index, order_id = dissect.order_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String Enum with 2 values
  index, side = dissect.side(buffer, index, packet, parent)

  -- Quantity: 4 Byte Unsigned Fixed Width Integer
  index, quantity = dissect.quantity(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = dissect.instrument_id(buffer, index, packet, parent)

  -- Reserved A: 1 Byte Ascii String
  index, reserved_a = dissect.reserved_a(buffer, index, packet, parent)

  -- Reserved B: 1 Byte Ascii String
  index, reserved_b = dissect.reserved_b(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Flags: Struct of 6 fields
  index, flags = dissect.flags(buffer, index, packet, parent)

  -- Reserved: 10 Byte Ascii String
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Order Message
dissect.add_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_order_message then
    local length = size_of.add_order_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.add_order_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.add_order_message, range, display)
  end

  return dissect.add_order_message_fields(buffer, offset, packet, parent)
end

-- Size: Book Type
size_of.book_type = 1

-- Display: Book Type
display.book_type = function(value)
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
dissect.book_type = function(buffer, offset, packet, parent)
  local length = size_of.book_type
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.book_type(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.book_type, range, value, display)

  return offset + length, value
end

-- Size: New End Time
size_of.new_end_time = 8

-- Display: New End Time
display.new_end_time = function(value)
  return "New End Time: "..value
end

-- Dissect: New End Time
dissect.new_end_time = function(buffer, offset, packet, parent)
  local length = size_of.new_end_time
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.new_end_time(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.new_end_time, range, value, display)

  return offset + length, value
end

-- Size: Session Change Reason
size_of.session_change_reason = 1

-- Display: Session Change Reason
display.session_change_reason = function(value)
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
dissect.session_change_reason = function(buffer, offset, packet, parent)
  local length = size_of.session_change_reason
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.session_change_reason(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.session_change_reason, range, value, display)

  return offset + length, value
end

-- Size: Reason
size_of.reason = 4

-- Display: Reason
display.reason = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
dissect.reason = function(buffer, offset, packet, parent)
  local length = size_of.reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reason(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Trading Status
size_of.trading_status = 1

-- Display: Trading Status
display.trading_status = function(value)
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
dissect.trading_status = function(buffer, offset, packet, parent)
  local length = size_of.trading_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trading_status(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Status Message
size_of.symbol_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.instrument_id

  index = index + size_of.reserved_a

  index = index + size_of.reserved_b

  index = index + size_of.trading_status

  index = index + size_of.symbol_status_flags

  index = index + size_of.reason

  index = index + size_of.session_change_reason

  index = index + size_of.new_end_time

  index = index + size_of.book_type

  return index
end

-- Display: Symbol Status Message
display.symbol_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Status Message
dissect.symbol_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = dissect.instrument_id(buffer, index, packet, parent)

  -- Reserved A: 1 Byte Ascii String
  index, reserved_a = dissect.reserved_a(buffer, index, packet, parent)

  -- Reserved B: 1 Byte Ascii String
  index, reserved_b = dissect.reserved_b(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String Enum with 21 values
  index, trading_status = dissect.trading_status(buffer, index, packet, parent)

  -- Symbol Status Flags
  index, symbol_status_flags = dissect.symbol_status_flags(buffer, index, packet, parent)

  -- Reason: 4 Byte Ascii String
  index, reason = dissect.reason(buffer, index, packet, parent)

  -- Session Change Reason: 1 Byte Unsigned Fixed Width Integer Enum with 6 values
  index, session_change_reason = dissect.session_change_reason(buffer, index, packet, parent)

  -- New End Time: 8 Byte Ascii String
  index, new_end_time = dissect.new_end_time(buffer, index, packet, parent)

  -- Book Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, book_type = dissect.book_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Status Message
dissect.symbol_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_status_message then
    local length = size_of.symbol_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.symbol_status_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.symbol_status_message, range, display)
  end

  return dissect.symbol_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Previous Close Price
size_of.previous_close_price = 8

-- Display: Previous Close Price
display.previous_close_price = function(value)
  return "Previous Close Price: "..value
end

-- Dissect: Previous Close Price
dissect.previous_close_price = function(buffer, offset, packet, parent)
  local length = size_of.previous_close_price
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = display.previous_close_price(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.previous_close_price, range, value, display)

  return offset + length, value
end

-- Size: Reserved Alpha
size_of.reserved_alpha = 4

-- Display: Reserved Alpha
display.reserved_alpha = function(value)
  return "Reserved Alpha: "..value
end

-- Dissect: Reserved Alpha
dissect.reserved_alpha = function(buffer, offset, packet, parent)
  local length = size_of.reserved_alpha
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reserved_alpha(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.reserved_alpha, range, value, display)

  return offset + length, value
end

-- Size: Reserved Byte
size_of.reserved_byte = 1

-- Display: Reserved Byte
display.reserved_byte = function(value)
  return "Reserved Byte: "..value
end

-- Dissect: Reserved Byte
dissect.reserved_byte = function(buffer, offset, packet, parent)
  local length = size_of.reserved_byte
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reserved_byte(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.reserved_byte, range, value, display)

  return offset + length, value
end

-- Size: Currency
size_of.currency = 3

-- Display: Currency
display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
dissect.currency = function(buffer, offset, packet, parent)
  local length = size_of.currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.currency(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Underlying
size_of.underlying = 6

-- Display: Underlying
display.underlying = function(value)
  return "Underlying: "..value
end

-- Dissect: Underlying
dissect.underlying = function(buffer, offset, packet, parent)
  local length = size_of.underlying
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.underlying, range, value, display)

  return offset + length, value
end

-- Size: Segment
size_of.segment = 6

-- Display: Segment
display.segment = function(value)
  return "Segment: "..value
end

-- Dissect: Segment
dissect.segment = function(buffer, offset, packet, parent)
  local length = size_of.segment
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.segment(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.segment, range, value, display)

  return offset + length, value
end

-- Size: Sedol
size_of.sedol = 12

-- Display: Sedol
display.sedol = function(value)
  return "Sedol: "..value
end

-- Dissect: Sedol
dissect.sedol = function(buffer, offset, packet, parent)
  local length = size_of.sedol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.sedol(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.sedol, range, value, display)

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

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.isin, range, value, display)

  return offset + length, value
end

-- Size: Symbol Status
size_of.symbol_status = 1

-- Display: Symbol Status
display.symbol_status = function(value)
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
dissect.symbol_status = function(buffer, offset, packet, parent)
  local length = size_of.symbol_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.symbol_status(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.symbol_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Symbol Directory Message
size_of.symbol_directory_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

  index = index + size_of.instrument_id

  index = index + size_of.reserved_a

  index = index + size_of.reserved_b

  index = index + size_of.symbol_status

  index = index + size_of.isin

  index = index + size_of.sedol

  index = index + size_of.segment

  index = index + size_of.underlying

  index = index + size_of.currency

  index = index + size_of.reserved_byte

  index = index + size_of.reserved_alpha

  index = index + size_of.previous_close_price

  return index
end

-- Display: Symbol Directory Message
display.symbol_directory_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Symbol Directory Message
dissect.symbol_directory_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Unsigned Fixed Width Integer
  index, instrument_id = dissect.instrument_id(buffer, index, packet, parent)

  -- Reserved A: 1 Byte Ascii String
  index, reserved_a = dissect.reserved_a(buffer, index, packet, parent)

  -- Reserved B: 1 Byte Ascii String
  index, reserved_b = dissect.reserved_b(buffer, index, packet, parent)

  -- Symbol Status: 1 Byte Ascii String Enum with 4 values
  index, symbol_status = dissect.symbol_status(buffer, index, packet, parent)

  -- Isin: 12 Byte Ascii String
  index, isin = dissect.isin(buffer, index, packet, parent)

  -- Sedol: 12 Byte Ascii String
  index, sedol = dissect.sedol(buffer, index, packet, parent)

  -- Segment: 6 Byte Ascii String
  index, segment = dissect.segment(buffer, index, packet, parent)

  -- Underlying: 6 Byte Ascii String
  index, underlying = dissect.underlying(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Reserved Byte: 1 Byte Ascii String
  index, reserved_byte = dissect.reserved_byte(buffer, index, packet, parent)

  -- Reserved Alpha: 4 Byte Ascii String
  index, reserved_alpha = dissect.reserved_alpha(buffer, index, packet, parent)

  -- Previous Close Price: 8 Byte Signed Fixed Width Integer
  index, previous_close_price = dissect.previous_close_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Directory Message
dissect.symbol_directory_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.symbol_directory_message then
    local length = size_of.symbol_directory_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.symbol_directory_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.symbol_directory_message, range, display)
  end

  return dissect.symbol_directory_message_fields(buffer, offset, packet, parent)
end

-- Size: Event Code
size_of.event_code = 1

-- Display: Event Code
display.event_code = function(value)
  if value == "C" then
    return "Event Code: End Of Day (C)"
  end
  if value == "O" then
    return "Event Code: Start Of Day (O)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
dissect.event_code = function(buffer, offset, packet, parent)
  local length = size_of.event_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.event_code(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.event_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: System Event Message
size_of.system_event_message = function(buffer, offset)
  local index = 0

  index = index + size_of.nanosecond

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

  -- Nanosecond: 4 Byte Unsigned Fixed Width Integer
  index, nanosecond = dissect.nanosecond(buffer, index, packet, parent)

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
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.system_event_message, range, display)
  end

  return dissect.system_event_message_fields(buffer, offset, packet, parent)
end

-- Size: Seconds
size_of.seconds = 4

-- Display: Seconds
display.seconds = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
dissect.seconds = function(buffer, offset, packet, parent)
  local length = size_of.seconds
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.seconds(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Time Message
size_of.time_message = function(buffer, offset)
  local index = 0

  index = index + size_of.seconds

  return index
end

-- Display: Time Message
display.time_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Time Message
dissect.time_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = dissect.seconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Time Message
dissect.time_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.time_message then
    local length = size_of.time_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.time_message(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.time_message, range, display)
  end

  return dissect.time_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, message_type)
  -- Size of Time Message
  if message_type == 0x54 then
    return size_of.time_message(buffer, offset)
  end
  -- Size of System Event Message
  if message_type == 0x53 then
    return size_of.system_event_message(buffer, offset)
  end
  -- Size of Symbol Directory Message
  if message_type == 0x52 then
    return size_of.symbol_directory_message(buffer, offset)
  end
  -- Size of Symbol Status Message
  if message_type == 0x48 then
    return size_of.symbol_status_message(buffer, offset)
  end
  -- Size of Add Order Message
  if message_type == 0x41 then
    return size_of.add_order_message(buffer, offset)
  end
  -- Size of Add Attributed Order Message
  if message_type == 0x46 then
    return size_of.add_attributed_order_message(buffer, offset)
  end
  -- Size of Order Deleted Message
  if message_type == 0x44 then
    return size_of.order_deleted_message(buffer, offset)
  end
  -- Size of Order Modified Message
  if message_type == 0x55 then
    return size_of.order_modified_message(buffer, offset)
  end
  -- Size of Order Book Clear Message
  if message_type == 0x79 then
    return size_of.order_book_clear_message(buffer, offset)
  end
  -- Size of Order Executed Message
  if message_type == 0x45 then
    return size_of.order_executed_message(buffer, offset)
  end
  -- Size of Order Executed With Price Size Message
  if message_type == 0x43 then
    return size_of.order_executed_with_price_size_message(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == 0x50 then
    return size_of.trade_message(buffer, offset)
  end
  -- Size of Auction Trade Message
  if message_type == 0x51 then
    return size_of.auction_trade_message(buffer, offset)
  end
  -- Size of Auction Info Message
  if message_type == 0x49 then
    return size_of.auction_info_message(buffer, offset)
  end
  -- Size of Statistics Message
  if message_type == 0x77 then
    return size_of.statistics_message(buffer, offset)
  end
  -- Size of Top Of Book Message
  if message_type == 0x71 then
    return size_of.top_of_book_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Time Message
  if message_type == 0x54 then
    return dissect.time_message(buffer, offset, packet, parent)
  end
  -- Dissect System Event Message
  if message_type == 0x53 then
    return dissect.system_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Directory Message
  if message_type == 0x52 then
    return dissect.symbol_directory_message(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Status Message
  if message_type == 0x48 then
    return dissect.symbol_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Order Message
  if message_type == 0x41 then
    return dissect.add_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Attributed Order Message
  if message_type == 0x46 then
    return dissect.add_attributed_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Deleted Message
  if message_type == 0x44 then
    return dissect.order_deleted_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if message_type == 0x55 then
    return dissect.order_modified_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Book Clear Message
  if message_type == 0x79 then
    return dissect.order_book_clear_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 0x45 then
    return dissect.order_executed_message(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed With Price Size Message
  if message_type == 0x43 then
    return dissect.order_executed_with_price_size_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == 0x50 then
    return dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Trade Message
  if message_type == 0x51 then
    return dissect.auction_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Auction Info Message
  if message_type == 0x49 then
    return dissect.auction_info_message(buffer, offset, packet, parent)
  end
  -- Dissect Statistics Message
  if message_type == 0x77 then
    return dissect.statistics_message(buffer, offset, packet, parent)
  end
  -- Dissect Top Of Book Message
  if message_type == 0x71 then
    return dissect.top_of_book_message(buffer, offset, packet, parent)
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
  local element = parent:add(lse_millennium_level_2_mitch_v11_9.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
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
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Message Length
size_of.message_length = 1

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

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.message_length

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

  -- Message Length: 1 Byte Unsigned Fixed Width Integer
  index, message_length = dissect.message_length(buffer, index, packet, parent)

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 16 values
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
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_header(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):uint()
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
  local message_type = buffer(index - 1, 1):uint()

  -- Payload: Runtime Type with 16 branches
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
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Sequence Number
size_of.sequence_number = 4

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.sequence_number
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Market Data Group
size_of.market_data_group = 1

-- Display: Market Data Group
display.market_data_group = function(value)
  return "Market Data Group: "..value
end

-- Dissect: Market Data Group
dissect.market_data_group = function(buffer, offset, packet, parent)
  local length = size_of.market_data_group
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_data_group(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.market_data_group, range, value, display)

  return offset + length, value
end

-- Size: Message Count
size_of.message_count = 1

-- Display: Message Count
display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
dissect.message_count = function(buffer, offset, packet, parent)
  local length = size_of.message_count
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = display.message_count(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.message_count, range, value, display)

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
  local value = range:le_uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(lse_millennium_level_2_mitch_v11_9.fields.length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Unit Header
size_of.unit_header = function(buffer, offset)
  local index = 0

  index = index + size_of.length

  index = index + size_of.message_count

  index = index + size_of.market_data_group

  index = index + size_of.sequence_number

  return index
end

-- Display: Unit Header
display.unit_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Unit Header
dissect.unit_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = dissect.length(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = dissect.message_count(buffer, index, packet, parent)

  -- Market Data Group: 1 Byte Ascii String
  index, market_data_group = dissect.market_data_group(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = dissect.sequence_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Unit Header
dissect.unit_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.unit_header then
    local length = size_of.unit_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.unit_header(buffer, packet, parent)
    parent = parent:add(lse_millennium_level_2_mitch_v11_9.fields.unit_header, range, display)
  end

  return dissect.unit_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Unit Header: Struct of 4 fields
  index, unit_header = dissect.unit_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
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
function lse_millennium_level_2_mitch_v11_9.init()
end

-- Dissector for Lse Millennium Level 2 Mitch 11.9
function lse_millennium_level_2_mitch_v11_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = lse_millennium_level_2_mitch_v11_9.name

  -- Dissect protocol
  local protocol = parent:add(lse_millennium_level_2_mitch_v11_9, buffer(), lse_millennium_level_2_mitch_v11_9.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, lse_millennium_level_2_mitch_v11_9)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.lse_millennium_level_2_mitch_v11_9_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Lse Millennium Level 2 Mitch 11.9
local function lse_millennium_level_2_mitch_v11_9_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.lse_millennium_level_2_mitch_v11_9_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = lse_millennium_level_2_mitch_v11_9
  lse_millennium_level_2_mitch_v11_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Lse Millennium Level 2 Mitch 11.9
lse_millennium_level_2_mitch_v11_9:register_heuristic("udp", lse_millennium_level_2_mitch_v11_9_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: London Stock Exchange
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
-- This script was generated by the Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
