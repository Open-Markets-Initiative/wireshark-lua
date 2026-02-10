-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Memx Options MemoirTop Sbe 1.3 Protocol
local omi_memx_options_memoirtop_sbe_v1_3 = Proto("Memx.Options.MemoirTop.Sbe.v1.3.Lua", "Memx Options MemoirTop Sbe 1.3")

-- Protocol table
local memx_options_memoirtop_sbe_v1_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Memx Options MemoirTop Sbe 1.3 Fields
omi_memx_options_memoirtop_sbe_v1_3.fields.as_of_sequence_number = ProtoField.new("As Of Sequence Number", "memx.options.memoirtop.sbe.v1.3.asofsequencenumber", ftypes.UINT64)
omi_memx_options_memoirtop_sbe_v1_3.fields.bid_price = ProtoField.new("Bid Price", "memx.options.memoirtop.sbe.v1.3.bidprice", ftypes.DOUBLE)
omi_memx_options_memoirtop_sbe_v1_3.fields.bid_price_short = ProtoField.new("Bid Price Short", "memx.options.memoirtop.sbe.v1.3.bidpriceshort", ftypes.DOUBLE)
omi_memx_options_memoirtop_sbe_v1_3.fields.block_length = ProtoField.new("Block Length", "memx.options.memoirtop.sbe.v1.3.blocklength", ftypes.UINT16)
omi_memx_options_memoirtop_sbe_v1_3.fields.capacity = ProtoField.new("Capacity", "memx.options.memoirtop.sbe.v1.3.capacity", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.closing_only = ProtoField.new("Closing Only", "memx.options.memoirtop.sbe.v1.3.closingonly", ftypes.UINT8)
omi_memx_options_memoirtop_sbe_v1_3.fields.closing_time = ProtoField.new("Closing Time", "memx.options.memoirtop.sbe.v1.3.closingtime", ftypes.UINT64)
omi_memx_options_memoirtop_sbe_v1_3.fields.common_header = ProtoField.new("Common Header", "memx.options.memoirtop.sbe.v1.3.commonheader", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.corrected_price = ProtoField.new("Corrected Price", "memx.options.memoirtop.sbe.v1.3.correctedprice", ftypes.DOUBLE)
omi_memx_options_memoirtop_sbe_v1_3.fields.corrected_quantity = ProtoField.new("Corrected Quantity", "memx.options.memoirtop.sbe.v1.3.correctedquantity", ftypes.UINT32)
omi_memx_options_memoirtop_sbe_v1_3.fields.cust_bid_size = ProtoField.new("Cust Bid Size", "memx.options.memoirtop.sbe.v1.3.custbidsize", ftypes.UINT32)
omi_memx_options_memoirtop_sbe_v1_3.fields.cust_bid_size_short = ProtoField.new("Cust Bid Size Short", "memx.options.memoirtop.sbe.v1.3.custbidsizeshort", ftypes.UINT16)
omi_memx_options_memoirtop_sbe_v1_3.fields.cust_offer_size = ProtoField.new("Cust Offer Size", "memx.options.memoirtop.sbe.v1.3.custoffersize", ftypes.UINT32)
omi_memx_options_memoirtop_sbe_v1_3.fields.cust_quantity = ProtoField.new("Cust Quantity", "memx.options.memoirtop.sbe.v1.3.custquantity", ftypes.UINT32)
omi_memx_options_memoirtop_sbe_v1_3.fields.header_length = ProtoField.new("Header Length", "memx.options.memoirtop.sbe.v1.3.headerlength", ftypes.UINT8)
omi_memx_options_memoirtop_sbe_v1_3.fields.instrument_trading_status = ProtoField.new("Instrument Trading Status", "memx.options.memoirtop.sbe.v1.3.instrumenttradingstatus", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.instrument_trading_status_reason = ProtoField.new("Instrument Trading Status Reason", "memx.options.memoirtop.sbe.v1.3.instrumenttradingstatusreason", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "memx.options.memoirtop.sbe.v1.3.intermarketsweep", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x01)
omi_memx_options_memoirtop_sbe_v1_3.fields.is_test_symbol = ProtoField.new("Is Test Symbol", "memx.options.memoirtop.sbe.v1.3.istestsymbol", ftypes.UINT8)
omi_memx_options_memoirtop_sbe_v1_3.fields.maturity_date = ProtoField.new("Maturity Date", "memx.options.memoirtop.sbe.v1.3.maturitydate", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.message = ProtoField.new("Message", "memx.options.memoirtop.sbe.v1.3.message", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.message_count = ProtoField.new("Message Count", "memx.options.memoirtop.sbe.v1.3.messagecount", ftypes.UINT16)
omi_memx_options_memoirtop_sbe_v1_3.fields.message_length = ProtoField.new("Message Length", "memx.options.memoirtop.sbe.v1.3.messagelength", ftypes.UINT16)
omi_memx_options_memoirtop_sbe_v1_3.fields.message_type = ProtoField.new("Message Type", "memx.options.memoirtop.sbe.v1.3.messagetype", ftypes.UINT8)
omi_memx_options_memoirtop_sbe_v1_3.fields.offer_price = ProtoField.new("Offer Price", "memx.options.memoirtop.sbe.v1.3.offerprice", ftypes.DOUBLE)
omi_memx_options_memoirtop_sbe_v1_3.fields.offer_price_short = ProtoField.new("Offer Price Short", "memx.options.memoirtop.sbe.v1.3.offerpriceshort", ftypes.DOUBLE)
omi_memx_options_memoirtop_sbe_v1_3.fields.options_product_type = ProtoField.new("Options Product Type", "memx.options.memoirtop.sbe.v1.3.optionsproducttype", ftypes.UINT8)
omi_memx_options_memoirtop_sbe_v1_3.fields.original_price = ProtoField.new("Original Price", "memx.options.memoirtop.sbe.v1.3.originalprice", ftypes.DOUBLE)
omi_memx_options_memoirtop_sbe_v1_3.fields.original_quantity = ProtoField.new("Original Quantity", "memx.options.memoirtop.sbe.v1.3.originalquantity", ftypes.UINT32)
omi_memx_options_memoirtop_sbe_v1_3.fields.osi_root = ProtoField.new("Osi Root", "memx.options.memoirtop.sbe.v1.3.osiroot", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.packet = ProtoField.new("Packet", "memx.options.memoirtop.sbe.v1.3.packet", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.payload = ProtoField.new("Payload", "memx.options.memoirtop.sbe.v1.3.payload", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.price = ProtoField.new("Price", "memx.options.memoirtop.sbe.v1.3.price", ftypes.DOUBLE)
omi_memx_options_memoirtop_sbe_v1_3.fields.quantity = ProtoField.new("Quantity", "memx.options.memoirtop.sbe.v1.3.quantity", ftypes.UINT32)
omi_memx_options_memoirtop_sbe_v1_3.fields.reserved_7 = ProtoField.new("Reserved 7", "memx.options.memoirtop.sbe.v1.3.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_memx_options_memoirtop_sbe_v1_3.fields.sbe_header = ProtoField.new("Sbe Header", "memx.options.memoirtop.sbe.v1.3.sbeheader", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.sbe_message = ProtoField.new("Sbe Message", "memx.options.memoirtop.sbe.v1.3.sbemessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.schema_id = ProtoField.new("Schema Id", "memx.options.memoirtop.sbe.v1.3.schemaid", ftypes.UINT8)
omi_memx_options_memoirtop_sbe_v1_3.fields.sequence_number = ProtoField.new("Sequence Number", "memx.options.memoirtop.sbe.v1.3.sequencenumber", ftypes.UINT64)
omi_memx_options_memoirtop_sbe_v1_3.fields.sequenced_message = ProtoField.new("Sequenced Message", "memx.options.memoirtop.sbe.v1.3.sequencedmessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.sequenced_messages = ProtoField.new("Sequenced Messages", "memx.options.memoirtop.sbe.v1.3.sequencedmessages", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.session_id = ProtoField.new("Session Id", "memx.options.memoirtop.sbe.v1.3.sessionid", ftypes.UINT64)
omi_memx_options_memoirtop_sbe_v1_3.fields.side = ProtoField.new("Side", "memx.options.memoirtop.sbe.v1.3.side", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.strike_price = ProtoField.new("Strike Price", "memx.options.memoirtop.sbe.v1.3.strikeprice", ftypes.DOUBLE)
omi_memx_options_memoirtop_sbe_v1_3.fields.strike_put_or_call = ProtoField.new("Strike Put Or Call", "memx.options.memoirtop.sbe.v1.3.strikeputorcall", ftypes.UINT8)
omi_memx_options_memoirtop_sbe_v1_3.fields.symbol = ProtoField.new("Symbol", "memx.options.memoirtop.sbe.v1.3.symbol", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.template_id = ProtoField.new("Template Id", "memx.options.memoirtop.sbe.v1.3.templateid", ftypes.UINT8)
omi_memx_options_memoirtop_sbe_v1_3.fields.timestamp = ProtoField.new("Timestamp", "memx.options.memoirtop.sbe.v1.3.timestamp", ftypes.UINT64)
omi_memx_options_memoirtop_sbe_v1_3.fields.total_bid_size = ProtoField.new("Total Bid Size", "memx.options.memoirtop.sbe.v1.3.totalbidsize", ftypes.UINT32)
omi_memx_options_memoirtop_sbe_v1_3.fields.total_bid_size_short = ProtoField.new("Total Bid Size Short", "memx.options.memoirtop.sbe.v1.3.totalbidsizeshort", ftypes.UINT16)
omi_memx_options_memoirtop_sbe_v1_3.fields.total_offer_size = ProtoField.new("Total Offer Size", "memx.options.memoirtop.sbe.v1.3.totaloffersize", ftypes.UINT32)
omi_memx_options_memoirtop_sbe_v1_3.fields.trade_conditions = ProtoField.new("Trade Conditions", "memx.options.memoirtop.sbe.v1.3.tradeconditions", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.trade_id = ProtoField.new("Trade Id", "memx.options.memoirtop.sbe.v1.3.tradeid", ftypes.UINT64)
omi_memx_options_memoirtop_sbe_v1_3.fields.trading_session = ProtoField.new("Trading Session", "memx.options.memoirtop.sbe.v1.3.tradingsession", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.underlier = ProtoField.new("Underlier", "memx.options.memoirtop.sbe.v1.3.underlier", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.version = ProtoField.new("Version", "memx.options.memoirtop.sbe.v1.3.version", ftypes.UINT16)

-- Memx Options Sbe MemoirTop 1.3 Application Messages
omi_memx_options_memoirtop_sbe_v1_3.fields.best_bid_message = ProtoField.new("Best Bid Message", "memx.options.memoirtop.sbe.v1.3.bestbidmessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.best_bid_offer_message = ProtoField.new("Best Bid Offer Message", "memx.options.memoirtop.sbe.v1.3.bestbidoffermessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.best_bid_short_message = ProtoField.new("Best Bid Short Message", "memx.options.memoirtop.sbe.v1.3.bestbidshortmessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.best_offer_message = ProtoField.new("Best Offer Message", "memx.options.memoirtop.sbe.v1.3.bestoffermessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.best_offer_short_message = ProtoField.new("Best Offer Short Message", "memx.options.memoirtop.sbe.v1.3.bestoffershortmessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.broken_trade_message = ProtoField.new("Broken Trade Message", "memx.options.memoirtop.sbe.v1.3.brokentrademessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.clear_book_message = ProtoField.new("Clear Book Message", "memx.options.memoirtop.sbe.v1.3.clearbookmessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.corrected_trade_message = ProtoField.new("Corrected Trade Message", "memx.options.memoirtop.sbe.v1.3.correctedtrademessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.instrument_directory_message = ProtoField.new("Instrument Directory Message", "memx.options.memoirtop.sbe.v1.3.instrumentdirectorymessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.instrument_trading_status_message = ProtoField.new("Instrument Trading Status Message", "memx.options.memoirtop.sbe.v1.3.instrumenttradingstatusmessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.snapshot_complete_message = ProtoField.new("Snapshot Complete Message", "memx.options.memoirtop.sbe.v1.3.snapshotcompletemessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.trade_message = ProtoField.new("Trade Message", "memx.options.memoirtop.sbe.v1.3.trademessage", ftypes.STRING)
omi_memx_options_memoirtop_sbe_v1_3.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "memx.options.memoirtop.sbe.v1.3.tradingsessionstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Memx Options MemoirTop Sbe 1.3 Element Dissection Options
show.best_bid_message = true
show.best_bid_offer_message = true
show.best_bid_short_message = true
show.best_offer_message = true
show.best_offer_short_message = true
show.broken_trade_message = true
show.clear_book_message = true
show.common_header = true
show.corrected_trade_message = true
show.instrument_directory_message = true
show.instrument_trading_status_message = true
show.message = true
show.packet = true
show.sbe_header = true
show.sbe_message = true
show.sequenced_message = true
show.snapshot_complete_message = true
show.trade_conditions = true
show.trade_message = true
show.trading_session_status_message = true
show.payload = false
show.sequenced_messages = false

-- Register Memx Options MemoirTop Sbe 1.3 Show Options
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_bid_message = Pref.bool("Show Best Bid Message", show.best_bid_message, "Parse and add Best Bid Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_bid_offer_message = Pref.bool("Show Best Bid Offer Message", show.best_bid_offer_message, "Parse and add Best Bid Offer Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_bid_short_message = Pref.bool("Show Best Bid Short Message", show.best_bid_short_message, "Parse and add Best Bid Short Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_offer_message = Pref.bool("Show Best Offer Message", show.best_offer_message, "Parse and add Best Offer Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_offer_short_message = Pref.bool("Show Best Offer Short Message", show.best_offer_short_message, "Parse and add Best Offer Short Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_broken_trade_message = Pref.bool("Show Broken Trade Message", show.broken_trade_message, "Parse and add Broken Trade Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_clear_book_message = Pref.bool("Show Clear Book Message", show.clear_book_message, "Parse and add Clear Book Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_common_header = Pref.bool("Show Common Header", show.common_header, "Parse and add Common Header to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_corrected_trade_message = Pref.bool("Show Corrected Trade Message", show.corrected_trade_message, "Parse and add Corrected Trade Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_instrument_directory_message = Pref.bool("Show Instrument Directory Message", show.instrument_directory_message, "Parse and add Instrument Directory Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_instrument_trading_status_message = Pref.bool("Show Instrument Trading Status Message", show.instrument_trading_status_message, "Parse and add Instrument Trading Status Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_sbe_header = Pref.bool("Show Sbe Header", show.sbe_header, "Parse and add Sbe Header to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_sbe_message = Pref.bool("Show Sbe Message", show.sbe_message, "Parse and add Sbe Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_sequenced_message = Pref.bool("Show Sequenced Message", show.sequenced_message, "Parse and add Sequenced Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_snapshot_complete_message = Pref.bool("Show Snapshot Complete Message", show.snapshot_complete_message, "Parse and add Snapshot Complete Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_trade_conditions = Pref.bool("Show Trade Conditions", show.trade_conditions, "Parse and add Trade Conditions to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_trading_session_status_message = Pref.bool("Show Trading Session Status Message", show.trading_session_status_message, "Parse and add Trading Session Status Message to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_memx_options_memoirtop_sbe_v1_3.prefs.show_sequenced_messages = Pref.bool("Show Sequenced Messages", show.sequenced_messages, "Parse and add Sequenced Messages to protocol tree")

-- Handle changed preferences
function omi_memx_options_memoirtop_sbe_v1_3.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.best_bid_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_bid_message then
    show.best_bid_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_bid_message
    changed = true
  end
  if show.best_bid_offer_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_bid_offer_message then
    show.best_bid_offer_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_bid_offer_message
    changed = true
  end
  if show.best_bid_short_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_bid_short_message then
    show.best_bid_short_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_bid_short_message
    changed = true
  end
  if show.best_offer_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_offer_message then
    show.best_offer_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_offer_message
    changed = true
  end
  if show.best_offer_short_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_offer_short_message then
    show.best_offer_short_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_best_offer_short_message
    changed = true
  end
  if show.broken_trade_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_broken_trade_message then
    show.broken_trade_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_broken_trade_message
    changed = true
  end
  if show.clear_book_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_clear_book_message then
    show.clear_book_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_clear_book_message
    changed = true
  end
  if show.common_header ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_common_header then
    show.common_header = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_common_header
    changed = true
  end
  if show.corrected_trade_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_corrected_trade_message then
    show.corrected_trade_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_corrected_trade_message
    changed = true
  end
  if show.instrument_directory_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_instrument_directory_message then
    show.instrument_directory_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_instrument_directory_message
    changed = true
  end
  if show.instrument_trading_status_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_instrument_trading_status_message then
    show.instrument_trading_status_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_instrument_trading_status_message
    changed = true
  end
  if show.message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_message then
    show.message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_message
    changed = true
  end
  if show.packet ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_packet then
    show.packet = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_packet
    changed = true
  end
  if show.sbe_header ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_sbe_header then
    show.sbe_header = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_sbe_header
    changed = true
  end
  if show.sbe_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_sbe_message then
    show.sbe_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_sbe_message
    changed = true
  end
  if show.sequenced_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_sequenced_message then
    show.sequenced_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_sequenced_message
    changed = true
  end
  if show.snapshot_complete_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_snapshot_complete_message then
    show.snapshot_complete_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_snapshot_complete_message
    changed = true
  end
  if show.trade_conditions ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_trade_conditions then
    show.trade_conditions = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_trade_conditions
    changed = true
  end
  if show.trade_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_trade_message then
    show.trade_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_trade_message
    changed = true
  end
  if show.trading_session_status_message ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_trading_session_status_message then
    show.trading_session_status_message = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_trading_session_status_message
    changed = true
  end
  if show.payload ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_payload then
    show.payload = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_payload
    changed = true
  end
  if show.sequenced_messages ~= omi_memx_options_memoirtop_sbe_v1_3.prefs.show_sequenced_messages then
    show.sequenced_messages = omi_memx_options_memoirtop_sbe_v1_3.prefs.show_sequenced_messages
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Memx Options MemoirTop Sbe 1.3
-----------------------------------------------------------------------

-- Symbol
memx_options_memoirtop_sbe_v1_3.symbol = {}

-- Size: Symbol
memx_options_memoirtop_sbe_v1_3.symbol.size = 8

-- Display: Symbol
memx_options_memoirtop_sbe_v1_3.symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Symbol: No Value"
  end

  return "Symbol: "..value
end

-- Dissect: Symbol
memx_options_memoirtop_sbe_v1_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.symbol.size
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

  local display = memx_options_memoirtop_sbe_v1_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Timestamp
memx_options_memoirtop_sbe_v1_3.timestamp = {}

-- Size: Timestamp
memx_options_memoirtop_sbe_v1_3.timestamp.size = 8

-- Display: Timestamp
memx_options_memoirtop_sbe_v1_3.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
memx_options_memoirtop_sbe_v1_3.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.timestamp.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirtop_sbe_v1_3.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Clear Book Message
memx_options_memoirtop_sbe_v1_3.clear_book_message = {}

-- Size: Clear Book Message
memx_options_memoirtop_sbe_v1_3.clear_book_message.size =
  memx_options_memoirtop_sbe_v1_3.timestamp.size + 
  memx_options_memoirtop_sbe_v1_3.symbol.size

-- Display: Clear Book Message
memx_options_memoirtop_sbe_v1_3.clear_book_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Clear Book Message
memx_options_memoirtop_sbe_v1_3.clear_book_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirtop_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BestBidSymbol
  index, symbol = memx_options_memoirtop_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Clear Book Message
memx_options_memoirtop_sbe_v1_3.clear_book_message.dissect = function(buffer, offset, packet, parent)
  if show.clear_book_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.clear_book_message, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.clear_book_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.clear_book_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.clear_book_message.fields(buffer, offset, packet, parent)
  end
end

-- Capacity
memx_options_memoirtop_sbe_v1_3.capacity = {}

-- Size: Capacity
memx_options_memoirtop_sbe_v1_3.capacity.size = 1

-- Display: Capacity
memx_options_memoirtop_sbe_v1_3.capacity.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Capacity: No Value"
  end

  if value == "C" then
    return "Capacity: Customer (C)"
  end
  if value == "N" then
    return "Capacity: Non Customer (N)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
memx_options_memoirtop_sbe_v1_3.capacity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.capacity.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirtop_sbe_v1_3.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.capacity, range, value, display)

  return offset + length, value
end

-- Cust Quantity
memx_options_memoirtop_sbe_v1_3.cust_quantity = {}

-- Size: Cust Quantity
memx_options_memoirtop_sbe_v1_3.cust_quantity.size = 4

-- Display: Cust Quantity
memx_options_memoirtop_sbe_v1_3.cust_quantity.display = function(value)
  return "Cust Quantity: "..value
end

-- Dissect: Cust Quantity
memx_options_memoirtop_sbe_v1_3.cust_quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.cust_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.cust_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.cust_quantity, range, value, display)

  return offset + length, value
end

-- Price
memx_options_memoirtop_sbe_v1_3.price = {}

-- Size: Price
memx_options_memoirtop_sbe_v1_3.price.size = 8

-- Display: Price
memx_options_memoirtop_sbe_v1_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
memx_options_memoirtop_sbe_v1_3.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
memx_options_memoirtop_sbe_v1_3.price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memoirtop_sbe_v1_3.price.translate(raw)
  local display = memx_options_memoirtop_sbe_v1_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.price, range, value, display)

  return offset + length, value
end

-- Quantity
memx_options_memoirtop_sbe_v1_3.quantity = {}

-- Size: Quantity
memx_options_memoirtop_sbe_v1_3.quantity.size = 4

-- Display: Quantity
memx_options_memoirtop_sbe_v1_3.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
memx_options_memoirtop_sbe_v1_3.quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.quantity, range, value, display)

  return offset + length, value
end

-- Side
memx_options_memoirtop_sbe_v1_3.side = {}

-- Size: Side
memx_options_memoirtop_sbe_v1_3.side.size = 1

-- Display: Side
memx_options_memoirtop_sbe_v1_3.side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side: No Value"
  end

  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
memx_options_memoirtop_sbe_v1_3.side.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirtop_sbe_v1_3.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.side, range, value, display)

  return offset + length, value
end

-- Trade Conditions
memx_options_memoirtop_sbe_v1_3.trade_conditions = {}

-- Size: Trade Conditions
memx_options_memoirtop_sbe_v1_3.trade_conditions.size = 1

-- Display: Trade Conditions
memx_options_memoirtop_sbe_v1_3.trade_conditions.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Intermarket Sweep flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Intermarket Sweep"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trade Conditions
memx_options_memoirtop_sbe_v1_3.trade_conditions.bits = function(range, value, packet, parent)

  -- Intermarket Sweep: 1 Bit
  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.intermarket_sweep, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.reserved_7, range, value)
end

-- Dissect: Trade Conditions
memx_options_memoirtop_sbe_v1_3.trade_conditions.dissect = function(buffer, offset, packet, parent)
  local size = memx_options_memoirtop_sbe_v1_3.trade_conditions.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = memx_options_memoirtop_sbe_v1_3.trade_conditions.display(range, value, packet, parent)
  local element = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.trade_conditions, range, display)

  if show.trade_conditions then
    memx_options_memoirtop_sbe_v1_3.trade_conditions.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Id
memx_options_memoirtop_sbe_v1_3.trade_id = {}

-- Size: Trade Id
memx_options_memoirtop_sbe_v1_3.trade_id.size = 8

-- Display: Trade Id
memx_options_memoirtop_sbe_v1_3.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
memx_options_memoirtop_sbe_v1_3.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.trade_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirtop_sbe_v1_3.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trade Message
memx_options_memoirtop_sbe_v1_3.trade_message = {}

-- Size: Trade Message
memx_options_memoirtop_sbe_v1_3.trade_message.size =
  memx_options_memoirtop_sbe_v1_3.timestamp.size + 
  memx_options_memoirtop_sbe_v1_3.symbol.size + 
  memx_options_memoirtop_sbe_v1_3.trade_id.size + 
  memx_options_memoirtop_sbe_v1_3.trade_conditions.size + 
  memx_options_memoirtop_sbe_v1_3.side.size + 
  memx_options_memoirtop_sbe_v1_3.quantity.size + 
  memx_options_memoirtop_sbe_v1_3.price.size + 
  memx_options_memoirtop_sbe_v1_3.cust_quantity.size + 
  memx_options_memoirtop_sbe_v1_3.capacity.size

-- Display: Trade Message
memx_options_memoirtop_sbe_v1_3.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
memx_options_memoirtop_sbe_v1_3.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirtop_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BestBidSymbol
  index, symbol = memx_options_memoirtop_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = memx_options_memoirtop_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Trade Conditions: Struct of 2 fields
  index, trade_conditions = memx_options_memoirtop_sbe_v1_3.trade_conditions.dissect(buffer, index, packet, parent)

  -- Side: SideType
  index, side = memx_options_memoirtop_sbe_v1_3.side.dissect(buffer, index, packet, parent)

  -- Quantity: uint32
  index, quantity = memx_options_memoirtop_sbe_v1_3.quantity.dissect(buffer, index, packet, parent)

  -- Price: PriceType
  index, price = memx_options_memoirtop_sbe_v1_3.price.dissect(buffer, index, packet, parent)

  -- Cust Quantity: uint32
  index, cust_quantity = memx_options_memoirtop_sbe_v1_3.cust_quantity.dissect(buffer, index, packet, parent)

  -- Capacity: OrderCapacityType
  index, capacity = memx_options_memoirtop_sbe_v1_3.capacity.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
memx_options_memoirtop_sbe_v1_3.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.trade_message, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Price Short
memx_options_memoirtop_sbe_v1_3.offer_price_short = {}

-- Size: Offer Price Short
memx_options_memoirtop_sbe_v1_3.offer_price_short.size = 2

-- Display: Offer Price Short
memx_options_memoirtop_sbe_v1_3.offer_price_short.display = function(value)
  return "Offer Price Short: "..value
end

-- Translate: Offer Price Short
memx_options_memoirtop_sbe_v1_3.offer_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price Short
memx_options_memoirtop_sbe_v1_3.offer_price_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.offer_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = memx_options_memoirtop_sbe_v1_3.offer_price_short.translate(raw)
  local display = memx_options_memoirtop_sbe_v1_3.offer_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.offer_price_short, range, value, display)

  return offset + length, value
end

-- Cust Bid Size Short
memx_options_memoirtop_sbe_v1_3.cust_bid_size_short = {}

-- Size: Cust Bid Size Short
memx_options_memoirtop_sbe_v1_3.cust_bid_size_short.size = 2

-- Display: Cust Bid Size Short
memx_options_memoirtop_sbe_v1_3.cust_bid_size_short.display = function(value)
  return "Cust Bid Size Short: "..value
end

-- Dissect: Cust Bid Size Short
memx_options_memoirtop_sbe_v1_3.cust_bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.cust_bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.cust_bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.cust_bid_size_short, range, value, display)

  return offset + length, value
end

-- Best Offer Short Message
memx_options_memoirtop_sbe_v1_3.best_offer_short_message = {}

-- Size: Best Offer Short Message
memx_options_memoirtop_sbe_v1_3.best_offer_short_message.size =
  memx_options_memoirtop_sbe_v1_3.timestamp.size + 
  memx_options_memoirtop_sbe_v1_3.symbol.size + 
  memx_options_memoirtop_sbe_v1_3.cust_bid_size_short.size + 
  memx_options_memoirtop_sbe_v1_3.cust_bid_size_short.size + 
  memx_options_memoirtop_sbe_v1_3.offer_price_short.size

-- Display: Best Offer Short Message
memx_options_memoirtop_sbe_v1_3.best_offer_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Offer Short Message
memx_options_memoirtop_sbe_v1_3.best_offer_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirtop_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BestBidSymbol
  index, symbol = memx_options_memoirtop_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Cust Bid Size Short: uint16
  index, cust_bid_size_short = memx_options_memoirtop_sbe_v1_3.cust_bid_size_short.dissect(buffer, index, packet, parent)

  -- Cust Bid Size Short: uint16
  index, cust_bid_size_short = memx_options_memoirtop_sbe_v1_3.cust_bid_size_short.dissect(buffer, index, packet, parent)

  -- Offer Price Short: ShortPriceType
  index, offer_price_short = memx_options_memoirtop_sbe_v1_3.offer_price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Offer Short Message
memx_options_memoirtop_sbe_v1_3.best_offer_short_message.dissect = function(buffer, offset, packet, parent)
  if show.best_offer_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.best_offer_short_message, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.best_offer_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.best_offer_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.best_offer_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price Short
memx_options_memoirtop_sbe_v1_3.bid_price_short = {}

-- Size: Bid Price Short
memx_options_memoirtop_sbe_v1_3.bid_price_short.size = 2

-- Display: Bid Price Short
memx_options_memoirtop_sbe_v1_3.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
memx_options_memoirtop_sbe_v1_3.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
memx_options_memoirtop_sbe_v1_3.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = memx_options_memoirtop_sbe_v1_3.bid_price_short.translate(raw)
  local display = memx_options_memoirtop_sbe_v1_3.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Total Bid Size Short
memx_options_memoirtop_sbe_v1_3.total_bid_size_short = {}

-- Size: Total Bid Size Short
memx_options_memoirtop_sbe_v1_3.total_bid_size_short.size = 2

-- Display: Total Bid Size Short
memx_options_memoirtop_sbe_v1_3.total_bid_size_short.display = function(value)
  return "Total Bid Size Short: "..value
end

-- Dissect: Total Bid Size Short
memx_options_memoirtop_sbe_v1_3.total_bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.total_bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.total_bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.total_bid_size_short, range, value, display)

  return offset + length, value
end

-- Best Bid Short Message
memx_options_memoirtop_sbe_v1_3.best_bid_short_message = {}

-- Size: Best Bid Short Message
memx_options_memoirtop_sbe_v1_3.best_bid_short_message.size =
  memx_options_memoirtop_sbe_v1_3.timestamp.size + 
  memx_options_memoirtop_sbe_v1_3.symbol.size + 
  memx_options_memoirtop_sbe_v1_3.total_bid_size_short.size + 
  memx_options_memoirtop_sbe_v1_3.cust_bid_size_short.size + 
  memx_options_memoirtop_sbe_v1_3.bid_price_short.size

-- Display: Best Bid Short Message
memx_options_memoirtop_sbe_v1_3.best_bid_short_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Short Message
memx_options_memoirtop_sbe_v1_3.best_bid_short_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirtop_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BestBidSymbol
  index, symbol = memx_options_memoirtop_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Total Bid Size Short: uint16
  index, total_bid_size_short = memx_options_memoirtop_sbe_v1_3.total_bid_size_short.dissect(buffer, index, packet, parent)

  -- Cust Bid Size Short: uint16
  index, cust_bid_size_short = memx_options_memoirtop_sbe_v1_3.cust_bid_size_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: ShortPriceType
  index, bid_price_short = memx_options_memoirtop_sbe_v1_3.bid_price_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Short Message
memx_options_memoirtop_sbe_v1_3.best_bid_short_message.dissect = function(buffer, offset, packet, parent)
  if show.best_bid_short_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.best_bid_short_message, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.best_bid_short_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.best_bid_short_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.best_bid_short_message.fields(buffer, offset, packet, parent)
  end
end

-- Offer Price
memx_options_memoirtop_sbe_v1_3.offer_price = {}

-- Size: Offer Price
memx_options_memoirtop_sbe_v1_3.offer_price.size = 8

-- Display: Offer Price
memx_options_memoirtop_sbe_v1_3.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
memx_options_memoirtop_sbe_v1_3.offer_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Offer Price
memx_options_memoirtop_sbe_v1_3.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memoirtop_sbe_v1_3.offer_price.translate(raw)
  local display = memx_options_memoirtop_sbe_v1_3.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Cust Offer Size
memx_options_memoirtop_sbe_v1_3.cust_offer_size = {}

-- Size: Cust Offer Size
memx_options_memoirtop_sbe_v1_3.cust_offer_size.size = 4

-- Display: Cust Offer Size
memx_options_memoirtop_sbe_v1_3.cust_offer_size.display = function(value)
  return "Cust Offer Size: "..value
end

-- Dissect: Cust Offer Size
memx_options_memoirtop_sbe_v1_3.cust_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.cust_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.cust_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.cust_offer_size, range, value, display)

  return offset + length, value
end

-- Total Offer Size
memx_options_memoirtop_sbe_v1_3.total_offer_size = {}

-- Size: Total Offer Size
memx_options_memoirtop_sbe_v1_3.total_offer_size.size = 4

-- Display: Total Offer Size
memx_options_memoirtop_sbe_v1_3.total_offer_size.display = function(value)
  return "Total Offer Size: "..value
end

-- Dissect: Total Offer Size
memx_options_memoirtop_sbe_v1_3.total_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.total_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.total_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.total_offer_size, range, value, display)

  return offset + length, value
end

-- Best Offer Message
memx_options_memoirtop_sbe_v1_3.best_offer_message = {}

-- Size: Best Offer Message
memx_options_memoirtop_sbe_v1_3.best_offer_message.size =
  memx_options_memoirtop_sbe_v1_3.timestamp.size + 
  memx_options_memoirtop_sbe_v1_3.symbol.size + 
  memx_options_memoirtop_sbe_v1_3.total_offer_size.size + 
  memx_options_memoirtop_sbe_v1_3.cust_offer_size.size + 
  memx_options_memoirtop_sbe_v1_3.offer_price.size

-- Display: Best Offer Message
memx_options_memoirtop_sbe_v1_3.best_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Offer Message
memx_options_memoirtop_sbe_v1_3.best_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirtop_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BestBidSymbol
  index, symbol = memx_options_memoirtop_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Total Offer Size: uint32
  index, total_offer_size = memx_options_memoirtop_sbe_v1_3.total_offer_size.dissect(buffer, index, packet, parent)

  -- Cust Offer Size: uint32
  index, cust_offer_size = memx_options_memoirtop_sbe_v1_3.cust_offer_size.dissect(buffer, index, packet, parent)

  -- Offer Price: PriceType
  index, offer_price = memx_options_memoirtop_sbe_v1_3.offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Offer Message
memx_options_memoirtop_sbe_v1_3.best_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.best_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.best_offer_message, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.best_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.best_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.best_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Bid Price
memx_options_memoirtop_sbe_v1_3.bid_price = {}

-- Size: Bid Price
memx_options_memoirtop_sbe_v1_3.bid_price.size = 8

-- Display: Bid Price
memx_options_memoirtop_sbe_v1_3.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
memx_options_memoirtop_sbe_v1_3.bid_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Bid Price
memx_options_memoirtop_sbe_v1_3.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memoirtop_sbe_v1_3.bid_price.translate(raw)
  local display = memx_options_memoirtop_sbe_v1_3.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Cust Bid Size
memx_options_memoirtop_sbe_v1_3.cust_bid_size = {}

-- Size: Cust Bid Size
memx_options_memoirtop_sbe_v1_3.cust_bid_size.size = 4

-- Display: Cust Bid Size
memx_options_memoirtop_sbe_v1_3.cust_bid_size.display = function(value)
  return "Cust Bid Size: "..value
end

-- Dissect: Cust Bid Size
memx_options_memoirtop_sbe_v1_3.cust_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.cust_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.cust_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.cust_bid_size, range, value, display)

  return offset + length, value
end

-- Total Bid Size
memx_options_memoirtop_sbe_v1_3.total_bid_size = {}

-- Size: Total Bid Size
memx_options_memoirtop_sbe_v1_3.total_bid_size.size = 4

-- Display: Total Bid Size
memx_options_memoirtop_sbe_v1_3.total_bid_size.display = function(value)
  return "Total Bid Size: "..value
end

-- Dissect: Total Bid Size
memx_options_memoirtop_sbe_v1_3.total_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.total_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.total_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.total_bid_size, range, value, display)

  return offset + length, value
end

-- Best Bid Message
memx_options_memoirtop_sbe_v1_3.best_bid_message = {}

-- Size: Best Bid Message
memx_options_memoirtop_sbe_v1_3.best_bid_message.size =
  memx_options_memoirtop_sbe_v1_3.timestamp.size + 
  memx_options_memoirtop_sbe_v1_3.symbol.size + 
  memx_options_memoirtop_sbe_v1_3.total_bid_size.size + 
  memx_options_memoirtop_sbe_v1_3.cust_bid_size.size + 
  memx_options_memoirtop_sbe_v1_3.bid_price.size

-- Display: Best Bid Message
memx_options_memoirtop_sbe_v1_3.best_bid_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Message
memx_options_memoirtop_sbe_v1_3.best_bid_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirtop_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BestBidSymbol
  index, symbol = memx_options_memoirtop_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Total Bid Size: uint32
  index, total_bid_size = memx_options_memoirtop_sbe_v1_3.total_bid_size.dissect(buffer, index, packet, parent)

  -- Cust Bid Size: uint32
  index, cust_bid_size = memx_options_memoirtop_sbe_v1_3.cust_bid_size.dissect(buffer, index, packet, parent)

  -- Bid Price: PriceType
  index, bid_price = memx_options_memoirtop_sbe_v1_3.bid_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Message
memx_options_memoirtop_sbe_v1_3.best_bid_message.dissect = function(buffer, offset, packet, parent)
  if show.best_bid_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.best_bid_message, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.best_bid_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.best_bid_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.best_bid_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Offer Message
memx_options_memoirtop_sbe_v1_3.best_bid_offer_message = {}

-- Size: Best Bid Offer Message
memx_options_memoirtop_sbe_v1_3.best_bid_offer_message.size =
  memx_options_memoirtop_sbe_v1_3.timestamp.size + 
  memx_options_memoirtop_sbe_v1_3.symbol.size + 
  memx_options_memoirtop_sbe_v1_3.total_bid_size.size + 
  memx_options_memoirtop_sbe_v1_3.cust_bid_size.size + 
  memx_options_memoirtop_sbe_v1_3.bid_price.size + 
  memx_options_memoirtop_sbe_v1_3.total_offer_size.size + 
  memx_options_memoirtop_sbe_v1_3.cust_offer_size.size + 
  memx_options_memoirtop_sbe_v1_3.offer_price.size

-- Display: Best Bid Offer Message
memx_options_memoirtop_sbe_v1_3.best_bid_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Offer Message
memx_options_memoirtop_sbe_v1_3.best_bid_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirtop_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BestBidSymbol
  index, symbol = memx_options_memoirtop_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Total Bid Size: uint32
  index, total_bid_size = memx_options_memoirtop_sbe_v1_3.total_bid_size.dissect(buffer, index, packet, parent)

  -- Cust Bid Size: uint32
  index, cust_bid_size = memx_options_memoirtop_sbe_v1_3.cust_bid_size.dissect(buffer, index, packet, parent)

  -- Bid Price: PriceType
  index, bid_price = memx_options_memoirtop_sbe_v1_3.bid_price.dissect(buffer, index, packet, parent)

  -- Total Offer Size: uint32
  index, total_offer_size = memx_options_memoirtop_sbe_v1_3.total_offer_size.dissect(buffer, index, packet, parent)

  -- Cust Offer Size: uint32
  index, cust_offer_size = memx_options_memoirtop_sbe_v1_3.cust_offer_size.dissect(buffer, index, packet, parent)

  -- Offer Price: PriceType
  index, offer_price = memx_options_memoirtop_sbe_v1_3.offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Offer Message
memx_options_memoirtop_sbe_v1_3.best_bid_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.best_bid_offer_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.best_bid_offer_message, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.best_bid_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.best_bid_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.best_bid_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- As Of Sequence Number
memx_options_memoirtop_sbe_v1_3.as_of_sequence_number = {}

-- Size: As Of Sequence Number
memx_options_memoirtop_sbe_v1_3.as_of_sequence_number.size = 8

-- Display: As Of Sequence Number
memx_options_memoirtop_sbe_v1_3.as_of_sequence_number.display = function(value)
  return "As Of Sequence Number: "..value
end

-- Dissect: As Of Sequence Number
memx_options_memoirtop_sbe_v1_3.as_of_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.as_of_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirtop_sbe_v1_3.as_of_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.as_of_sequence_number, range, value, display)

  return offset + length, value
end

-- Snapshot Complete Message
memx_options_memoirtop_sbe_v1_3.snapshot_complete_message = {}

-- Size: Snapshot Complete Message
memx_options_memoirtop_sbe_v1_3.snapshot_complete_message.size =
  memx_options_memoirtop_sbe_v1_3.timestamp.size + 
  memx_options_memoirtop_sbe_v1_3.as_of_sequence_number.size

-- Display: Snapshot Complete Message
memx_options_memoirtop_sbe_v1_3.snapshot_complete_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Complete Message
memx_options_memoirtop_sbe_v1_3.snapshot_complete_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirtop_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- As Of Sequence Number: uint64
  index, as_of_sequence_number = memx_options_memoirtop_sbe_v1_3.as_of_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Complete Message
memx_options_memoirtop_sbe_v1_3.snapshot_complete_message.dissect = function(buffer, offset, packet, parent)
  if show.snapshot_complete_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.snapshot_complete_message, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.snapshot_complete_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.snapshot_complete_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.snapshot_complete_message.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Price
memx_options_memoirtop_sbe_v1_3.corrected_price = {}

-- Size: Corrected Price
memx_options_memoirtop_sbe_v1_3.corrected_price.size = 8

-- Display: Corrected Price
memx_options_memoirtop_sbe_v1_3.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
memx_options_memoirtop_sbe_v1_3.corrected_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Corrected Price
memx_options_memoirtop_sbe_v1_3.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memoirtop_sbe_v1_3.corrected_price.translate(raw)
  local display = memx_options_memoirtop_sbe_v1_3.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Corrected Quantity
memx_options_memoirtop_sbe_v1_3.corrected_quantity = {}

-- Size: Corrected Quantity
memx_options_memoirtop_sbe_v1_3.corrected_quantity.size = 4

-- Display: Corrected Quantity
memx_options_memoirtop_sbe_v1_3.corrected_quantity.display = function(value)
  return "Corrected Quantity: "..value
end

-- Dissect: Corrected Quantity
memx_options_memoirtop_sbe_v1_3.corrected_quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.corrected_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.corrected_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.corrected_quantity, range, value, display)

  return offset + length, value
end

-- Original Price
memx_options_memoirtop_sbe_v1_3.original_price = {}

-- Size: Original Price
memx_options_memoirtop_sbe_v1_3.original_price.size = 8

-- Display: Original Price
memx_options_memoirtop_sbe_v1_3.original_price.display = function(value)
  return "Original Price: "..value
end

-- Translate: Original Price
memx_options_memoirtop_sbe_v1_3.original_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Original Price
memx_options_memoirtop_sbe_v1_3.original_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.original_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memoirtop_sbe_v1_3.original_price.translate(raw)
  local display = memx_options_memoirtop_sbe_v1_3.original_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.original_price, range, value, display)

  return offset + length, value
end

-- Original Quantity
memx_options_memoirtop_sbe_v1_3.original_quantity = {}

-- Size: Original Quantity
memx_options_memoirtop_sbe_v1_3.original_quantity.size = 4

-- Display: Original Quantity
memx_options_memoirtop_sbe_v1_3.original_quantity.display = function(value)
  return "Original Quantity: "..value
end

-- Dissect: Original Quantity
memx_options_memoirtop_sbe_v1_3.original_quantity.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.original_quantity.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.original_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.original_quantity, range, value, display)

  return offset + length, value
end

-- Corrected Trade Message
memx_options_memoirtop_sbe_v1_3.corrected_trade_message = {}

-- Size: Corrected Trade Message
memx_options_memoirtop_sbe_v1_3.corrected_trade_message.size =
  memx_options_memoirtop_sbe_v1_3.timestamp.size + 
  memx_options_memoirtop_sbe_v1_3.symbol.size + 
  memx_options_memoirtop_sbe_v1_3.trade_id.size + 
  memx_options_memoirtop_sbe_v1_3.original_quantity.size + 
  memx_options_memoirtop_sbe_v1_3.original_price.size + 
  memx_options_memoirtop_sbe_v1_3.corrected_quantity.size + 
  memx_options_memoirtop_sbe_v1_3.corrected_price.size

-- Display: Corrected Trade Message
memx_options_memoirtop_sbe_v1_3.corrected_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Trade Message
memx_options_memoirtop_sbe_v1_3.corrected_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirtop_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BestBidSymbol
  index, symbol = memx_options_memoirtop_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = memx_options_memoirtop_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Original Quantity: uint32
  index, original_quantity = memx_options_memoirtop_sbe_v1_3.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: PriceType
  index, original_price = memx_options_memoirtop_sbe_v1_3.original_price.dissect(buffer, index, packet, parent)

  -- Corrected Quantity: uint32
  index, corrected_quantity = memx_options_memoirtop_sbe_v1_3.corrected_quantity.dissect(buffer, index, packet, parent)

  -- Corrected Price: PriceType
  index, corrected_price = memx_options_memoirtop_sbe_v1_3.corrected_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Trade Message
memx_options_memoirtop_sbe_v1_3.corrected_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.corrected_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.corrected_trade_message, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.corrected_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.corrected_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.corrected_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Broken Trade Message
memx_options_memoirtop_sbe_v1_3.broken_trade_message = {}

-- Size: Broken Trade Message
memx_options_memoirtop_sbe_v1_3.broken_trade_message.size =
  memx_options_memoirtop_sbe_v1_3.timestamp.size + 
  memx_options_memoirtop_sbe_v1_3.symbol.size + 
  memx_options_memoirtop_sbe_v1_3.trade_id.size + 
  memx_options_memoirtop_sbe_v1_3.original_quantity.size + 
  memx_options_memoirtop_sbe_v1_3.original_price.size

-- Display: Broken Trade Message
memx_options_memoirtop_sbe_v1_3.broken_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Broken Trade Message
memx_options_memoirtop_sbe_v1_3.broken_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirtop_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BestBidSymbol
  index, symbol = memx_options_memoirtop_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Trade Id: uint64
  index, trade_id = memx_options_memoirtop_sbe_v1_3.trade_id.dissect(buffer, index, packet, parent)

  -- Original Quantity: uint32
  index, original_quantity = memx_options_memoirtop_sbe_v1_3.original_quantity.dissect(buffer, index, packet, parent)

  -- Original Price: PriceType
  index, original_price = memx_options_memoirtop_sbe_v1_3.original_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Broken Trade Message
memx_options_memoirtop_sbe_v1_3.broken_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.broken_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.broken_trade_message, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.broken_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.broken_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.broken_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session
memx_options_memoirtop_sbe_v1_3.trading_session = {}

-- Size: Trading Session
memx_options_memoirtop_sbe_v1_3.trading_session.size = 1

-- Display: Trading Session
memx_options_memoirtop_sbe_v1_3.trading_session.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Trading Session: No Value"
  end

  if value == "1" then
    return "Trading Session: Trading (1)"
  end
  if value == "2" then
    return "Trading Session: Closed (2)"
  end

  return "Trading Session: Unknown("..value..")"
end

-- Dissect: Trading Session
memx_options_memoirtop_sbe_v1_3.trading_session.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.trading_session.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirtop_sbe_v1_3.trading_session.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.trading_session, range, value, display)

  return offset + length, value
end

-- Trading Session Status Message
memx_options_memoirtop_sbe_v1_3.trading_session_status_message = {}

-- Size: Trading Session Status Message
memx_options_memoirtop_sbe_v1_3.trading_session_status_message.size =
  memx_options_memoirtop_sbe_v1_3.timestamp.size + 
  memx_options_memoirtop_sbe_v1_3.trading_session.size

-- Display: Trading Session Status Message
memx_options_memoirtop_sbe_v1_3.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
memx_options_memoirtop_sbe_v1_3.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirtop_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Trading Session: TradingSessionType
  index, trading_session = memx_options_memoirtop_sbe_v1_3.trading_session.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Session Status Message
memx_options_memoirtop_sbe_v1_3.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.trading_session_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.trading_session_status_message, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument Trading Status Reason
memx_options_memoirtop_sbe_v1_3.instrument_trading_status_reason = {}

-- Size: Instrument Trading Status Reason
memx_options_memoirtop_sbe_v1_3.instrument_trading_status_reason.size = 1

-- Display: Instrument Trading Status Reason
memx_options_memoirtop_sbe_v1_3.instrument_trading_status_reason.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Instrument Trading Status Reason: No Value"
  end

  if value == "X" then
    return "Instrument Trading Status Reason: None (X)"
  end
  if value == "A" then
    return "Instrument Trading Status Reason: Administrative (A)"
  end

  return "Instrument Trading Status Reason: Unknown("..value..")"
end

-- Dissect: Instrument Trading Status Reason
memx_options_memoirtop_sbe_v1_3.instrument_trading_status_reason.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.instrument_trading_status_reason.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirtop_sbe_v1_3.instrument_trading_status_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.instrument_trading_status_reason, range, value, display)

  return offset + length, value
end

-- Instrument Trading Status
memx_options_memoirtop_sbe_v1_3.instrument_trading_status = {}

-- Size: Instrument Trading Status
memx_options_memoirtop_sbe_v1_3.instrument_trading_status.size = 1

-- Display: Instrument Trading Status
memx_options_memoirtop_sbe_v1_3.instrument_trading_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Instrument Trading Status: No Value"
  end

  if value == "H" then
    return "Instrument Trading Status: Halted (H)"
  end
  if value == "T" then
    return "Instrument Trading Status: Trading (T)"
  end

  return "Instrument Trading Status: Unknown("..value..")"
end

-- Dissect: Instrument Trading Status
memx_options_memoirtop_sbe_v1_3.instrument_trading_status.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.instrument_trading_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = memx_options_memoirtop_sbe_v1_3.instrument_trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.instrument_trading_status, range, value, display)

  return offset + length, value
end

-- Instrument Trading Status Message
memx_options_memoirtop_sbe_v1_3.instrument_trading_status_message = {}

-- Size: Instrument Trading Status Message
memx_options_memoirtop_sbe_v1_3.instrument_trading_status_message.size =
  memx_options_memoirtop_sbe_v1_3.timestamp.size + 
  memx_options_memoirtop_sbe_v1_3.symbol.size + 
  memx_options_memoirtop_sbe_v1_3.instrument_trading_status.size + 
  memx_options_memoirtop_sbe_v1_3.instrument_trading_status_reason.size

-- Display: Instrument Trading Status Message
memx_options_memoirtop_sbe_v1_3.instrument_trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Trading Status Message
memx_options_memoirtop_sbe_v1_3.instrument_trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirtop_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BestBidSymbol
  index, symbol = memx_options_memoirtop_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Instrument Trading Status: InstrumentTradingStatusType
  index, instrument_trading_status = memx_options_memoirtop_sbe_v1_3.instrument_trading_status.dissect(buffer, index, packet, parent)

  -- Instrument Trading Status Reason: InstrumentTradingStatusReasonType
  index, instrument_trading_status_reason = memx_options_memoirtop_sbe_v1_3.instrument_trading_status_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Trading Status Message
memx_options_memoirtop_sbe_v1_3.instrument_trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_trading_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.instrument_trading_status_message, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.instrument_trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.instrument_trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.instrument_trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Is Test Symbol
memx_options_memoirtop_sbe_v1_3.is_test_symbol = {}

-- Size: Is Test Symbol
memx_options_memoirtop_sbe_v1_3.is_test_symbol.size = 1

-- Display: Is Test Symbol
memx_options_memoirtop_sbe_v1_3.is_test_symbol.display = function(value)
  if value == 0 then
    return "Is Test Symbol: False (0)"
  end
  if value == 1 then
    return "Is Test Symbol: True (1)"
  end

  return "Is Test Symbol: Unknown("..value..")"
end

-- Dissect: Is Test Symbol
memx_options_memoirtop_sbe_v1_3.is_test_symbol.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.is_test_symbol.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.is_test_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.is_test_symbol, range, value, display)

  return offset + length, value
end

-- Closing Time
memx_options_memoirtop_sbe_v1_3.closing_time = {}

-- Size: Closing Time
memx_options_memoirtop_sbe_v1_3.closing_time.size = 8

-- Display: Closing Time
memx_options_memoirtop_sbe_v1_3.closing_time.display = function(value)
  return "Closing Time: "..value
end

-- Dissect: Closing Time
memx_options_memoirtop_sbe_v1_3.closing_time.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.closing_time.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirtop_sbe_v1_3.closing_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.closing_time, range, value, display)

  return offset + length, value
end

-- Closing Only
memx_options_memoirtop_sbe_v1_3.closing_only = {}

-- Size: Closing Only
memx_options_memoirtop_sbe_v1_3.closing_only.size = 1

-- Display: Closing Only
memx_options_memoirtop_sbe_v1_3.closing_only.display = function(value)
  if value == 0 then
    return "Closing Only: False (0)"
  end
  if value == 1 then
    return "Closing Only: True (1)"
  end

  return "Closing Only: Unknown("..value..")"
end

-- Dissect: Closing Only
memx_options_memoirtop_sbe_v1_3.closing_only.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.closing_only.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.closing_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.closing_only, range, value, display)

  return offset + length, value
end

-- Strike Price
memx_options_memoirtop_sbe_v1_3.strike_price = {}

-- Size: Strike Price
memx_options_memoirtop_sbe_v1_3.strike_price.size = 8

-- Display: Strike Price
memx_options_memoirtop_sbe_v1_3.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
memx_options_memoirtop_sbe_v1_3.strike_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Strike Price
memx_options_memoirtop_sbe_v1_3.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.strike_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = memx_options_memoirtop_sbe_v1_3.strike_price.translate(raw)
  local display = memx_options_memoirtop_sbe_v1_3.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Put Or Call
memx_options_memoirtop_sbe_v1_3.strike_put_or_call = {}

-- Size: Strike Put Or Call
memx_options_memoirtop_sbe_v1_3.strike_put_or_call.size = 1

-- Display: Strike Put Or Call
memx_options_memoirtop_sbe_v1_3.strike_put_or_call.display = function(value)
  if value == 0 then
    return "Strike Put Or Call: Put (0)"
  end
  if value == 1 then
    return "Strike Put Or Call: Call (1)"
  end

  return "Strike Put Or Call: Unknown("..value..")"
end

-- Dissect: Strike Put Or Call
memx_options_memoirtop_sbe_v1_3.strike_put_or_call.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.strike_put_or_call.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.strike_put_or_call.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.strike_put_or_call, range, value, display)

  return offset + length, value
end

-- Maturity Date
memx_options_memoirtop_sbe_v1_3.maturity_date = {}

-- Size: Maturity Date
memx_options_memoirtop_sbe_v1_3.maturity_date.size = 8

-- Display: Maturity Date
memx_options_memoirtop_sbe_v1_3.maturity_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Maturity Date: No Value"
  end

  return "Maturity Date: "..value
end

-- Dissect: Maturity Date
memx_options_memoirtop_sbe_v1_3.maturity_date.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.maturity_date.size
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

  local display = memx_options_memoirtop_sbe_v1_3.maturity_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.maturity_date, range, value, display)

  return offset + length, value
end

-- Osi Root
memx_options_memoirtop_sbe_v1_3.osi_root = {}

-- Size: Osi Root
memx_options_memoirtop_sbe_v1_3.osi_root.size = 6

-- Display: Osi Root
memx_options_memoirtop_sbe_v1_3.osi_root.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Osi Root: No Value"
  end

  return "Osi Root: "..value
end

-- Dissect: Osi Root
memx_options_memoirtop_sbe_v1_3.osi_root.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.osi_root.size
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

  local display = memx_options_memoirtop_sbe_v1_3.osi_root.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.osi_root, range, value, display)

  return offset + length, value
end

-- Underlier
memx_options_memoirtop_sbe_v1_3.underlier = {}

-- Size: Underlier
memx_options_memoirtop_sbe_v1_3.underlier.size = 6

-- Display: Underlier
memx_options_memoirtop_sbe_v1_3.underlier.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlier: No Value"
  end

  return "Underlier: "..value
end

-- Dissect: Underlier
memx_options_memoirtop_sbe_v1_3.underlier.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.underlier.size
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

  local display = memx_options_memoirtop_sbe_v1_3.underlier.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.underlier, range, value, display)

  return offset + length, value
end

-- Options Product Type
memx_options_memoirtop_sbe_v1_3.options_product_type = {}

-- Size: Options Product Type
memx_options_memoirtop_sbe_v1_3.options_product_type.size = 1

-- Display: Options Product Type
memx_options_memoirtop_sbe_v1_3.options_product_type.display = function(value)
  if value == 0 then
    return "Options Product Type: Equity Underlying (0)"
  end
  if value == 1 then
    return "Options Product Type: Index Underlying (1)"
  end

  return "Options Product Type: Unknown("..value..")"
end

-- Dissect: Options Product Type
memx_options_memoirtop_sbe_v1_3.options_product_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.options_product_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.options_product_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.options_product_type, range, value, display)

  return offset + length, value
end

-- Instrument Directory Message
memx_options_memoirtop_sbe_v1_3.instrument_directory_message = {}

-- Size: Instrument Directory Message
memx_options_memoirtop_sbe_v1_3.instrument_directory_message.size =
  memx_options_memoirtop_sbe_v1_3.timestamp.size + 
  memx_options_memoirtop_sbe_v1_3.symbol.size + 
  memx_options_memoirtop_sbe_v1_3.options_product_type.size + 
  memx_options_memoirtop_sbe_v1_3.underlier.size + 
  memx_options_memoirtop_sbe_v1_3.osi_root.size + 
  memx_options_memoirtop_sbe_v1_3.maturity_date.size + 
  memx_options_memoirtop_sbe_v1_3.strike_put_or_call.size + 
  memx_options_memoirtop_sbe_v1_3.strike_price.size + 
  memx_options_memoirtop_sbe_v1_3.closing_only.size + 
  memx_options_memoirtop_sbe_v1_3.closing_time.size + 
  memx_options_memoirtop_sbe_v1_3.is_test_symbol.size

-- Display: Instrument Directory Message
memx_options_memoirtop_sbe_v1_3.instrument_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument Directory Message
memx_options_memoirtop_sbe_v1_3.instrument_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Timestamp: UTCTimestampNanos
  index, timestamp = memx_options_memoirtop_sbe_v1_3.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: BestBidSymbol
  index, symbol = memx_options_memoirtop_sbe_v1_3.symbol.dissect(buffer, index, packet, parent)

  -- Options Product Type: OptionsProductType
  index, options_product_type = memx_options_memoirtop_sbe_v1_3.options_product_type.dissect(buffer, index, packet, parent)

  -- Underlier: InstrumentDirectoryUnderlier
  index, underlier = memx_options_memoirtop_sbe_v1_3.underlier.dissect(buffer, index, packet, parent)

  -- Osi Root: InstrumentDirectoryOSIRoot
  index, osi_root = memx_options_memoirtop_sbe_v1_3.osi_root.dissect(buffer, index, packet, parent)

  -- Maturity Date: InstrumentDirectoryMaturityDate
  index, maturity_date = memx_options_memoirtop_sbe_v1_3.maturity_date.dissect(buffer, index, packet, parent)

  -- Strike Put Or Call: PutOrCallType
  index, strike_put_or_call = memx_options_memoirtop_sbe_v1_3.strike_put_or_call.dissect(buffer, index, packet, parent)

  -- Strike Price: PriceType
  index, strike_price = memx_options_memoirtop_sbe_v1_3.strike_price.dissect(buffer, index, packet, parent)

  -- Closing Only: BooleanType
  index, closing_only = memx_options_memoirtop_sbe_v1_3.closing_only.dissect(buffer, index, packet, parent)

  -- Closing Time: UTCTimestampNanos
  index, closing_time = memx_options_memoirtop_sbe_v1_3.closing_time.dissect(buffer, index, packet, parent)

  -- Is Test Symbol: BooleanType
  index, is_test_symbol = memx_options_memoirtop_sbe_v1_3.is_test_symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Directory Message
memx_options_memoirtop_sbe_v1_3.instrument_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.instrument_directory_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.instrument_directory_message, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.instrument_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.instrument_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
memx_options_memoirtop_sbe_v1_3.payload = {}

-- Size: Payload
memx_options_memoirtop_sbe_v1_3.payload.size = function(buffer, offset, template_id)
  -- Size of Instrument Directory Message
  if template_id == 1 then
    return memx_options_memoirtop_sbe_v1_3.instrument_directory_message.size
  end
  -- Size of Instrument Trading Status Message
  if template_id == 2 then
    return memx_options_memoirtop_sbe_v1_3.instrument_trading_status_message.size
  end
  -- Size of Trading Session Status Message
  if template_id == 3 then
    return memx_options_memoirtop_sbe_v1_3.trading_session_status_message.size
  end
  -- Size of Broken Trade Message
  if template_id == 5 then
    return memx_options_memoirtop_sbe_v1_3.broken_trade_message.size
  end
  -- Size of Corrected Trade Message
  if template_id == 6 then
    return memx_options_memoirtop_sbe_v1_3.corrected_trade_message.size
  end
  -- Size of Snapshot Complete Message
  if template_id == 7 then
    return memx_options_memoirtop_sbe_v1_3.snapshot_complete_message.size
  end
  -- Size of Best Bid Offer Message
  if template_id == 10 then
    return memx_options_memoirtop_sbe_v1_3.best_bid_offer_message.size
  end
  -- Size of Best Bid Message
  if template_id == 11 then
    return memx_options_memoirtop_sbe_v1_3.best_bid_message.size
  end
  -- Size of Best Offer Message
  if template_id == 12 then
    return memx_options_memoirtop_sbe_v1_3.best_offer_message.size
  end
  -- Size of Best Bid Short Message
  if template_id == 13 then
    return memx_options_memoirtop_sbe_v1_3.best_bid_short_message.size
  end
  -- Size of Best Offer Short Message
  if template_id == 14 then
    return memx_options_memoirtop_sbe_v1_3.best_offer_short_message.size
  end
  -- Size of Trade Message
  if template_id == 15 then
    return memx_options_memoirtop_sbe_v1_3.trade_message.size
  end
  -- Size of Clear Book Message
  if template_id == 16 then
    return memx_options_memoirtop_sbe_v1_3.clear_book_message.size
  end

  return 0
end

-- Display: Payload
memx_options_memoirtop_sbe_v1_3.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
memx_options_memoirtop_sbe_v1_3.payload.branches = function(buffer, offset, packet, parent, template_id)
  -- Dissect Instrument Directory Message
  if template_id == 1 then
    return memx_options_memoirtop_sbe_v1_3.instrument_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Trading Status Message
  if template_id == 2 then
    return memx_options_memoirtop_sbe_v1_3.instrument_trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Session Status Message
  if template_id == 3 then
    return memx_options_memoirtop_sbe_v1_3.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Broken Trade Message
  if template_id == 5 then
    return memx_options_memoirtop_sbe_v1_3.broken_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Corrected Trade Message
  if template_id == 6 then
    return memx_options_memoirtop_sbe_v1_3.corrected_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Complete Message
  if template_id == 7 then
    return memx_options_memoirtop_sbe_v1_3.snapshot_complete_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Offer Message
  if template_id == 10 then
    return memx_options_memoirtop_sbe_v1_3.best_bid_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Message
  if template_id == 11 then
    return memx_options_memoirtop_sbe_v1_3.best_bid_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Offer Message
  if template_id == 12 then
    return memx_options_memoirtop_sbe_v1_3.best_offer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Bid Short Message
  if template_id == 13 then
    return memx_options_memoirtop_sbe_v1_3.best_bid_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Best Offer Short Message
  if template_id == 14 then
    return memx_options_memoirtop_sbe_v1_3.best_offer_short_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if template_id == 15 then
    return memx_options_memoirtop_sbe_v1_3.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Clear Book Message
  if template_id == 16 then
    return memx_options_memoirtop_sbe_v1_3.clear_book_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
memx_options_memoirtop_sbe_v1_3.payload.dissect = function(buffer, offset, packet, parent, template_id)
  if not show.payload then
    return memx_options_memoirtop_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_memoirtop_sbe_v1_3.payload.size(buffer, offset, template_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_memoirtop_sbe_v1_3.payload.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.payload, range, display)

  return memx_options_memoirtop_sbe_v1_3.payload.branches(buffer, offset, packet, parent, template_id)
end

-- Version
memx_options_memoirtop_sbe_v1_3.version = {}

-- Size: Version
memx_options_memoirtop_sbe_v1_3.version.size = 2

-- Display: Version
memx_options_memoirtop_sbe_v1_3.version.display = function(value)
  if value == 259 then
    return "Version: Version 1.3"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
memx_options_memoirtop_sbe_v1_3.version.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.version, range, value, display)

  return offset + length, value
end

-- Schema Id
memx_options_memoirtop_sbe_v1_3.schema_id = {}

-- Size: Schema Id
memx_options_memoirtop_sbe_v1_3.schema_id.size = 1

-- Display: Schema Id
memx_options_memoirtop_sbe_v1_3.schema_id.display = function(value)
  if value == 11 then
    return "Schema Id: SchemaId"
  end

  return "Schema Id: Unknown("..value..")"
end

-- Dissect: Schema Id
memx_options_memoirtop_sbe_v1_3.schema_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.schema_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.schema_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.schema_id, range, value, display)

  return offset + length, value
end

-- Template Id
memx_options_memoirtop_sbe_v1_3.template_id = {}

-- Size: Template Id
memx_options_memoirtop_sbe_v1_3.template_id.size = 1

-- Display: Template Id
memx_options_memoirtop_sbe_v1_3.template_id.display = function(value)
  if value == 1 then
    return "Template Id: Instrument Directory Message (1)"
  end
  if value == 2 then
    return "Template Id: Instrument Trading Status Message (2)"
  end
  if value == 3 then
    return "Template Id: Trading Session Status Message (3)"
  end
  if value == 5 then
    return "Template Id: Broken Trade Message (5)"
  end
  if value == 6 then
    return "Template Id: Corrected Trade Message (6)"
  end
  if value == 7 then
    return "Template Id: Snapshot Complete Message (7)"
  end
  if value == 10 then
    return "Template Id: Best Bid Offer Message (10)"
  end
  if value == 11 then
    return "Template Id: Best Bid Message (11)"
  end
  if value == 12 then
    return "Template Id: Best Offer Message (12)"
  end
  if value == 13 then
    return "Template Id: Best Bid Short Message (13)"
  end
  if value == 14 then
    return "Template Id: Best Offer Short Message (14)"
  end
  if value == 15 then
    return "Template Id: Trade Message (15)"
  end
  if value == 16 then
    return "Template Id: Clear Book Message (16)"
  end

  return "Template Id: Unknown("..value..")"
end

-- Dissect: Template Id
memx_options_memoirtop_sbe_v1_3.template_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.template_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.template_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.template_id, range, value, display)

  return offset + length, value
end

-- Block Length
memx_options_memoirtop_sbe_v1_3.block_length = {}

-- Size: Block Length
memx_options_memoirtop_sbe_v1_3.block_length.size = 2

-- Display: Block Length
memx_options_memoirtop_sbe_v1_3.block_length.display = function(value)
  return "Block Length: "..value
end

-- Dissect: Block Length
memx_options_memoirtop_sbe_v1_3.block_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.block_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.block_length, range, value, display)

  return offset + length, value
end

-- Sbe Header
memx_options_memoirtop_sbe_v1_3.sbe_header = {}

-- Size: Sbe Header
memx_options_memoirtop_sbe_v1_3.sbe_header.size =
  memx_options_memoirtop_sbe_v1_3.block_length.size + 
  memx_options_memoirtop_sbe_v1_3.template_id.size + 
  memx_options_memoirtop_sbe_v1_3.schema_id.size + 
  memx_options_memoirtop_sbe_v1_3.version.size

-- Display: Sbe Header
memx_options_memoirtop_sbe_v1_3.sbe_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Header
memx_options_memoirtop_sbe_v1_3.sbe_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Length: uint16
  index, block_length = memx_options_memoirtop_sbe_v1_3.block_length.dissect(buffer, index, packet, parent)

  -- Template Id: uint8
  index, template_id = memx_options_memoirtop_sbe_v1_3.template_id.dissect(buffer, index, packet, parent)

  -- Schema Id: uint8
  index, schema_id = memx_options_memoirtop_sbe_v1_3.schema_id.dissect(buffer, index, packet, parent)

  -- Version: uint16
  index, version = memx_options_memoirtop_sbe_v1_3.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sbe Header
memx_options_memoirtop_sbe_v1_3.sbe_header.dissect = function(buffer, offset, packet, parent)
  if show.sbe_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.sbe_header, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.sbe_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.sbe_header.fields(buffer, offset, packet, parent)
  end
end

-- Sbe Message
memx_options_memoirtop_sbe_v1_3.sbe_message = {}

-- Calculate size of: Sbe Message
memx_options_memoirtop_sbe_v1_3.sbe_message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirtop_sbe_v1_3.sbe_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 4, 1):uint()
  index = index + memx_options_memoirtop_sbe_v1_3.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Sbe Message
memx_options_memoirtop_sbe_v1_3.sbe_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sbe Message
memx_options_memoirtop_sbe_v1_3.sbe_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sbe Header: Struct of 4 fields
  index, sbe_header = memx_options_memoirtop_sbe_v1_3.sbe_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Template Id
  local template_id = buffer(index - 4, 1):uint()

  -- Payload: Runtime Type with 13 branches
  index = memx_options_memoirtop_sbe_v1_3.payload.dissect(buffer, index, packet, parent, template_id)

  return index
end

-- Dissect: Sbe Message
memx_options_memoirtop_sbe_v1_3.sbe_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sbe_message then
    local length = memx_options_memoirtop_sbe_v1_3.sbe_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memoirtop_sbe_v1_3.sbe_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.sbe_message, range, display)
  end

  return memx_options_memoirtop_sbe_v1_3.sbe_message.fields(buffer, offset, packet, parent)
end

-- Message Length
memx_options_memoirtop_sbe_v1_3.message_length = {}

-- Size: Message Length
memx_options_memoirtop_sbe_v1_3.message_length.size = 2

-- Display: Message Length
memx_options_memoirtop_sbe_v1_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
memx_options_memoirtop_sbe_v1_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message
memx_options_memoirtop_sbe_v1_3.message = {}

-- Calculate size of: Message
memx_options_memoirtop_sbe_v1_3.message.size = function(buffer, offset)
  local index = 0

  index = index + memx_options_memoirtop_sbe_v1_3.message_length.size

  index = index + memx_options_memoirtop_sbe_v1_3.sbe_message.size(buffer, offset + index)

  return index
end

-- Display: Message
memx_options_memoirtop_sbe_v1_3.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
memx_options_memoirtop_sbe_v1_3.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = memx_options_memoirtop_sbe_v1_3.message_length.dissect(buffer, index, packet, parent)

  -- Sbe Message: Struct of 2 fields
  index, sbe_message = memx_options_memoirtop_sbe_v1_3.sbe_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
memx_options_memoirtop_sbe_v1_3.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = memx_options_memoirtop_sbe_v1_3.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memoirtop_sbe_v1_3.message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.message, range, display)
  end

  return memx_options_memoirtop_sbe_v1_3.message.fields(buffer, offset, packet, parent)
end

-- Message Count
memx_options_memoirtop_sbe_v1_3.message_count = {}

-- Size: Message Count
memx_options_memoirtop_sbe_v1_3.message_count.size = 2

-- Display: Message Count
memx_options_memoirtop_sbe_v1_3.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
memx_options_memoirtop_sbe_v1_3.message_count.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.message_count.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.message_count, range, value, display)

  return offset + length, value
end

-- Sequenced Message
memx_options_memoirtop_sbe_v1_3.sequenced_message = {}

-- Size: Sequenced Message
memx_options_memoirtop_sbe_v1_3.sequenced_message.size = function(buffer, offset)
  local index = 0

  return buffer:len() - (offset + index)
end

-- Display: Sequenced Message
memx_options_memoirtop_sbe_v1_3.sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequenced Message
memx_options_memoirtop_sbe_v1_3.sequenced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Count: 2 Byte Unsigned Fixed Width Integer
  index, message_count = memx_options_memoirtop_sbe_v1_3.message_count.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do
    index, message = memx_options_memoirtop_sbe_v1_3.message.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Sequenced Message
memx_options_memoirtop_sbe_v1_3.sequenced_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.sequenced_message then
    local length = memx_options_memoirtop_sbe_v1_3.sequenced_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = memx_options_memoirtop_sbe_v1_3.sequenced_message.display(buffer, packet, parent)
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.sequenced_message, range, display)
  end

  return memx_options_memoirtop_sbe_v1_3.sequenced_message.fields(buffer, offset, packet, parent)
end

-- Sequenced Messages
memx_options_memoirtop_sbe_v1_3.sequenced_messages = {}

-- Size: Sequenced Messages
memx_options_memoirtop_sbe_v1_3.sequenced_messages.size = function(buffer, offset, message_type)
  -- Size of Sequenced Message
  if message_type == 2 then
    return memx_options_memoirtop_sbe_v1_3.sequenced_message.size(buffer, offset)
  end

  return 0
end

-- Display: Sequenced Messages
memx_options_memoirtop_sbe_v1_3.sequenced_messages.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Sequenced Messages
memx_options_memoirtop_sbe_v1_3.sequenced_messages.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Sequenced Message
  if message_type == 2 then
    return memx_options_memoirtop_sbe_v1_3.sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Sequenced Messages
memx_options_memoirtop_sbe_v1_3.sequenced_messages.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.sequenced_messages then
    return memx_options_memoirtop_sbe_v1_3.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = memx_options_memoirtop_sbe_v1_3.sequenced_messages.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = memx_options_memoirtop_sbe_v1_3.sequenced_messages.display(buffer, packet, parent)
  local element = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.sequenced_messages, range, display)

  return memx_options_memoirtop_sbe_v1_3.sequenced_messages.branches(buffer, offset, packet, parent, message_type)
end

-- Sequence Number
memx_options_memoirtop_sbe_v1_3.sequence_number = {}

-- Size: Sequence Number
memx_options_memoirtop_sbe_v1_3.sequence_number.size = 8

-- Display: Sequence Number
memx_options_memoirtop_sbe_v1_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
memx_options_memoirtop_sbe_v1_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirtop_sbe_v1_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Id
memx_options_memoirtop_sbe_v1_3.session_id = {}

-- Size: Session Id
memx_options_memoirtop_sbe_v1_3.session_id.size = 8

-- Display: Session Id
memx_options_memoirtop_sbe_v1_3.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
memx_options_memoirtop_sbe_v1_3.session_id.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.session_id.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = memx_options_memoirtop_sbe_v1_3.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.session_id, range, value, display)

  return offset + length, value
end

-- Header Length
memx_options_memoirtop_sbe_v1_3.header_length = {}

-- Size: Header Length
memx_options_memoirtop_sbe_v1_3.header_length.size = 1

-- Display: Header Length
memx_options_memoirtop_sbe_v1_3.header_length.display = function(value)
  return "Header Length: "..value
end

-- Dissect: Header Length
memx_options_memoirtop_sbe_v1_3.header_length.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.header_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.header_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.header_length, range, value, display)

  return offset + length, value
end

-- Message Type
memx_options_memoirtop_sbe_v1_3.message_type = {}

-- Size: Message Type
memx_options_memoirtop_sbe_v1_3.message_type.size = 1

-- Display: Message Type
memx_options_memoirtop_sbe_v1_3.message_type.display = function(value)
  if value == 0 then
    return "Message Type: Heartbeat Message (0)"
  end
  if value == 1 then
    return "Message Type: Session Shutdown Message (1)"
  end
  if value == 2 then
    return "Message Type: Sequenced Message (2)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
memx_options_memoirtop_sbe_v1_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = memx_options_memoirtop_sbe_v1_3.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = memx_options_memoirtop_sbe_v1_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Common Header
memx_options_memoirtop_sbe_v1_3.common_header = {}

-- Size: Common Header
memx_options_memoirtop_sbe_v1_3.common_header.size =
  memx_options_memoirtop_sbe_v1_3.message_type.size + 
  memx_options_memoirtop_sbe_v1_3.header_length.size + 
  memx_options_memoirtop_sbe_v1_3.session_id.size + 
  memx_options_memoirtop_sbe_v1_3.sequence_number.size

-- Display: Common Header
memx_options_memoirtop_sbe_v1_3.common_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Common Header
memx_options_memoirtop_sbe_v1_3.common_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Unsigned Fixed Width Integer Enum with 3 values
  index, message_type = memx_options_memoirtop_sbe_v1_3.message_type.dissect(buffer, index, packet, parent)

  -- Header Length: 1 Byte Unsigned Fixed Width Integer
  index, header_length = memx_options_memoirtop_sbe_v1_3.header_length.dissect(buffer, index, packet, parent)

  -- Session Id: 8 Byte Unsigned Fixed Width Integer
  index, session_id = memx_options_memoirtop_sbe_v1_3.session_id.dissect(buffer, index, packet, parent)

  -- Sequence Number: 8 Byte Unsigned Fixed Width Integer
  index, sequence_number = memx_options_memoirtop_sbe_v1_3.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Common Header
memx_options_memoirtop_sbe_v1_3.common_header.dissect = function(buffer, offset, packet, parent)
  if show.common_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_memx_options_memoirtop_sbe_v1_3.fields.common_header, buffer(offset, 0))
    local index = memx_options_memoirtop_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = memx_options_memoirtop_sbe_v1_3.common_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return memx_options_memoirtop_sbe_v1_3.common_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
memx_options_memoirtop_sbe_v1_3.packet = {}

-- Dissect Packet
memx_options_memoirtop_sbe_v1_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Common Header: Struct of 4 fields
  index, common_header = memx_options_memoirtop_sbe_v1_3.common_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 18, 1):uint()

  -- Sequenced Messages: Runtime Type with 1 branches
  index = memx_options_memoirtop_sbe_v1_3.sequenced_messages.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_memx_options_memoirtop_sbe_v1_3.init()
end

-- Dissector for Memx Options MemoirTop Sbe 1.3
function omi_memx_options_memoirtop_sbe_v1_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_memx_options_memoirtop_sbe_v1_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_memx_options_memoirtop_sbe_v1_3, buffer(), omi_memx_options_memoirtop_sbe_v1_3.description, "("..buffer:len().." Bytes)")
  return memx_options_memoirtop_sbe_v1_3.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_memx_options_memoirtop_sbe_v1_3)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
memx_options_memoirtop_sbe_v1_3.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Memx Options MemoirTop Sbe 1.3
local function omi_memx_options_memoirtop_sbe_v1_3_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not memx_options_memoirtop_sbe_v1_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_memx_options_memoirtop_sbe_v1_3
  omi_memx_options_memoirtop_sbe_v1_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Memx Options MemoirTop Sbe 1.3
omi_memx_options_memoirtop_sbe_v1_3:register_heuristic("udp", omi_memx_options_memoirtop_sbe_v1_3_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Members Exchange
--   Version: 1.3
--   Date: Thursday, June 29, 2023
--   Specification: MEMOIR Top for US Options-v1_3.pdf
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
